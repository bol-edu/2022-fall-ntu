// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Oct 21 23:36:47 2022
// Host        : BenWang running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/User/Documents/HLS/LabB/FFT/Vivado/FFT.gen/sources_1/bd/fft/ip/fft_fft_0_0/fft_fft_0_0_stub.v
// Design      : fft_fft_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fft,Vivado 2022.1" *)
module fft_fft_0_0(s_axi_control_AWADDR, 
  s_axi_control_AWVALID, s_axi_control_AWREADY, s_axi_control_WDATA, s_axi_control_WSTRB, 
  s_axi_control_WVALID, s_axi_control_WREADY, s_axi_control_BRESP, s_axi_control_BVALID, 
  s_axi_control_BREADY, s_axi_control_ARADDR, s_axi_control_ARVALID, 
  s_axi_control_ARREADY, s_axi_control_RDATA, s_axi_control_RRESP, s_axi_control_RVALID, 
  s_axi_control_RREADY, ap_clk, ap_rst_n, interrupt, m_axi_input_1_AWADDR, 
  m_axi_input_1_AWLEN, m_axi_input_1_AWSIZE, m_axi_input_1_AWBURST, m_axi_input_1_AWLOCK, 
  m_axi_input_1_AWREGION, m_axi_input_1_AWCACHE, m_axi_input_1_AWPROT, 
  m_axi_input_1_AWQOS, m_axi_input_1_AWVALID, m_axi_input_1_AWREADY, m_axi_input_1_WDATA, 
  m_axi_input_1_WSTRB, m_axi_input_1_WLAST, m_axi_input_1_WVALID, m_axi_input_1_WREADY, 
  m_axi_input_1_BRESP, m_axi_input_1_BVALID, m_axi_input_1_BREADY, m_axi_input_1_ARADDR, 
  m_axi_input_1_ARLEN, m_axi_input_1_ARSIZE, m_axi_input_1_ARBURST, m_axi_input_1_ARLOCK, 
  m_axi_input_1_ARREGION, m_axi_input_1_ARCACHE, m_axi_input_1_ARPROT, 
  m_axi_input_1_ARQOS, m_axi_input_1_ARVALID, m_axi_input_1_ARREADY, m_axi_input_1_RDATA, 
  m_axi_input_1_RRESP, m_axi_input_1_RLAST, m_axi_input_1_RVALID, m_axi_input_1_RREADY, 
  m_axi_input_0_AWADDR, m_axi_input_0_AWLEN, m_axi_input_0_AWSIZE, m_axi_input_0_AWBURST, 
  m_axi_input_0_AWLOCK, m_axi_input_0_AWREGION, m_axi_input_0_AWCACHE, 
  m_axi_input_0_AWPROT, m_axi_input_0_AWQOS, m_axi_input_0_AWVALID, 
  m_axi_input_0_AWREADY, m_axi_input_0_WDATA, m_axi_input_0_WSTRB, m_axi_input_0_WLAST, 
  m_axi_input_0_WVALID, m_axi_input_0_WREADY, m_axi_input_0_BRESP, m_axi_input_0_BVALID, 
  m_axi_input_0_BREADY, m_axi_input_0_ARADDR, m_axi_input_0_ARLEN, m_axi_input_0_ARSIZE, 
  m_axi_input_0_ARBURST, m_axi_input_0_ARLOCK, m_axi_input_0_ARREGION, 
  m_axi_input_0_ARCACHE, m_axi_input_0_ARPROT, m_axi_input_0_ARQOS, 
  m_axi_input_0_ARVALID, m_axi_input_0_ARREADY, m_axi_input_0_RDATA, m_axi_input_0_RRESP, 
  m_axi_input_0_RLAST, m_axi_input_0_RVALID, m_axi_input_0_RREADY, m_axi_output_1_AWADDR, 
  m_axi_output_1_AWLEN, m_axi_output_1_AWSIZE, m_axi_output_1_AWBURST, 
  m_axi_output_1_AWLOCK, m_axi_output_1_AWREGION, m_axi_output_1_AWCACHE, 
  m_axi_output_1_AWPROT, m_axi_output_1_AWQOS, m_axi_output_1_AWVALID, 
  m_axi_output_1_AWREADY, m_axi_output_1_WDATA, m_axi_output_1_WSTRB, 
  m_axi_output_1_WLAST, m_axi_output_1_WVALID, m_axi_output_1_WREADY, 
  m_axi_output_1_BRESP, m_axi_output_1_BVALID, m_axi_output_1_BREADY, 
  m_axi_output_1_ARADDR, m_axi_output_1_ARLEN, m_axi_output_1_ARSIZE, 
  m_axi_output_1_ARBURST, m_axi_output_1_ARLOCK, m_axi_output_1_ARREGION, 
  m_axi_output_1_ARCACHE, m_axi_output_1_ARPROT, m_axi_output_1_ARQOS, 
  m_axi_output_1_ARVALID, m_axi_output_1_ARREADY, m_axi_output_1_RDATA, 
  m_axi_output_1_RRESP, m_axi_output_1_RLAST, m_axi_output_1_RVALID, 
  m_axi_output_1_RREADY, m_axi_output_0_AWADDR, m_axi_output_0_AWLEN, 
  m_axi_output_0_AWSIZE, m_axi_output_0_AWBURST, m_axi_output_0_AWLOCK, 
  m_axi_output_0_AWREGION, m_axi_output_0_AWCACHE, m_axi_output_0_AWPROT, 
  m_axi_output_0_AWQOS, m_axi_output_0_AWVALID, m_axi_output_0_AWREADY, 
  m_axi_output_0_WDATA, m_axi_output_0_WSTRB, m_axi_output_0_WLAST, 
  m_axi_output_0_WVALID, m_axi_output_0_WREADY, m_axi_output_0_BRESP, 
  m_axi_output_0_BVALID, m_axi_output_0_BREADY, m_axi_output_0_ARADDR, 
  m_axi_output_0_ARLEN, m_axi_output_0_ARSIZE, m_axi_output_0_ARBURST, 
  m_axi_output_0_ARLOCK, m_axi_output_0_ARREGION, m_axi_output_0_ARCACHE, 
  m_axi_output_0_ARPROT, m_axi_output_0_ARQOS, m_axi_output_0_ARVALID, 
  m_axi_output_0_ARREADY, m_axi_output_0_RDATA, m_axi_output_0_RRESP, 
  m_axi_output_0_RLAST, m_axi_output_0_RVALID, m_axi_output_0_RREADY)
/* synthesis syn_black_box black_box_pad_pin="s_axi_control_AWADDR[5:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[5:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_input_1_AWADDR[63:0],m_axi_input_1_AWLEN[7:0],m_axi_input_1_AWSIZE[2:0],m_axi_input_1_AWBURST[1:0],m_axi_input_1_AWLOCK[1:0],m_axi_input_1_AWREGION[3:0],m_axi_input_1_AWCACHE[3:0],m_axi_input_1_AWPROT[2:0],m_axi_input_1_AWQOS[3:0],m_axi_input_1_AWVALID,m_axi_input_1_AWREADY,m_axi_input_1_WDATA[31:0],m_axi_input_1_WSTRB[3:0],m_axi_input_1_WLAST,m_axi_input_1_WVALID,m_axi_input_1_WREADY,m_axi_input_1_BRESP[1:0],m_axi_input_1_BVALID,m_axi_input_1_BREADY,m_axi_input_1_ARADDR[63:0],m_axi_input_1_ARLEN[7:0],m_axi_input_1_ARSIZE[2:0],m_axi_input_1_ARBURST[1:0],m_axi_input_1_ARLOCK[1:0],m_axi_input_1_ARREGION[3:0],m_axi_input_1_ARCACHE[3:0],m_axi_input_1_ARPROT[2:0],m_axi_input_1_ARQOS[3:0],m_axi_input_1_ARVALID,m_axi_input_1_ARREADY,m_axi_input_1_RDATA[31:0],m_axi_input_1_RRESP[1:0],m_axi_input_1_RLAST,m_axi_input_1_RVALID,m_axi_input_1_RREADY,m_axi_input_0_AWADDR[63:0],m_axi_input_0_AWLEN[7:0],m_axi_input_0_AWSIZE[2:0],m_axi_input_0_AWBURST[1:0],m_axi_input_0_AWLOCK[1:0],m_axi_input_0_AWREGION[3:0],m_axi_input_0_AWCACHE[3:0],m_axi_input_0_AWPROT[2:0],m_axi_input_0_AWQOS[3:0],m_axi_input_0_AWVALID,m_axi_input_0_AWREADY,m_axi_input_0_WDATA[31:0],m_axi_input_0_WSTRB[3:0],m_axi_input_0_WLAST,m_axi_input_0_WVALID,m_axi_input_0_WREADY,m_axi_input_0_BRESP[1:0],m_axi_input_0_BVALID,m_axi_input_0_BREADY,m_axi_input_0_ARADDR[63:0],m_axi_input_0_ARLEN[7:0],m_axi_input_0_ARSIZE[2:0],m_axi_input_0_ARBURST[1:0],m_axi_input_0_ARLOCK[1:0],m_axi_input_0_ARREGION[3:0],m_axi_input_0_ARCACHE[3:0],m_axi_input_0_ARPROT[2:0],m_axi_input_0_ARQOS[3:0],m_axi_input_0_ARVALID,m_axi_input_0_ARREADY,m_axi_input_0_RDATA[31:0],m_axi_input_0_RRESP[1:0],m_axi_input_0_RLAST,m_axi_input_0_RVALID,m_axi_input_0_RREADY,m_axi_output_1_AWADDR[63:0],m_axi_output_1_AWLEN[7:0],m_axi_output_1_AWSIZE[2:0],m_axi_output_1_AWBURST[1:0],m_axi_output_1_AWLOCK[1:0],m_axi_output_1_AWREGION[3:0],m_axi_output_1_AWCACHE[3:0],m_axi_output_1_AWPROT[2:0],m_axi_output_1_AWQOS[3:0],m_axi_output_1_AWVALID,m_axi_output_1_AWREADY,m_axi_output_1_WDATA[31:0],m_axi_output_1_WSTRB[3:0],m_axi_output_1_WLAST,m_axi_output_1_WVALID,m_axi_output_1_WREADY,m_axi_output_1_BRESP[1:0],m_axi_output_1_BVALID,m_axi_output_1_BREADY,m_axi_output_1_ARADDR[63:0],m_axi_output_1_ARLEN[7:0],m_axi_output_1_ARSIZE[2:0],m_axi_output_1_ARBURST[1:0],m_axi_output_1_ARLOCK[1:0],m_axi_output_1_ARREGION[3:0],m_axi_output_1_ARCACHE[3:0],m_axi_output_1_ARPROT[2:0],m_axi_output_1_ARQOS[3:0],m_axi_output_1_ARVALID,m_axi_output_1_ARREADY,m_axi_output_1_RDATA[31:0],m_axi_output_1_RRESP[1:0],m_axi_output_1_RLAST,m_axi_output_1_RVALID,m_axi_output_1_RREADY,m_axi_output_0_AWADDR[63:0],m_axi_output_0_AWLEN[7:0],m_axi_output_0_AWSIZE[2:0],m_axi_output_0_AWBURST[1:0],m_axi_output_0_AWLOCK[1:0],m_axi_output_0_AWREGION[3:0],m_axi_output_0_AWCACHE[3:0],m_axi_output_0_AWPROT[2:0],m_axi_output_0_AWQOS[3:0],m_axi_output_0_AWVALID,m_axi_output_0_AWREADY,m_axi_output_0_WDATA[31:0],m_axi_output_0_WSTRB[3:0],m_axi_output_0_WLAST,m_axi_output_0_WVALID,m_axi_output_0_WREADY,m_axi_output_0_BRESP[1:0],m_axi_output_0_BVALID,m_axi_output_0_BREADY,m_axi_output_0_ARADDR[63:0],m_axi_output_0_ARLEN[7:0],m_axi_output_0_ARSIZE[2:0],m_axi_output_0_ARBURST[1:0],m_axi_output_0_ARLOCK[1:0],m_axi_output_0_ARREGION[3:0],m_axi_output_0_ARCACHE[3:0],m_axi_output_0_ARPROT[2:0],m_axi_output_0_ARQOS[3:0],m_axi_output_0_ARVALID,m_axi_output_0_ARREADY,m_axi_output_0_RDATA[31:0],m_axi_output_0_RRESP[1:0],m_axi_output_0_RLAST,m_axi_output_0_RVALID,m_axi_output_0_RREADY" */;
  input [5:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  input [5:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [63:0]m_axi_input_1_AWADDR;
  output [7:0]m_axi_input_1_AWLEN;
  output [2:0]m_axi_input_1_AWSIZE;
  output [1:0]m_axi_input_1_AWBURST;
  output [1:0]m_axi_input_1_AWLOCK;
  output [3:0]m_axi_input_1_AWREGION;
  output [3:0]m_axi_input_1_AWCACHE;
  output [2:0]m_axi_input_1_AWPROT;
  output [3:0]m_axi_input_1_AWQOS;
  output m_axi_input_1_AWVALID;
  input m_axi_input_1_AWREADY;
  output [31:0]m_axi_input_1_WDATA;
  output [3:0]m_axi_input_1_WSTRB;
  output m_axi_input_1_WLAST;
  output m_axi_input_1_WVALID;
  input m_axi_input_1_WREADY;
  input [1:0]m_axi_input_1_BRESP;
  input m_axi_input_1_BVALID;
  output m_axi_input_1_BREADY;
  output [63:0]m_axi_input_1_ARADDR;
  output [7:0]m_axi_input_1_ARLEN;
  output [2:0]m_axi_input_1_ARSIZE;
  output [1:0]m_axi_input_1_ARBURST;
  output [1:0]m_axi_input_1_ARLOCK;
  output [3:0]m_axi_input_1_ARREGION;
  output [3:0]m_axi_input_1_ARCACHE;
  output [2:0]m_axi_input_1_ARPROT;
  output [3:0]m_axi_input_1_ARQOS;
  output m_axi_input_1_ARVALID;
  input m_axi_input_1_ARREADY;
  input [31:0]m_axi_input_1_RDATA;
  input [1:0]m_axi_input_1_RRESP;
  input m_axi_input_1_RLAST;
  input m_axi_input_1_RVALID;
  output m_axi_input_1_RREADY;
  output [63:0]m_axi_input_0_AWADDR;
  output [7:0]m_axi_input_0_AWLEN;
  output [2:0]m_axi_input_0_AWSIZE;
  output [1:0]m_axi_input_0_AWBURST;
  output [1:0]m_axi_input_0_AWLOCK;
  output [3:0]m_axi_input_0_AWREGION;
  output [3:0]m_axi_input_0_AWCACHE;
  output [2:0]m_axi_input_0_AWPROT;
  output [3:0]m_axi_input_0_AWQOS;
  output m_axi_input_0_AWVALID;
  input m_axi_input_0_AWREADY;
  output [31:0]m_axi_input_0_WDATA;
  output [3:0]m_axi_input_0_WSTRB;
  output m_axi_input_0_WLAST;
  output m_axi_input_0_WVALID;
  input m_axi_input_0_WREADY;
  input [1:0]m_axi_input_0_BRESP;
  input m_axi_input_0_BVALID;
  output m_axi_input_0_BREADY;
  output [63:0]m_axi_input_0_ARADDR;
  output [7:0]m_axi_input_0_ARLEN;
  output [2:0]m_axi_input_0_ARSIZE;
  output [1:0]m_axi_input_0_ARBURST;
  output [1:0]m_axi_input_0_ARLOCK;
  output [3:0]m_axi_input_0_ARREGION;
  output [3:0]m_axi_input_0_ARCACHE;
  output [2:0]m_axi_input_0_ARPROT;
  output [3:0]m_axi_input_0_ARQOS;
  output m_axi_input_0_ARVALID;
  input m_axi_input_0_ARREADY;
  input [31:0]m_axi_input_0_RDATA;
  input [1:0]m_axi_input_0_RRESP;
  input m_axi_input_0_RLAST;
  input m_axi_input_0_RVALID;
  output m_axi_input_0_RREADY;
  output [63:0]m_axi_output_1_AWADDR;
  output [7:0]m_axi_output_1_AWLEN;
  output [2:0]m_axi_output_1_AWSIZE;
  output [1:0]m_axi_output_1_AWBURST;
  output [1:0]m_axi_output_1_AWLOCK;
  output [3:0]m_axi_output_1_AWREGION;
  output [3:0]m_axi_output_1_AWCACHE;
  output [2:0]m_axi_output_1_AWPROT;
  output [3:0]m_axi_output_1_AWQOS;
  output m_axi_output_1_AWVALID;
  input m_axi_output_1_AWREADY;
  output [31:0]m_axi_output_1_WDATA;
  output [3:0]m_axi_output_1_WSTRB;
  output m_axi_output_1_WLAST;
  output m_axi_output_1_WVALID;
  input m_axi_output_1_WREADY;
  input [1:0]m_axi_output_1_BRESP;
  input m_axi_output_1_BVALID;
  output m_axi_output_1_BREADY;
  output [63:0]m_axi_output_1_ARADDR;
  output [7:0]m_axi_output_1_ARLEN;
  output [2:0]m_axi_output_1_ARSIZE;
  output [1:0]m_axi_output_1_ARBURST;
  output [1:0]m_axi_output_1_ARLOCK;
  output [3:0]m_axi_output_1_ARREGION;
  output [3:0]m_axi_output_1_ARCACHE;
  output [2:0]m_axi_output_1_ARPROT;
  output [3:0]m_axi_output_1_ARQOS;
  output m_axi_output_1_ARVALID;
  input m_axi_output_1_ARREADY;
  input [31:0]m_axi_output_1_RDATA;
  input [1:0]m_axi_output_1_RRESP;
  input m_axi_output_1_RLAST;
  input m_axi_output_1_RVALID;
  output m_axi_output_1_RREADY;
  output [63:0]m_axi_output_0_AWADDR;
  output [7:0]m_axi_output_0_AWLEN;
  output [2:0]m_axi_output_0_AWSIZE;
  output [1:0]m_axi_output_0_AWBURST;
  output [1:0]m_axi_output_0_AWLOCK;
  output [3:0]m_axi_output_0_AWREGION;
  output [3:0]m_axi_output_0_AWCACHE;
  output [2:0]m_axi_output_0_AWPROT;
  output [3:0]m_axi_output_0_AWQOS;
  output m_axi_output_0_AWVALID;
  input m_axi_output_0_AWREADY;
  output [31:0]m_axi_output_0_WDATA;
  output [3:0]m_axi_output_0_WSTRB;
  output m_axi_output_0_WLAST;
  output m_axi_output_0_WVALID;
  input m_axi_output_0_WREADY;
  input [1:0]m_axi_output_0_BRESP;
  input m_axi_output_0_BVALID;
  output m_axi_output_0_BREADY;
  output [63:0]m_axi_output_0_ARADDR;
  output [7:0]m_axi_output_0_ARLEN;
  output [2:0]m_axi_output_0_ARSIZE;
  output [1:0]m_axi_output_0_ARBURST;
  output [1:0]m_axi_output_0_ARLOCK;
  output [3:0]m_axi_output_0_ARREGION;
  output [3:0]m_axi_output_0_ARCACHE;
  output [2:0]m_axi_output_0_ARPROT;
  output [3:0]m_axi_output_0_ARQOS;
  output m_axi_output_0_ARVALID;
  input m_axi_output_0_ARREADY;
  input [31:0]m_axi_output_0_RDATA;
  input [1:0]m_axi_output_0_RRESP;
  input m_axi_output_0_RLAST;
  input m_axi_output_0_RVALID;
  output m_axi_output_0_RREADY;
endmodule
