
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [3:0] axis_block_sigs;
wire [3:0] inst_idle_sigs;
wire [0:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~test_label_out_TDATA_blk_n;
assign axis_block_sigs[1] = ~grp_hdc_maxi_Pipeline_VITIS_LOOP_15_1_fu_1139.IM_TDATA_blk_n;
assign axis_block_sigs[2] = ~grp_hdc_maxi_Pipeline_VITIS_LOOP_21_2_VITIS_LOOP_22_3_fu_1159.AM_out_TDATA_blk_n;
assign axis_block_sigs[3] = ~grp_hdc_maxi_Pipeline_VITIS_LOOP_40_5_fu_1178.test_data_TDATA_blk_n;

assign inst_block_sigs[0] = 1'b0;

assign inst_idle_sigs[0] = 1'b0;
assign inst_idle_sigs[1] = grp_hdc_maxi_Pipeline_VITIS_LOOP_15_1_fu_1139.ap_idle;
assign inst_idle_sigs[2] = grp_hdc_maxi_Pipeline_VITIS_LOOP_21_2_VITIS_LOOP_22_3_fu_1159.ap_idle;
assign inst_idle_sigs[3] = grp_hdc_maxi_Pipeline_VITIS_LOOP_40_5_fu_1178.ap_idle;

hdc_maxi_hls_deadlock_idx0_monitor hdc_maxi_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);

always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
