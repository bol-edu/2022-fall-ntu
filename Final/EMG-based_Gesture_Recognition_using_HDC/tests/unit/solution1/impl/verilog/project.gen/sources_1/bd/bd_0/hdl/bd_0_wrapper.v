//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Thu Jan  5 05:23:52 2023
//Host        : DESKTOP-B6S694L running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (AM_out_tdata,
    AM_out_tdest,
    AM_out_tid,
    AM_out_tkeep,
    AM_out_tlast,
    AM_out_tready,
    AM_out_tstrb,
    AM_out_tuser,
    AM_out_tvalid,
    IM_tdata,
    IM_tdest,
    IM_tid,
    IM_tkeep,
    IM_tlast,
    IM_tready,
    IM_tstrb,
    IM_tuser,
    IM_tvalid,
    ap_clk,
    ap_rst_n,
    interrupt,
    s_axi_control_araddr,
    s_axi_control_arready,
    s_axi_control_arvalid,
    s_axi_control_awaddr,
    s_axi_control_awready,
    s_axi_control_awvalid,
    s_axi_control_bready,
    s_axi_control_bresp,
    s_axi_control_bvalid,
    s_axi_control_rdata,
    s_axi_control_rready,
    s_axi_control_rresp,
    s_axi_control_rvalid,
    s_axi_control_wdata,
    s_axi_control_wready,
    s_axi_control_wstrb,
    s_axi_control_wvalid,
    test_data_tdata,
    test_data_tdest,
    test_data_tid,
    test_data_tkeep,
    test_data_tlast,
    test_data_tready,
    test_data_tstrb,
    test_data_tuser,
    test_data_tvalid,
    test_label_out_tdata,
    test_label_out_tdest,
    test_label_out_tid,
    test_label_out_tkeep,
    test_label_out_tlast,
    test_label_out_tready,
    test_label_out_tstrb,
    test_label_out_tuser,
    test_label_out_tvalid);
  input [31:0]AM_out_tdata;
  input [0:0]AM_out_tdest;
  input [0:0]AM_out_tid;
  input [3:0]AM_out_tkeep;
  input [0:0]AM_out_tlast;
  output AM_out_tready;
  input [3:0]AM_out_tstrb;
  input [0:0]AM_out_tuser;
  input AM_out_tvalid;
  input [31:0]IM_tdata;
  input [0:0]IM_tdest;
  input [0:0]IM_tid;
  input [3:0]IM_tkeep;
  input [0:0]IM_tlast;
  output IM_tready;
  input [3:0]IM_tstrb;
  input [0:0]IM_tuser;
  input IM_tvalid;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input [3:0]s_axi_control_araddr;
  output s_axi_control_arready;
  input s_axi_control_arvalid;
  input [3:0]s_axi_control_awaddr;
  output s_axi_control_awready;
  input s_axi_control_awvalid;
  input s_axi_control_bready;
  output [1:0]s_axi_control_bresp;
  output s_axi_control_bvalid;
  output [31:0]s_axi_control_rdata;
  input s_axi_control_rready;
  output [1:0]s_axi_control_rresp;
  output s_axi_control_rvalid;
  input [31:0]s_axi_control_wdata;
  output s_axi_control_wready;
  input [3:0]s_axi_control_wstrb;
  input s_axi_control_wvalid;
  input [31:0]test_data_tdata;
  input [0:0]test_data_tdest;
  input [0:0]test_data_tid;
  input [3:0]test_data_tkeep;
  input [0:0]test_data_tlast;
  output test_data_tready;
  input [3:0]test_data_tstrb;
  input [0:0]test_data_tuser;
  input test_data_tvalid;
  output [31:0]test_label_out_tdata;
  output [0:0]test_label_out_tdest;
  output [0:0]test_label_out_tid;
  output [3:0]test_label_out_tkeep;
  output [0:0]test_label_out_tlast;
  input test_label_out_tready;
  output [3:0]test_label_out_tstrb;
  output [0:0]test_label_out_tuser;
  output test_label_out_tvalid;

  wire [31:0]AM_out_tdata;
  wire [0:0]AM_out_tdest;
  wire [0:0]AM_out_tid;
  wire [3:0]AM_out_tkeep;
  wire [0:0]AM_out_tlast;
  wire AM_out_tready;
  wire [3:0]AM_out_tstrb;
  wire [0:0]AM_out_tuser;
  wire AM_out_tvalid;
  wire [31:0]IM_tdata;
  wire [0:0]IM_tdest;
  wire [0:0]IM_tid;
  wire [3:0]IM_tkeep;
  wire [0:0]IM_tlast;
  wire IM_tready;
  wire [3:0]IM_tstrb;
  wire [0:0]IM_tuser;
  wire IM_tvalid;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [3:0]s_axi_control_araddr;
  wire s_axi_control_arready;
  wire s_axi_control_arvalid;
  wire [3:0]s_axi_control_awaddr;
  wire s_axi_control_awready;
  wire s_axi_control_awvalid;
  wire s_axi_control_bready;
  wire [1:0]s_axi_control_bresp;
  wire s_axi_control_bvalid;
  wire [31:0]s_axi_control_rdata;
  wire s_axi_control_rready;
  wire [1:0]s_axi_control_rresp;
  wire s_axi_control_rvalid;
  wire [31:0]s_axi_control_wdata;
  wire s_axi_control_wready;
  wire [3:0]s_axi_control_wstrb;
  wire s_axi_control_wvalid;
  wire [31:0]test_data_tdata;
  wire [0:0]test_data_tdest;
  wire [0:0]test_data_tid;
  wire [3:0]test_data_tkeep;
  wire [0:0]test_data_tlast;
  wire test_data_tready;
  wire [3:0]test_data_tstrb;
  wire [0:0]test_data_tuser;
  wire test_data_tvalid;
  wire [31:0]test_label_out_tdata;
  wire [0:0]test_label_out_tdest;
  wire [0:0]test_label_out_tid;
  wire [3:0]test_label_out_tkeep;
  wire [0:0]test_label_out_tlast;
  wire test_label_out_tready;
  wire [3:0]test_label_out_tstrb;
  wire [0:0]test_label_out_tuser;
  wire test_label_out_tvalid;

  bd_0 bd_0_i
       (.AM_out_tdata(AM_out_tdata),
        .AM_out_tdest(AM_out_tdest),
        .AM_out_tid(AM_out_tid),
        .AM_out_tkeep(AM_out_tkeep),
        .AM_out_tlast(AM_out_tlast),
        .AM_out_tready(AM_out_tready),
        .AM_out_tstrb(AM_out_tstrb),
        .AM_out_tuser(AM_out_tuser),
        .AM_out_tvalid(AM_out_tvalid),
        .IM_tdata(IM_tdata),
        .IM_tdest(IM_tdest),
        .IM_tid(IM_tid),
        .IM_tkeep(IM_tkeep),
        .IM_tlast(IM_tlast),
        .IM_tready(IM_tready),
        .IM_tstrb(IM_tstrb),
        .IM_tuser(IM_tuser),
        .IM_tvalid(IM_tvalid),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .s_axi_control_araddr(s_axi_control_araddr),
        .s_axi_control_arready(s_axi_control_arready),
        .s_axi_control_arvalid(s_axi_control_arvalid),
        .s_axi_control_awaddr(s_axi_control_awaddr),
        .s_axi_control_awready(s_axi_control_awready),
        .s_axi_control_awvalid(s_axi_control_awvalid),
        .s_axi_control_bready(s_axi_control_bready),
        .s_axi_control_bresp(s_axi_control_bresp),
        .s_axi_control_bvalid(s_axi_control_bvalid),
        .s_axi_control_rdata(s_axi_control_rdata),
        .s_axi_control_rready(s_axi_control_rready),
        .s_axi_control_rresp(s_axi_control_rresp),
        .s_axi_control_rvalid(s_axi_control_rvalid),
        .s_axi_control_wdata(s_axi_control_wdata),
        .s_axi_control_wready(s_axi_control_wready),
        .s_axi_control_wstrb(s_axi_control_wstrb),
        .s_axi_control_wvalid(s_axi_control_wvalid),
        .test_data_tdata(test_data_tdata),
        .test_data_tdest(test_data_tdest),
        .test_data_tid(test_data_tid),
        .test_data_tkeep(test_data_tkeep),
        .test_data_tlast(test_data_tlast),
        .test_data_tready(test_data_tready),
        .test_data_tstrb(test_data_tstrb),
        .test_data_tuser(test_data_tuser),
        .test_data_tvalid(test_data_tvalid),
        .test_label_out_tdata(test_label_out_tdata),
        .test_label_out_tdest(test_label_out_tdest),
        .test_label_out_tid(test_label_out_tid),
        .test_label_out_tkeep(test_label_out_tkeep),
        .test_label_out_tlast(test_label_out_tlast),
        .test_label_out_tready(test_label_out_tready),
        .test_label_out_tstrb(test_label_out_tstrb),
        .test_label_out_tuser(test_label_out_tuser),
        .test_label_out_tvalid(test_label_out_tvalid));
endmodule
