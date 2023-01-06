// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
(* rom_style = "distributed" *) module StreamingDataflowPartition_1_Thresholding_Batch_2_Thresholding_Batch_p_ZL7threshs_5_ROM_2P_LUTRAM_1R (
address0, ce0, q0, reset,clk);

parameter DataWidth = 3;
parameter AddressWidth = 5;
parameter AddressRange = 32;

input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;

(* ram_style = "distributed" *)reg [DataWidth-1:0] ram[0:AddressRange-1];

initial begin
    $readmemh("/home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_Thresholding_Batch_2_xqpebmha/project_StreamingDataflowPartition_1_Thresholding_Batch_2/sol1/impl/ip/hdl/verilog/StreamingDataflowPartition_1_Thresholding_Batch_2_Thresholding_Batch_p_ZL7threshs_5_ROM_2P_LUTRAM_1R.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[address0];
    end
end



endmodule

