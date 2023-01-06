// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1ns/1ps

module adders_io_regslice_forward
#(parameter 
    DataWidth=32
)(
    input ap_clk ,
    input ap_rst,

    input [DataWidth-1:0] data_in , 
    input vld_in , 
    output ack_in ,
    output [DataWidth-1:0] data_out, 
    output vld_out,
    input ack_out,
    output apdone_blk
);
 
localparam W = DataWidth+1;

wire [W-1:0] cdata;
wire cstop;
wire [W-1:0] idata;
wire istop;
wire [W-1:0] odata;
wire ostop;

adders_io_regslice_obuf #(
  .W(W)
)
regslice_obuf_inst(
  .clk(ap_clk),
  .reset(ap_rst),
  .cdata(idata),
  .cstop(istop),
  .odata(odata),
  .ostop(ostop)
);

assign idata = {vld_in, data_in};
assign ack_in = ~istop;

assign vld_out = odata[W-1];
assign data_out = odata[W-2:0];
assign ostop = ~ack_out;

assign apdone_blk = ((ap_rst == 1'b0)&(1'b0 == ack_out)&(1'b1 == vld_out));

endmodule //forward

module adders_io_regslice_forward_w1
#(parameter 
    DataWidth=1
)(
    input ap_clk ,
    input ap_rst,

    input data_in , 
    input vld_in , 
    output ack_in ,
    output data_out, 
    output vld_out,
    input ack_out,
    output apdone_blk
);
 
localparam W = 2;

wire [W-1:0] cdata;
wire cstop;
wire [W-1:0] idata;
wire istop;
wire [W-1:0] odata;
wire ostop;

adders_io_regslice_obuf #(
  .W(W)
)
regslice_obuf_inst(
  .clk(ap_clk),
  .reset(ap_rst),
  .cdata(idata),
  .cstop(istop),
  .odata(odata),
  .ostop(ostop)
);

assign idata = {vld_in, data_in};
assign ack_in = ~istop;

assign vld_out = odata[W-1];
assign data_out = odata[W-2:0];
assign ostop = ~ack_out;

assign apdone_blk = ((ap_rst == 1'b0)&(1'b0 == ack_out)&(1'b1 == vld_out));

endmodule //forward


module adders_io_regslice_obuf
#(
    parameter W=32
)(
    input clk ,
    input reset,
    input [W-1:0] cdata ,
    output cstop ,
    output reg [W-1:0] odata,
    input ostop 
);

// Stop the core when buffer full and output not ready
assign cstop = reset? 1'b1 : (odata[W-1] & ostop);
 
always @(posedge clk)
    if(reset)
        odata <= {1'b0, {{W-1}{1'b0}}};
    else
        if (!cstop) begin// Can we accept more data?
            odata <= cdata; // Yes: load the buffer
        end

endmodule

    
