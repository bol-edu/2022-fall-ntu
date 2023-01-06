## ==============================================================
## Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
## Tool Version Limit: 2022.04
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## ==============================================================
proc compile_reports_synxil {args} {
  error "Synxil report extraction is no longer supported"
}

proc compile_reports_ise {args} {
  error "ISE report extraction is no longer supported"
}   

proc invoke_coregen {args} {
    error "invoke_coregen is no longer supported"
} 

proc safe_move { src dst} {
    if { ![file exists $src] } {
        return
    }
    if { [file isdirectory [file dir $dst]] } {
        file copy -force $src $dst
        puts "INFO: HLS-REPORT: generated [file normalize $dst]"
        file delete -force $src
    } else {
        puts "INFO: HLS-REPORT: generated [file normalize $src]"
    }
}

## Opens the .sdc file to extract the contraint clock period
proc extract_clk_period_sdc {file_name {alt_file_name ""}} {
    if { ![file exists $file_name] } {
        if { [llength $alt_file_name] == 1 && [file exists [lindex $alt_file_name 0]] } {
            set file_name [lindex $alt_file_name 0]
        } else {
            error "Cannot find constraint file: $file_name"
        }
    }
    puts "INFO: HLS-REPORT: Extracting clock period from $file_name"
    set report_file [open $file_name r]
    set report_buf [read -nonewline $report_file]
    close $report_file

    # pattern for parsing .sdc file.
    set prefix_sync {create_clock.*}
    set prefix_comb {set_max_delay\s+}
    set number {(\d+\.\d+)}
    set key {-period\s+}
    set clk_pattern_sync ${prefix_sync}${key}${number}
    set clk_pattern_comb ${prefix_comb}${number}
    if {[regexp $clk_pattern_sync $report_buf match actual]}  {
        return $actual
    } elseif {[regexp $clk_pattern_comb $report_buf match actual]}  {
        return $actual
    }
    return "NA"
}

## extract target clock from rpt file
proc extract_target_from_timing_report {report_file xdc_file} {
    set t2 "NA"
    set fl [open $report_file r]
    set report_buf [read -nonewline $fl]
    close $fl
    set clk_pattern {.*?Requirement: +(\d+\.\d+)ns.*}
    if {![regexp $clk_pattern $report_buf match_clk t2]} {
        set t2 [format "%2.3f" [extract_clk_period_sdc $xdc_file [glob -nocomplain *.xdc]]]
    }
    return $t2
}

## extract target clock from rpt file 
proc extract_target_from_timing_summary {report_file xdc_file {clock_name "ap_clk"}} {
    set t2 "NA"
    set fl [open $report_file r]
    set report_buf [read -nonewline $fl]
    close $fl
    set clk_pattern "Path\\s+Group:\\s+${clock_name}.*?Requirement:\\s+(\\d+\\.\\d+)ns.*?"
    if {![regexp $clk_pattern $report_buf match_clk t2]} {
        #puts "DEBUG: using the old way to extract target clock"
        set t2 [format "%2.3f" [extract_clk_period_sdc $xdc_file [glob -nocomplain *.xdc]]]
    }
    #puts "DEBUG: matched clk is $t2"
    return $t2
}

proc show_extracted_area_vivado {resources_dict type_str} {
    set SLICE 0
    set AVAIL_SLICE 0
    dict with resources_dict {}

    set area_current [list $SLICE $LUT $FF $DSP $BRAM $LATCH $SRL $CLB $URAM $URAM]
    set area_total [list $AVAIL_SLICE $AVAIL_LUT $AVAIL_FF $AVAIL_DSP $AVAIL_BRAM $AVAIL_CLB $AVAIL_URAM]
    puts "HLS EXTRACTION: $type_str area_totals:  $area_total"
    puts "HLS EXTRACTION: $type_str area_current: $area_current"
    puts "HLS EXTRACTION: $type_str resources_dict: $resources_dict"
}

proc gen_data_dict_vivado {has_impl options_dict {reports_dict {}}} {
    get_report_option_vars $options_dict {report_level report_max_paths hls_reportdir vivado_reportdir vivado_reportbasename target_clk_period target_device hls_project hls_solution clock_name hls_impl_dir bindmodules max_module_depth}
    if { $hls_impl_dir eq "" } {
      set hls_impl_dir [file dirname [file dirname $hls_reportdir]]
    }

    if { $clock_name eq "" } {
        set clock_name "ap_clk"
    }
    set clockper_synth "NA"
    set clockper_route "NA"
    set clockper_final "NA"
    set synth_suffix "synth.rpt"
    set timing_rpt [get_vv_rpt_file "timing" false $vivado_reportdir $vivado_reportbasename]
    set slack_synth [extract_from_timing_summary $timing_rpt $clock_name clk_target $target_clk_period wns_synth tns_synth]
    if { $has_impl } {
        set suffix "routed.rpt"
        set run_type "impl"
        set timing_rpt [get_vv_rpt_file "timing" true $vivado_reportdir $vivado_reportbasename]
        set slack_route [extract_from_timing_summary $timing_rpt $clock_name clk_target $target_clk_period wns_route tns_route]
        set slack_final $slack_route
        if { $slack_route ne "NA" && $slack_route ne "" } {
            set clockper_route [format "%2.3f"  [expr $clk_target - $slack_route]]
        }
        set clockper_final $clockper_route
        set wns_final $wns_route
        set tns_final $tns_route
    } else {
        set suffix $synth_suffix
        set run_type "synth"
        set slack_route ""
        set slack_final $slack_synth
        set wns_final $wns_synth
        set tns_final $tns_synth
        set wns_route "NA"
        set tns_route "NA"
    }
    set resources_dict [extract_dict_from_utilization [get_vv_rpt_file "utilization" $has_impl $vivado_reportdir $vivado_reportbasename]]
    set vivado_ver [get_vivado_version $timing_rpt]

    set util_hier_rpt [get_vv_rpt_file "utilization_hierarchical" $has_impl $vivado_reportdir $vivado_reportbasename]
    set util_hier_txt ""
    if { [file exists $util_hier_rpt] } {
      set fh [open $util_hier_rpt r]
      set util_hier_txt [read -nonewline $fh]
      close $fh
    }


    if { $slack_synth ne "NA" && $slack_synth ne "" } {
        set clockper_synth [format "%2.3f"  [expr $clk_target - $slack_synth]]
        if { $clockper_final eq "NA" } {
          set clockper_final $clockper_synth
        }
    }
    if {$clockper_final == "NA"} {
        set timing_met "NA"
    } elseif { $clockper_final <= $clk_target } {
        set timing_met "TRUE"; # Timing met
    } else {
        set timing_met "FALSE"; # Timing not met
    }

    set data_dict [dict create]
    dict set data_dict HAS_IMPL $has_impl
    dict set data_dict RUN_TYPE $run_type
    dict set data_dict PROJECT $hls_project
    dict set data_dict SOLUTION $hls_solution
    dict set data_dict DEVICE $target_device
    dict set data_dict VIVADO_VERSION $vivado_ver
    dict set data_dict TOP_RESOURCES $resources_dict
    dict set data_dict TOP_TIMING TIMING_MET $timing_met
    dict set data_dict TOP_TIMING CLOCK_NAME $clock_name
    dict set data_dict TOP_TIMING CP_TARGET $clk_target
    dict set data_dict TOP_TIMING CP_ROUTE $clockper_route
    dict set data_dict TOP_TIMING CP_SYNTH $clockper_synth
    dict set data_dict TOP_TIMING CP_FINAL $clockper_final
    dict set data_dict TOP_TIMING SLACK_ROUTE $slack_route
    dict set data_dict TOP_TIMING SLACK_SYNTH $slack_synth
    dict set data_dict TOP_TIMING SLACK_FINAL $slack_final
    dict set data_dict TOP_TIMING WNS_ROUTE $wns_route
    dict set data_dict TOP_TIMING WNS_SYNTH $wns_synth
    dict set data_dict TOP_TIMING WNS_FINAL $wns_final
    dict set data_dict TOP_TIMING TNS_ROUTE $tns_route
    dict set data_dict TOP_TIMING TNS_SYNTH $tns_synth
    dict set data_dict TOP_TIMING TNS_FINAL $tns_final

    set topcell [get_children_container_cells */hls_inst/*]
    set topchildren [get_children_container_cells $topcell]
    if { $topcell eq "" && [llength $topchildren] } {
      set topcell [file dir [lindex $topchildren 0]]
      if { $topcell eq "." } {
        set topcell ""
      }
    }

    set modules_dict {}
    set rootcell ""
    if { $topcell ne "" } {
      show_timestamp "$run_type extract_util_hier" $options_dict
      set util_data [extract_util_hier $max_module_depth $util_hier_txt]
      #puts "DBG: UTIL_DATA names:"; puts [join [dict keys $util_data] "\n"]
      show_timestamp "$run_type get_cell_hier_data" $options_dict
      set celldict [dict create HAS_IMPL $has_impl ROOT_CELL [file dir $topcell] TOP_CELL $topcell DATA {} UTIL_DATA $util_data BINDMODULES $bindmodules]
      unset util_data; # unset potentially large dict
      get_cell_hier_data $topcell celldict 0
      set modules_dict [dict get $celldict DATA] 
      unset celldict; # unset potentially large dict
      set rootcell [file dir $topcell] 
    }

    dict set data_dict ROOT_MODULE_CELL $rootcell
    dict set data_dict TOP_MODULE_CELL $topcell
    dict set data_dict MODULES $modules_dict
    unset modules_dict; # unset potentially large dict

    if { $report_level > 0 || $timing_met eq "FALSE" } {
      show_timestamp "$run_type get_timing_paths" $options_dict
      if {$timing_met eq "FALSE"} {
          set tpaths [get_timing_paths -quiet -max_paths $report_max_paths -slack_less_than 0]
      } else {
          set tpaths [get_timing_paths -quiet -max_paths 5]
      }
      set tpath_props {STARTPOINT_PIN ENDPOINT_PIN SLACK MAX_FANOUT LOGIC_LEVELS DATAPATH_DELAY DATAPATH_LOGIC_DELAY DATAPATH_NET_DELAY}
      set tcell_props {PRIMITIVE_TYPE LINE_NUMBER}

      show_timestamp "$run_type process timing paths" $options_dict
      set tpaths_list [list]
      foreach tpath $tpaths {
        set tpath_dict [dict create]
        foreach prop $tpath_props {
          dict set tpath_dict $prop [get_property -quiet $prop $tpath]
        }
        set tcells_list [list]
        foreach tcell [get_cells -quiet -of_objects $tpath] {
          set tcell_dict [dict create NAME $tcell]
          foreach prop $tcell_props {
            dict set tcell_dict $prop [get_property -quiet $prop $tcell]
          }
          lappend tcells_list $tcell_dict
        }
        dict set tpath_dict TPATH_CELLS $tcells_list

        lappend tpaths_list $tpath_dict
      }
      dict set data_dict TIMING_PATHS $tpaths_list
    }

    show_timestamp "$run_type get_all_vv_rpt_files" $options_dict
    set rpt_file_dict [get_all_vv_rpt_files $has_impl $vivado_reportdir $vivado_reportbasename $hls_impl_dir]
    dict set data_dict VV_REPORT_FILES $rpt_file_dict
    return $data_dict
}

proc write_reports_vivado {data_dict basename hls_reportdir vivado_reportdir show_text_stdout} {
    if { $show_text_stdout } {
      show_extracted_area_vivado [dict get $data_dict TOP_RESOURCES] [dict get $data_dict RUN_TYPE]
    }

    if { ![dict exists $data_dict HAS_IMPL] || [dict get $data_dict HAS_IMPL] } {
      set suffix "_impl"
    } else {
      set suffix "_syn"
    }

    file mkdir $hls_reportdir
    file mkdir $vivado_reportdir
    
    #set result_file [open ${basename}.result.rb w]
    #dump_report_rb_vivado $data_dict $result_file
    #close $result_file

    set tmp_file ${basename}.result.xml
    set result_file [open $tmp_file w]
    dump_report_xml_vivado $data_dict $result_file
    close $result_file
    safe_move $tmp_file $vivado_reportdir/vivado${suffix}.xml

    set tmp_file ${basename}.result
    set result_file [open $tmp_file w]
    dump_report_vivado $data_dict $result_file
    close $result_file
    safe_move $tmp_file $hls_reportdir/${basename}_export.rpt

    if { $show_text_stdout } {
      set fh [open $hls_reportdir/${basename}_export.rpt r]
      puts [read $fh]; # print report to stdout 
      close $fh
    }
}

proc get_rpt_suffix {is_impl} {
  set suffix "_synth.rpt"
  if { $is_impl } {
    set suffix "_routed.rpt"
  }
  return $suffix
}

proc get_all_vv_rpt_files {is_impl reportdir reportbasename {relative_root_dir ""}} {
  if { [string length $relative_root_dir] } {
    package require fileutil
    set relative_root_dir [file normalize $relative_root_dir]
    set reportdir [file normalize $reportdir]
  }

  set res [dict create]
  foreach filetype [lsort [get_all_vv_rpt_file_types]] {
    set filepath [get_vv_rpt_file $filetype $is_impl $reportdir $reportbasename]
    if { [file exists $filepath] } {
      if { [string length $relative_root_dir] } {
        set filepath [::fileutil::relative $relative_root_dir $filepath]
      }
      dict set res $filetype $filepath
    }
  }
  return $res
}

proc clean_vv_rpt_files {is_impl reportdir reportbasename} {
  if { [file isdirectory $reportdir] } {
    set rpt_file_dict [get_all_vv_rpt_files $is_impl $reportdir $reportbasename]
    if { [dict size $rpt_file_dict] } {
      set removed [list]
      dict for {filetype filepath} $rpt_file_dict {
        if { [file exists $filepath] } {
          file delete -force $filepath
          lappend removed $filepath
        }
      }
      if { [llength $removed] } {
        puts "INFO: HLS-REPORT: removed old report files: $removed"
      }
    }
  }
}

proc get_all_vv_rpt_file_types {} {
  return [list status timing timing_paths utilization utilization_hierarchical design_analysis failfast]
}

proc get_vv_rpt_file {filetype is_impl reportdir reportbasename } {
  if { [lsearch -exact [get_all_vv_rpt_file_types] $filetype] == -1 } {
    error "Unknown report type '$filetype' in HLS vivado report extraction"
  }
  set suffix [get_rpt_suffix $is_impl]
  return "$reportdir/${reportbasename}_${filetype}${suffix}"
}

proc generate_reports_vivado {is_impl options_dict} {
  get_report_option_vars $options_dict {report_level report_max_paths stdout_vivado_reports vivado_reportdir vivado_reportbasename max_module_depth}
  set show $stdout_vivado_reports
  clean_vv_rpt_files $is_impl $vivado_reportdir $vivado_reportbasename
  set hier_args [list]
  if { $max_module_depth > 0 } {
    lappend hier_args -hierarchical_depth $max_module_depth
  }
  # Disable extra source trace output
  set notrace_save [get_param "tcl.notrace"]
  set_param "tcl.notrace" true
  set has_error false
  run_report has_error $show report_utilization -file [get_vv_rpt_file "utilization" $is_impl $vivado_reportdir $vivado_reportbasename]
  run_report has_error $show report_utilization -hierarchical {*}$hier_args -file [get_vv_rpt_file "utilization_hierarchical" $is_impl $vivado_reportdir $vivado_reportbasename]
  run_report has_error $show report_timing_summary -file [get_vv_rpt_file "timing" $is_impl $vivado_reportdir $vivado_reportbasename]

  if { $is_impl } {
    set failfast_name impl
    run_report has_error $show report_route_status -file [get_vv_rpt_file "status" $is_impl $vivado_reportdir $vivado_reportbasename]
    run_report has_error $show report_timing -max_paths $report_max_paths -file [get_vv_rpt_file "timing_paths" $is_impl $vivado_reportdir $vivado_reportbasename]
  } else {
    set failfast_name synth
    if { $report_level > 0 } {
        run_report has_error $show report_timing -max_paths $report_max_paths -file [get_vv_rpt_file "timing_paths" $is_impl $vivado_reportdir $vivado_reportbasename]
    }
  }

  if { $report_level > 0 } {
      run_report has_error $show report_design_analysis -file [get_vv_rpt_file "design_analysis" $is_impl $vivado_reportdir $vivado_reportbasename]
  }
  if { $report_level > 1 } {
      set ff_args [list]; 
      # lappend ff_args -by_slr -top
      if { !$is_impl } {
      #  lappend ff_args "-post_ooc_synth"
      # This will only show "Number of paths above max LUT/Net budgeting" rows
      }
      run_report has_error $show ::tclapp::xilinx::designutils::report_failfast -detailed_report $failfast_name {*}$ff_args -file [get_vv_rpt_file "failfast" $is_impl $vivado_reportdir $vivado_reportbasename]
  }
  set_param "tcl.notrace" $notrace_save
  if { $has_error } {
    error "Found errors in report generation, see previous error messages"
  }
}

proc hls_vivado_reports_setup {options_dict} {
  get_report_option_vars $options_dict {vivado_reportdir hls_reportdir}
  show_timestamp "initialize report directories" $options_dict
  if { [file isdirectory $vivado_reportdir] } {
    catch {file delete -force {*}[glob -nocomplain $vivado_reportdir/*.rpt] {*}[glob -nocomplain $vivado_reportdir/*.xml]}
  } else {
    file mkdir $vivado_reportdir
  }
  if { [file isdirectory $hls_reportdir] } {
    catch {file delete -force {*}[glob -nocomplain $hls_reportdir/*.rpt] {*}[glob -nocomplain $hls_reportdir/*.xml]}
  } else {
    file mkdir $hls_reportdir
  }
}

proc hls_vivado_reports_finalize {options_dict} {
  # Do nothing for now
  show_timestamp "all reports complete" $options_dict
}

proc hls_vivado_reports_synth {run_name options_dict} {
    #get_report_option_vars $options_dict {has_impl report_level}

    #if { $has_impl && $report_level < 2 } {
    #  puts "INFO: HLS-REPORT: Skipping synthesis report generation in impl run"
    #  return
    #}

    set is_impl false
    hls_vivado_reports_step $is_impl $run_name $options_dict
}

proc hls_vivado_reports_impl {run_name options_dict} {
    set is_impl true
    hls_vivado_reports_step $is_impl $run_name $options_dict

    get_report_option_vars $options_dict {error_if_timing_fails}
    check_impl_run $run_name $error_if_timing_fails
}

proc hls_vivado_reports_step {is_impl run_name options_dict} {
    get_report_option_vars $options_dict {has_synth has_impl report_level vivado_reportdir vivado_reportbasename hls_reportdir target_clk_period target_device hls_project hls_solution stdout_hls_reports clock_name skip_report_gen} 
    set step_name "synthesis"
    if { $is_impl } {
      set step_name "implementation"
    }

    show_timestamp "$step_name open_run" $options_dict
    puts "INFO: HLS-REPORT: Opening $step_name design database: open_run $run_name"
    open_run $run_name

    if { $skip_report_gen } {
      puts "Skipping report generation"
      set reports_dict {}
    } else {
      show_timestamp "$step_name generate_reports_vivado" $options_dict
      if { [catch {generate_reports_vivado $is_impl $options_dict} res] } {
        puts "ERROR \[IMPL-251\] Errors occured while generating $step_name Vivado reports: $res\n$::errorInfo"
        exit 1
      }
      set reports_dict $res
    }

    show_timestamp "$step_name gen_data_dict_vivado" $options_dict
    if { [catch {gen_data_dict_vivado $is_impl $options_dict $reports_dict} res] } {
      puts "ERROR \[IMPL-251\] Errors occured while extracting $step_name data: $res\n$::errorInfo"
      exit 1
    }
    set data_dict $res
    
    show_timestamp "$step_name write_reports_vivado" $options_dict
    if { [catch {write_reports_vivado $data_dict $vivado_reportbasename $hls_reportdir $vivado_reportdir $stdout_hls_reports} res] } {
      puts "ERROR \[IMPL-251\] Errors occured while writing $step_name reports: $res\n$::errorInfo"
      exit 1
    }
    show_timestamp "$step_name end" $options_dict
}

proc show_timestamp {name options_dict} {
  get_report_option_vars $options_dict {show_timestamps}
  if { $show_timestamps } {
    set timestamp [clock format [clock seconds] -format "%Y-%m-%d %T %Z"]
    puts "TIMESTAMP: HLS-REPORT: $name: $timestamp"
  }
}

proc get_report_option_vars {options_dict varnames} {
  set default_options {
    skip_report_gen 0
    error_if_timing_fails 0
    report_level 1
    stdout_hls_reports 1
    stdout_vivado_reports 1
    report_max_paths 10
    clock_name ""
    hls_impl_dir ""
    show_timestamps 1
    max_module_depth -1
    bindmodules {}
  }
  foreach varname $varnames {
    upvar $varname val
    if { [dict exists $options_dict $varname] } {
      set val [dict get $options_dict $varname]
    } else {
      set val [dict get $default_options $varname]
    }
    if { $varname eq "report_max_paths" && $val <= 0 } {
      # Avoid errors when max_paths <= 0
      set val 1
    }
  }
}

#----------------------------------------------------------------------------
# compile_reports_vivado
# Exists for backwards compatilibity usage in HLS regression testing
#----------------------------------------------------------------------------
proc compile_reports_vivado {has_impl target_clk_period reportdir basename outdir device project solution {clock_name ""}} {
    set report_options [dict create]
    dict set report_options has_synth true
    dict set report_options has_impl $has_impl
    dict set report_options target_clk_period $target_clk_period
    dict set report_options hls_reportdir $outdir
    dict set report_options vivado_reportdir $reportdir
    dict set report_options vivado_reportbasename $basename
    dict set report_options target_device $device
    dict set report_options hls_project $project
    dict set report_options hls_solution $solution
    dict set report_options clock_name $clock_name
    get_report_option_vars $report_options {vivado_reportbasename hls_reportdir vivado_reportdir stdout_hls_reports}

    set data_dict [gen_data_dict_vivado $has_impl $report_options]
    write_reports_vivado $data_dict $vivado_reportbasename $hls_reportdir $vivado_reportdir $stdout_hls_reports
} 

## Get dict keys populated by extract_dict_from_utilization
proc get_utilization_keys {} {
  return {SLICE LUT FF DSP BRAM URAM LATCH SRL CLB}
}

## Open the Rodin flow report files to extract timing and  resouce used in the design
proc extract_dict_from_utilization { uti_file } {
    # ${module}.uti
    set uti_fl [open $uti_file r]
    set uti_rpt_buf [read -nonewline $uti_fl]
    close $uti_fl
  
    ################################################################################
    # patterns for parsing utilization file
    ################################################################################
    set lut_re          {.*(?:Slice|CLB) LUTs\s*\**}
    set ff_re           {.*(?:Slice|CLB|) Registers\s*\**}
    set slice_re        {.*Slice\s*\**}
    set clb_re          {.*CLB\s*\**}
    set dsp_re          {.*(?:DSPs|DSP Slices)\s*\**}
    set bram36_re       {.*RAMB36(?:E\d|/FIFO|)\s*\**}
    set bram18_re       {.*RAMB18(?:E\d|)\s*\**}
    set uram_re         {.*URAM\s*\**}

    set latch_re        {.*Register as Latch.+?(\d+).*}
    set srl_re          {.*LUT as Shift Register.+?(\d+).*}

    set prohibited_re {\|\s+Site Type\s+\|\s+Used\s+\|\s+Fixed\s+\|\s+Prohibited\s+\|\s+Available\s+\|\s+Util%\s+\|}
    if { [regexp -line $prohibited_re $uti_rpt_buf] } {
      # Prohibited column added in 2020.3
      #|  Site Type  | Used | Fixed | Prohibited | Available | Util% |
      set suffix_re {\s+\|\s+(\d+)\s+\|\s+\d+\s+\|\s+\d+\s+\|\s+(\d+)}
    } else {
      #|  Site Type  | Used | Fixed | Available | Util% |
      set suffix_re {\s+\|\s+(\d+)\s+\|\s+\d+\s+\|\s+(\d+)}
    }

    foreach metric {lut ff slice clb dsp bram36 bram18 uram} {
        set metric_re [set ${metric}_re]
        append metric_re $suffix_re
        if {![regexp -line $metric_re $uti_rpt_buf match_txt ${metric}_count ${metric}_total] } {
            set ${metric}_count 0
            set ${metric}_total 0
        } else {
          #puts "DBG: found $metric = [set ${metric}_count] / [set ${metric}_total] : $match_txt"
        }
    }

    foreach metric {latch srl} {
        set metric_re [set ${metric}_re]
        if {![regexp -line $metric_re $uti_rpt_buf match_txt ${metric}_count] } {
            set ${metric}_count 0
        } else {
          #puts "DBG: found $metric = [set ${metric}_count] : $match_txt"
        }
    }

    # Use BRAM cound as bram 18
    #puts "INFO: HLS-REPORT: calculating BRAM count: ($bram18_count bram18) + 2 * ($bram36_count bram36)"
    set bram_count [expr $bram18_count + 2 * $bram36_count]
    set bram_total $bram18_total; # total number of bram18 

    set res [dict create]
    foreach key_uc [get_utilization_keys] {
      set key_lc [string tolower $key_uc]
      if { [info exists ${key_lc}_total] } {
        set total [string trim [set ${key_lc}_total]]
        if { $key_uc eq "SLICE" && $total == 0 } { continue }
        dict set res AVAIL_${key_uc} $total
      }
      dict set res $key_uc [string trim [set ${key_lc}_count]]
    }
    return $res
}

## Opens the .rpt file to extract the actual timing delay value
proc extract_from_timing_summary {file_name {clock_name "ap_clk"} {clk_target_varname ""} {clk_target_default ""} {wns_varname ""} {tns_varname ""}} {
    set parse_summary false
    if { $wns_varname ne "" } {
      upvar $wns_varname wns_val
      set parse_summary true
    }
    if { $tns_varname ne "" } {
      upvar $tns_varname tns_val
      set parse_summary true
    }
    set wns_val "NA"
    set tns_val "NA"

    set report_file [open $file_name r]
    set report_buf [read -nonewline $report_file]
    close $report_file

    if { $clk_target_varname ne "" } {
        upvar $clk_target_varname clk_target
        set clk_target "NA"
        set clk_pattern "Path\\s+Group:\\s+${clock_name}.*?Requirement:\\s+(\\d+\\.\\d+)ns.*?"
        if {![regexp $clk_pattern $report_buf match_clk clk_target]} {
            if { $clk_target_default eq "" } {
                error "ERROR: cannot find clock target in file $file_name"
            }
            set clk_target $clk_target_default
            #puts "DEBUG: could not find target clock"
            #set clk_target [format "%2.3f" [extract_clk_period_sdc [glob -nocomplain *.xdc]]]
        }
    }

    set res_slack "NA"
    set clk_setup_pat "From\\s+Clock:\\s+${clock_name}\\s+To\\s+Clock:\\s+${clock_name}\\s+Setup\\s*:\[^,\]*,\\s*Worst\\s+Slack\\s+?(-?\\d+\\.\\d+)ns"
    if {[regexp ${clk_setup_pat} $report_buf -> setup_slack]} {
        #puts "DEBUG: setup slack is $setup_slack"
        set res_slack $setup_slack
        set lines [split $report_buf \n]
        foreach line $lines {
            if {[regexp {Min Period\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)} \
                     $line -> corner lpin rpin req act mp_slack]} {
                #puts "DEBUG: min period slack is $mp_slack ($act - $req)\n$line"
                if { [expr $act == ($req + $mp_slack)] } {
                    if {$mp_slack < $setup_slack} {
                        #puts "DEBUG: using is $setup_slack"
                        set res_slack $mp_slack
                        break
                    }
                #} else {
                #    puts "DEBUG: something went wrong parsing mp_slack"
                #    break
                }
            }
        }
    }

    if { $parse_summary } {
      #### EXAMPLE 1:
      #| Design Timing Summary
      #| ---------------------
      #------------------------------------------------------------------------------------------------
      #    WNS(ns)      TNS(ns)  TNS Failing Endpoints  TNS Total Endpoints      WHS(ns)      THS(ns)  THS Failing Endpoints  THS Total Endpoints     WPWS(ns)     TPWS(ns)  TPWS Failing Endpoints  TPWS Total Endpoints  
      #    -------      -------  ---------------------  -------------------      -------      -------  ---------------------  -------------------     --------     --------  ----------------------  --------------------  
      #      0.956        0.000                      0               746334        0.132        0.000                      0               746334        0.867        0.000                       0                315597  
      #All user specified timing constraints are met

      #### EXAMPLE 2:
      #| Design Timing Summary
      #| ---------------------
      #------------------------------------------------------------------------------------------------
      #    WNS(ns)      TNS(ns)  TNS Failing Endpoints  TNS Total Endpoints      WHS(ns)      THS(ns)  THS Failing Endpoints  THS Total Endpoints     WPWS(ns)     TPWS(ns)  TPWS Failing Endpoints  TPWS Total Endpoints  
      #    -------      -------  ---------------------  -------------------      -------      -------  ---------------------  -------------------     --------     --------  ----------------------  --------------------  
      #     -0.452     -577.747                   5806               739824        0.070        0.000                      0               739824        0.867        0.000                       0                312621  
      #Timing constraints are not met.
      set summary_re {\|\s+Design\s+Timing\s+Summary\s+\|[\s\-]+WNS\(ns\)\s+TNS\(ns\)[^-]+(--[^[:alpha:]]+)[[:alpha:]]}
      if { [regexp -expanded $summary_re $report_buf -> summary_values] } {
        regsub -all {\-\-+\s+} $summary_values { } summary_values; # remove dash lines between header and value rows
        regexp {^\s*(\S+)\s+(\S+)} $summary_values -> wns_val tns_val
      }
    }

    return $res_slack
}   

## extract_from_timing_report
proc extract_from_timing_report {file_name} {
    set report_file [open $file_name r]
    set report_buf [read -nonewline $report_file]
    close $report_file

    set clk_pattern_met {.*?Slack +\(\S+?\) +: +(\d+\.\d+)ns.*}
    set clk_pattern_violated {.*?Slack +\(\S+?\) +: +-(\d+\.\d+)ns.*}
    if {[regexp ${clk_pattern_met} $report_buf match slack]}  {
        return $slack
    } elseif {[regexp ${clk_pattern_violated} $report_buf match slack]}  {
        return [expr 0.0 - $slack]
    }
    return "NA"
}


proc extract_util_hier {{max_module_depth -1} {alltext ""}} {
  if { ![string length $alltext] } {
    set hier_args [list]
    if { $max_module_depth > 0 } {
      lappend hier_args -hierarchical_depth $max_module_depth
    }
    puts "INFO: HLS-REPORT: running report_utilization to extract hierarchical data"
    set alltext [report_utilization -quiet -return_string -hierarchical {*}$hier_args -cells [get_cells]]
  }
  set lines [split $alltext "\n"]
  unset alltext

  set found_header false
  set col_names [list {} Instance Module]; # empty first entry correlates to first '|'
  set col_first_rsrc_idx 3
  set module_data [dict create]
  set line_num 0
  set ignore_insts [dict create i_pipe 1 i_synth 1 (i_synth) 1]
  foreach line $lines {
    incr line_num
    if { !$found_header && [regsub {^\s*\|\s+Instance\s+\|\s+Module\s+\|\s+} $line {} header_line] } {
      set found_header true
      set idx -1
      while {1} {
        set start_idx [incr idx]
        set idx [string first | $header_line $start_idx]
        if { $idx == -1 } {
          break
        }
        set name [string range $header_line $start_idx [expr $idx - 1]]
        regsub {Total } $name {} name
        regsub { Blocks} $name {} name
        regsub -all {\s+} $name {} name
        if { [string index $name end] eq "s" } {
          # Remove 's' at end of name
          set name [string range $name 0 end-1]
        }
        lappend col_names $name
      }
      #puts "DBG: COLS([llength $col_names]): $col_names"
    } elseif { $found_header } {
      set data_list [split $line |]
      if { [llength $data_list] <= $col_first_rsrc_idx } { continue }
      set inst [string trim [lindex $data_list 1]]
      if { [dict exists $ignore_insts $inst] } { continue }
      #puts "DBG: ROW([llength $data_list])={$data_list}"
      set resources [dict create]
      for {set idx $col_first_rsrc_idx} {$idx <= [llength $col_names]} {incr idx} {
        set val [string trim [lindex $data_list $idx]]
        if { $val ne "0" && $val ne "" } {
          dict set resources [lindex $col_names $idx] $val
        }
      }
      if { [dict size $resources] } {
        set module [string trim [lindex $data_list 2]]
        if { [string index $inst 0] eq "(" } {
          append module "/LOCAL"
        }
        if { [dict exists $module_data $module] } {
          if { $resources eq [dict get $module_data $module] } {
            # same data
            continue
          }
          # Found multiple rows with same Module that did not have '(' as prefix and did not have the same resources
          error "Unexpected row found in hierarchical utilization report: Module=$module Instance=$inst"
        }
        dict set module_data $module $resources
      }
    }
  }

#+----------------------------------------------+---------------------------------------------------------+------------+------------+---------+------+-----+--------+--------+------+------------+
#|                   Instance                   |                          Module                         | Total LUTs | Logic LUTs | LUTRAMs | SRLs | FFs | RAMB36 | RAMB18 | URAM | DSP Blocks |
#+----------------------------------------------+---------------------------------------------------------+------------+------------+---------+------+-----+--------+--------+------+------------+
#| bd_0_i                                       |                                                    bd_0 |        108 |        108 |       0 |    0 | 101 |      0 |      0 |    0 |          0 |
#|   bd_0_i                                     |                                                    bd_0 |        108 |        108 |       0 |    0 | 101 |      0 |      0 |    0 |          0 |
#|     hls_inst                                 |                                         bd_0_hls_inst_0 |        108 |        108 |       0 |    0 | 101 |      0 |      0 |    0 |          0 |
#|       (hls_inst)                             |                                         bd_0_hls_inst_0 |          0 |          0 |       0 |    0 |   0 |      0 |      0 |    0 |          0 |
#|       inst                                   |                         bd_0_hls_inst_0_loop_sequential |        108 |        108 |       0 |    0 | 101 |      0 |      0 |    0 |          0 |
#|         (inst)                               |                         bd_0_hls_inst_0_loop_sequential |          0 |          0 |       0 |    0 |   3 |      0 |      0 |    0 |          0 |
#|         Loop_SUM_X_proc_U0                   |         bd_0_hls_inst_0_loop_sequential_Loop_SUM_X_proc |         44 |         44 |       0 |    0 |  35 |      0 |      0 |    0 |          0 |
#|         Loop_SUM_Y_proc_U0                   |         bd_0_hls_inst_0_loop_sequential_Loop_SUM_Y_proc |         44 |         44 |       0 |    0 |  35 |      0 |      0 |    0 |          0 |
#|         xlimit_c_U                           |            bd_0_hls_inst_0_loop_sequential_fifo_w5_d2_S |         12 |         12 |       0 |    0 |  14 |      0 |      0 |    0 |          0 |
#|           (xlimit_c_U)                       |            bd_0_hls_inst_0_loop_sequential_fifo_w5_d2_S |          6 |          6 |       0 |    0 |   4 |      0 |      0 |    0 |          0 |
#|           U_loop_sequential_fifo_w5_d2_S_ram | bd_0_hls_inst_0_loop_sequential_fifo_w5_d2_S_shiftReg_1 |          6 |          6 |       0 |    0 |  10 |      0 |      0 |    0 |          0 |
#|         ylimit_c_U                           |          bd_0_hls_inst_0_loop_sequential_fifo_w5_d2_S_0 |          8 |          8 |       0 |    0 |  14 |      0 |      0 |    0 |          0 |
#|           (ylimit_c_U)                       |          bd_0_hls_inst_0_loop_sequential_fifo_w5_d2_S_0 |          3 |          3 |       0 |    0 |   4 |      0 |      0 |    0 |          0 |
#|           U_loop_sequential_fifo_w5_d2_S_ram |   bd_0_hls_inst_0_loop_sequential_fifo_w5_d2_S_shiftReg |          5 |          5 |       0 |    0 |  10 |      0 |      0 |    0 |          0 |
#+----------------------------------------------+---------------------------------------------------------+------------+------------+---------+------+-----+--------+--------+------+------------+
  return $module_data
}


proc get_vivado_version {filename} {
    set fl [open $filename r]
    set report_buf [read -nonewline $fl]
    close $fl
    #set ver_pattern {.*Version : +(\S+) +(\S+) .*}
    set ver_pattern {.*Version.*Vivado +(\S+) +(\S+) .*}
    if {![regexp $ver_pattern $report_buf match_ver ver0 ver]} {
        set ver UNKNOWN
        set ver0 ""
    }
    return $ver0
}

proc dump_report_vivado { data_dict out {show_modules_data false}} {
    set device [dict get $data_dict DEVICE]
    set project [dict get $data_dict PROJECT]
    set solution [dict get $data_dict SOLUTION]
    set has_impl [dict get $data_dict HAS_IMPL]
    set ver [dict get $data_dict VIVADO_VERSION]
    set clk_target [dict get $data_dict TOP_TIMING CP_TARGET]
    set timing_met [dict get $data_dict TOP_TIMING TIMING_MET]
    set cp_route [dict get $data_dict TOP_TIMING CP_ROUTE]
    set cp_synth [dict get $data_dict TOP_TIMING CP_SYNTH]
    set resources_dict [dict get $data_dict TOP_RESOURCES]
    set modules_dict [dict get $data_dict MODULES]

    set t2 $clk_target

    set dev $device
    set date [clock format [clock seconds]]
    puts $out ""
    puts $out ""
    puts $out "Implementation tool: Xilinx Vivado $ver"
    puts $out "Project:             $project"
    puts $out "Solution:            $solution"
    puts $out "Device target:       $dev"
    puts $out "Report date:         $date"
    puts $out ""

    if { $show_modules_data && [dict size $modules_dict] } {
      puts $out "#=== Modules Info ==="
      show_modules_data $out $data_dict
      puts $out ""
    }

    if { $has_impl } {
        puts $out "#=== Post-Implementation Resource usage ==="
    } else {
        puts $out "#=== Post-Synthesis Resource usage ==="
    }

    foreach key [get_utilization_keys] {
        if { [dict exists $resources_dict $key] } {
          set val [dict get $resources_dict $key]
        } elseif { $key eq "SLICE" } {
          set val 0
        } else {
          continue
        }
        puts $out [format "%-10s %8d" $key: $val]
    }

    ## Report timing ###
    puts $out ""
    puts $out "#=== Final timing ==="
    puts $out "CP required:                     $clk_target"
    puts $out "CP achieved post-synthesis:      $cp_synth"
    if { $has_impl } {
        puts $out "CP achieved post-implementation: $cp_route" 
    }
    if {$timing_met eq "NA"} {
        puts $out "No Sequential Path"
    } elseif { $timing_met eq "TRUE" } {
        puts $out "Timing met"
    } else {
        puts $out "Timing not met"
    }
}

## Generate ruby report
proc dump_report_rb_vivado {data_dict out} {
    set device [dict get $data_dict DEVICE]
    set clk_target [dict get $data_dict TOP_TIMING CP_TARGET]
    set clk_final [dict get $data_dict TOP_TIMING CP_FINAL]
    set resources_dict [dict get $data_dict TOP_RESOURCES]

    set t2 $clk_target
    puts $out "\$Footmark = \"FPGA_Xilinx\""
    puts $out "\$Description = \"by Vivado\""
    puts $out ""
    puts $out ""

    puts $out "#=== Resource usage ==="
    foreach key [get_utilization_keys] {
        if { [dict exists $resources_dict $key] } {
            puts $out "\$$key = \"[dict get $resources_dict $key]\""
        }
    }

    ## Report timing ###
    puts $out "#=== Final timing ==="
    puts $out "\$TargetCP = \"$clk_target\""
    puts $out "\$CP = \"$clk_final\""
}

## Generate area xml section
proc dump_module_resources_xml {resources_dict indent1 elem_prefix out} {
    set skip_zeros true
    set indent2 "$indent1  "
    puts -nonewline $out "$indent1<${elem_prefix}Resources"
    foreach key [lsort [dict keys $resources_dict]] {
        if { [string match "AVAIL_*" $key] } { continue }
        set val [dict get $resources_dict $key]
        if { $skip_zeros && (![string length $val] || $val eq "0") } { continue }
        puts -nonewline $out " $key=\"$val\""
    }
    puts $out "/>"
}

proc dump_tpath_xml_vivado { tpath_dict indent1 elem_prefix out } {
    set indent2 "$indent1  "
    set tpath_key "TPATH_CELLS"
    set xml_map {< &lt; > &gt;}
    puts -nonewline $out "$indent1<${elem_prefix}TPATH"
    foreach key [lsort [dict keys $tpath_dict]] {
        if { $key ne $tpath_key } {
            set val [string map $xml_map [dict get $tpath_dict $key]]
            puts -nonewline $out " $key=\"$val\""
        }
    }
    if { [dict exists $tpath_dict $tpath_key] } {
        set val [dict get $tpath_dict $tpath_key]
        if { [llength $val] } {
            puts $out ">"
            foreach cell $val {
                puts -nonewline $out "$indent2<CELL "
                foreach cellprop [dict keys $cell] {
                    set cellval [string map $xml_map [dict get $cell $cellprop]]
                    puts -nonewline $out " $cellprop=\"$cellval\""
                }
                puts $out "/>"
            }
            puts $out "$indent1</${elem_prefix}TPATH>"
            return
        }
    }
    puts $out "/>"
}

## Generate xml report
proc dump_report_xml_vivado { data_dict out } {
    set resources_dict [dict get $data_dict TOP_RESOURCES]
    set modules_dict [dict get $data_dict MODULES]

    set timing_dict [dict get $data_dict TOP_TIMING]

    set indent1 "  "
    set indent2 "$indent1  "
    set indent3 "$indent2  "
    # dump xml
    puts $out "<profile>"
    puts $out "<RunData>"
    foreach key {RUN_TYPE VIVADO_VERSION ROOT_MODULE_CELL} { 
      if { [dict exists $data_dict $key] } {
        puts $out "$indent1<$key>[dict get $data_dict $key]</$key>"
      }
    }
    puts $out "</RunData>"
    puts $out "<TimingReport>"
    puts $out "$indent1<TargetClockPeriod>[dict get $timing_dict CP_TARGET]</TargetClockPeriod>"
    puts $out "$indent1<AchievedClockPeriod>[dict get $timing_dict CP_FINAL]</AchievedClockPeriod>"
    foreach key [lsort [dict keys $timing_dict]] {
      puts $out "$indent1<$key>[dict get $timing_dict $key]</$key>"
    }
    puts $out "</TimingReport>"
    puts $out "<AreaReport>"
    puts $out "$indent1<Resources>"
    foreach key [lsort [dict keys $resources_dict]] {
        if { [string match "AVAIL_*" $key] } { continue }
        set val [dict get $resources_dict $key]
        puts $out "$indent2<$key>$val</$key>"
    }
    puts $out "$indent1</Resources>"
    puts $out "$indent1<AvailableResources>"
    foreach key [lsort [dict keys $resources_dict]] {
        if { [regsub {^AVAIL_} $key {} rawkey] } {
          puts $out "$indent2<$rawkey>[dict get $resources_dict $key]</$rawkey>"
        }
    }
    puts $out "$indent1</AvailableResources>"
    puts $out "</AreaReport>"
    puts $out "<RtlModules>"
    set special_keys [dict create RESOURCES 1 PATHS 1 LOCAL_RESOURCES 1 REF_NAME 1 CHILDREN 1]
    #set elem_key_dict [dict create FILE_NAME 1]
    foreach modulename [lsort [dict keys $modules_dict]] {
      set mod_dict [dict get $modules_dict $modulename]
      set elem_keys [list]
      set attrstr ""
      puts -nonewline $out "$indent1<RtlModule CELL=\"$modulename\""
      foreach key [lsort [dict keys $mod_dict]] {
        if { [dict exists $special_keys $key] } { continue }
        set val [dict get $mod_dict $key]
        puts -nonewline $out " $key=\"$val\""
      }
      if { ![dict exists $mod_dict RESOURCES] && ![dict exists $mod_dict LOCAL_RESOURCES] && ![dict exists $mod_dict CHILDREN] } {
        puts $out "/>"
      } else {
        puts $out ">"
        if { [dict exists $mod_dict CHILDREN] } {
          set mod_children [dict get $mod_dict CHILDREN]
          if { [llength $mod_children] } {
            puts $out "$indent2<SubModules count=\"[llength $mod_children]\">[lsort $mod_children]</SubModules>"
          }
        }
        if { [dict exists $mod_dict RESOURCES] } {
            dump_module_resources_xml [dict get $mod_dict RESOURCES] $indent2 "" $out
        }
        if { [dict exists $mod_dict LOCAL_RESOURCES] } {
            dump_module_resources_xml [dict get $mod_dict LOCAL_RESOURCES] $indent2 "Local" $out
        }
        #set mod_paths [dict get $mod_dict PATHS]
        #dump_paths_xml_vivado $mod_paths $indent2 $out
        puts $out "$indent1</RtlModule>"
      }
    }
    puts $out "</RtlModules>"
    puts $out "<TimingPaths>"
    if { [dict exists $data_dict TIMING_PATHS] } {
      foreach tpath_dict [dict get $data_dict TIMING_PATHS] {
        dump_tpath_xml_vivado $tpath_dict $indent1 "" $out
      }
    }
    puts $out "</TimingPaths>"

    puts $out "<VivadoReportFiles>"
    if { [dict exists $data_dict VV_REPORT_FILES] } {
      set rpt_file_dict [dict get $data_dict VV_REPORT_FILES]
      dict for {filetype filepath} $rpt_file_dict {
        puts $out "$indent1<ReportFile TYPE=\"$filetype\" PATH=\"$filepath\"/>"
      }
    }
    puts $out "</VivadoReportFiles>"
    puts $out "</profile>"
}

proc get_file_name_prop {prop_name obj} {
  set val [get_property -quiet $prop_name $obj]
  if { [string length $val] } {
    if { ![regsub {^.*/hdl/(?:vhdl|verilog)/} $val {} val] } {
      # Only keep tail for files not in hdl area
      set val [file tail $val]
    }
  }
  return $val
}

proc process_hier_cell_resources {resources} {
  if { [dict size $resources] } {
    foreach key {RAMB36 RAMB18} {
      set $key 0
      if { [dict exists $resources $key] } {
        set $key [dict get $resources $key]
      }
    }
    set val [expr {$RAMB18 + 2 * $RAMB36}]
    if { $val != 0 } {
      dict set resources BRAM $val
    }
  }
  return $resources
}

proc get_children_container_cells {{cellglob ""}} {
  set cmd_args [list -quiet -filter {PRIMITIVE_COUNT>1}]
  if { $cellglob ne "" } {
    lappend cmd_args $cellglob
  }
  return [get_cells {*}$cmd_args]
}
proc get_cell_hier_data {cell celldict_var depth} {
  upvar $celldict_var celldict
  set has_impl [dict get $celldict HAS_IMPL]
  set root_cell [dict get $celldict ROOT_CELL]

  set currdict [dict create]
  #set collect_props [list_property $cell]
  set collect_props "REF_NAME ORIG_REF_NAME"
  foreach prop $collect_props {
    set val [get_property -quiet $prop $cell]
    if { [string length $val] } {
      dict set currdict $prop $val
    }
  }
  set filename [get_file_name_prop "FILE_NAME" $cell]
  dict set currdict FILE_NAME $filename
  
  if { $depth == 0 } {
    dict set currdict TOP_CELL $cell
  }
  dict set currdict DEPTH $depth

  set cellname [string range $cell [expr [string length $root_cell] + 1] end]
  #regsub -all {//*} "util/$cellname" {_} rpt_name
  #dict set currdict CELL_NAME $cell
  set ref_name [dict get $currdict REF_NAME]
  if { [dict exists $celldict UTIL_DATA $ref_name] } {
    # Module with zero resources will not be in UTIL_DATA\
      # Calculate total BRAM (equivalent RAMB18)
    dict set currdict RESOURCES [process_hier_cell_resources [dict get $celldict UTIL_DATA $ref_name]]
  }
  if { [dict exists $celldict UTIL_DATA "$ref_name/LOCAL"] } {
    dict set currdict LOCAL_RESOURCES [process_hier_cell_resources [dict get $celldict UTIL_DATA "$ref_name/LOCAL"]]
  }

  set bindname ""
  if { [dict exists $currdict ORIG_REF_NAME] } {
    set orig_ref_name [dict get $currdict ORIG_REF_NAME]
    foreach bindmodule [dict get $celldict BINDMODULES] {
      if { [string length $bindmodule] <= [string length $orig_ref_name] && [string first $bindmodule $orig_ref_name] != -1 } {
        set bindname $bindmodule
        break
      }
    }
  }
  if { [string length $bindname] } {
    set child_names ""
    dict set currdict BINDMODULE $bindname
  } else {
    set children [get_children_container_cells "$cell/*"]
    set child_names [list]
    set child_depth [expr {$depth + 1}]
    foreach child $children {
      get_cell_hier_data $child celldict $child_depth
      lappend child_names [file tail $child]
    }
  }
  dict set currdict CHILDREN $child_names
  dict set celldict DATA $cellname $currdict
}

proc show_module_resources {out res_dict indent} {
  foreach resource [lsort [dict keys $res_dict]] {
    set val [dict get $res_dict $resource]
    if { ![string length $val] || $val eq "0" } { continue }
    puts $out "$indent$resource=$val"
  }
}

proc show_modules_data {out datadict} {
  set indent1 "  "
  set indent2 "    "
  set cellsdict [dict get $datadict MODULES]
  set special_keys [dict create CELL_RESOURCES 1 RESOURCES 1 LOCAL_RESOURCES 1]
  foreach cellname [lsort [dict keys $cellsdict]] {
    set cell [dict get $cellsdict $cellname]
    puts $out "MODULE CELL"
    puts $out "${indent1}NAME=$cellname"
    foreach key [lsort [dict keys $cell]] {
      if { ![dict exists $special_keys $key] } {
        puts $out "${indent1}$key=[dict get $cell $key]"
      }
    }
    if { [dict exists $cell RESOURCES] } {
      if { [dict exists $cell LOCAL_RESOURCES] } {
        puts $out "${indent1}HIER TOTAL RESOURCES:"
      } else {
        puts $out "${indent1}RESOURCES:"
      }
      show_module_resources $out [dict get $cell RESOURCES] $indent2
    }
    if { [dict exists $cell LOCAL_RESOURCES] } {
      puts $out "${indent1}LOCAL RESOURCES:"
      show_module_resources $out [dict get $cell LOCAL_RESOURCES] $indent2
    }
  }
}

proc show_db_data {out datadict} {
  show_modules_data $out $datadict
}

proc dict2tcl {fh adict indent} {
  set subindent "$indent  "
  dict for {key val} $adict {
    set lval [llength $val]
    if { $lval > 4 && $lval % 2 == 0 } {
      puts $fh "$indent[list $key] {"
      dict2tcl $fh $val $subindent
      puts $fh "$indent}"
    } else {
      puts $fh "$indent[list $key] [list $val]"
    }
  }

}

proc write_dict_tcl {outfile adict} {
  file delete -force $outfile
  set fh [open $outfile w]
  dict2proc $fh $adict
  close $fh
}

proc dict2proc {fh adict {procname "get_data_dict"}} {
  puts $fh "proc $procname {} { return {"
  dict2tcl $fh $adict "  "
  puts $fh "} }"
}

proc check_impl_run {impl_run_name error_if_timing_fails} {
    set impl_run [get_runs -quiet $impl_run_name]
    if { $impl_run eq "" } {
        error "Cannot find impl run '$impl_run_name'"
    }
    set WNS [get_property STATS.WNS $impl_run]
    set WHS [get_property STATS.WHS $impl_run]
    set TPWS [get_property STATS.TPWS $impl_run]
    set FAILED_NETS [get_property STATS.FAILED_NETS [get_runs $impl_run]]
    set msg_info "worst setup slack (WNS)=$WNS, worst hold slack (WHS)=$WHS, total pulse width slack(TPWS)=$TPWS, number of unrouted nets=$FAILED_NETS"
    puts "INFO: HLS-REPORT: impl run complete: $msg_info"
    set err_cmd "puts"
    if { $error_if_timing_fails } {
        set err_cmd "error"
    }
    #if {$WNS < 0.0 || $WHS < 0.0 || $TPWS < 0.0 || $FAILED_NETS > 0}
    foreach var {WNS WHS TPWS} {
        set val [set $var]
        if {$val < 0.0} {
            $err_cmd "Vivado implementation timing failed: $var ($val) is less than 0"
        }
    }
}

proc run_report {has_error_var show_text_stdout args} {
    upvar $has_error_var has_error
    puts "INFO: HLS-REPORT: Running report: $args"
    if { [catch {uplevel 1 $args} res] } {
      puts "ERROR: HLS-REPORT: caught error in command: $args"
      puts "ERROR: $res"
      set has_error true
      return
    }
    set fileidx [lsearch -exact $args "-file"]
    if { $fileidx > 0 } {
        set outfile [lindex $args [incr fileidx]]
        if { ![file exists $outfile] } {
            puts "WARNING: HLS-REPORT: Did not find report output file $outfile"
        } elseif { $show_text_stdout } {
            puts "INFO: HLS-REPORT: Contents of report file '$outfile' is as follows:"
            set outfh [open $outfile r]
            puts [read $outfh]
            close $outfh
        }
    }
}

# vim:set ts=4 sw=4 et:


