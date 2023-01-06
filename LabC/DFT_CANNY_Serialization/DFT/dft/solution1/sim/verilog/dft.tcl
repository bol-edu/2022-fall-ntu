
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(memory) -into $coutputgroup]
add_wave /apatb_dft_top/AESL_inst_dft/OUT_I_3_d1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_I_3_we1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_I_3_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_I_3_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_I_3_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_I_3_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_I_3_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_I_3_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_I_2_d1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_I_2_we1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_I_2_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_I_2_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_I_2_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_I_2_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_I_2_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_I_2_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_I_1_d1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_I_1_we1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_I_1_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_I_1_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_I_1_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_I_1_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_I_1_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_I_1_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_R_3_d1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_R_3_we1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_R_3_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_R_3_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_R_3_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_R_3_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_R_3_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_R_3_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_R_2_d1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_R_2_we1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_R_2_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_R_2_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_R_2_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_R_2_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_R_2_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_R_2_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_R_1_d1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_R_1_we1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_R_1_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_R_1_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_R_1_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_R_1_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_R_1_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/OUT_R_1_address0 -into $return_group -radix hex
set OUT_R_0__OUT_I_0__return_group [add_wave_group OUT_R_0__OUT_I_0__return(axi_slave) -into $coutputgroup]
add_wave /apatb_dft_top/AESL_inst_dft/interrupt -into $OUT_R_0__OUT_I_0__return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/s_axi_control_BRESP -into $OUT_R_0__OUT_I_0__return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/s_axi_control_BREADY -into $OUT_R_0__OUT_I_0__return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/s_axi_control_BVALID -into $OUT_R_0__OUT_I_0__return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/s_axi_control_RRESP -into $OUT_R_0__OUT_I_0__return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/s_axi_control_RDATA -into $OUT_R_0__OUT_I_0__return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/s_axi_control_RREADY -into $OUT_R_0__OUT_I_0__return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/s_axi_control_RVALID -into $OUT_R_0__OUT_I_0__return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/s_axi_control_ARREADY -into $OUT_R_0__OUT_I_0__return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/s_axi_control_ARVALID -into $OUT_R_0__OUT_I_0__return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/s_axi_control_ARADDR -into $OUT_R_0__OUT_I_0__return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/s_axi_control_WSTRB -into $OUT_R_0__OUT_I_0__return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/s_axi_control_WDATA -into $OUT_R_0__OUT_I_0__return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/s_axi_control_WREADY -into $OUT_R_0__OUT_I_0__return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/s_axi_control_WVALID -into $OUT_R_0__OUT_I_0__return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/s_axi_control_AWREADY -into $OUT_R_0__OUT_I_0__return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/s_axi_control_AWVALID -into $OUT_R_0__OUT_I_0__return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/s_axi_control_AWADDR -into $OUT_R_0__OUT_I_0__return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(axis) -into $cinputgroup]
add_wave /apatb_dft_top/AESL_inst_dft/X_I_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/X_I_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/X_I_TDATA -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/X_R_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/X_R_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/X_R_TDATA -into $return_group -radix hex
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_dft_top/AESL_inst_dft/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_dft_top/AESL_inst_dft/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_dft_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_dft_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_dft_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_dft_top/LENGTH_X_R -into $tb_portdepth_group -radix hex
add_wave /apatb_dft_top/LENGTH_X_I -into $tb_portdepth_group -radix hex
add_wave /apatb_dft_top/LENGTH_OUT_R_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_dft_top/LENGTH_OUT_R_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_dft_top/LENGTH_OUT_R_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_dft_top/LENGTH_OUT_R_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_dft_top/LENGTH_OUT_I_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_dft_top/LENGTH_OUT_I_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_dft_top/LENGTH_OUT_I_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_dft_top/LENGTH_OUT_I_3 -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(memory) -into $tbcoutputgroup]
add_wave /apatb_dft_top/OUT_I_3_d1 -into $tb_return_group -radix hex
add_wave /apatb_dft_top/OUT_I_3_we1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/OUT_I_3_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/OUT_I_3_address1 -into $tb_return_group -radix hex
add_wave /apatb_dft_top/OUT_I_3_d0 -into $tb_return_group -radix hex
add_wave /apatb_dft_top/OUT_I_3_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/OUT_I_3_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/OUT_I_3_address0 -into $tb_return_group -radix hex
add_wave /apatb_dft_top/OUT_I_2_d1 -into $tb_return_group -radix hex
add_wave /apatb_dft_top/OUT_I_2_we1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/OUT_I_2_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/OUT_I_2_address1 -into $tb_return_group -radix hex
add_wave /apatb_dft_top/OUT_I_2_d0 -into $tb_return_group -radix hex
add_wave /apatb_dft_top/OUT_I_2_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/OUT_I_2_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/OUT_I_2_address0 -into $tb_return_group -radix hex
add_wave /apatb_dft_top/OUT_I_1_d1 -into $tb_return_group -radix hex
add_wave /apatb_dft_top/OUT_I_1_we1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/OUT_I_1_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/OUT_I_1_address1 -into $tb_return_group -radix hex
add_wave /apatb_dft_top/OUT_I_1_d0 -into $tb_return_group -radix hex
add_wave /apatb_dft_top/OUT_I_1_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/OUT_I_1_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/OUT_I_1_address0 -into $tb_return_group -radix hex
add_wave /apatb_dft_top/OUT_R_3_d1 -into $tb_return_group -radix hex
add_wave /apatb_dft_top/OUT_R_3_we1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/OUT_R_3_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/OUT_R_3_address1 -into $tb_return_group -radix hex
add_wave /apatb_dft_top/OUT_R_3_d0 -into $tb_return_group -radix hex
add_wave /apatb_dft_top/OUT_R_3_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/OUT_R_3_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/OUT_R_3_address0 -into $tb_return_group -radix hex
add_wave /apatb_dft_top/OUT_R_2_d1 -into $tb_return_group -radix hex
add_wave /apatb_dft_top/OUT_R_2_we1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/OUT_R_2_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/OUT_R_2_address1 -into $tb_return_group -radix hex
add_wave /apatb_dft_top/OUT_R_2_d0 -into $tb_return_group -radix hex
add_wave /apatb_dft_top/OUT_R_2_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/OUT_R_2_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/OUT_R_2_address0 -into $tb_return_group -radix hex
add_wave /apatb_dft_top/OUT_R_1_d1 -into $tb_return_group -radix hex
add_wave /apatb_dft_top/OUT_R_1_we1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/OUT_R_1_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/OUT_R_1_address1 -into $tb_return_group -radix hex
add_wave /apatb_dft_top/OUT_R_1_d0 -into $tb_return_group -radix hex
add_wave /apatb_dft_top/OUT_R_1_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/OUT_R_1_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/OUT_R_1_address0 -into $tb_return_group -radix hex
set tb_OUT_R_0__OUT_I_0__return_group [add_wave_group OUT_R_0__OUT_I_0__return(axi_slave) -into $tbcoutputgroup]
add_wave /apatb_dft_top/control_INTERRUPT -into $tb_OUT_R_0__OUT_I_0__return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/control_BRESP -into $tb_OUT_R_0__OUT_I_0__return_group -radix hex
add_wave /apatb_dft_top/control_BREADY -into $tb_OUT_R_0__OUT_I_0__return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/control_BVALID -into $tb_OUT_R_0__OUT_I_0__return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/control_RRESP -into $tb_OUT_R_0__OUT_I_0__return_group -radix hex
add_wave /apatb_dft_top/control_RDATA -into $tb_OUT_R_0__OUT_I_0__return_group -radix hex
add_wave /apatb_dft_top/control_RREADY -into $tb_OUT_R_0__OUT_I_0__return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/control_RVALID -into $tb_OUT_R_0__OUT_I_0__return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/control_ARREADY -into $tb_OUT_R_0__OUT_I_0__return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/control_ARVALID -into $tb_OUT_R_0__OUT_I_0__return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/control_ARADDR -into $tb_OUT_R_0__OUT_I_0__return_group -radix hex
add_wave /apatb_dft_top/control_WSTRB -into $tb_OUT_R_0__OUT_I_0__return_group -radix hex
add_wave /apatb_dft_top/control_WDATA -into $tb_OUT_R_0__OUT_I_0__return_group -radix hex
add_wave /apatb_dft_top/control_WREADY -into $tb_OUT_R_0__OUT_I_0__return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/control_WVALID -into $tb_OUT_R_0__OUT_I_0__return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/control_AWREADY -into $tb_OUT_R_0__OUT_I_0__return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/control_AWVALID -into $tb_OUT_R_0__OUT_I_0__return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/control_AWADDR -into $tb_OUT_R_0__OUT_I_0__return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(axis) -into $tbcinputgroup]
add_wave /apatb_dft_top/X_I_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/X_I_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/X_I_TDATA -into $tb_return_group -radix hex
add_wave /apatb_dft_top/X_R_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/X_R_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/X_R_TDATA -into $tb_return_group -radix hex
save_wave_config dft.wcfg
run all
quit

