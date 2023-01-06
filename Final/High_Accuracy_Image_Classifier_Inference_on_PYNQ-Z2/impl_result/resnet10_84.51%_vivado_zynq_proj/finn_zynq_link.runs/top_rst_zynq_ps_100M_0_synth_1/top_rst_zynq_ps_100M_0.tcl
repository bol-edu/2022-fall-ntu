# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "/home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.runs/top_rst_zynq_ps_100M_0_synth_1/top_rst_zynq_ps_100M_0.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
OPTRACE "top_rst_zynq_ps_100M_0_synth_1" START { ROLLUP_AUTO }
set_param project.vivado.isBlockSynthRun true
set_msg_config -msgmgr_mode ooc_run
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.cache/wt [current_project]
set_property parent.project_path /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part_repo_paths {/home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/deps/board_files} [current_project]
set_property board_part tul.com.tw:pynq-z2:part0:1.0 [current_project]
set_property ip_repo_paths {
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_0_IODMA_0__da1xguz/project_StreamingDataflowPartition_0_IODMA_0/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_stitch_proj_1suyam_o/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_0_41n4rz7b/project_StreamingDataflowPartition_1_StreamingFIFO_0/sol1/impl/verilog
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_Thresholding_Batch_0_hhbk1nr2/project_StreamingDataflowPartition_1_Thresholding_Batch_0/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0_4bk4sjx7/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_FMPadding_Batch_0_t1ai_8cp/project_StreamingDataflowPartition_1_FMPadding_Batch_0/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1_l9foe8cr/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_ConvolutionInputGenerator_0_z_lng98z/project_StreamingDataflowPartition_1_ConvolutionInputGenerator_0/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_1_bgalxhqz/project_StreamingDataflowPartition_1_StreamingFIFO_1/sol1/impl/verilog
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_0_58yzczm2/project_StreamingDataflowPartition_1_MatrixVectorActivation_0/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_DuplicateStreams_Batch_0_vinmockx/project_StreamingDataflowPartition_1_DuplicateStreams_Batch_0/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2_qxmug126/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3_u92k59ge/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_FMPadding_Batch_1_q6hhj1vs/project_StreamingDataflowPartition_1_FMPadding_Batch_1/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_DownSampler_0_1pvg69gf/project_StreamingDataflowPartition_1_DownSampler_0/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4_1ffqmelb/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5_me00admu/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_2_bolu1tyk/project_StreamingDataflowPartition_1_StreamingFIFO_2/sol1/impl/verilog
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_ConvolutionInputGenerator_1_x2hj4gub/project_StreamingDataflowPartition_1_ConvolutionInputGenerator_1/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_3_thkcezko/project_StreamingDataflowPartition_1_StreamingFIFO_3/sol1/impl/verilog
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_1_gfn7h4ir/project_StreamingDataflowPartition_1_MatrixVectorActivation_1/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_2_91_2d6ya/project_StreamingDataflowPartition_1_MatrixVectorActivation_2/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6_e60ex7fd/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_FMPadding_Batch_2_97stx9fq/project_StreamingDataflowPartition_1_FMPadding_Batch_2/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7_1zu44tea/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_ConvolutionInputGenerator_2_81sv901w/project_StreamingDataflowPartition_1_ConvolutionInputGenerator_2/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_4_zgvd69jx/project_StreamingDataflowPartition_1_StreamingFIFO_4/sol1/impl/verilog
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_3_aq88akbn/project_StreamingDataflowPartition_1_MatrixVectorActivation_3/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_AddStreams_Batch_0_esdyy929/project_StreamingDataflowPartition_1_AddStreams_Batch_0/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_Thresholding_Batch_1_17q5x9tl/project_StreamingDataflowPartition_1_Thresholding_Batch_1/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_DuplicateStreams_Batch_1_nw5u4d8s/project_StreamingDataflowPartition_1_DuplicateStreams_Batch_1/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8_1aa34l9f/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_9__a7l8pc9/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_9/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_FMPadding_Batch_3_7qisgpk9/project_StreamingDataflowPartition_1_FMPadding_Batch_3/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_DownSampler_1_ukcvk8uf/project_StreamingDataflowPartition_1_DownSampler_1/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_10_qq6h7iyk/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_10/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_11_3vm_wetx/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_11/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_5_6p0i8tnt/project_StreamingDataflowPartition_1_StreamingFIFO_5/sol1/impl/verilog
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_ConvolutionInputGenerator_3_y_aud7oz/project_StreamingDataflowPartition_1_ConvolutionInputGenerator_3/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_6_h1vt56lf/project_StreamingDataflowPartition_1_StreamingFIFO_6/sol1/impl/verilog
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_4_twijtl6g/project_StreamingDataflowPartition_1_MatrixVectorActivation_4/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_5_m1wm0b4s/project_StreamingDataflowPartition_1_MatrixVectorActivation_5/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_12_hxg1cllr/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_12/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_FMPadding_Batch_4_ln7zfx_r/project_StreamingDataflowPartition_1_FMPadding_Batch_4/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_13_3xwot8ei/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_13/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_ConvolutionInputGenerator_4_hnju22_q/project_StreamingDataflowPartition_1_ConvolutionInputGenerator_4/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_7_7_b2gibl/project_StreamingDataflowPartition_1_StreamingFIFO_7/sol1/impl/verilog
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_6_5otmqxwq/project_StreamingDataflowPartition_1_MatrixVectorActivation_6/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_AddStreams_Batch_1_fi0z2vt3/project_StreamingDataflowPartition_1_AddStreams_Batch_1/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_Thresholding_Batch_2_4x11i4ml/project_StreamingDataflowPartition_1_Thresholding_Batch_2/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_DuplicateStreams_Batch_2_o6lvxyfm/project_StreamingDataflowPartition_1_DuplicateStreams_Batch_2/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_14_c9hhbapp/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_14/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_15_y44hlg8u/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_15/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_FMPadding_Batch_5_y0ub8ryb/project_StreamingDataflowPartition_1_FMPadding_Batch_5/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_DownSampler_2_eawhew8d/project_StreamingDataflowPartition_1_DownSampler_2/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_16_mkrjoq5x/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_16/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_17_pg5g38yx/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_17/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_8__3a5976s/project_StreamingDataflowPartition_1_StreamingFIFO_8/sol1/impl/verilog
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_ConvolutionInputGenerator_5_ndzoq7f9/project_StreamingDataflowPartition_1_ConvolutionInputGenerator_5/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_9_gs31m3tp/project_StreamingDataflowPartition_1_StreamingFIFO_9/sol1/impl/verilog
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_7_tzxue7rr/project_StreamingDataflowPartition_1_MatrixVectorActivation_7/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_8_gcsvvcfq/project_StreamingDataflowPartition_1_MatrixVectorActivation_8/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_18_zkaj67cb/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_18/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_FMPadding_Batch_6_o17w3oog/project_StreamingDataflowPartition_1_FMPadding_Batch_6/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_19_xktsapas/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_19/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_ConvolutionInputGenerator_6_wkrgfcjk/project_StreamingDataflowPartition_1_ConvolutionInputGenerator_6/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_10_qroj_23c/project_StreamingDataflowPartition_1_StreamingFIFO_10/sol1/impl/verilog
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_9_3gqx377o/project_StreamingDataflowPartition_1_MatrixVectorActivation_9/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_AddStreams_Batch_2_yjsbwy13/project_StreamingDataflowPartition_1_AddStreams_Batch_2/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_Thresholding_Batch_3_mbkz810e/project_StreamingDataflowPartition_1_Thresholding_Batch_3/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_11_osvh45vq/project_StreamingDataflowPartition_1_StreamingFIFO_11/sol1/impl/verilog
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_stitch_proj_b_nwq6fe/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/finn-rtllib/memstream
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_2_IODMA_0_yqdyd6xm/project_StreamingDataflowPartition_2_IODMA_0/sol1/impl/ip
  /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_stitch_proj_rmj77hd_/ip
} [current_project]
update_ip_catalog
set_property ip_output_repo /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
read_ip -quiet /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.srcs/sources_1/bd/top/ip/top_rst_zynq_ps_100M_0/top_rst_zynq_ps_100M_0.xci
set_property used_in_implementation false [get_files -all /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.gen/sources_1/bd/top/ip/top_rst_zynq_ps_100M_0/top_rst_zynq_ps_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.gen/sources_1/bd/top/ip/top_rst_zynq_ps_100M_0/top_rst_zynq_ps_100M_0.xdc]
set_property used_in_implementation false [get_files -all /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.gen/sources_1/bd/top/ip/top_rst_zynq_ps_100M_0/top_rst_zynq_ps_100M_0_ooc.xdc]

OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
OPTRACE "Configure IP Cache" START { }

set cacheID [config_ip_cache -export -no_bom  -dir /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.runs/top_rst_zynq_ps_100M_0_synth_1 -new_name top_rst_zynq_ps_100M_0 -ip [get_ips top_rst_zynq_ps_100M_0]]

OPTRACE "Configure IP Cache" END { }
if { $cacheID == "" } {
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top top_rst_zynq_ps_100M_0 -part xc7z020clg400-1 -incremental_mode off -mode out_of_context
OPTRACE "synth_design" END { }
OPTRACE "Write IP Cache" START { }

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
# disable binary constraint mode for IPCache checkpoints
set_param constraints.enableBinaryConstraints false

catch {
 write_checkpoint -force -noxdef -rename_prefix top_rst_zynq_ps_100M_0_ top_rst_zynq_ps_100M_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_rst_zynq_ps_100M_0_stub.v
 lappend ipCachedFiles top_rst_zynq_ps_100M_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_rst_zynq_ps_100M_0_stub.vhdl
 lappend ipCachedFiles top_rst_zynq_ps_100M_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_rst_zynq_ps_100M_0_sim_netlist.v
 lappend ipCachedFiles top_rst_zynq_ps_100M_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_rst_zynq_ps_100M_0_sim_netlist.vhdl
 lappend ipCachedFiles top_rst_zynq_ps_100M_0_sim_netlist.vhdl
 set TIME_taken [expr [clock seconds] - $TIME_start]

 if { [get_msg_config -count -severity {CRITICAL WARNING}] == 0 } {
  config_ip_cache -add -dcp top_rst_zynq_ps_100M_0.dcp -move_files $ipCachedFiles   -synth_runtime $TIME_taken  -ip [get_ips top_rst_zynq_ps_100M_0]
 }
OPTRACE "Write IP Cache" END { }
}
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}

rename_ref -prefix_all top_rst_zynq_ps_100M_0_

OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top_rst_zynq_ps_100M_0.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
create_report "top_rst_zynq_ps_100M_0_synth_1_synth_report_utilization_0" "report_utilization -file top_rst_zynq_ps_100M_0_utilization_synth.rpt -pb top_rst_zynq_ps_100M_0_utilization_synth.pb"
OPTRACE "synth reports" END { }

if { [catch {
  file copy -force /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.runs/top_rst_zynq_ps_100M_0_synth_1/top_rst_zynq_ps_100M_0.dcp /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.gen/sources_1/bd/top/ip/top_rst_zynq_ps_100M_0/top_rst_zynq_ps_100M_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 status "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.gen/sources_1/bd/top/ip/top_rst_zynq_ps_100M_0/top_rst_zynq_ps_100M_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.gen/sources_1/bd/top/ip/top_rst_zynq_ps_100M_0/top_rst_zynq_ps_100M_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.gen/sources_1/bd/top/ip/top_rst_zynq_ps_100M_0/top_rst_zynq_ps_100M_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.gen/sources_1/bd/top/ip/top_rst_zynq_ps_100M_0/top_rst_zynq_ps_100M_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.runs/top_rst_zynq_ps_100M_0_synth_1/top_rst_zynq_ps_100M_0.dcp /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.gen/sources_1/bd/top/ip/top_rst_zynq_ps_100M_0/top_rst_zynq_ps_100M_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 status "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.runs/top_rst_zynq_ps_100M_0_synth_1/top_rst_zynq_ps_100M_0_stub.v /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.gen/sources_1/bd/top/ip/top_rst_zynq_ps_100M_0/top_rst_zynq_ps_100M_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.runs/top_rst_zynq_ps_100M_0_synth_1/top_rst_zynq_ps_100M_0_stub.vhdl /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.gen/sources_1/bd/top/ip/top_rst_zynq_ps_100M_0/top_rst_zynq_ps_100M_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.runs/top_rst_zynq_ps_100M_0_synth_1/top_rst_zynq_ps_100M_0_sim_netlist.v /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.gen/sources_1/bd/top/ip/top_rst_zynq_ps_100M_0/top_rst_zynq_ps_100M_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.runs/top_rst_zynq_ps_100M_0_synth_1/top_rst_zynq_ps_100M_0_sim_netlist.vhdl /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.gen/sources_1/bd/top/ip/top_rst_zynq_ps_100M_0/top_rst_zynq_ps_100M_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cacheID 

if {[file isdir /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.ip_user_files/ip/top_rst_zynq_ps_100M_0]} {
  catch { 
    file copy -force /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.gen/sources_1/bd/top/ip/top_rst_zynq_ps_100M_0/top_rst_zynq_ps_100M_0_stub.v /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.ip_user_files/ip/top_rst_zynq_ps_100M_0
  }
}

if {[file isdir /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.ip_user_files/ip/top_rst_zynq_ps_100M_0]} {
  catch { 
    file copy -force /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.gen/sources_1/bd/top/ip/top_rst_zynq_ps_100M_0/top_rst_zynq_ps_100M_0_stub.vhdl /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_cuaeus6r/finn_zynq_link.ip_user_files/ip/top_rst_zynq_ps_100M_0
  }
}
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "top_rst_zynq_ps_100M_0_synth_1" END { }
