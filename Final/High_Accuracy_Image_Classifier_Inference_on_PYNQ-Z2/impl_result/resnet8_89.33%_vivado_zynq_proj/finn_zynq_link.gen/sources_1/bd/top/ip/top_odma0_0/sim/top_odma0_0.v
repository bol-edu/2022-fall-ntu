// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx_finn:finn:StreamingDataflowPartition_2:1.0
// IP Revision: 2

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "IPI" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module top_odma0_0 (
  ap_clk,
  ap_rst_n,
  m_axi_gmem0_araddr,
  m_axi_gmem0_arburst,
  m_axi_gmem0_arcache,
  m_axi_gmem0_arlen,
  m_axi_gmem0_arlock,
  m_axi_gmem0_arprot,
  m_axi_gmem0_arqos,
  m_axi_gmem0_arready,
  m_axi_gmem0_arregion,
  m_axi_gmem0_arsize,
  m_axi_gmem0_arvalid,
  m_axi_gmem0_awaddr,
  m_axi_gmem0_awburst,
  m_axi_gmem0_awcache,
  m_axi_gmem0_awlen,
  m_axi_gmem0_awlock,
  m_axi_gmem0_awprot,
  m_axi_gmem0_awqos,
  m_axi_gmem0_awready,
  m_axi_gmem0_awregion,
  m_axi_gmem0_awsize,
  m_axi_gmem0_awvalid,
  m_axi_gmem0_bready,
  m_axi_gmem0_bresp,
  m_axi_gmem0_bvalid,
  m_axi_gmem0_rdata,
  m_axi_gmem0_rlast,
  m_axi_gmem0_rready,
  m_axi_gmem0_rresp,
  m_axi_gmem0_rvalid,
  m_axi_gmem0_wdata,
  m_axi_gmem0_wlast,
  m_axi_gmem0_wready,
  m_axi_gmem0_wstrb,
  m_axi_gmem0_wvalid,
  s_axi_control_0_araddr,
  s_axi_control_0_arready,
  s_axi_control_0_arvalid,
  s_axi_control_0_awaddr,
  s_axi_control_0_awready,
  s_axi_control_0_awvalid,
  s_axi_control_0_bready,
  s_axi_control_0_bresp,
  s_axi_control_0_bvalid,
  s_axi_control_0_rdata,
  s_axi_control_0_rready,
  s_axi_control_0_rresp,
  s_axi_control_0_rvalid,
  s_axi_control_0_wdata,
  s_axi_control_0_wready,
  s_axi_control_0_wstrb,
  s_axi_control_0_wvalid,
  s_axis_0_tdata,
  s_axis_0_tready,
  s_axis_0_tvalid
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, ASSOCIATED_BUSIF s_axi_control_0:m_axi_gmem0:s_axis_0, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN top_zynq_ps_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 ARADDR" *)
output wire [63 : 0] m_axi_gmem0_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 ARBURST" *)
output wire [1 : 0] m_axi_gmem0_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 ARCACHE" *)
output wire [3 : 0] m_axi_gmem0_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 ARLEN" *)
output wire [7 : 0] m_axi_gmem0_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 ARLOCK" *)
output wire [1 : 0] m_axi_gmem0_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 ARPROT" *)
output wire [2 : 0] m_axi_gmem0_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 ARQOS" *)
output wire [3 : 0] m_axi_gmem0_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 ARREADY" *)
input wire m_axi_gmem0_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 ARREGION" *)
output wire [3 : 0] m_axi_gmem0_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 ARSIZE" *)
output wire [2 : 0] m_axi_gmem0_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 ARVALID" *)
output wire m_axi_gmem0_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 AWADDR" *)
output wire [63 : 0] m_axi_gmem0_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 AWBURST" *)
output wire [1 : 0] m_axi_gmem0_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 AWCACHE" *)
output wire [3 : 0] m_axi_gmem0_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 AWLEN" *)
output wire [7 : 0] m_axi_gmem0_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 AWLOCK" *)
output wire [1 : 0] m_axi_gmem0_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 AWPROT" *)
output wire [2 : 0] m_axi_gmem0_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 AWQOS" *)
output wire [3 : 0] m_axi_gmem0_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 AWREADY" *)
input wire m_axi_gmem0_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 AWREGION" *)
output wire [3 : 0] m_axi_gmem0_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 AWSIZE" *)
output wire [2 : 0] m_axi_gmem0_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 AWVALID" *)
output wire m_axi_gmem0_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 BREADY" *)
output wire m_axi_gmem0_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 BRESP" *)
input wire [1 : 0] m_axi_gmem0_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 BVALID" *)
input wire m_axi_gmem0_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 RDATA" *)
input wire [63 : 0] m_axi_gmem0_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 RLAST" *)
input wire m_axi_gmem0_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 RREADY" *)
output wire m_axi_gmem0_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 RRESP" *)
input wire [1 : 0] m_axi_gmem0_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 RVALID" *)
input wire m_axi_gmem0_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 WDATA" *)
output wire [63 : 0] m_axi_gmem0_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 WLAST" *)
output wire m_axi_gmem0_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 WREADY" *)
input wire m_axi_gmem0_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 WSTRB" *)
output wire [7 : 0] m_axi_gmem0_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem0, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, W\
USER_BITS_PER_BYTE 0, CLK_DOMAIN top_zynq_ps_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 WVALID" *)
output wire m_axi_gmem0_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 ARADDR" *)
input wire [5 : 0] s_axi_control_0_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 ARREADY" *)
output wire s_axi_control_0_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 ARVALID" *)
input wire s_axi_control_0_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 AWADDR" *)
input wire [5 : 0] s_axi_control_0_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 AWREADY" *)
output wire s_axi_control_0_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 AWVALID" *)
input wire s_axi_control_0_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 BREADY" *)
input wire s_axi_control_0_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 BRESP" *)
output wire [1 : 0] s_axi_control_0_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 BVALID" *)
output wire s_axi_control_0_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 RDATA" *)
output wire [31 : 0] s_axi_control_0_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 RREADY" *)
input wire s_axi_control_0_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 RRESP" *)
output wire [1 : 0] s_axi_control_0_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 RVALID" *)
output wire s_axi_control_0_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 WDATA" *)
input wire [31 : 0] s_axi_control_0_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 WREADY" *)
output wire s_axi_control_0_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 WSTRB" *)
input wire [3 : 0] s_axi_control_0_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control_0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0\
, WUSER_BITS_PER_BYTE 0, CLK_DOMAIN top_zynq_ps_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 WVALID" *)
input wire s_axi_control_0_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 TDATA" *)
input wire [7 : 0] s_axis_0_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 TREADY" *)
output wire s_axis_0_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, CLK_DOMAIN top_zynq_ps_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 TVALID" *)
input wire s_axis_0_tvalid;

  StreamingDataflowPartition_2 inst (
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axi_gmem0_araddr(m_axi_gmem0_araddr),
    .m_axi_gmem0_arburst(m_axi_gmem0_arburst),
    .m_axi_gmem0_arcache(m_axi_gmem0_arcache),
    .m_axi_gmem0_arlen(m_axi_gmem0_arlen),
    .m_axi_gmem0_arlock(m_axi_gmem0_arlock),
    .m_axi_gmem0_arprot(m_axi_gmem0_arprot),
    .m_axi_gmem0_arqos(m_axi_gmem0_arqos),
    .m_axi_gmem0_arready(m_axi_gmem0_arready),
    .m_axi_gmem0_arregion(m_axi_gmem0_arregion),
    .m_axi_gmem0_arsize(m_axi_gmem0_arsize),
    .m_axi_gmem0_arvalid(m_axi_gmem0_arvalid),
    .m_axi_gmem0_awaddr(m_axi_gmem0_awaddr),
    .m_axi_gmem0_awburst(m_axi_gmem0_awburst),
    .m_axi_gmem0_awcache(m_axi_gmem0_awcache),
    .m_axi_gmem0_awlen(m_axi_gmem0_awlen),
    .m_axi_gmem0_awlock(m_axi_gmem0_awlock),
    .m_axi_gmem0_awprot(m_axi_gmem0_awprot),
    .m_axi_gmem0_awqos(m_axi_gmem0_awqos),
    .m_axi_gmem0_awready(m_axi_gmem0_awready),
    .m_axi_gmem0_awregion(m_axi_gmem0_awregion),
    .m_axi_gmem0_awsize(m_axi_gmem0_awsize),
    .m_axi_gmem0_awvalid(m_axi_gmem0_awvalid),
    .m_axi_gmem0_bready(m_axi_gmem0_bready),
    .m_axi_gmem0_bresp(m_axi_gmem0_bresp),
    .m_axi_gmem0_bvalid(m_axi_gmem0_bvalid),
    .m_axi_gmem0_rdata(m_axi_gmem0_rdata),
    .m_axi_gmem0_rlast(m_axi_gmem0_rlast),
    .m_axi_gmem0_rready(m_axi_gmem0_rready),
    .m_axi_gmem0_rresp(m_axi_gmem0_rresp),
    .m_axi_gmem0_rvalid(m_axi_gmem0_rvalid),
    .m_axi_gmem0_wdata(m_axi_gmem0_wdata),
    .m_axi_gmem0_wlast(m_axi_gmem0_wlast),
    .m_axi_gmem0_wready(m_axi_gmem0_wready),
    .m_axi_gmem0_wstrb(m_axi_gmem0_wstrb),
    .m_axi_gmem0_wvalid(m_axi_gmem0_wvalid),
    .s_axi_control_0_araddr(s_axi_control_0_araddr),
    .s_axi_control_0_arready(s_axi_control_0_arready),
    .s_axi_control_0_arvalid(s_axi_control_0_arvalid),
    .s_axi_control_0_awaddr(s_axi_control_0_awaddr),
    .s_axi_control_0_awready(s_axi_control_0_awready),
    .s_axi_control_0_awvalid(s_axi_control_0_awvalid),
    .s_axi_control_0_bready(s_axi_control_0_bready),
    .s_axi_control_0_bresp(s_axi_control_0_bresp),
    .s_axi_control_0_bvalid(s_axi_control_0_bvalid),
    .s_axi_control_0_rdata(s_axi_control_0_rdata),
    .s_axi_control_0_rready(s_axi_control_0_rready),
    .s_axi_control_0_rresp(s_axi_control_0_rresp),
    .s_axi_control_0_rvalid(s_axi_control_0_rvalid),
    .s_axi_control_0_wdata(s_axi_control_0_wdata),
    .s_axi_control_0_wready(s_axi_control_0_wready),
    .s_axi_control_0_wstrb(s_axi_control_0_wstrb),
    .s_axi_control_0_wvalid(s_axi_control_0_wvalid),
    .s_axis_0_tdata(s_axis_0_tdata),
    .s_axis_0_tready(s_axis_0_tready),
    .s_axis_0_tvalid(s_axis_0_tvalid)
  );
endmodule
