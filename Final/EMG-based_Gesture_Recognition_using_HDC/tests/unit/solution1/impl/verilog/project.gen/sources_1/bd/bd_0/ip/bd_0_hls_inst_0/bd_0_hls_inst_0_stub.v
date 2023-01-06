// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Jan  5 05:33:58 2023
// Host        : DESKTOP-B6S694L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/kevin/Desktop/AAHLS_Final_Project_deploy/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "hdc_maxi,Vivado 2022.1" *)
module bd_0_hls_inst_0(s_axi_control_AWADDR, 
  s_axi_control_AWVALID, s_axi_control_AWREADY, s_axi_control_WDATA, s_axi_control_WSTRB, 
  s_axi_control_WVALID, s_axi_control_WREADY, s_axi_control_BRESP, s_axi_control_BVALID, 
  s_axi_control_BREADY, s_axi_control_ARADDR, s_axi_control_ARVALID, 
  s_axi_control_ARREADY, s_axi_control_RDATA, s_axi_control_RRESP, s_axi_control_RVALID, 
  s_axi_control_RREADY, ap_clk, ap_rst_n, interrupt, test_data_TVALID, test_data_TREADY, 
  test_data_TDATA, test_data_TDEST, test_data_TKEEP, test_data_TSTRB, test_data_TUSER, 
  test_data_TLAST, test_data_TID, test_label_out_TVALID, test_label_out_TREADY, 
  test_label_out_TDATA, test_label_out_TDEST, test_label_out_TKEEP, test_label_out_TSTRB, 
  test_label_out_TUSER, test_label_out_TLAST, test_label_out_TID, IM_TVALID, IM_TREADY, 
  IM_TDATA, IM_TDEST, IM_TKEEP, IM_TSTRB, IM_TUSER, IM_TLAST, IM_TID, AM_out_TVALID, AM_out_TREADY, 
  AM_out_TDATA, AM_out_TDEST, AM_out_TKEEP, AM_out_TSTRB, AM_out_TUSER, AM_out_TLAST, 
  AM_out_TID)
/* synthesis syn_black_box black_box_pad_pin="s_axi_control_AWADDR[3:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[3:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,test_data_TVALID,test_data_TREADY,test_data_TDATA[31:0],test_data_TDEST[0:0],test_data_TKEEP[3:0],test_data_TSTRB[3:0],test_data_TUSER[0:0],test_data_TLAST[0:0],test_data_TID[0:0],test_label_out_TVALID,test_label_out_TREADY,test_label_out_TDATA[31:0],test_label_out_TDEST[0:0],test_label_out_TKEEP[3:0],test_label_out_TSTRB[3:0],test_label_out_TUSER[0:0],test_label_out_TLAST[0:0],test_label_out_TID[0:0],IM_TVALID,IM_TREADY,IM_TDATA[31:0],IM_TDEST[0:0],IM_TKEEP[3:0],IM_TSTRB[3:0],IM_TUSER[0:0],IM_TLAST[0:0],IM_TID[0:0],AM_out_TVALID,AM_out_TREADY,AM_out_TDATA[31:0],AM_out_TDEST[0:0],AM_out_TKEEP[3:0],AM_out_TSTRB[3:0],AM_out_TUSER[0:0],AM_out_TLAST[0:0],AM_out_TID[0:0]" */;
  input [3:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  input [3:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input test_data_TVALID;
  output test_data_TREADY;
  input [31:0]test_data_TDATA;
  input [0:0]test_data_TDEST;
  input [3:0]test_data_TKEEP;
  input [3:0]test_data_TSTRB;
  input [0:0]test_data_TUSER;
  input [0:0]test_data_TLAST;
  input [0:0]test_data_TID;
  output test_label_out_TVALID;
  input test_label_out_TREADY;
  output [31:0]test_label_out_TDATA;
  output [0:0]test_label_out_TDEST;
  output [3:0]test_label_out_TKEEP;
  output [3:0]test_label_out_TSTRB;
  output [0:0]test_label_out_TUSER;
  output [0:0]test_label_out_TLAST;
  output [0:0]test_label_out_TID;
  input IM_TVALID;
  output IM_TREADY;
  input [31:0]IM_TDATA;
  input [0:0]IM_TDEST;
  input [3:0]IM_TKEEP;
  input [3:0]IM_TSTRB;
  input [0:0]IM_TUSER;
  input [0:0]IM_TLAST;
  input [0:0]IM_TID;
  input AM_out_TVALID;
  output AM_out_TREADY;
  input [31:0]AM_out_TDATA;
  input [0:0]AM_out_TDEST;
  input [3:0]AM_out_TKEEP;
  input [3:0]AM_out_TSTRB;
  input [0:0]AM_out_TUSER;
  input [0:0]AM_out_TLAST;
  input [0:0]AM_out_TID;
endmodule
