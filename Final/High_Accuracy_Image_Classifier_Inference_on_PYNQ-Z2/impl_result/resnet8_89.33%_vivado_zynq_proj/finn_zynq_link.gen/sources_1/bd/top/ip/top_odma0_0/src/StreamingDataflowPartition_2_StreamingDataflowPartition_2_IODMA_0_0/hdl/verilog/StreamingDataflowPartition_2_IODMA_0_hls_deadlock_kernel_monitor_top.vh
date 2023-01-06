
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [0:0] axis_block_sigs;
wire [5:0] inst_idle_sigs;
wire [2:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~StreamingDataWidthConverter_Batch_8u_64u_8192u_U0.grp_StreamingDataWidthConverter_Batch_8u_64u_8192u_Pipeline_VITIS_LOOP_508_3_fu_58.in0_V_TDATA_blk_n;

assign inst_idle_sigs[0] = entry_proc_U0.ap_idle;
assign inst_block_sigs[0] = (entry_proc_U0.ap_done & ~entry_proc_U0.ap_continue) | ~entry_proc_U0.out_r_c_blk_n;
assign inst_idle_sigs[1] = StreamingDataWidthConverter_Batch_8u_64u_8192u_U0.ap_idle;
assign inst_block_sigs[1] = (StreamingDataWidthConverter_Batch_8u_64u_8192u_U0.ap_done & ~StreamingDataWidthConverter_Batch_8u_64u_8192u_U0.ap_continue) | ~StreamingDataWidthConverter_Batch_8u_64u_8192u_U0.grp_StreamingDataWidthConverter_Batch_8u_64u_8192u_Pipeline_VITIS_LOOP_508_3_fu_58.dwc2dma1_blk_n | ~StreamingDataWidthConverter_Batch_8u_64u_8192u_U0.numReps_c_blk_n;
assign inst_idle_sigs[2] = Stream2Mem_Batch_64u_8192u_U0.ap_idle;
assign inst_block_sigs[2] = (Stream2Mem_Batch_64u_8192u_U0.ap_done & ~Stream2Mem_Batch_64u_8192u_U0.ap_continue) | ~Stream2Mem_Batch_64u_8192u_U0.grp_Stream2Mem_Batch_64u_8192u_Pipeline_VITIS_LOOP_153_11_fu_93.dwc2dma1_blk_n | ~Stream2Mem_Batch_64u_8192u_U0.grp_Stream2Mem_Batch_64u_8192u_Pipeline_VITIS_LOOP_153_1_fu_102.dwc2dma1_blk_n | ~Stream2Mem_Batch_64u_8192u_U0.out_r_blk_n | ~Stream2Mem_Batch_64u_8192u_U0.numReps_blk_n;

assign inst_idle_sigs[3] = 1'b0;
assign inst_idle_sigs[4] = StreamingDataWidthConverter_Batch_8u_64u_8192u_U0.ap_idle;
assign inst_idle_sigs[5] = StreamingDataWidthConverter_Batch_8u_64u_8192u_U0.grp_StreamingDataWidthConverter_Batch_8u_64u_8192u_Pipeline_VITIS_LOOP_508_3_fu_58.ap_idle;

StreamingDataflowPartition_2_IODMA_0_hls_deadlock_idx0_monitor StreamingDataflowPartition_2_IODMA_0_hls_deadlock_idx0_monitor_U (
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
