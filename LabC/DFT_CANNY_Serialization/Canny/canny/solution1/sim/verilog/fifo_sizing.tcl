
proc getBitwidth {value} {

    if {$value < 2} {
        return 1
    } else {
        set div [expr $value / 2]
        set cnt [getBitwidth $div]
        return [expr $cnt + 1]
    }
}

proc x_FIFO_depth {} {
    #get deadlock related FIFO
    set deadlock_fifos ""
    set fl [open "deadlock_db.dat" r]
    while {[gets $fl line] >= 0} {
        if {[regexp "Dependence_Channel_path" $line]} {
            set deadlock_fifo_info [split $line " "]
            set deadlock_fifo_item [lindex $deadlock_fifo_info 1]
            set processed_item 0
            foreach item $deadlock_fifos {
                if {$item == $deadlock_fifo_item} {
                    set processed_item 1
                }
            }
            if {$processed_item == 0} {
                lappend deadlock_fifos $deadlock_fifo_item
            }
        }
    }
    close $fl
    #get related FIFO depth and enlarge
    set depth_db ""
    set fl [open "fifo_para.vh" r]
    while {[gets $fl line] >= 0} {
        if {[regexp {(defparam.+?)(.+)(.+?DEPTH)} $line hit pre inst post]} {
            regexp {('d)(.+)(;)} $line hit pre last_depth post
            set last_deadlock_related [regexp {deadlock related} $line]
            set is_dl_fifo 0
            foreach item $deadlock_fifos {
                set first_dot [string first "." $item]
                set deadlock_sub_module [string range $item [expr $first_dot + 1] end]
                set first_dot [string first "." $inst]
                set sub_module [string range $inst [expr $first_dot + 1] end]
                if {$deadlock_sub_module == $sub_module} {
                    set is_dl_fifo 1
                }
            }
            if {$is_dl_fifo == 1} {
                set depth [expr $last_depth * 2]
            } else {
                set depth $last_depth
            }
            set bitwidth [getBitwidth [expr $depth - 1]]
            set fifo_info "$inst $depth $bitwidth $is_dl_fifo $last_deadlock_related"
            lappend depth_db $fifo_info
        }
    }
    close $fl

    if {[file exist "original_depth.log"] == 0} {
        exec mv "fifo_para.vh" "original_depth.log"
    }

    set fl [open "fifo_para.vh" w]
    foreach item $depth_db {
        set inst [lindex $item 0]
        set depth [lindex $item 1]
        set bitwidth [lindex $item 2]
        set is_dl_fifo [lindex $item 3]
        set last_dl_related [lindex $item 4]
        if {$is_dl_fifo == 1 || $last_dl_related == 1} {
            puts $fl "defparam ${inst}.DEPTH = [expr $bitwidth + 1]'d$depth; //deadlock related"
        } else {
            puts $fl "defparam ${inst}.DEPTH = [expr $bitwidth + 1]'d$depth;"
        }
        puts $fl "defparam ${inst}.ADDR_WIDTH = 32'd$bitwidth;"
    }
    close $fl
}
proc calc_suitable_FIFO_depth {} {
    if {[file exist "fifo_sizing_current.json"] && [file exist "fifo_sizing_last.json"] && [file exist "fifo_para.vh"] && [file exist "original_depth.log"]} {
        set deadlock_fifos [get_deadlock_fifos]
        set fl [open "fifo_sizing_current.json" r]
        set readbuf [read $fl]
        close $fl
        set db [::AP::json2dict $readbuf]
        set fl [open "fifo_sizing_last.json" r]
        set last_readbuf [read $fl]
        close $fl
        set last_db [::AP::json2dict $last_readbuf]
        set original_depth_info [get_original_depth_info]
        if {$db != "" && [dict exist $db "fifo_info"] && $last_db != "" && [dict exist $last_db "fifo_info"]} {
            set fl [open "fifo_size.rpt" w]
            set gfl [open "auto_FIFO_sizing.csv" w]
            set cur_info [dict get $db "fifo_info"]
            set cur_total_lat [dict get $db "lat_total"]
            set last_info [dict get $last_db "fifo_info"]
            set last_total_lat [dict get $last_db "lat_total"]
            regsub "
" $cur_total_lat "" cur_total_lat
            regsub "
" $last_total_lat "" last_total_lat
            if {$cur_total_lat < $last_total_lat} {
                puts $fl ""
                puts $fl "This result is generated under the condition there is no block from testbench side."
                puts $fl "So in real working environment, the suggested depth may need some margin."
                puts $fl ""
                puts $fl "After FIFO sizing, module total executing time is improved.(from $last_total_lat to $cur_total_lat cycles)"
                puts $fl "The detailed FIFO info are listed below."
                foreach cur_inf $cur_info {
                    set cur_inst [dict get $cur_inf "inst"]
                    set cur_depth [dict get $cur_inf "depth"]
                    set cur_iblock [dict get $cur_inf "input_block"]
                    set cur_oblock [dict get $cur_inf "output_block"]
                    set chan_type [dict get $cur_inf "chan_type"]
                    set is_dl_fifo [is_deadlock_fifo $cur_inst $deadlock_fifos]
                    set original_depth [get_orginal_depth $cur_inst $original_depth_info]
                    set suggest_depth $cur_depth
                    foreach last_inf $last_info {
                        set last_inst [dict get $last_inf "inst"]
                        if {$cur_inst == $last_inst} {
                            set last_work_scr [dict get $last_inf "work_scenario"]
                            set last_depth [dict get $last_inf "depth"]
                        }
                    }
                    if {$last_work_scr == 6} {
                        set suggest_depth $last_depth
                    }
                    dump_rpt_contect $fl $cur_inst $is_dl_fifo $suggest_depth $original_depth $last_work_scr 1 $chan_type
                    dump_GUI_rpt_content $gfl $cur_inst $is_dl_fifo $suggest_depth $original_depth $last_work_scr 1 $chan_type
                }
            } else {
                puts $fl ""
                puts $fl "This result is generated under the condition there is no block from testbench side."
                puts $fl "So in real working environment, the suggested depth may need some margin."
                puts $fl ""
                puts $fl "After FIFO sizing, module total executing time has no change.(still $last_total_lat cycles)"
                puts $fl "The detailed FIFO info are listed below."
                foreach last_inf $last_info {
                    set last_inst [dict get $last_inf "inst"]
                    set last_depth [dict get $last_inf "depth"]
                    set last_work_scr [dict get $last_inf "work_scenario"]
                    set chan_type [dict get $last_inf "chan_type"]
                    set is_dl_fifo [is_deadlock_fifo $last_inst $deadlock_fifos]
                    set original_depth [get_orginal_depth $last_inst $original_depth_info]
                    set suggest_depth $last_depth
                    dump_rpt_contect $fl $last_inst $is_dl_fifo $suggest_depth $original_depth $last_work_scr 0 $chan_type
                    dump_GUI_rpt_content $gfl $last_inst $is_dl_fifo $suggest_depth $original_depth $last_work_scr 0 $chan_type
                }
            }
            close $fl
            close $gfl
        } else {
            # should not happen
        }
    } else {
        # should not happen
    }
}
proc FIFO_depth_prepare {} {
    if {[file exist "fifo_sizing_current.json"] && [file exist "fifo_para.vh"]} {
        set deadlock_fifos [get_deadlock_fifos]
        set fl [open "fifo_sizing_current.json" r]
        set readbuf [read $fl]
        close $fl
        set db [::AP::json2dict $readbuf]
        if {[file exist "original_depth.log"] == 0} {
            exec mv "fifo_para.vh" "original_depth.log"
        }
        if {$db != "" && [dict exist $db "fifo_info"]} {
            set fifo_info [dict get $db "fifo_info"]
            set fl [open "fifo_para.vh" w]
            foreach inf $fifo_info {
                set enlarge_depth 0
                set inst [dict get $inf "inst"]
                set depth [dict get $inf "depth"]
                set scr [dict get $inf "work_scenario"]
                if {$scr <= 6 && $scr != 6} {
                    set enlarge_depth 1
                }
                if {$enlarge_depth == 0} {
                    if {[is_deadlock_fifo $inst $deadlock_fifos] == 1} {
                        set calc_depth [expr $depth + 1]
                    } else {
                        set calc_depth $depth
                    }
                } else {
                # fifo size level: 1000, 5000, 10000, 50000, 100000
                if {$depth <= 500} {
                    set calc_depth 1000
                } elseif {$depth <= 2500} {
                    set calc_depth 5000
                } elseif {$depth <= 10000} {
                    set calc_depth 20000
                } elseif {$depth <= 25000} {
                    set calc_depth 50000
                } else {
                    set calc_depth 100000
                }
                    }
                if {$calc_depth == 1} {
                    set calc_depth 2
                }
                set bitwidth [getBitwidth [expr $calc_depth - 1]]
                if {[is_deadlock_fifo $inst $deadlock_fifos] == 1} {
                    puts $fl "defparam ${inst}.DEPTH = [expr $bitwidth + 1]'d$calc_depth; //deadlock related"
                } else {
                    puts $fl "defparam ${inst}.DEPTH = [expr $bitwidth + 1]'d$calc_depth;"
                }
                puts $fl "defparam ${inst}.ADDR_WIDTH = 32'd$bitwidth;"
            }
            close $fl
        } else {
            # should not happen
        }
        eval exec "mv fifo_sizing_current.json fifo_sizing_last.json"
    } else {
        # should not happen
    }
}
proc dump_rpt_contect {fl module is_dl_fifo depth original_depth work_scr improved chan_type} {

    puts $fl "    FIFO($module):"
    puts $fl "    {"
    puts $fl "        The user setting depth:       $original_depth."
    if {$improved == 1} {
        puts $fl "        The smallest suggest depth:       [expr $depth + 1]."
    } elseif {$is_dl_fifo == 1 || $original_depth != $depth} {
        puts $fl "        The smallest suggest depth:       [expr $depth + 1]."
    } else {
        puts $fl "        The smallest suggest depth:       $depth."
    }
    if {$is_dl_fifo == 1} {
        puts $fl "        Involved in deadlock path:        Yes."
    } else {
        puts $fl "        Involved in deadlock path:        No."
    }
    puts $fl "        Work mode:"
    switch $work_scr {
        1 {
            puts $fl "            FIFO always blocks its consumer and its producer in pairs."
            puts $fl "            When producer starts writing, it is immediately blocked."
            puts $fl "            When consumer starts reading, it is immdeiately blocked."
            puts $fl "            The possible reason is the FIFO depth is not big enough to make the consumer and producer work smoothly."
          }
        2 {
            puts $fl "            FIFO works in an unstable status."
            puts $fl "            When consumer starts to read, it always meets read block although FIFO stores all data which producer just writes into."
            puts $fl "            When producer starts to write, it always meets write block due to consumer can not read all data stored in last group writing."
            puts $fl "            The possible reason is the producer and consumer work unbalanced."
          }
        3 {
            puts $fl "            FIFO always blocks its consumer."
            puts $fl "            FIFO may sometimes or never block its producer."
            puts $fl "            The possible reason is the producer works slowly for this channel."
          }
        6 -
        4 {
            puts $fl "            FIFO always blocks its producer."
            puts $fl "            FIFO may sometimes or never blocks its consumer."
            puts $fl "            The possible reason is the producer works fast for this channel."
          }
        5 {
            puts $fl "            FIFO never blocks its consumer and producer."
            puts $fl "            The possible reason is the FIFO depth is big enough."
          }
        default {
            puts $fl "            FIFO sometimes blocks its consumer."
            puts $fl "            FIFO sometimes blocks its producer."
            puts $fl "            And the blocks have no fixed relationship."
          }
        }

    puts $fl "    }"
    puts $fl ""
}
proc dump_GUI_rpt_content {fl module is_dl_fifo depth original_depth work_scr improved chan_type} {
    set top_inst_sep [string first "." $module]
    set FIFO_inst_sep [string last "." $module]
    if {$top_inst_sep == $FIFO_inst_sep} {
        set FIFO_hierarchy_path ""
    } else {
        set FIFO_hierarchy_path [string range $module [expr $top_inst_sep + 1] [expr $FIFO_inst_sep - 1]]
    }
    set FIFO_inst [string range $module [expr $FIFO_inst_sep + 1] end]
    if {$improved == 1} {
        set FIFO_depth [expr $depth + 1]
    } elseif {$is_dl_fifo == 1 || $original_depth != $depth} {
        set FIFO_depth [expr $depth + 1]
    } else {
        set FIFO_depth $depth
    }
    if {$chan_type == 0} {
        set FIFO_type "Stream"
    } elseif {$chan_type == 1} {
        set FIFO_type "TaskLevel"
    } elseif {$chan_type == 2} {
        set FIFO_type "ScalarPro"
    }
    puts $fl "$FIFO_hierarchy_path,$FIFO_inst,$FIFO_depth,$FIFO_type"
}
proc get_deadlock_fifos {} {
    set fifo_list ""
    set fl [open "fifo_para.vh" r]
    while {[gets $fl line] >= 0} {
        if {[regexp {deadlock related} $line]} {
            regexp {(defparam.+?)(.+)(.+?DEPTH)} $line hit pre inst post
            lappend fifo_list $inst
        }
    }
    close $fl
    return $fifo_list
}
proc is_deadlock_fifo {inst deadlock_fifos} {
    set is_dl_fifo 0
    foreach deadlock_fifo $deadlock_fifos {
        if {$inst == $deadlock_fifo} {
            set is_dl_fifo 1
        }
    }
    return $is_dl_fifo
}
proc get_original_depth_info {} {
    set fl [open "original_depth.log" r]
    set original_depth_info ""
    while {[gets $fl line] >= 0} {
        if {[regexp {(defparam.+?)(.+)(.+?DEPTH)} $line hit pre inst post]} {
            regexp {('d)(.+)(;)} $line hit pre depth post
            set item "$inst $depth"
            lappend original_depth_info "$item"
        }
    }
    close $fl
    return $original_depth_info
}
proc get_orginal_depth {inst original_depth_info} {
    set original_depth 1
    foreach item $original_depth_info {
        set item_inst [lindex $item 0]
        if {$inst == $item_inst} {
            set original_depth [lindex $item 1]
        }
    }
    return $original_depth
}
