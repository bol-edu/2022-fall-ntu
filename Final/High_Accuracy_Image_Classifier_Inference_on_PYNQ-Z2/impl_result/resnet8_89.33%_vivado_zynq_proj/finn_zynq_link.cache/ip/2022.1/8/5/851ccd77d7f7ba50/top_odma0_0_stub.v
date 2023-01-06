// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Wed Dec 28 08:47:12 2022
// Host        : finn_dev_yhp running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_odma0_0_stub.v
// Design      : top_odma0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "StreamingDataflowPartition_2,Vivado 2022.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, m_axi_gmem0_araddr, 
  m_axi_gmem0_arburst, m_axi_gmem0_arcache, m_axi_gmem0_arlen, m_axi_gmem0_arlock, 
  m_axi_gmem0_arprot, m_axi_gmem0_arqos, m_axi_gmem0_arready, m_axi_gmem0_arregion, 
  m_axi_gmem0_arsize, m_axi_gmem0_arvalid, m_axi_gmem0_awaddr, m_axi_gmem0_awburst, 
  m_axi_gmem0_awcache, m_axi_gmem0_awlen, m_axi_gmem0_awlock, m_axi_gmem0_awprot, 
  m_axi_gmem0_awqos, m_axi_gmem0_awready, m_axi_gmem0_awregion, m_axi_gmem0_awsize, 
  m_axi_gmem0_awvalid, m_axi_gmem0_bready, m_axi_gmem0_bresp, m_axi_gmem0_bvalid, 
  m_axi_gmem0_rdata, m_axi_gmem0_rlast, m_axi_gmem0_rready, m_axi_gmem0_rresp, 
  m_axi_gmem0_rvalid, m_axi_gmem0_wdata, m_axi_gmem0_wlast, m_axi_gmem0_wready, 
  m_axi_gmem0_wstrb, m_axi_gmem0_wvalid, s_axi_control_0_araddr, s_axi_control_0_arready, 
  s_axi_control_0_arvalid, s_axi_control_0_awaddr, s_axi_control_0_awready, 
  s_axi_control_0_awvalid, s_axi_control_0_bready, s_axi_control_0_bresp, 
  s_axi_control_0_bvalid, s_axi_control_0_rdata, s_axi_control_0_rready, 
  s_axi_control_0_rresp, s_axi_control_0_rvalid, s_axi_control_0_wdata, 
  s_axi_control_0_wready, s_axi_control_0_wstrb, s_axi_control_0_wvalid, s_axis_0_tdata, 
  s_axis_0_tready, s_axis_0_tvalid)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,m_axi_gmem0_araddr[63:0],m_axi_gmem0_arburst[1:0],m_axi_gmem0_arcache[3:0],m_axi_gmem0_arlen[7:0],m_axi_gmem0_arlock[1:0],m_axi_gmem0_arprot[2:0],m_axi_gmem0_arqos[3:0],m_axi_gmem0_arready,m_axi_gmem0_arregion[3:0],m_axi_gmem0_arsize[2:0],m_axi_gmem0_arvalid,m_axi_gmem0_awaddr[63:0],m_axi_gmem0_awburst[1:0],m_axi_gmem0_awcache[3:0],m_axi_gmem0_awlen[7:0],m_axi_gmem0_awlock[1:0],m_axi_gmem0_awprot[2:0],m_axi_gmem0_awqos[3:0],m_axi_gmem0_awready,m_axi_gmem0_awregion[3:0],m_axi_gmem0_awsize[2:0],m_axi_gmem0_awvalid,m_axi_gmem0_bready,m_axi_gmem0_bresp[1:0],m_axi_gmem0_bvalid,m_axi_gmem0_rdata[63:0],m_axi_gmem0_rlast,m_axi_gmem0_rready,m_axi_gmem0_rresp[1:0],m_axi_gmem0_rvalid,m_axi_gmem0_wdata[63:0],m_axi_gmem0_wlast,m_axi_gmem0_wready,m_axi_gmem0_wstrb[7:0],m_axi_gmem0_wvalid,s_axi_control_0_araddr[5:0],s_axi_control_0_arready,s_axi_control_0_arvalid,s_axi_control_0_awaddr[5:0],s_axi_control_0_awready,s_axi_control_0_awvalid,s_axi_control_0_bready,s_axi_control_0_bresp[1:0],s_axi_control_0_bvalid,s_axi_control_0_rdata[31:0],s_axi_control_0_rready,s_axi_control_0_rresp[1:0],s_axi_control_0_rvalid,s_axi_control_0_wdata[31:0],s_axi_control_0_wready,s_axi_control_0_wstrb[3:0],s_axi_control_0_wvalid,s_axis_0_tdata[7:0],s_axis_0_tready,s_axis_0_tvalid" */;
  input ap_clk;
  input ap_rst_n;
  output [63:0]m_axi_gmem0_araddr;
  output [1:0]m_axi_gmem0_arburst;
  output [3:0]m_axi_gmem0_arcache;
  output [7:0]m_axi_gmem0_arlen;
  output [1:0]m_axi_gmem0_arlock;
  output [2:0]m_axi_gmem0_arprot;
  output [3:0]m_axi_gmem0_arqos;
  input m_axi_gmem0_arready;
  output [3:0]m_axi_gmem0_arregion;
  output [2:0]m_axi_gmem0_arsize;
  output m_axi_gmem0_arvalid;
  output [63:0]m_axi_gmem0_awaddr;
  output [1:0]m_axi_gmem0_awburst;
  output [3:0]m_axi_gmem0_awcache;
  output [7:0]m_axi_gmem0_awlen;
  output [1:0]m_axi_gmem0_awlock;
  output [2:0]m_axi_gmem0_awprot;
  output [3:0]m_axi_gmem0_awqos;
  input m_axi_gmem0_awready;
  output [3:0]m_axi_gmem0_awregion;
  output [2:0]m_axi_gmem0_awsize;
  output m_axi_gmem0_awvalid;
  output m_axi_gmem0_bready;
  input [1:0]m_axi_gmem0_bresp;
  input m_axi_gmem0_bvalid;
  input [63:0]m_axi_gmem0_rdata;
  input m_axi_gmem0_rlast;
  output m_axi_gmem0_rready;
  input [1:0]m_axi_gmem0_rresp;
  input m_axi_gmem0_rvalid;
  output [63:0]m_axi_gmem0_wdata;
  output m_axi_gmem0_wlast;
  input m_axi_gmem0_wready;
  output [7:0]m_axi_gmem0_wstrb;
  output m_axi_gmem0_wvalid;
  input [5:0]s_axi_control_0_araddr;
  output s_axi_control_0_arready;
  input s_axi_control_0_arvalid;
  input [5:0]s_axi_control_0_awaddr;
  output s_axi_control_0_awready;
  input s_axi_control_0_awvalid;
  input s_axi_control_0_bready;
  output [1:0]s_axi_control_0_bresp;
  output s_axi_control_0_bvalid;
  output [31:0]s_axi_control_0_rdata;
  input s_axi_control_0_rready;
  output [1:0]s_axi_control_0_rresp;
  output s_axi_control_0_rvalid;
  input [31:0]s_axi_control_0_wdata;
  output s_axi_control_0_wready;
  input [3:0]s_axi_control_0_wstrb;
  input s_axi_control_0_wvalid;
  input [7:0]s_axis_0_tdata;
  output s_axis_0_tready;
  input s_axis_0_tvalid;
endmodule
