
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $cinoutgroup]
add_wave /apatb_adders_io_top/AESL_inst_adders_io/in_out1_o_ap_ack -into $return_group -color #ffff00 -radix hex
add_wave /apatb_adders_io_top/AESL_inst_adders_io/in_out1_o_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_adders_io_top/AESL_inst_adders_io/in_out1_o -into $return_group -radix hex
add_wave /apatb_adders_io_top/AESL_inst_adders_io/in_out1_i_ap_ack -into $return_group -color #ffff00 -radix hex
add_wave /apatb_adders_io_top/AESL_inst_adders_io/in_out1_i_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_adders_io_top/AESL_inst_adders_io/in_out1_i -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $cinputgroup]
add_wave /apatb_adders_io_top/AESL_inst_adders_io/in2_ap_ack -into $return_group -color #ffff00 -radix hex
add_wave /apatb_adders_io_top/AESL_inst_adders_io/in2 -into $return_group -radix hex
add_wave /apatb_adders_io_top/AESL_inst_adders_io/in1_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_adders_io_top/AESL_inst_adders_io/in1 -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_adders_io_top/AESL_inst_adders_io/ap_start -into $blocksiggroup
add_wave /apatb_adders_io_top/AESL_inst_adders_io/ap_done -into $blocksiggroup
add_wave /apatb_adders_io_top/AESL_inst_adders_io/ap_idle -into $blocksiggroup
add_wave /apatb_adders_io_top/AESL_inst_adders_io/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_adders_io_top/AESL_inst_adders_io/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_adders_io_top/AESL_inst_adders_io/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_adders_io_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_adders_io_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_adders_io_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_adders_io_top/LENGTH_in1 -into $tb_portdepth_group -radix hex
add_wave /apatb_adders_io_top/LENGTH_in2 -into $tb_portdepth_group -radix hex
add_wave /apatb_adders_io_top/LENGTH_in_out1 -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_return_group [add_wave_group return(wire) -into $tbcinoutgroup]
add_wave /apatb_adders_io_top/in_out1_o_ap_ack -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_adders_io_top/in_out1_o_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_adders_io_top/in_out1_o -into $tb_return_group -radix hex
add_wave /apatb_adders_io_top/in_out1_i_ap_ack -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_adders_io_top/in_out1_i_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_adders_io_top/in_out1_i -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(wire) -into $tbcinputgroup]
add_wave /apatb_adders_io_top/in2_ap_ack -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_adders_io_top/in2 -into $tb_return_group -radix hex
add_wave /apatb_adders_io_top/in1_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_adders_io_top/in1 -into $tb_return_group -radix hex
save_wave_config adders_io.wcfg
run all
quit

