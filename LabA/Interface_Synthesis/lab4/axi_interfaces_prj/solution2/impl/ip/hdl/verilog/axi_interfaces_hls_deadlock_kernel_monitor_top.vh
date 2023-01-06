
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [15:0] axis_block_sigs;
wire [0:0] inst_idle_sigs;
wire [0:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~d_o_0_TDATA_blk_n;
assign axis_block_sigs[1] = ~d_o_1_TDATA_blk_n;
assign axis_block_sigs[2] = ~d_o_2_TDATA_blk_n;
assign axis_block_sigs[3] = ~d_o_3_TDATA_blk_n;
assign axis_block_sigs[4] = ~d_o_4_TDATA_blk_n;
assign axis_block_sigs[5] = ~d_o_5_TDATA_blk_n;
assign axis_block_sigs[6] = ~d_o_6_TDATA_blk_n;
assign axis_block_sigs[7] = ~d_o_7_TDATA_blk_n;
assign axis_block_sigs[8] = ~d_i_0_TDATA_blk_n;
assign axis_block_sigs[9] = ~d_i_1_TDATA_blk_n;
assign axis_block_sigs[10] = ~d_i_2_TDATA_blk_n;
assign axis_block_sigs[11] = ~d_i_3_TDATA_blk_n;
assign axis_block_sigs[12] = ~d_i_4_TDATA_blk_n;
assign axis_block_sigs[13] = ~d_i_5_TDATA_blk_n;
assign axis_block_sigs[14] = ~d_i_6_TDATA_blk_n;
assign axis_block_sigs[15] = ~d_i_7_TDATA_blk_n;

assign inst_block_sigs[0] = 1'b0;

assign inst_idle_sigs[0] = 1'b0;

axi_interfaces_hls_deadlock_idx0_monitor axi_interfaces_hls_deadlock_idx0_monitor_U (
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
