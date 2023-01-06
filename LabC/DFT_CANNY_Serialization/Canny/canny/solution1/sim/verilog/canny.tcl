
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(memory) -into $coutputgroup]
add_wave /apatb_canny_top/AESL_inst_canny/dst_we1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_canny_top/AESL_inst_canny/dst_q1 -into $return_group -radix hex
add_wave /apatb_canny_top/AESL_inst_canny/dst_d1 -into $return_group -radix hex
add_wave /apatb_canny_top/AESL_inst_canny/dst_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_canny_top/AESL_inst_canny/dst_address1 -into $return_group -radix hex
add_wave /apatb_canny_top/AESL_inst_canny/dst_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_canny_top/AESL_inst_canny/dst_q0 -into $return_group -radix hex
add_wave /apatb_canny_top/AESL_inst_canny/dst_d0 -into $return_group -radix hex
add_wave /apatb_canny_top/AESL_inst_canny/dst_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_canny_top/AESL_inst_canny/dst_address0 -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(memory) -into $cinputgroup]
add_wave /apatb_canny_top/AESL_inst_canny/lowerThresh -into $return_group -radix hex
add_wave /apatb_canny_top/AESL_inst_canny/upperThresh -into $return_group -radix hex
add_wave /apatb_canny_top/AESL_inst_canny/src_we1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_canny_top/AESL_inst_canny/src_q1 -into $return_group -radix hex
add_wave /apatb_canny_top/AESL_inst_canny/src_d1 -into $return_group -radix hex
add_wave /apatb_canny_top/AESL_inst_canny/src_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_canny_top/AESL_inst_canny/src_address1 -into $return_group -radix hex
add_wave /apatb_canny_top/AESL_inst_canny/src_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_canny_top/AESL_inst_canny/src_q0 -into $return_group -radix hex
add_wave /apatb_canny_top/AESL_inst_canny/src_d0 -into $return_group -radix hex
add_wave /apatb_canny_top/AESL_inst_canny/src_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_canny_top/AESL_inst_canny/src_address0 -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_canny_top/AESL_inst_canny/ap_start -into $blocksiggroup
add_wave /apatb_canny_top/AESL_inst_canny/ap_done -into $blocksiggroup
add_wave /apatb_canny_top/AESL_inst_canny/ap_ready -into $blocksiggroup
add_wave /apatb_canny_top/AESL_inst_canny/ap_idle -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_canny_top/AESL_inst_canny/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_canny_top/AESL_inst_canny/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_canny_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_canny_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_canny_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_canny_top/LENGTH_dst -into $tb_portdepth_group -radix hex
add_wave /apatb_canny_top/LENGTH_lowerThresh -into $tb_portdepth_group -radix hex
add_wave /apatb_canny_top/LENGTH_src -into $tb_portdepth_group -radix hex
add_wave /apatb_canny_top/LENGTH_upperThresh -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(memory) -into $tbcoutputgroup]
add_wave /apatb_canny_top/dst_we1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_canny_top/dst_q1 -into $tb_return_group -radix hex
add_wave /apatb_canny_top/dst_d1 -into $tb_return_group -radix hex
add_wave /apatb_canny_top/dst_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_canny_top/dst_address1 -into $tb_return_group -radix hex
add_wave /apatb_canny_top/dst_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_canny_top/dst_q0 -into $tb_return_group -radix hex
add_wave /apatb_canny_top/dst_d0 -into $tb_return_group -radix hex
add_wave /apatb_canny_top/dst_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_canny_top/dst_address0 -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(memory) -into $tbcinputgroup]
add_wave /apatb_canny_top/lowerThresh -into $tb_return_group -radix hex
add_wave /apatb_canny_top/upperThresh -into $tb_return_group -radix hex
add_wave /apatb_canny_top/src_we1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_canny_top/src_q1 -into $tb_return_group -radix hex
add_wave /apatb_canny_top/src_d1 -into $tb_return_group -radix hex
add_wave /apatb_canny_top/src_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_canny_top/src_address1 -into $tb_return_group -radix hex
add_wave /apatb_canny_top/src_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_canny_top/src_q0 -into $tb_return_group -radix hex
add_wave /apatb_canny_top/src_d0 -into $tb_return_group -radix hex
add_wave /apatb_canny_top/src_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_canny_top/src_address0 -into $tb_return_group -radix hex
save_wave_config canny.wcfg
run all
quit

