// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module StreamingDataflowPartition_1_MatrixVectorActivation_6_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_0_ROM_AUTO_1R (
address0, ce0, q0, reset,clk);

parameter DataWidth = 14;
parameter AddressWidth = 7;
parameter AddressRange = 128;

input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;

reg [DataWidth-1:0] ram[0:AddressRange-1];

initial begin
    $readmemh("/home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_6_m51mk8q3/project_StreamingDataflowPartition_1_MatrixVectorActivation_6/sol1/impl/ip/hdl/verilog/StreamingDataflowPartition_1_MatrixVectorActivation_6_Matrix_Vector_Activate_Stream_Batch_p_ZL7threshs_0_ROM_AUTO_1R.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[address0];
    end
end



endmodule

