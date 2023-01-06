`timescale 1 ns / 1 ps

module AESL_deadlock_idx2_monitor ( // for module AESL_inst_dut.grp_mergeBuffer_fu_6955
    input wire clock,
    input wire reset,
    input wire [12:0] axis_block_sigs,
    input wire [14:0] inst_idle_sigs,
    input wire [0:0] inst_block_sigs,
    output wire block
);

// signal declare
reg monitor_find_block;
wire idx14_block;
wire idx7_block;
wire idx8_block;
wire idx6_block;
wire idx3_block;
wire idx9_block;
wire idx10_block;
wire idx13_block;
wire idx5_block;
wire idx11_block;
wire idx4_block;
wire idx12_block;
wire sub_parallel_block;
wire all_sub_parallel_has_block;
wire all_sub_single_has_block;
wire cur_axis_has_block;
wire seq_is_axis_block;

assign block = monitor_find_block;
assign idx14_block = axis_block_sigs[12];
assign idx7_block = axis_block_sigs[5];
assign idx8_block = axis_block_sigs[6];
assign idx6_block = axis_block_sigs[4];
assign idx3_block = axis_block_sigs[1];
assign idx9_block = axis_block_sigs[7];
assign idx10_block = axis_block_sigs[8];
assign idx13_block = axis_block_sigs[11];
assign idx5_block = axis_block_sigs[3];
assign idx11_block = axis_block_sigs[9];
assign idx4_block = axis_block_sigs[2];
assign idx12_block = axis_block_sigs[10];
assign all_sub_parallel_has_block = 1'b0;
assign all_sub_single_has_block = 1'b0 | (idx14_block & (axis_block_sigs[12])) | (idx7_block & (axis_block_sigs[5])) | (idx8_block & (axis_block_sigs[6])) | (idx6_block & (axis_block_sigs[4])) | (idx3_block & (axis_block_sigs[1])) | (idx9_block & (axis_block_sigs[7])) | (idx10_block & (axis_block_sigs[8])) | (idx13_block & (axis_block_sigs[11])) | (idx5_block & (axis_block_sigs[3])) | (idx11_block & (axis_block_sigs[9])) | (idx4_block & (axis_block_sigs[2])) | (idx12_block & (axis_block_sigs[10]));
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
endmodule
