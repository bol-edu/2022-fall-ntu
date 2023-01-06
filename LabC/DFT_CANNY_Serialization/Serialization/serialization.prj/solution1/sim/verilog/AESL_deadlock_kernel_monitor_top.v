`timescale 1 ns / 1 ps

module AESL_deadlock_kernel_monitor_top ( 
    input wire kernel_monitor_clock,
    input wire kernel_monitor_reset
);
wire [12:0] axis_block_sigs;
wire [14:0] inst_idle_sigs;
wire [0:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~AESL_inst_dut.grp_dut_Pipeline_OBJ_LOOP_fu_6828.src_TDATA_blk_n;
assign axis_block_sigs[1] = ~AESL_inst_dut.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_1_fu_332.dst_TDATA_blk_n;
assign axis_block_sigs[2] = ~AESL_inst_dut.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_2_fu_356.dst_TDATA_blk_n;
assign axis_block_sigs[3] = ~AESL_inst_dut.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_3_fu_379.dst_TDATA_blk_n;
assign axis_block_sigs[4] = ~AESL_inst_dut.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_4_fu_402.dst_TDATA_blk_n;
assign axis_block_sigs[5] = ~AESL_inst_dut.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_5_fu_425.dst_TDATA_blk_n;
assign axis_block_sigs[6] = ~AESL_inst_dut.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_6_fu_448.dst_TDATA_blk_n;
assign axis_block_sigs[7] = ~AESL_inst_dut.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_7_fu_471.dst_TDATA_blk_n;
assign axis_block_sigs[8] = ~AESL_inst_dut.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_8_fu_494.dst_TDATA_blk_n;
assign axis_block_sigs[9] = ~AESL_inst_dut.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_9_fu_517.dst_TDATA_blk_n;
assign axis_block_sigs[10] = ~AESL_inst_dut.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_10_fu_540.dst_TDATA_blk_n;
assign axis_block_sigs[11] = ~AESL_inst_dut.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_11_fu_563.dst_TDATA_blk_n;
assign axis_block_sigs[12] = ~AESL_inst_dut.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_12_fu_586.dst_TDATA_blk_n;

assign inst_block_sigs[0] = 1'b0;

assign inst_idle_sigs[0] = 1'b0;
assign inst_idle_sigs[1] = AESL_inst_dut.grp_dut_Pipeline_OBJ_LOOP_fu_6828.ap_idle;
assign inst_idle_sigs[2] = AESL_inst_dut.grp_mergeBuffer_fu_6955.ap_idle;
assign inst_idle_sigs[3] = AESL_inst_dut.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_1_fu_332.ap_idle;
assign inst_idle_sigs[4] = AESL_inst_dut.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_2_fu_356.ap_idle;
assign inst_idle_sigs[5] = AESL_inst_dut.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_3_fu_379.ap_idle;
assign inst_idle_sigs[6] = AESL_inst_dut.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_4_fu_402.ap_idle;
assign inst_idle_sigs[7] = AESL_inst_dut.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_5_fu_425.ap_idle;
assign inst_idle_sigs[8] = AESL_inst_dut.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_6_fu_448.ap_idle;
assign inst_idle_sigs[9] = AESL_inst_dut.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_7_fu_471.ap_idle;
assign inst_idle_sigs[10] = AESL_inst_dut.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_8_fu_494.ap_idle;
assign inst_idle_sigs[11] = AESL_inst_dut.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_9_fu_517.ap_idle;
assign inst_idle_sigs[12] = AESL_inst_dut.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_10_fu_540.ap_idle;
assign inst_idle_sigs[13] = AESL_inst_dut.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_11_fu_563.ap_idle;
assign inst_idle_sigs[14] = AESL_inst_dut.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_12_fu_586.ap_idle;

AESL_deadlock_idx0_monitor AESL_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);

initial begin
reg block_delay = 0;
    while(1) begin
        @(posedge kernel_monitor_clock);
    if (kernel_block == 1'b1 && block_delay == 1'b0)
    $display("find kernel block.");
    block_delay = kernel_block;
    end
end

endmodule
