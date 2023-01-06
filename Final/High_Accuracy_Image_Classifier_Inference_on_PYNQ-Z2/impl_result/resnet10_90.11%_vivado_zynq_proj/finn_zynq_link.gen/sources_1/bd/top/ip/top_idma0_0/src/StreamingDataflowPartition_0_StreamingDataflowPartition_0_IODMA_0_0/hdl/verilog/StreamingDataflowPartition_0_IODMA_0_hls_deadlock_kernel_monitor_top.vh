
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [0:0] axis_block_sigs;
wire [4:0] inst_idle_sigs;
wire [1:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~StreamingDataWidthConverter_Batch_64u_8u_384u_U0.grp_StreamingDataWidthConverter_Batch_64u_8u_384u_Pipeline_VITIS_LOOP_477_1_fu_48.out_V_TDATA_blk_n;

assign inst_idle_sigs[0] = Mem2Stream_Batch_64u_3072u_U0.ap_idle;
assign inst_block_sigs[0] = (Mem2Stream_Batch_64u_3072u_U0.ap_done & ~Mem2Stream_Batch_64u_3072u_U0.ap_continue) | ~Mem2Stream_Batch_64u_3072u_U0.grp_Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_11_fu_106.dma2dwc1_blk_n | ~Mem2Stream_Batch_64u_3072u_U0.grp_Mem2Stream_Batch_64u_3072u_Pipeline_VITIS_LOOP_140_1_fu_115.dma2dwc1_blk_n | ~Mem2Stream_Batch_64u_3072u_U0.numReps_c_blk_n;
assign inst_idle_sigs[1] = StreamingDataWidthConverter_Batch_64u_8u_384u_U0.ap_idle;
assign inst_block_sigs[1] = (StreamingDataWidthConverter_Batch_64u_8u_384u_U0.ap_done & ~StreamingDataWidthConverter_Batch_64u_8u_384u_U0.ap_continue) | ~StreamingDataWidthConverter_Batch_64u_8u_384u_U0.grp_StreamingDataWidthConverter_Batch_64u_8u_384u_Pipeline_VITIS_LOOP_477_1_fu_48.dma2dwc1_blk_n | ~StreamingDataWidthConverter_Batch_64u_8u_384u_U0.numReps_blk_n;

assign inst_idle_sigs[2] = 1'b0;
assign inst_idle_sigs[3] = StreamingDataWidthConverter_Batch_64u_8u_384u_U0.ap_idle;
assign inst_idle_sigs[4] = StreamingDataWidthConverter_Batch_64u_8u_384u_U0.grp_StreamingDataWidthConverter_Batch_64u_8u_384u_Pipeline_VITIS_LOOP_477_1_fu_48.ap_idle;

StreamingDataflowPartition_0_IODMA_0_hls_deadlock_idx0_monitor StreamingDataflowPartition_0_IODMA_0_hls_deadlock_idx0_monitor_U (
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
