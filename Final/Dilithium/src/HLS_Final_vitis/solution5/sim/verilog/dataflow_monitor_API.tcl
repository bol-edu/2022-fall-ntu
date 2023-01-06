
proc df_record_move {} {
    set fifo_record_directory "../../.autopilot/db/channel_depth_info"
    set process_record_directory "../../.autopilot/db/process_stalling_info"
    set loop_record_directory "../../.autopilot/db/loop_performance_info"

    if {[file isdirectory $fifo_record_directory] == 0} {
        file mkdir $fifo_record_directory
    }

    if {[file isdirectory $process_record_directory] == 0} {
        file mkdir $process_record_directory
    }

    if {[file isdirectory $loop_record_directory] == 0} {
        file mkdir $loop_record_directory
    }
    exec zip process.zip -m {*}[glob -nocomplain status*.csv module_status*.csv]
    df_move_file_type "process.zip" $process_record_directory
    exec zip loop.zip -m {*}[glob -nocomplain *_loop_status*.csv]
    df_move_file_type "loop.zip" $loop_record_directory
}

proc df_move_file_type {file_format target_dir} {
    set file_list [glob $file_format]
    foreach file_item $file_list {
        file rename -force $file_item [file join $target_dir $file_item]
    }
}
