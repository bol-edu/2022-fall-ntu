// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:hls:hdc_maxi:1.0
// IP Revision: 2112844043

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_hdc_maxi_0_0 (
  s_axi_control_AWADDR,
  s_axi_control_AWVALID,
  s_axi_control_AWREADY,
  s_axi_control_WDATA,
  s_axi_control_WSTRB,
  s_axi_control_WVALID,
  s_axi_control_WREADY,
  s_axi_control_BRESP,
  s_axi_control_BVALID,
  s_axi_control_BREADY,
  s_axi_control_ARADDR,
  s_axi_control_ARVALID,
  s_axi_control_ARREADY,
  s_axi_control_RDATA,
  s_axi_control_RRESP,
  s_axi_control_RVALID,
  s_axi_control_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  test_data_TVALID,
  test_data_TREADY,
  test_data_TDATA,
  test_data_TDEST,
  test_data_TKEEP,
  test_data_TSTRB,
  test_data_TUSER,
  test_data_TLAST,
  test_data_TID,
  test_label_out_TVALID,
  test_label_out_TREADY,
  test_label_out_TDATA,
  test_label_out_TDEST,
  test_label_out_TKEEP,
  test_label_out_TSTRB,
  test_label_out_TUSER,
  test_label_out_TLAST,
  test_label_out_TID,
  IM_TVALID,
  IM_TREADY,
  IM_TDATA,
  IM_TDEST,
  IM_TKEEP,
  IM_TSTRB,
  IM_TUSER,
  IM_TLAST,
  IM_TID,
  AM_out_TVALID,
  AM_out_TREADY,
  AM_out_TDATA,
  AM_out_TDEST,
  AM_out_TKEEP,
  AM_out_TSTRB,
  AM_out_TUSER,
  AM_out_TLAST,
  AM_out_TID
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *)
input wire [3 : 0] s_axi_control_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *)
input wire s_axi_control_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *)
output wire s_axi_control_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *)
input wire [31 : 0] s_axi_control_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *)
input wire [3 : 0] s_axi_control_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *)
input wire s_axi_control_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *)
output wire s_axi_control_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *)
output wire [1 : 0] s_axi_control_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *)
output wire s_axi_control_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *)
input wire s_axi_control_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *)
input wire [3 : 0] s_axi_control_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *)
input wire s_axi_control_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *)
output wire s_axi_control_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *)
output wire [31 : 0] s_axi_control_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *)
output wire [1 : 0] s_axi_control_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *)
output wire s_axi_control_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 4, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 50000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_TH\
READS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *)
input wire s_axi_control_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:test_data:test_label_out:IM:AM_out, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_data TVALID" *)
input wire test_data_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_data TREADY" *)
output wire test_data_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_data TDATA" *)
input wire [31 : 0] test_data_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_data TDEST" *)
input wire [0 : 0] test_data_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_data TKEEP" *)
input wire [3 : 0] test_data_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_data TSTRB" *)
input wire [3 : 0] test_data_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_data TUSER" *)
input wire [0 : 0] test_data_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_data TLAST" *)
input wire [0 : 0] test_data_TLAST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_data, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_data TID" *)
input wire [0 : 0] test_data_TID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_label_out TVALID" *)
output wire test_label_out_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_label_out TREADY" *)
input wire test_label_out_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_label_out TDATA" *)
output wire [31 : 0] test_label_out_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_label_out TDEST" *)
output wire [0 : 0] test_label_out_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_label_out TKEEP" *)
output wire [3 : 0] test_label_out_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_label_out TSTRB" *)
output wire [3 : 0] test_label_out_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_label_out TUSER" *)
output wire [0 : 0] test_label_out_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_label_out TLAST" *)
output wire [0 : 0] test_label_out_TLAST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_label_out, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_label_out TID" *)
output wire [0 : 0] test_label_out_TID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 IM TVALID" *)
input wire IM_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 IM TREADY" *)
output wire IM_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 IM TDATA" *)
input wire [31 : 0] IM_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 IM TDEST" *)
input wire [0 : 0] IM_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 IM TKEEP" *)
input wire [3 : 0] IM_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 IM TSTRB" *)
input wire [3 : 0] IM_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 IM TUSER" *)
input wire [0 : 0] IM_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 IM TLAST" *)
input wire [0 : 0] IM_TLAST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME IM, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 IM TID" *)
input wire [0 : 0] IM_TID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AM_out TVALID" *)
input wire AM_out_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AM_out TREADY" *)
output wire AM_out_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AM_out TDATA" *)
input wire [31 : 0] AM_out_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AM_out TDEST" *)
input wire [0 : 0] AM_out_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AM_out TKEEP" *)
input wire [3 : 0] AM_out_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AM_out TSTRB" *)
input wire [3 : 0] AM_out_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AM_out TUSER" *)
input wire [0 : 0] AM_out_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AM_out TLAST" *)
input wire [0 : 0] AM_out_TLAST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AM_out, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AM_out TID" *)
input wire [0 : 0] AM_out_TID;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SIM_INST = "" *)
  hdc_maxi #(
    .C_S_AXI_CONTROL_ADDR_WIDTH(4),
    .C_S_AXI_CONTROL_DATA_WIDTH(32)
  ) inst (
    .s_axi_control_AWADDR(s_axi_control_AWADDR),
    .s_axi_control_AWVALID(s_axi_control_AWVALID),
    .s_axi_control_AWREADY(s_axi_control_AWREADY),
    .s_axi_control_WDATA(s_axi_control_WDATA),
    .s_axi_control_WSTRB(s_axi_control_WSTRB),
    .s_axi_control_WVALID(s_axi_control_WVALID),
    .s_axi_control_WREADY(s_axi_control_WREADY),
    .s_axi_control_BRESP(s_axi_control_BRESP),
    .s_axi_control_BVALID(s_axi_control_BVALID),
    .s_axi_control_BREADY(s_axi_control_BREADY),
    .s_axi_control_ARADDR(s_axi_control_ARADDR),
    .s_axi_control_ARVALID(s_axi_control_ARVALID),
    .s_axi_control_ARREADY(s_axi_control_ARREADY),
    .s_axi_control_RDATA(s_axi_control_RDATA),
    .s_axi_control_RRESP(s_axi_control_RRESP),
    .s_axi_control_RVALID(s_axi_control_RVALID),
    .s_axi_control_RREADY(s_axi_control_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .test_data_TVALID(test_data_TVALID),
    .test_data_TREADY(test_data_TREADY),
    .test_data_TDATA(test_data_TDATA),
    .test_data_TDEST(test_data_TDEST),
    .test_data_TKEEP(test_data_TKEEP),
    .test_data_TSTRB(test_data_TSTRB),
    .test_data_TUSER(test_data_TUSER),
    .test_data_TLAST(test_data_TLAST),
    .test_data_TID(test_data_TID),
    .test_label_out_TVALID(test_label_out_TVALID),
    .test_label_out_TREADY(test_label_out_TREADY),
    .test_label_out_TDATA(test_label_out_TDATA),
    .test_label_out_TDEST(test_label_out_TDEST),
    .test_label_out_TKEEP(test_label_out_TKEEP),
    .test_label_out_TSTRB(test_label_out_TSTRB),
    .test_label_out_TUSER(test_label_out_TUSER),
    .test_label_out_TLAST(test_label_out_TLAST),
    .test_label_out_TID(test_label_out_TID),
    .IM_TVALID(IM_TVALID),
    .IM_TREADY(IM_TREADY),
    .IM_TDATA(IM_TDATA),
    .IM_TDEST(IM_TDEST),
    .IM_TKEEP(IM_TKEEP),
    .IM_TSTRB(IM_TSTRB),
    .IM_TUSER(IM_TUSER),
    .IM_TLAST(IM_TLAST),
    .IM_TID(IM_TID),
    .AM_out_TVALID(AM_out_TVALID),
    .AM_out_TREADY(AM_out_TREADY),
    .AM_out_TDATA(AM_out_TDATA),
    .AM_out_TDEST(AM_out_TDEST),
    .AM_out_TKEEP(AM_out_TKEEP),
    .AM_out_TSTRB(AM_out_TSTRB),
    .AM_out_TUSER(AM_out_TUSER),
    .AM_out_TLAST(AM_out_TLAST),
    .AM_out_TID(AM_out_TID)
  );
endmodule
