`timescale 1 ns / 1 ps

module StreamingDataflowPartition_1_ConvolutionInputGenerator_6_hls_deadlock_idx0_monitor ( // for module StreamingDataflowPartition_1_ConvolutionInputGenerator_6_StreamingDataflowPartition_1_ConvolutionInputGenerator_6_inst
    input wire clock,
    input wire reset,
    input wire [1:0] axis_block_sigs,
    input wire [1:0] inst_idle_sigs,
    input wire [0:0] inst_block_sigs,
    output wire block
);

// signal declare
reg monitor_find_block;
wire idx1_block;
wire sub_parallel_block;
wire all_sub_parallel_has_block;
wire all_sub_single_has_block;
wire cur_axis_has_block;
wire seq_is_axis_block;

assign block = monitor_find_block;
assign all_sub_parallel_has_block = 1'b0;
assign all_sub_single_has_block = 1'b0 | (idx1_block & (axis_block_sigs[0] | axis_block_sigs[1]));
assign cur_axis_has_block = 1'b0;
assign seq_is_axis_block = all_sub_parallel_has_block | all_sub_single_has_block | cur_axis_has_block;

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_find_block <= 1'b0;
    else if (seq_is_axis_block == 1'b1)
        monitor_find_block <= 1'b1;
    else
        monitor_find_block <= 1'b0;
end


// instant sub module
 StreamingDataflowPartition_1_ConvolutionInputGenerator_6_hls_deadlock_idx1_monitor StreamingDataflowPartition_1_ConvolutionInputGenerator_6_hls_deadlock_idx1_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx1_block)
);

endmodule
