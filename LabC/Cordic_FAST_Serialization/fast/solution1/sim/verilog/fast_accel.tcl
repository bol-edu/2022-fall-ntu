
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(memory) -into $coutputgroup]
add_wave /apatb_fast_accel_top/AESL_inst_fast_accel/img_out_d0 -into $return_group -radix hex
add_wave /apatb_fast_accel_top/AESL_inst_fast_accel/img_out_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fast_accel_top/AESL_inst_fast_accel/img_out_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fast_accel_top/AESL_inst_fast_accel/img_out_address0 -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(memory) -into $cinputgroup]
add_wave /apatb_fast_accel_top/AESL_inst_fast_accel/cols -into $return_group -radix hex
add_wave /apatb_fast_accel_top/AESL_inst_fast_accel/rows -into $return_group -radix hex
add_wave /apatb_fast_accel_top/AESL_inst_fast_accel/threshold -into $return_group -radix hex
add_wave /apatb_fast_accel_top/AESL_inst_fast_accel/img_in_q0 -into $return_group -radix hex
add_wave /apatb_fast_accel_top/AESL_inst_fast_accel/img_in_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fast_accel_top/AESL_inst_fast_accel/img_in_address0 -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_fast_accel_top/AESL_inst_fast_accel/ap_start -into $blocksiggroup
add_wave /apatb_fast_accel_top/AESL_inst_fast_accel/ap_done -into $blocksiggroup
add_wave /apatb_fast_accel_top/AESL_inst_fast_accel/ap_idle -into $blocksiggroup
add_wave /apatb_fast_accel_top/AESL_inst_fast_accel/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_fast_accel_top/AESL_inst_fast_accel/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_fast_accel_top/AESL_inst_fast_accel/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_fast_accel_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_fast_accel_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_fast_accel_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_fast_accel_top/LENGTH_img_in -into $tb_portdepth_group -radix hex
add_wave /apatb_fast_accel_top/LENGTH_threshold -into $tb_portdepth_group -radix hex
add_wave /apatb_fast_accel_top/LENGTH_img_out -into $tb_portdepth_group -radix hex
add_wave /apatb_fast_accel_top/LENGTH_rows -into $tb_portdepth_group -radix hex
add_wave /apatb_fast_accel_top/LENGTH_cols -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(memory) -into $tbcoutputgroup]
add_wave /apatb_fast_accel_top/img_out_d0 -into $tb_return_group -radix hex
add_wave /apatb_fast_accel_top/img_out_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fast_accel_top/img_out_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fast_accel_top/img_out_address0 -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(memory) -into $tbcinputgroup]
add_wave /apatb_fast_accel_top/cols -into $tb_return_group -radix hex
add_wave /apatb_fast_accel_top/rows -into $tb_return_group -radix hex
add_wave /apatb_fast_accel_top/threshold -into $tb_return_group -radix hex
add_wave /apatb_fast_accel_top/img_in_q0 -into $tb_return_group -radix hex
add_wave /apatb_fast_accel_top/img_in_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fast_accel_top/img_in_address0 -into $tb_return_group -radix hex
save_wave_config fast_accel.wcfg
run all
quit

