
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set output_group [add_wave_group output(memory) -into $coutputgroup]
add_wave /apatb_dct_top/AESL_inst_dct/output_r_we1 -into $output_group -color #ffff00 -radix hex
add_wave /apatb_dct_top/AESL_inst_dct/output_r_q1 -into $output_group -radix hex
add_wave /apatb_dct_top/AESL_inst_dct/output_r_d1 -into $output_group -radix hex
add_wave /apatb_dct_top/AESL_inst_dct/output_r_ce1 -into $output_group -color #ffff00 -radix hex
add_wave /apatb_dct_top/AESL_inst_dct/output_r_address1 -into $output_group -radix hex
add_wave /apatb_dct_top/AESL_inst_dct/output_r_we0 -into $output_group -color #ffff00 -radix hex
add_wave /apatb_dct_top/AESL_inst_dct/output_r_q0 -into $output_group -radix hex
add_wave /apatb_dct_top/AESL_inst_dct/output_r_d0 -into $output_group -radix hex
add_wave /apatb_dct_top/AESL_inst_dct/output_r_ce0 -into $output_group -color #ffff00 -radix hex
add_wave /apatb_dct_top/AESL_inst_dct/output_r_address0 -into $output_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set input_group [add_wave_group input(memory) -into $cinputgroup]
add_wave /apatb_dct_top/AESL_inst_dct/input_r_we1 -into $input_group -color #ffff00 -radix hex
add_wave /apatb_dct_top/AESL_inst_dct/input_r_q1 -into $input_group -radix hex
add_wave /apatb_dct_top/AESL_inst_dct/input_r_d1 -into $input_group -radix hex
add_wave /apatb_dct_top/AESL_inst_dct/input_r_ce1 -into $input_group -color #ffff00 -radix hex
add_wave /apatb_dct_top/AESL_inst_dct/input_r_address1 -into $input_group -radix hex
add_wave /apatb_dct_top/AESL_inst_dct/input_r_we0 -into $input_group -color #ffff00 -radix hex
add_wave /apatb_dct_top/AESL_inst_dct/input_r_q0 -into $input_group -radix hex
add_wave /apatb_dct_top/AESL_inst_dct/input_r_d0 -into $input_group -radix hex
add_wave /apatb_dct_top/AESL_inst_dct/input_r_ce0 -into $input_group -color #ffff00 -radix hex
add_wave /apatb_dct_top/AESL_inst_dct/input_r_address0 -into $input_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_dct_top/AESL_inst_dct/ap_start -into $blocksiggroup
add_wave /apatb_dct_top/AESL_inst_dct/ap_done -into $blocksiggroup
add_wave /apatb_dct_top/AESL_inst_dct/ap_ready -into $blocksiggroup
add_wave /apatb_dct_top/AESL_inst_dct/ap_idle -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_dct_top/AESL_inst_dct/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_dct_top/AESL_inst_dct/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_dct_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_dct_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_dct_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_dct_top/LENGTH_input_r -into $tb_portdepth_group -radix hex
add_wave /apatb_dct_top/LENGTH_output_r -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_output_group [add_wave_group output(memory) -into $tbcoutputgroup]
add_wave /apatb_dct_top/output_r_we1 -into $tb_output_group -color #ffff00 -radix hex
add_wave /apatb_dct_top/output_r_q1 -into $tb_output_group -radix hex
add_wave /apatb_dct_top/output_r_d1 -into $tb_output_group -radix hex
add_wave /apatb_dct_top/output_r_ce1 -into $tb_output_group -color #ffff00 -radix hex
add_wave /apatb_dct_top/output_r_address1 -into $tb_output_group -radix hex
add_wave /apatb_dct_top/output_r_we0 -into $tb_output_group -color #ffff00 -radix hex
add_wave /apatb_dct_top/output_r_q0 -into $tb_output_group -radix hex
add_wave /apatb_dct_top/output_r_d0 -into $tb_output_group -radix hex
add_wave /apatb_dct_top/output_r_ce0 -into $tb_output_group -color #ffff00 -radix hex
add_wave /apatb_dct_top/output_r_address0 -into $tb_output_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_input_group [add_wave_group input(memory) -into $tbcinputgroup]
add_wave /apatb_dct_top/input_r_we1 -into $tb_input_group -color #ffff00 -radix hex
add_wave /apatb_dct_top/input_r_q1 -into $tb_input_group -radix hex
add_wave /apatb_dct_top/input_r_d1 -into $tb_input_group -radix hex
add_wave /apatb_dct_top/input_r_ce1 -into $tb_input_group -color #ffff00 -radix hex
add_wave /apatb_dct_top/input_r_address1 -into $tb_input_group -radix hex
add_wave /apatb_dct_top/input_r_we0 -into $tb_input_group -color #ffff00 -radix hex
add_wave /apatb_dct_top/input_r_q0 -into $tb_input_group -radix hex
add_wave /apatb_dct_top/input_r_d0 -into $tb_input_group -radix hex
add_wave /apatb_dct_top/input_r_ce0 -into $tb_input_group -color #ffff00 -radix hex
add_wave /apatb_dct_top/input_r_address0 -into $tb_input_group -radix hex
save_wave_config dct.wcfg
run all
quit

