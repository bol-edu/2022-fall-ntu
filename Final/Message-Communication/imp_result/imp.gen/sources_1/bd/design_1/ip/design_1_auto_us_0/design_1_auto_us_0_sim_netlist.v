// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Dec 29 11:24:29 2022
// Host        : BenWang running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/User/Documents/HLS/Final/Final/Final/QOI/imp/imp.gen/sources_1/bd/design_1/ip/design_1_auto_us_0/design_1_auto_us_0_sim_netlist.v
// Design      : design_1_auto_us_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_auto_us_0,axi_dwidth_converter_v2_1_26_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_dwidth_converter_v2_1_26_top,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module design_1_auto_us_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 SI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SI_CLK, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET S_AXI_ARESETN, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [63:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [3:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [1:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [63:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [3:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [1:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [63:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [3:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [1:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [63:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [7:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [63:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [3:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [1:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [63:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 8, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire [63:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [1:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [63:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [1:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire s_axi_aclk;
  wire [63:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire s_axi_aresetn;
  wire [3:0]s_axi_arlen;
  wire [1:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [63:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [1:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;

  (* C_AXI_ADDR_WIDTH = "64" *) 
  (* C_AXI_IS_ACLK_ASYNC = "0" *) 
  (* C_AXI_PROTOCOL = "1" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FIFO_MODE = "0" *) 
  (* C_MAX_SPLIT_BEATS = "16" *) 
  (* C_M_AXI_ACLK_RATIO = "2" *) 
  (* C_M_AXI_BYTES_LOG = "3" *) 
  (* C_M_AXI_DATA_WIDTH = "64" *) 
  (* C_PACKING_LEVEL = "1" *) 
  (* C_RATIO = "0" *) 
  (* C_RATIO_LOG = "0" *) 
  (* C_SUPPORTS_ID = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_S_AXI_ACLK_RATIO = "1" *) 
  (* C_S_AXI_BYTES_LOG = "2" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_ID_WIDTH = "1" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_CONVERSION = "2" *) 
  (* P_MAX_SPLIT_BEATS = "16" *) 
  design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top inst
       (.m_axi_aclk(1'b0),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_aresetn(1'b0),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(1'b0),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_26_a_upsizer" *) 
module design_1_auto_us_0_axi_dwidth_converter_v2_1_26_a_upsizer
   (\USE_WRITE.wr_cmd_valid ,
    s_axi_wlast_0,
    p_89_in,
    \USE_RTL_LENGTH.length_counter_q_reg[0] ,
    Q,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28] ,
    s_axi_wvalid_0,
    wrap_buffer_available_reg,
    wrap_buffer_available_reg_0,
    wrap_buffer_available_reg_1,
    wrap_buffer_available_reg_2,
    wrap_buffer_available_reg_3,
    wrap_buffer_available_reg_4,
    wrap_buffer_available_reg_5,
    wrap_buffer_available_reg_6,
    s_axi_wready,
    p_79_in,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1] ,
    D,
    \USE_RTL_CURR_WORD.pre_next_word_q_reg[2] ,
    s_axi_aresetn,
    m_axi_awvalid,
    cmd_push_block_reg_0,
    s_axi_wlast_1,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg ,
    s_axi_wlast_2,
    SR,
    out,
    s_axi_wlast,
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0] ,
    E,
    \USE_RTL_LENGTH.length_counter_q_reg[1] ,
    \USE_RTL_LENGTH.first_mi_word_q ,
    \USE_RTL_LENGTH.length_counter_q_reg[1]_0 ,
    \USE_REGISTER.M_AXI_WVALID_q_reg ,
    wrap_buffer_available,
    s_axi_wvalid,
    s_axi_wstrb,
    m_axi_wready,
    \USE_REGISTER.M_AXI_WVALID_q_reg_0 ,
    \USE_RTL_CURR_WORD.current_word_q_reg[2] ,
    sel_first_word__0,
    \USE_RTL_CURR_WORD.first_word_q ,
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ,
    m_axi_awready,
    in);
  output \USE_WRITE.wr_cmd_valid ;
  output [0:0]s_axi_wlast_0;
  output p_89_in;
  output \USE_RTL_LENGTH.length_counter_q_reg[0] ;
  output [8:0]Q;
  output \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28] ;
  output [0:0]s_axi_wvalid_0;
  output [0:0]wrap_buffer_available_reg;
  output [0:0]wrap_buffer_available_reg_0;
  output [0:0]wrap_buffer_available_reg_1;
  output [0:0]wrap_buffer_available_reg_2;
  output [0:0]wrap_buffer_available_reg_3;
  output [0:0]wrap_buffer_available_reg_4;
  output [0:0]wrap_buffer_available_reg_5;
  output [0:0]wrap_buffer_available_reg_6;
  output s_axi_wready;
  output p_79_in;
  output \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1] ;
  output [2:0]D;
  output [2:0]\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] ;
  output s_axi_aresetn;
  output m_axi_awvalid;
  output cmd_push_block_reg_0;
  output s_axi_wlast_1;
  output \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg ;
  output s_axi_wlast_2;
  input [0:0]SR;
  input out;
  input s_axi_wlast;
  input \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0] ;
  input [0:0]E;
  input [1:0]\USE_RTL_LENGTH.length_counter_q_reg[1] ;
  input \USE_RTL_LENGTH.first_mi_word_q ;
  input \USE_RTL_LENGTH.length_counter_q_reg[1]_0 ;
  input \USE_REGISTER.M_AXI_WVALID_q_reg ;
  input wrap_buffer_available;
  input s_axi_wvalid;
  input [3:0]s_axi_wstrb;
  input m_axi_wready;
  input \USE_REGISTER.M_AXI_WVALID_q_reg_0 ;
  input [2:0]\USE_RTL_CURR_WORD.current_word_q_reg[2] ;
  input sel_first_word__0;
  input \USE_RTL_CURR_WORD.first_word_q ;
  input [2:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ;
  input m_axi_awready;
  input [23:0]in;

  wire [2:0]D;
  wire [0:0]E;
  wire [8:0]Q;
  wire [0:0]SR;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1] ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28] ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg ;
  wire \USE_REGISTER.M_AXI_WVALID_q_reg ;
  wire \USE_REGISTER.M_AXI_WVALID_q_reg_0 ;
  wire [2:0]\USE_RTL_CURR_WORD.current_word_q_reg[2] ;
  wire \USE_RTL_CURR_WORD.first_word_q ;
  wire [2:0]\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] ;
  wire \USE_RTL_LENGTH.first_mi_word_q ;
  wire \USE_RTL_LENGTH.length_counter_q_reg[0] ;
  wire [1:0]\USE_RTL_LENGTH.length_counter_q_reg[1] ;
  wire \USE_RTL_LENGTH.length_counter_q_reg[1]_0 ;
  wire \USE_WRITE.wr_cmd_valid ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0] ;
  wire [2:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ;
  wire cmd_push_block;
  wire cmd_push_block0;
  wire cmd_push_block_reg_0;
  wire [23:0]in;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_wready;
  wire out;
  wire p_79_in;
  wire p_89_in;
  wire s_axi_aresetn;
  wire s_axi_wlast;
  wire [0:0]s_axi_wlast_0;
  wire s_axi_wlast_1;
  wire s_axi_wlast_2;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]s_axi_wvalid_0;
  wire sel_first_word__0;
  wire wrap_buffer_available;
  wire [0:0]wrap_buffer_available_reg;
  wire [0:0]wrap_buffer_available_reg_0;
  wire [0:0]wrap_buffer_available_reg_1;
  wire [0:0]wrap_buffer_available_reg_2;
  wire [0:0]wrap_buffer_available_reg_3;
  wire [0:0]wrap_buffer_available_reg_4;
  wire [0:0]wrap_buffer_available_reg_5;
  wire [0:0]wrap_buffer_available_reg_6;

  design_1_auto_us_0_generic_baseblocks_v2_1_0_command_fifo \GEN_CMD_QUEUE.cmd_queue 
       (.D(D),
        .E(E),
        .Q(Q),
        .SR(SR),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_0 (\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1] ),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28]_0 (\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28] ),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[29]_0 (p_89_in),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 (\USE_WRITE.wr_cmd_valid ),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1 (\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg ),
        .\USE_REGISTER.M_AXI_WVALID_q_reg (\USE_REGISTER.M_AXI_WVALID_q_reg ),
        .\USE_REGISTER.M_AXI_WVALID_q_reg_0 (\USE_REGISTER.M_AXI_WVALID_q_reg_0 ),
        .\USE_RTL_CURR_WORD.current_word_q_reg[2] (\USE_RTL_CURR_WORD.current_word_q_reg[2] ),
        .\USE_RTL_CURR_WORD.first_word_q (\USE_RTL_CURR_WORD.first_word_q ),
        .\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] (\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] ),
        .\USE_RTL_LENGTH.first_mi_word_q (\USE_RTL_LENGTH.first_mi_word_q ),
        .\USE_RTL_LENGTH.length_counter_q_reg[0] (\USE_RTL_LENGTH.length_counter_q_reg[0] ),
        .\USE_RTL_LENGTH.length_counter_q_reg[1] (\USE_RTL_LENGTH.length_counter_q_reg[1] ),
        .\USE_RTL_LENGTH.length_counter_q_reg[1]_0 (\USE_RTL_LENGTH.length_counter_q_reg[1]_0 ),
        .\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0] (\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0] ),
        .\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 (\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ),
        .cmd_push_block(cmd_push_block),
        .cmd_push_block0(cmd_push_block0),
        .cmd_push_block_reg(cmd_push_block_reg_0),
        .in(in),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wready(m_axi_wready),
        .out(out),
        .p_79_in(p_79_in),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wlast_0(s_axi_wlast_0),
        .s_axi_wlast_1(s_axi_wlast_1),
        .s_axi_wlast_2(s_axi_wlast_2),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axi_wvalid_0(s_axi_wvalid_0),
        .sel_first_word__0(sel_first_word__0),
        .wrap_buffer_available(wrap_buffer_available),
        .wrap_buffer_available_reg(wrap_buffer_available_reg),
        .wrap_buffer_available_reg_0(wrap_buffer_available_reg_0),
        .wrap_buffer_available_reg_1(wrap_buffer_available_reg_1),
        .wrap_buffer_available_reg_2(wrap_buffer_available_reg_2),
        .wrap_buffer_available_reg_3(wrap_buffer_available_reg_3),
        .wrap_buffer_available_reg_4(wrap_buffer_available_reg_4),
        .wrap_buffer_available_reg_5(wrap_buffer_available_reg_5),
        .wrap_buffer_available_reg_6(wrap_buffer_available_reg_6));
  FDRE #(
    .INIT(1'b0)) 
    cmd_push_block_reg
       (.C(out),
        .CE(1'b1),
        .D(cmd_push_block0),
        .Q(cmd_push_block),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_26_a_upsizer" *) 
module design_1_auto_us_0_axi_dwidth_converter_v2_1_26_a_upsizer__parameterized0
   (\USE_READ.rd_cmd_valid ,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1] ,
    Q,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg ,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19] ,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ,
    s_axi_rvalid,
    s_axi_rready_0,
    p_13_in,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1 ,
    D,
    \pre_next_word_1_reg[2] ,
    \MULTIPLE_WORD.current_index ,
    s_axi_aresetn,
    m_axi_arvalid,
    cmd_push_block_reg_0,
    SR,
    out,
    \USE_RTL_LENGTH.first_mi_word_q ,
    E,
    use_wrap_buffer,
    mr_rvalid,
    s_axi_rready,
    m_axi_arvalid_0,
    last_beat__6,
    wrap_buffer_available,
    \current_word_1_reg[2] ,
    sel_first_word__0,
    first_word,
    first_word_reg,
    s_ready_i_reg,
    m_axi_arready,
    in);
  output \USE_READ.rd_cmd_valid ;
  output \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1] ;
  output [5:0]Q;
  output \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg ;
  output \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19] ;
  output \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ;
  output s_axi_rvalid;
  output [0:0]s_axi_rready_0;
  output p_13_in;
  output \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1 ;
  output [2:0]D;
  output [2:0]\pre_next_word_1_reg[2] ;
  output \MULTIPLE_WORD.current_index ;
  output s_axi_aresetn;
  output m_axi_arvalid;
  output cmd_push_block_reg_0;
  input [0:0]SR;
  input out;
  input \USE_RTL_LENGTH.first_mi_word_q ;
  input [0:0]E;
  input use_wrap_buffer;
  input mr_rvalid;
  input s_axi_rready;
  input [0:0]m_axi_arvalid_0;
  input last_beat__6;
  input wrap_buffer_available;
  input [2:0]\current_word_1_reg[2] ;
  input sel_first_word__0;
  input first_word;
  input [2:0]first_word_reg;
  input s_ready_i_reg;
  input m_axi_arready;
  input [23:0]in;

  wire [2:0]D;
  wire [0:0]E;
  wire \MULTIPLE_WORD.current_index ;
  wire [5:0]Q;
  wire [0:0]SR;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19] ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1] ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1 ;
  wire \USE_READ.rd_cmd_valid ;
  wire \USE_RTL_LENGTH.first_mi_word_q ;
  wire cmd_push_block;
  wire cmd_push_block0;
  wire cmd_push_block_reg_0;
  wire [2:0]\current_word_1_reg[2] ;
  wire first_word;
  wire [2:0]first_word_reg;
  wire [23:0]in;
  wire last_beat__6;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [0:0]m_axi_arvalid_0;
  wire mr_rvalid;
  wire out;
  wire p_13_in;
  wire [2:0]\pre_next_word_1_reg[2] ;
  wire s_axi_aresetn;
  wire s_axi_rready;
  wire [0:0]s_axi_rready_0;
  wire s_axi_rvalid;
  wire s_ready_i_reg;
  wire sel_first_word__0;
  wire use_wrap_buffer;
  wire wrap_buffer_available;

  design_1_auto_us_0_generic_baseblocks_v2_1_0_command_fifo_1 \GEN_CMD_QUEUE.cmd_queue 
       (.D(D),
        .E(E),
        .\MULTIPLE_WORD.current_index (\MULTIPLE_WORD.current_index ),
        .Q(Q),
        .SR(SR),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]_0 (\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19] ),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_0 (\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1] ),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 (\USE_READ.rd_cmd_valid ),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1 (\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg ),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_2 (\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_3 (\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1 ),
        .\USE_RTL_LENGTH.first_mi_word_q (\USE_RTL_LENGTH.first_mi_word_q ),
        .cmd_push_block(cmd_push_block),
        .cmd_push_block0(cmd_push_block0),
        .cmd_push_block_reg(cmd_push_block_reg_0),
        .\current_word_1_reg[2] (\current_word_1_reg[2] ),
        .first_word(first_word),
        .first_word_reg(first_word_reg),
        .in(in),
        .last_beat__6(last_beat__6),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_arvalid_0(m_axi_arvalid_0),
        .mr_rvalid(mr_rvalid),
        .out(out),
        .p_13_in(p_13_in),
        .\pre_next_word_1_reg[2] (\pre_next_word_1_reg[2] ),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_0(s_axi_rready_0),
        .s_axi_rvalid(s_axi_rvalid),
        .s_ready_i_reg(s_ready_i_reg),
        .sel_first_word__0(sel_first_word__0),
        .use_wrap_buffer(use_wrap_buffer),
        .wrap_buffer_available(wrap_buffer_available));
  FDRE #(
    .INIT(1'b0)) 
    cmd_push_block_reg
       (.C(out),
        .CE(1'b1),
        .D(cmd_push_block0),
        .Q(cmd_push_block),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_26_axi_upsizer" *) 
module design_1_auto_us_0_axi_dwidth_converter_v2_1_26_axi_upsizer
   (m_axi_awlen,
    Q,
    m_axi_awaddr,
    m_axi_awburst,
    m_axi_arburst,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_wdata,
    s_ready_i_reg,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19] ,
    \m_payload_i_reg[86] ,
    s_axi_awready,
    s_axi_arready,
    \USE_REGISTER.M_AXI_WVALID_q_reg ,
    s_axi_wready,
    m_axi_awvalid,
    s_axi_rvalid,
    s_axi_rdata,
    m_axi_arvalid,
    s_axi_rresp,
    m_axi_awsize,
    m_axi_arsize,
    m_axi_wstrb,
    m_axi_wlast,
    out,
    s_axi_wlast,
    s_axi_wstrb,
    s_axi_wdata,
    D,
    m_axi_rlast,
    m_axi_rresp,
    m_axi_rdata,
    \m_payload_i_reg[86]_0 ,
    s_axi_awvalid,
    s_axi_arvalid,
    m_valid_i_reg_inv,
    m_axi_wready,
    s_axi_wvalid,
    m_axi_awready,
    s_axi_rready,
    m_axi_arready,
    m_axi_rvalid);
  output [3:0]m_axi_awlen;
  output [70:0]Q;
  output [5:0]m_axi_awaddr;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_arburst;
  output [63:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [63:0]m_axi_wdata;
  output s_ready_i_reg;
  output \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19] ;
  output [12:0]\m_payload_i_reg[86] ;
  output s_axi_awready;
  output s_axi_arready;
  output \USE_REGISTER.M_AXI_WVALID_q_reg ;
  output s_axi_wready;
  output m_axi_awvalid;
  output s_axi_rvalid;
  output [31:0]s_axi_rdata;
  output m_axi_arvalid;
  output [1:0]s_axi_rresp;
  output [2:0]m_axi_awsize;
  output [2:0]m_axi_arsize;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  input out;
  input s_axi_wlast;
  input [3:0]s_axi_wstrb;
  input [31:0]s_axi_wdata;
  input [85:0]D;
  input m_axi_rlast;
  input [1:0]m_axi_rresp;
  input [63:0]m_axi_rdata;
  input [85:0]\m_payload_i_reg[86]_0 ;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input m_valid_i_reg_inv;
  input m_axi_wready;
  input s_axi_wvalid;
  input m_axi_awready;
  input s_axi_rready;
  input m_axi_arready;
  input m_axi_rvalid;

  wire [85:0]D;
  wire \MULTIPLE_WORD.current_index ;
  wire [70:0]Q;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19] ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_10 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_11 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_12 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_13 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_14 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_15 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_16 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_17 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_18 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_19 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_2 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_20 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_21 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_22 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_23 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_24 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_25 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_26 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_27 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_28 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_29 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_3 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_30 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_31 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_32 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_33 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_34 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_35 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_36 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_37 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_38 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_39 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_40 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_41 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_42 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_43 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_44 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_45 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_46 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_47 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_48 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_49 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_50 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_51 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_52 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_53 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_54 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_55 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_56 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_57 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_58 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_59 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_6 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_60 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_61 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_62 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_63 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_64 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_65 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_66 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_67 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_68 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_69 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_7 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_8 ;
  wire \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_9 ;
  wire \USE_READ.rd_cmd_fix ;
  wire \USE_READ.rd_cmd_packed_wrap ;
  wire \USE_READ.rd_cmd_valid ;
  wire \USE_READ.read_addr_inst_n_1 ;
  wire \USE_READ.read_addr_inst_n_10 ;
  wire \USE_READ.read_addr_inst_n_14 ;
  wire \USE_READ.read_addr_inst_n_22 ;
  wire \USE_READ.read_addr_inst_n_24 ;
  wire \USE_READ.read_addr_inst_n_4 ;
  wire \USE_READ.read_addr_inst_n_5 ;
  wire \USE_READ.read_addr_inst_n_6 ;
  wire \USE_READ.read_addr_inst_n_7 ;
  wire \USE_READ.read_addr_inst_n_8 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_reg ;
  wire [2:0]\USE_RTL_CURR_WORD.current_word_q ;
  wire \USE_RTL_CURR_WORD.first_word_q ;
  wire [2:0]\USE_RTL_CURR_WORD.pre_next_word_q ;
  wire \USE_RTL_LENGTH.first_mi_word_q ;
  wire \USE_RTL_LENGTH.first_mi_word_q_0 ;
  wire [1:0]\USE_RTL_LENGTH.length_counter_q_reg ;
  wire \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_1 ;
  wire \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_16 ;
  wire \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_20 ;
  wire [2:2]\USE_WRITE.wr_cmd_first_word ;
  wire \USE_WRITE.wr_cmd_fix ;
  wire [2:2]\USE_WRITE.wr_cmd_offset ;
  wire \USE_WRITE.wr_cmd_packed_wrap ;
  wire \USE_WRITE.wr_cmd_valid ;
  wire \USE_WRITE.write_addr_inst_n_10 ;
  wire \USE_WRITE.write_addr_inst_n_11 ;
  wire \USE_WRITE.write_addr_inst_n_12 ;
  wire \USE_WRITE.write_addr_inst_n_13 ;
  wire \USE_WRITE.write_addr_inst_n_25 ;
  wire \USE_WRITE.write_addr_inst_n_3 ;
  wire \USE_WRITE.write_addr_inst_n_32 ;
  wire \USE_WRITE.write_addr_inst_n_34 ;
  wire \USE_WRITE.write_addr_inst_n_35 ;
  wire \USE_WRITE.write_addr_inst_n_36 ;
  wire \USE_WRITE.write_addr_inst_n_37 ;
  wire \USE_WRITE.write_addr_inst_n_8 ;
  wire \USE_WRITE.write_addr_inst_n_9 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg0 ;
  wire cmd_complete_wrap_i;
  wire [2:0]cmd_first_word_i;
  wire [2:0]cmd_first_word_i_6;
  wire cmd_fix_i;
  wire cmd_fix_i_8;
  wire cmd_modified_i;
  wire cmd_packed_wrap_i;
  wire cmd_packed_wrap_i_7;
  wire [2:0]current_word_1;
  wire first_word;
  wire last_beat__6;
  wire [63:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arlen;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [5:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire [12:0]\m_payload_i_reg[86] ;
  wire [85:0]\m_payload_i_reg[86]_0 ;
  wire m_valid_i_reg_inv;
  wire [1:0]mr_rresp;
  wire mr_rvalid;
  wire [2:0]next_word;
  wire [2:0]next_word_3;
  wire out;
  wire p_13_in;
  wire p_15_in;
  wire [22:18]p_1_out;
  wire [22:17]p_1_out_5;
  wire p_79_in;
  wire p_89_in;
  wire pop_si_data;
  wire [2:0]pre_next_word;
  wire [2:0]pre_next_word_1;
  wire [2:0]pre_next_word_4;
  wire \r.r_pipe/p_1_in ;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire s_ready_i_reg;
  wire sel_first_word__0;
  wire sel_first_word__0_1;
  wire si_register_slice_inst_n_0;
  wire si_register_slice_inst_n_1;
  wire si_register_slice_inst_n_101;
  wire si_register_slice_inst_n_109;
  wire si_register_slice_inst_n_111;
  wire si_register_slice_inst_n_112;
  wire si_register_slice_inst_n_113;
  wire si_register_slice_inst_n_114;
  wire si_register_slice_inst_n_115;
  wire si_register_slice_inst_n_116;
  wire si_register_slice_inst_n_117;
  wire si_register_slice_inst_n_118;
  wire si_register_slice_inst_n_17;
  wire si_register_slice_inst_n_18;
  wire si_register_slice_inst_n_19;
  wire si_register_slice_inst_n_20;
  wire si_register_slice_inst_n_21;
  wire si_register_slice_inst_n_22;
  wire si_register_slice_inst_n_23;
  wire si_register_slice_inst_n_5;
  wire sr_arvalid;
  wire sr_awvalid;
  wire use_wrap_buffer;
  wire wrap_buffer_available;
  wire wrap_buffer_available_2;
  wire wstrb_wrap_buffer_q;

  design_1_auto_us_0_axi_register_slice_v2_1_26_axi_register_slice \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst 
       (.E(\r.r_pipe/p_1_in ),
        .Q({mr_rresp,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_6 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_7 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_8 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_9 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_10 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_11 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_12 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_13 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_14 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_15 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_16 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_17 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_18 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_19 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_20 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_21 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_22 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_23 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_24 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_25 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_26 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_27 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_28 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_29 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_30 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_31 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_32 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_33 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_34 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_35 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_36 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_37 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_38 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_39 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_40 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_41 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_42 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_43 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_44 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_45 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_46 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_47 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_48 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_49 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_50 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_51 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_52 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_53 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_54 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_55 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_56 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_57 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_58 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_59 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_60 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_61 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_62 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_63 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_64 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_65 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_66 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_67 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_68 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_69 }),
        .\USE_READ.rd_cmd_valid (\USE_READ.rd_cmd_valid ),
        .\USE_RTL_LENGTH.first_mi_word_q (\USE_RTL_LENGTH.first_mi_word_q_0 ),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .\m_payload_i_reg[66] (\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_3 ),
        .m_valid_i_reg(\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_2 ),
        .m_valid_i_reg_0(si_register_slice_inst_n_0),
        .mr_rvalid(mr_rvalid),
        .out(out),
        .p_13_in(p_13_in),
        .s_axi_rready(s_axi_rready),
        .s_ready_i_reg(s_ready_i_reg),
        .s_ready_i_reg_0(si_register_slice_inst_n_1));
  design_1_auto_us_0_axi_dwidth_converter_v2_1_26_r_upsizer \USE_READ.gen_non_fifo_r_upsizer.read_data_inst 
       (.D(pre_next_word),
        .E(p_15_in),
        .\MULTIPLE_WORD.current_index (\MULTIPLE_WORD.current_index ),
        .Q({\USE_READ.rd_cmd_fix ,\USE_READ.rd_cmd_packed_wrap ,\USE_READ.read_addr_inst_n_4 ,\USE_READ.read_addr_inst_n_5 ,\USE_READ.read_addr_inst_n_6 ,\USE_READ.read_addr_inst_n_7 }),
        .SR(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_1 ),
        .\USE_READ.rd_cmd_valid (\USE_READ.rd_cmd_valid ),
        .\USE_RTL_LENGTH.first_mi_word_q (\USE_RTL_LENGTH.first_mi_word_q_0 ),
        .\USE_RTL_LENGTH.first_mi_word_q_reg_0 (\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_3 ),
        .\USE_RTL_LENGTH.length_counter_q_reg[2]_0 (\USE_READ.read_addr_inst_n_14 ),
        .\USE_RTL_LENGTH.length_counter_q_reg[2]_1 (\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_2 ),
        .\current_word_1_reg[2]_0 (current_word_1),
        .\current_word_1_reg[2]_1 (next_word),
        .first_word(first_word),
        .first_word_reg_0(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19] ),
        .last_beat__6(last_beat__6),
        .mr_rvalid(mr_rvalid),
        .out(out),
        .p_13_in(p_13_in),
        .\pre_next_word_1_reg[2]_0 (pre_next_word_1),
        .\rresp_wrap_buffer_reg[1]_0 ({mr_rresp,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_6 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_7 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_8 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_9 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_10 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_11 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_12 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_13 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_14 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_15 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_16 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_17 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_18 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_19 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_20 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_21 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_22 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_23 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_24 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_25 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_26 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_27 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_28 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_29 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_30 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_31 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_32 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_33 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_34 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_35 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_36 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_37 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_38 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_39 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_40 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_41 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_42 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_43 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_44 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_45 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_46 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_47 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_48 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_49 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_50 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_51 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_52 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_53 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_54 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_55 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_56 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_57 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_58 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_59 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_60 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_61 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_62 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_63 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_64 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_65 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_66 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_67 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_68 ,\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_69 }),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .sel_first_word__0(sel_first_word__0),
        .use_wrap_buffer(use_wrap_buffer),
        .use_wrap_buffer_reg_0(\USE_READ.read_addr_inst_n_1 ),
        .use_wrap_buffer_reg_1(\USE_READ.read_addr_inst_n_8 ),
        .use_wrap_buffer_reg_2(\USE_READ.read_addr_inst_n_10 ),
        .wrap_buffer_available(wrap_buffer_available));
  design_1_auto_us_0_axi_dwidth_converter_v2_1_26_a_upsizer__parameterized0 \USE_READ.read_addr_inst 
       (.D(pre_next_word),
        .E(p_15_in),
        .\MULTIPLE_WORD.current_index (\MULTIPLE_WORD.current_index ),
        .Q({\USE_READ.rd_cmd_fix ,\USE_READ.rd_cmd_packed_wrap ,\USE_READ.read_addr_inst_n_4 ,\USE_READ.read_addr_inst_n_5 ,\USE_READ.read_addr_inst_n_6 ,\USE_READ.read_addr_inst_n_7 }),
        .SR(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_1 ),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19] (\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19] ),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1] (\USE_READ.read_addr_inst_n_1 ),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg (\USE_READ.read_addr_inst_n_8 ),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 (\USE_READ.read_addr_inst_n_10 ),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1 (\USE_READ.read_addr_inst_n_14 ),
        .\USE_READ.rd_cmd_valid (\USE_READ.rd_cmd_valid ),
        .\USE_RTL_LENGTH.first_mi_word_q (\USE_RTL_LENGTH.first_mi_word_q_0 ),
        .cmd_push_block_reg_0(\USE_READ.read_addr_inst_n_24 ),
        .\current_word_1_reg[2] (pre_next_word_1),
        .first_word(first_word),
        .first_word_reg(current_word_1),
        .in({cmd_fix_i,cmd_modified_i,si_register_slice_inst_n_101,cmd_packed_wrap_i,cmd_first_word_i,p_1_out[22:20],si_register_slice_inst_n_109,p_1_out[18],si_register_slice_inst_n_111,si_register_slice_inst_n_112,si_register_slice_inst_n_113,si_register_slice_inst_n_114,si_register_slice_inst_n_115,si_register_slice_inst_n_116,si_register_slice_inst_n_117,si_register_slice_inst_n_118,m_axi_arlen}),
        .last_beat__6(last_beat__6),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_arvalid_0(sr_arvalid),
        .mr_rvalid(mr_rvalid),
        .out(out),
        .p_13_in(p_13_in),
        .\pre_next_word_1_reg[2] (next_word),
        .s_axi_aresetn(\USE_READ.read_addr_inst_n_22 ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_0(\r.r_pipe/p_1_in ),
        .s_axi_rvalid(s_axi_rvalid),
        .s_ready_i_reg(m_valid_i_reg_inv),
        .sel_first_word__0(sel_first_word__0),
        .use_wrap_buffer(use_wrap_buffer),
        .wrap_buffer_available(wrap_buffer_available));
  design_1_auto_us_0_axi_dwidth_converter_v2_1_26_w_upsizer \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst 
       (.D(pre_next_word_4),
        .E(pop_si_data),
        .Q({\USE_WRITE.wr_cmd_fix ,\USE_WRITE.wr_cmd_packed_wrap ,\USE_WRITE.wr_cmd_first_word ,\USE_WRITE.wr_cmd_offset ,\USE_WRITE.write_addr_inst_n_8 ,\USE_WRITE.write_addr_inst_n_9 ,\USE_WRITE.write_addr_inst_n_10 ,\USE_WRITE.write_addr_inst_n_11 ,\USE_WRITE.write_addr_inst_n_12 }),
        .SR(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_1 ),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_2 (\USE_WRITE.write_addr_inst_n_25 ),
        .\USE_REGISTER.M_AXI_WVALID_q_reg_0 (\USE_REGISTER.M_AXI_WVALID_q_reg ),
        .\USE_REGISTER.M_AXI_WVALID_q_reg_1 (\USE_WRITE.write_addr_inst_n_36 ),
        .\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 (\USE_RTL_CURR_WORD.current_word_q ),
        .\USE_RTL_CURR_WORD.current_word_q_reg[2]_1 (next_word_3),
        .\USE_RTL_CURR_WORD.first_word_q (\USE_RTL_CURR_WORD.first_word_q ),
        .\USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_0 (\USE_RTL_CURR_WORD.pre_next_word_q ),
        .\USE_RTL_LENGTH.first_mi_word_q (\USE_RTL_LENGTH.first_mi_word_q ),
        .\USE_RTL_LENGTH.first_mi_word_q_reg_0 (\USE_WRITE.write_addr_inst_n_37 ),
        .\USE_RTL_LENGTH.length_counter_q_reg[0]_0 (m_valid_i_reg_inv),
        .\USE_RTL_LENGTH.length_counter_q_reg[1]_0 (\USE_RTL_LENGTH.length_counter_q_reg ),
        .\USE_RTL_LENGTH.length_counter_q_reg[1]_1 (\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_20 ),
        .\USE_RTL_LENGTH.length_counter_q_reg[1]_2 (\USE_WRITE.write_addr_inst_n_3 ),
        .\USE_WRITE.wr_cmd_valid (\USE_WRITE.wr_cmd_valid ),
        .\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 (wstrb_wrap_buffer_q),
        .\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1 (\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg0 ),
        .\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0 (\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg0 ),
        .\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0 (\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg0 ),
        .\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0 (\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg0 ),
        .\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0 (\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg0 ),
        .\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0 (\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg0 ),
        .\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0 (\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg0 ),
        .\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0 (\USE_WRITE.write_addr_inst_n_13 ),
        .\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0 (\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg0 ),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wready_0(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_16 ),
        .m_axi_wstrb(m_axi_wstrb),
        .out(out),
        .p_79_in(p_79_in),
        .p_89_in(p_89_in),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .sel_first_word__0(sel_first_word__0_1),
        .wrap_buffer_available(wrap_buffer_available_2),
        .wrap_buffer_available_reg_0(\USE_WRITE.write_addr_inst_n_35 ));
  design_1_auto_us_0_axi_dwidth_converter_v2_1_26_a_upsizer \USE_WRITE.write_addr_inst 
       (.D(pre_next_word_4),
        .E(sr_awvalid),
        .Q({\USE_WRITE.wr_cmd_fix ,\USE_WRITE.wr_cmd_packed_wrap ,\USE_WRITE.wr_cmd_first_word ,\USE_WRITE.wr_cmd_offset ,\USE_WRITE.write_addr_inst_n_8 ,\USE_WRITE.write_addr_inst_n_9 ,\USE_WRITE.write_addr_inst_n_10 ,\USE_WRITE.write_addr_inst_n_11 ,\USE_WRITE.write_addr_inst_n_12 }),
        .SR(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_1 ),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1] (\USE_WRITE.write_addr_inst_n_25 ),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28] (\USE_WRITE.write_addr_inst_n_13 ),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg (\USE_WRITE.write_addr_inst_n_36 ),
        .\USE_REGISTER.M_AXI_WVALID_q_reg (\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_20 ),
        .\USE_REGISTER.M_AXI_WVALID_q_reg_0 (\USE_REGISTER.M_AXI_WVALID_q_reg ),
        .\USE_RTL_CURR_WORD.current_word_q_reg[2] (\USE_RTL_CURR_WORD.pre_next_word_q ),
        .\USE_RTL_CURR_WORD.first_word_q (\USE_RTL_CURR_WORD.first_word_q ),
        .\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] (next_word_3),
        .\USE_RTL_LENGTH.first_mi_word_q (\USE_RTL_LENGTH.first_mi_word_q ),
        .\USE_RTL_LENGTH.length_counter_q_reg[0] (\USE_WRITE.write_addr_inst_n_3 ),
        .\USE_RTL_LENGTH.length_counter_q_reg[1] (\USE_RTL_LENGTH.length_counter_q_reg ),
        .\USE_RTL_LENGTH.length_counter_q_reg[1]_0 (\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_16 ),
        .\USE_WRITE.wr_cmd_valid (\USE_WRITE.wr_cmd_valid ),
        .\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0] (m_valid_i_reg_inv),
        .\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 (\USE_RTL_CURR_WORD.current_word_q ),
        .cmd_push_block_reg_0(\USE_WRITE.write_addr_inst_n_34 ),
        .in({cmd_fix_i_8,si_register_slice_inst_n_5,cmd_complete_wrap_i,cmd_packed_wrap_i_7,cmd_first_word_i_6,p_1_out_5,si_register_slice_inst_n_17,si_register_slice_inst_n_18,si_register_slice_inst_n_19,si_register_slice_inst_n_20,si_register_slice_inst_n_21,si_register_slice_inst_n_22,si_register_slice_inst_n_23,m_axi_awlen}),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wready(m_axi_wready),
        .out(out),
        .p_79_in(p_79_in),
        .p_89_in(p_89_in),
        .s_axi_aresetn(\USE_WRITE.write_addr_inst_n_32 ),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wlast_0(wstrb_wrap_buffer_q),
        .s_axi_wlast_1(\USE_WRITE.write_addr_inst_n_35 ),
        .s_axi_wlast_2(\USE_WRITE.write_addr_inst_n_37 ),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axi_wvalid_0(pop_si_data),
        .sel_first_word__0(sel_first_word__0_1),
        .wrap_buffer_available(wrap_buffer_available_2),
        .wrap_buffer_available_reg(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg0 ),
        .wrap_buffer_available_reg_0(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg0 ),
        .wrap_buffer_available_reg_1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg0 ),
        .wrap_buffer_available_reg_2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg0 ),
        .wrap_buffer_available_reg_3(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg0 ),
        .wrap_buffer_available_reg_4(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg0 ),
        .wrap_buffer_available_reg_5(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg0 ),
        .wrap_buffer_available_reg_6(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg0 ));
  design_1_auto_us_0_axi_register_slice_v2_1_26_axi_register_slice__parameterized0 si_register_slice_inst
       (.D(D),
        .E(sr_awvalid),
        .Q(Q),
        .SR(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_1 ),
        .\aresetn_d_reg[0] (si_register_slice_inst_n_1),
        .\aresetn_d_reg[1] (si_register_slice_inst_n_0),
        .in({cmd_fix_i_8,si_register_slice_inst_n_5,cmd_complete_wrap_i,cmd_packed_wrap_i_7,cmd_first_word_i_6,p_1_out_5,si_register_slice_inst_n_17,si_register_slice_inst_n_18,si_register_slice_inst_n_19,si_register_slice_inst_n_20,si_register_slice_inst_n_21,si_register_slice_inst_n_22,si_register_slice_inst_n_23,m_axi_awlen}),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .\m_payload_i_reg[70] ({cmd_fix_i,cmd_modified_i,si_register_slice_inst_n_101,cmd_packed_wrap_i,cmd_first_word_i,p_1_out[22:20],si_register_slice_inst_n_109,p_1_out[18],si_register_slice_inst_n_111,si_register_slice_inst_n_112,si_register_slice_inst_n_113,si_register_slice_inst_n_114,si_register_slice_inst_n_115,si_register_slice_inst_n_116,si_register_slice_inst_n_117,si_register_slice_inst_n_118,m_axi_arlen}),
        .\m_payload_i_reg[86] (\m_payload_i_reg[86] ),
        .\m_payload_i_reg[86]_0 (\m_payload_i_reg[86]_0 ),
        .m_valid_i_reg_inv(sr_arvalid),
        .m_valid_i_reg_inv_0(\USE_READ.read_addr_inst_n_24 ),
        .m_valid_i_reg_inv_1(m_valid_i_reg_inv),
        .m_valid_i_reg_inv_2(\USE_WRITE.write_addr_inst_n_34 ),
        .out(out),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_ready_i_reg(\USE_WRITE.write_addr_inst_n_32 ),
        .s_ready_i_reg_0(\USE_READ.read_addr_inst_n_22 ));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_26_r_upsizer" *) 
module design_1_auto_us_0_axi_dwidth_converter_v2_1_26_r_upsizer
   (first_word,
    E,
    use_wrap_buffer,
    \USE_RTL_LENGTH.first_mi_word_q ,
    wrap_buffer_available,
    last_beat__6,
    s_axi_rdata,
    sel_first_word__0,
    s_axi_rresp,
    \pre_next_word_1_reg[2]_0 ,
    \current_word_1_reg[2]_0 ,
    SR,
    first_word_reg_0,
    out,
    \USE_RTL_LENGTH.first_mi_word_q_reg_0 ,
    Q,
    \USE_READ.rd_cmd_valid ,
    mr_rvalid,
    s_axi_rready,
    \USE_RTL_LENGTH.length_counter_q_reg[2]_0 ,
    \USE_RTL_LENGTH.length_counter_q_reg[2]_1 ,
    p_13_in,
    use_wrap_buffer_reg_0,
    \rresp_wrap_buffer_reg[1]_0 ,
    \MULTIPLE_WORD.current_index ,
    use_wrap_buffer_reg_1,
    use_wrap_buffer_reg_2,
    D,
    \current_word_1_reg[2]_1 );
  output first_word;
  output [0:0]E;
  output use_wrap_buffer;
  output \USE_RTL_LENGTH.first_mi_word_q ;
  output wrap_buffer_available;
  output last_beat__6;
  output [31:0]s_axi_rdata;
  output sel_first_word__0;
  output [1:0]s_axi_rresp;
  output [2:0]\pre_next_word_1_reg[2]_0 ;
  output [2:0]\current_word_1_reg[2]_0 ;
  input [0:0]SR;
  input first_word_reg_0;
  input out;
  input \USE_RTL_LENGTH.first_mi_word_q_reg_0 ;
  input [5:0]Q;
  input \USE_READ.rd_cmd_valid ;
  input mr_rvalid;
  input s_axi_rready;
  input \USE_RTL_LENGTH.length_counter_q_reg[2]_0 ;
  input \USE_RTL_LENGTH.length_counter_q_reg[2]_1 ;
  input p_13_in;
  input use_wrap_buffer_reg_0;
  input [65:0]\rresp_wrap_buffer_reg[1]_0 ;
  input \MULTIPLE_WORD.current_index ;
  input use_wrap_buffer_reg_1;
  input use_wrap_buffer_reg_2;
  input [2:0]D;
  input [2:0]\current_word_1_reg[2]_1 ;

  wire [2:0]D;
  wire [0:0]E;
  wire \MULTIPLE_WORD.current_index ;
  wire [63:0]M_AXI_RDATA_I;
  wire [5:0]Q;
  wire [0:0]SR;
  wire \USE_READ.rd_cmd_valid ;
  wire \USE_RTL_LENGTH.first_mi_word_q ;
  wire \USE_RTL_LENGTH.first_mi_word_q_reg_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[0]_i_1__0_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[1]_i_1__0_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[2]_i_1__0_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[2]_i_2__0_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[3]_i_1__0_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[3]_i_2__0_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[4]_i_1__0_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[4]_i_2__0_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[5]_i_1__0_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[5]_i_2_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[6]_i_1__0_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[7]_i_1__0_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[7]_i_2__0_n_0 ;
  wire [7:0]\USE_RTL_LENGTH.length_counter_q_reg ;
  wire \USE_RTL_LENGTH.length_counter_q_reg[2]_0 ;
  wire \USE_RTL_LENGTH.length_counter_q_reg[2]_1 ;
  wire [2:0]\current_word_1_reg[2]_0 ;
  wire [2:0]\current_word_1_reg[2]_1 ;
  wire first_word;
  wire first_word_reg_0;
  wire last_beat__6;
  wire [3:0]length_counter__0;
  wire mr_rvalid;
  wire out;
  wire p_13_in;
  wire p_7_in;
  wire [2:0]\pre_next_word_1_reg[2]_0 ;
  wire [1:0]rresp_wrap_buffer;
  wire [65:0]\rresp_wrap_buffer_reg[1]_0 ;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast_INST_0_i_6_n_0;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire sel_first_word__0;
  wire use_wrap_buffer;
  wire use_wrap_buffer_i_1_n_0;
  wire use_wrap_buffer_reg_0;
  wire use_wrap_buffer_reg_1;
  wire use_wrap_buffer_reg_2;
  wire wrap_buffer_available;
  wire wrap_buffer_available_i_1__0_n_0;

  LUT5 #(
    .INIT(32'h08000000)) 
    \M_AXI_RDATA_I[63]_i_1 
       (.I0(\USE_RTL_LENGTH.first_mi_word_q ),
        .I1(Q[4]),
        .I2(use_wrap_buffer),
        .I3(\USE_READ.rd_cmd_valid ),
        .I4(mr_rvalid),
        .O(p_7_in));
  FDRE \M_AXI_RDATA_I_reg[0] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [0]),
        .Q(M_AXI_RDATA_I[0]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[10] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [10]),
        .Q(M_AXI_RDATA_I[10]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[11] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [11]),
        .Q(M_AXI_RDATA_I[11]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[12] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [12]),
        .Q(M_AXI_RDATA_I[12]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[13] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [13]),
        .Q(M_AXI_RDATA_I[13]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[14] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [14]),
        .Q(M_AXI_RDATA_I[14]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[15] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [15]),
        .Q(M_AXI_RDATA_I[15]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[16] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [16]),
        .Q(M_AXI_RDATA_I[16]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[17] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [17]),
        .Q(M_AXI_RDATA_I[17]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[18] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [18]),
        .Q(M_AXI_RDATA_I[18]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[19] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [19]),
        .Q(M_AXI_RDATA_I[19]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[1] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [1]),
        .Q(M_AXI_RDATA_I[1]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[20] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [20]),
        .Q(M_AXI_RDATA_I[20]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[21] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [21]),
        .Q(M_AXI_RDATA_I[21]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[22] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [22]),
        .Q(M_AXI_RDATA_I[22]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[23] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [23]),
        .Q(M_AXI_RDATA_I[23]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[24] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [24]),
        .Q(M_AXI_RDATA_I[24]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[25] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [25]),
        .Q(M_AXI_RDATA_I[25]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[26] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [26]),
        .Q(M_AXI_RDATA_I[26]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[27] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [27]),
        .Q(M_AXI_RDATA_I[27]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[28] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [28]),
        .Q(M_AXI_RDATA_I[28]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[29] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [29]),
        .Q(M_AXI_RDATA_I[29]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[2] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [2]),
        .Q(M_AXI_RDATA_I[2]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[30] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [30]),
        .Q(M_AXI_RDATA_I[30]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[31] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [31]),
        .Q(M_AXI_RDATA_I[31]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[32] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [32]),
        .Q(M_AXI_RDATA_I[32]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[33] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [33]),
        .Q(M_AXI_RDATA_I[33]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[34] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [34]),
        .Q(M_AXI_RDATA_I[34]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[35] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [35]),
        .Q(M_AXI_RDATA_I[35]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[36] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [36]),
        .Q(M_AXI_RDATA_I[36]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[37] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [37]),
        .Q(M_AXI_RDATA_I[37]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[38] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [38]),
        .Q(M_AXI_RDATA_I[38]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[39] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [39]),
        .Q(M_AXI_RDATA_I[39]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[3] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [3]),
        .Q(M_AXI_RDATA_I[3]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[40] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [40]),
        .Q(M_AXI_RDATA_I[40]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[41] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [41]),
        .Q(M_AXI_RDATA_I[41]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[42] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [42]),
        .Q(M_AXI_RDATA_I[42]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[43] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [43]),
        .Q(M_AXI_RDATA_I[43]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[44] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [44]),
        .Q(M_AXI_RDATA_I[44]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[45] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [45]),
        .Q(M_AXI_RDATA_I[45]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[46] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [46]),
        .Q(M_AXI_RDATA_I[46]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[47] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [47]),
        .Q(M_AXI_RDATA_I[47]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[48] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [48]),
        .Q(M_AXI_RDATA_I[48]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[49] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [49]),
        .Q(M_AXI_RDATA_I[49]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[4] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [4]),
        .Q(M_AXI_RDATA_I[4]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[50] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [50]),
        .Q(M_AXI_RDATA_I[50]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[51] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [51]),
        .Q(M_AXI_RDATA_I[51]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[52] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [52]),
        .Q(M_AXI_RDATA_I[52]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[53] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [53]),
        .Q(M_AXI_RDATA_I[53]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[54] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [54]),
        .Q(M_AXI_RDATA_I[54]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[55] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [55]),
        .Q(M_AXI_RDATA_I[55]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[56] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [56]),
        .Q(M_AXI_RDATA_I[56]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[57] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [57]),
        .Q(M_AXI_RDATA_I[57]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[58] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [58]),
        .Q(M_AXI_RDATA_I[58]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[59] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [59]),
        .Q(M_AXI_RDATA_I[59]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[5] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [5]),
        .Q(M_AXI_RDATA_I[5]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[60] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [60]),
        .Q(M_AXI_RDATA_I[60]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[61] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [61]),
        .Q(M_AXI_RDATA_I[61]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[62] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [62]),
        .Q(M_AXI_RDATA_I[62]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[63] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [63]),
        .Q(M_AXI_RDATA_I[63]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[6] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [6]),
        .Q(M_AXI_RDATA_I[6]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[7] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [7]),
        .Q(M_AXI_RDATA_I[7]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[8] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [8]),
        .Q(M_AXI_RDATA_I[8]),
        .R(SR));
  FDRE \M_AXI_RDATA_I_reg[9] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [9]),
        .Q(M_AXI_RDATA_I[9]),
        .R(SR));
  FDSE \USE_RTL_LENGTH.first_mi_word_q_reg 
       (.C(out),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.first_mi_word_q_reg_0 ),
        .Q(\USE_RTL_LENGTH.first_mi_word_q ),
        .S(SR));
  LUT6 #(
    .INIT(64'h2FFFFFFF70000000)) 
    \USE_RTL_LENGTH.length_counter_q[0]_i_1__0 
       (.I0(\USE_RTL_LENGTH.first_mi_word_q ),
        .I1(Q[0]),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg[2]_1 ),
        .I3(s_axi_rready),
        .I4(p_13_in),
        .I5(\USE_RTL_LENGTH.length_counter_q_reg [0]),
        .O(\USE_RTL_LENGTH.length_counter_q[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hEAAA2AAA2AAAEAAA)) 
    \USE_RTL_LENGTH.length_counter_q[1]_i_1__0 
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg [1]),
        .I1(\USE_RTL_LENGTH.length_counter_q_reg[2]_1 ),
        .I2(s_axi_rready),
        .I3(p_13_in),
        .I4(length_counter__0[0]),
        .I5(length_counter__0[1]),
        .O(\USE_RTL_LENGTH.length_counter_q[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_RTL_LENGTH.length_counter_q[1]_i_2 
       (.I0(Q[0]),
        .I1(\USE_RTL_LENGTH.first_mi_word_q ),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg [0]),
        .O(length_counter__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_RTL_LENGTH.length_counter_q[1]_i_3 
       (.I0(Q[1]),
        .I1(\USE_RTL_LENGTH.first_mi_word_q ),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg [1]),
        .O(length_counter__0[1]));
  LUT6 #(
    .INIT(64'hCACCCCCCC5CCC3CC)) 
    \USE_RTL_LENGTH.length_counter_q[2]_i_1__0 
       (.I0(Q[2]),
        .I1(\USE_RTL_LENGTH.length_counter_q_reg [2]),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg[2]_0 ),
        .I3(\USE_RTL_LENGTH.length_counter_q_reg[2]_1 ),
        .I4(\USE_RTL_LENGTH.first_mi_word_q ),
        .I5(\USE_RTL_LENGTH.length_counter_q[2]_i_2__0_n_0 ),
        .O(\USE_RTL_LENGTH.length_counter_q[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \USE_RTL_LENGTH.length_counter_q[2]_i_2__0 
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg [0]),
        .I1(Q[0]),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg [1]),
        .I3(\USE_RTL_LENGTH.first_mi_word_q ),
        .I4(Q[1]),
        .O(\USE_RTL_LENGTH.length_counter_q[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hEAAA2AAA2AAAEAAA)) 
    \USE_RTL_LENGTH.length_counter_q[3]_i_1__0 
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg [3]),
        .I1(\USE_RTL_LENGTH.length_counter_q_reg[2]_1 ),
        .I2(s_axi_rready),
        .I3(p_13_in),
        .I4(\USE_RTL_LENGTH.length_counter_q[3]_i_2__0_n_0 ),
        .I5(length_counter__0[3]),
        .O(\USE_RTL_LENGTH.length_counter_q[3]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFE2)) 
    \USE_RTL_LENGTH.length_counter_q[3]_i_2__0 
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg [2]),
        .I1(\USE_RTL_LENGTH.first_mi_word_q ),
        .I2(Q[2]),
        .I3(\USE_RTL_LENGTH.length_counter_q[2]_i_2__0_n_0 ),
        .O(\USE_RTL_LENGTH.length_counter_q[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_RTL_LENGTH.length_counter_q[3]_i_3 
       (.I0(Q[3]),
        .I1(\USE_RTL_LENGTH.first_mi_word_q ),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg [3]),
        .O(length_counter__0[3]));
  LUT6 #(
    .INIT(64'h7FFFFF7F00800080)) 
    \USE_RTL_LENGTH.length_counter_q[4]_i_1__0 
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg[2]_1 ),
        .I1(s_axi_rready),
        .I2(p_13_in),
        .I3(\USE_RTL_LENGTH.length_counter_q[4]_i_2__0_n_0 ),
        .I4(\USE_RTL_LENGTH.first_mi_word_q ),
        .I5(\USE_RTL_LENGTH.length_counter_q_reg [4]),
        .O(\USE_RTL_LENGTH.length_counter_q[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFAEEEEFFFA)) 
    \USE_RTL_LENGTH.length_counter_q[4]_i_2__0 
       (.I0(\USE_RTL_LENGTH.length_counter_q[2]_i_2__0_n_0 ),
        .I1(Q[2]),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg [2]),
        .I3(\USE_RTL_LENGTH.length_counter_q_reg [3]),
        .I4(\USE_RTL_LENGTH.first_mi_word_q ),
        .I5(Q[3]),
        .O(\USE_RTL_LENGTH.length_counter_q[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h3AAAAAAA9AAAAAAA)) 
    \USE_RTL_LENGTH.length_counter_q[5]_i_1__0 
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg [5]),
        .I1(\USE_RTL_LENGTH.length_counter_q[5]_i_2_n_0 ),
        .I2(p_13_in),
        .I3(s_axi_rready),
        .I4(\USE_RTL_LENGTH.length_counter_q_reg[2]_1 ),
        .I5(\USE_RTL_LENGTH.first_mi_word_q ),
        .O(\USE_RTL_LENGTH.length_counter_q[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \USE_RTL_LENGTH.length_counter_q[5]_i_2 
       (.I0(\USE_RTL_LENGTH.length_counter_q[4]_i_2__0_n_0 ),
        .I1(\USE_RTL_LENGTH.first_mi_word_q ),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg [4]),
        .O(\USE_RTL_LENGTH.length_counter_q[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h59CCCCCCCCCCCCCC)) 
    \USE_RTL_LENGTH.length_counter_q[6]_i_1__0 
       (.I0(\USE_RTL_LENGTH.length_counter_q[7]_i_2__0_n_0 ),
        .I1(\USE_RTL_LENGTH.length_counter_q_reg [6]),
        .I2(\USE_RTL_LENGTH.first_mi_word_q ),
        .I3(p_13_in),
        .I4(s_axi_rready),
        .I5(\USE_RTL_LENGTH.length_counter_q_reg[2]_1 ),
        .O(\USE_RTL_LENGTH.length_counter_q[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC55C9CCCCCCCC)) 
    \USE_RTL_LENGTH.length_counter_q[7]_i_1__0 
       (.I0(\USE_RTL_LENGTH.length_counter_q[7]_i_2__0_n_0 ),
        .I1(\USE_RTL_LENGTH.length_counter_q_reg [7]),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg [6]),
        .I3(\USE_RTL_LENGTH.first_mi_word_q ),
        .I4(\USE_RTL_LENGTH.length_counter_q_reg[2]_0 ),
        .I5(\USE_RTL_LENGTH.length_counter_q_reg[2]_1 ),
        .O(\USE_RTL_LENGTH.length_counter_q[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \USE_RTL_LENGTH.length_counter_q[7]_i_2__0 
       (.I0(\USE_RTL_LENGTH.first_mi_word_q ),
        .I1(\USE_RTL_LENGTH.length_counter_q_reg [5]),
        .I2(\USE_RTL_LENGTH.length_counter_q[5]_i_2_n_0 ),
        .O(\USE_RTL_LENGTH.length_counter_q[7]_i_2__0_n_0 ));
  FDRE \USE_RTL_LENGTH.length_counter_q_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.length_counter_q[0]_i_1__0_n_0 ),
        .Q(\USE_RTL_LENGTH.length_counter_q_reg [0]),
        .R(SR));
  FDRE \USE_RTL_LENGTH.length_counter_q_reg[1] 
       (.C(out),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.length_counter_q[1]_i_1__0_n_0 ),
        .Q(\USE_RTL_LENGTH.length_counter_q_reg [1]),
        .R(SR));
  FDRE \USE_RTL_LENGTH.length_counter_q_reg[2] 
       (.C(out),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.length_counter_q[2]_i_1__0_n_0 ),
        .Q(\USE_RTL_LENGTH.length_counter_q_reg [2]),
        .R(SR));
  FDRE \USE_RTL_LENGTH.length_counter_q_reg[3] 
       (.C(out),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.length_counter_q[3]_i_1__0_n_0 ),
        .Q(\USE_RTL_LENGTH.length_counter_q_reg [3]),
        .R(SR));
  FDRE \USE_RTL_LENGTH.length_counter_q_reg[4] 
       (.C(out),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.length_counter_q[4]_i_1__0_n_0 ),
        .Q(\USE_RTL_LENGTH.length_counter_q_reg [4]),
        .R(SR));
  FDRE \USE_RTL_LENGTH.length_counter_q_reg[5] 
       (.C(out),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.length_counter_q[5]_i_1__0_n_0 ),
        .Q(\USE_RTL_LENGTH.length_counter_q_reg [5]),
        .R(SR));
  FDRE \USE_RTL_LENGTH.length_counter_q_reg[6] 
       (.C(out),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.length_counter_q[6]_i_1__0_n_0 ),
        .Q(\USE_RTL_LENGTH.length_counter_q_reg [6]),
        .R(SR));
  FDRE \USE_RTL_LENGTH.length_counter_q_reg[7] 
       (.C(out),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.length_counter_q[7]_i_1__0_n_0 ),
        .Q(\USE_RTL_LENGTH.length_counter_q_reg [7]),
        .R(SR));
  FDRE \current_word_1_reg[0] 
       (.C(out),
        .CE(E),
        .D(\current_word_1_reg[2]_1 [0]),
        .Q(\current_word_1_reg[2]_0 [0]),
        .R(SR));
  FDRE \current_word_1_reg[1] 
       (.C(out),
        .CE(E),
        .D(\current_word_1_reg[2]_1 [1]),
        .Q(\current_word_1_reg[2]_0 [1]),
        .R(SR));
  FDRE \current_word_1_reg[2] 
       (.C(out),
        .CE(E),
        .D(\current_word_1_reg[2]_1 [2]),
        .Q(\current_word_1_reg[2]_0 [2]),
        .R(SR));
  FDSE first_word_reg
       (.C(out),
        .CE(E),
        .D(first_word_reg_0),
        .Q(first_word),
        .S(SR));
  LUT4 #(
    .INIT(16'hEA00)) 
    \pre_next_word_1[2]_i_1 
       (.I0(use_wrap_buffer),
        .I1(mr_rvalid),
        .I2(\USE_READ.rd_cmd_valid ),
        .I3(s_axi_rready),
        .O(E));
  LUT2 #(
    .INIT(4'hE)) 
    \pre_next_word_1[2]_i_4 
       (.I0(first_word),
        .I1(Q[5]),
        .O(sel_first_word__0));
  FDRE \pre_next_word_1_reg[0] 
       (.C(out),
        .CE(E),
        .D(D[0]),
        .Q(\pre_next_word_1_reg[2]_0 [0]),
        .R(SR));
  FDRE \pre_next_word_1_reg[1] 
       (.C(out),
        .CE(E),
        .D(D[1]),
        .Q(\pre_next_word_1_reg[2]_0 [1]),
        .R(SR));
  FDRE \pre_next_word_1_reg[2] 
       (.C(out),
        .CE(E),
        .D(D[2]),
        .Q(\pre_next_word_1_reg[2]_0 [2]),
        .R(SR));
  FDRE \rresp_wrap_buffer_reg[0] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [64]),
        .Q(rresp_wrap_buffer[0]),
        .R(SR));
  FDRE \rresp_wrap_buffer_reg[1] 
       (.C(out),
        .CE(p_7_in),
        .D(\rresp_wrap_buffer_reg[1]_0 [65]),
        .Q(rresp_wrap_buffer[1]),
        .R(SR));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [32]),
        .I1(M_AXI_RDATA_I[32]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [0]),
        .I5(M_AXI_RDATA_I[0]),
        .O(s_axi_rdata[0]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [42]),
        .I1(M_AXI_RDATA_I[42]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [10]),
        .I5(M_AXI_RDATA_I[10]),
        .O(s_axi_rdata[10]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [43]),
        .I1(M_AXI_RDATA_I[43]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [11]),
        .I5(M_AXI_RDATA_I[11]),
        .O(s_axi_rdata[11]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [44]),
        .I1(M_AXI_RDATA_I[44]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [12]),
        .I5(M_AXI_RDATA_I[12]),
        .O(s_axi_rdata[12]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [45]),
        .I1(M_AXI_RDATA_I[45]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [13]),
        .I5(M_AXI_RDATA_I[13]),
        .O(s_axi_rdata[13]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [46]),
        .I1(M_AXI_RDATA_I[46]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [14]),
        .I5(M_AXI_RDATA_I[14]),
        .O(s_axi_rdata[14]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [47]),
        .I1(M_AXI_RDATA_I[47]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [15]),
        .I5(M_AXI_RDATA_I[15]),
        .O(s_axi_rdata[15]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [48]),
        .I1(M_AXI_RDATA_I[48]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [16]),
        .I5(M_AXI_RDATA_I[16]),
        .O(s_axi_rdata[16]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [49]),
        .I1(M_AXI_RDATA_I[49]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [17]),
        .I5(M_AXI_RDATA_I[17]),
        .O(s_axi_rdata[17]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [50]),
        .I1(M_AXI_RDATA_I[50]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [18]),
        .I5(M_AXI_RDATA_I[18]),
        .O(s_axi_rdata[18]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[19]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [51]),
        .I1(M_AXI_RDATA_I[51]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [19]),
        .I5(M_AXI_RDATA_I[19]),
        .O(s_axi_rdata[19]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[1]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [33]),
        .I1(M_AXI_RDATA_I[33]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [1]),
        .I5(M_AXI_RDATA_I[1]),
        .O(s_axi_rdata[1]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [52]),
        .I1(M_AXI_RDATA_I[52]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [20]),
        .I5(M_AXI_RDATA_I[20]),
        .O(s_axi_rdata[20]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [53]),
        .I1(M_AXI_RDATA_I[53]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [21]),
        .I5(M_AXI_RDATA_I[21]),
        .O(s_axi_rdata[21]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [54]),
        .I1(M_AXI_RDATA_I[54]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [22]),
        .I5(M_AXI_RDATA_I[22]),
        .O(s_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [55]),
        .I1(M_AXI_RDATA_I[55]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [23]),
        .I5(M_AXI_RDATA_I[23]),
        .O(s_axi_rdata[23]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[24]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [56]),
        .I1(M_AXI_RDATA_I[56]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [24]),
        .I5(M_AXI_RDATA_I[24]),
        .O(s_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[25]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [57]),
        .I1(M_AXI_RDATA_I[57]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [25]),
        .I5(M_AXI_RDATA_I[25]),
        .O(s_axi_rdata[25]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[26]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [58]),
        .I1(M_AXI_RDATA_I[58]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [26]),
        .I5(M_AXI_RDATA_I[26]),
        .O(s_axi_rdata[26]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[27]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [59]),
        .I1(M_AXI_RDATA_I[59]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [27]),
        .I5(M_AXI_RDATA_I[27]),
        .O(s_axi_rdata[27]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[28]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [60]),
        .I1(M_AXI_RDATA_I[60]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [28]),
        .I5(M_AXI_RDATA_I[28]),
        .O(s_axi_rdata[28]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[29]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [61]),
        .I1(M_AXI_RDATA_I[61]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [29]),
        .I5(M_AXI_RDATA_I[29]),
        .O(s_axi_rdata[29]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[2]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [34]),
        .I1(M_AXI_RDATA_I[34]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [2]),
        .I5(M_AXI_RDATA_I[2]),
        .O(s_axi_rdata[2]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[30]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [62]),
        .I1(M_AXI_RDATA_I[62]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [30]),
        .I5(M_AXI_RDATA_I[30]),
        .O(s_axi_rdata[30]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[31]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [63]),
        .I1(M_AXI_RDATA_I[63]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [31]),
        .I5(M_AXI_RDATA_I[31]),
        .O(s_axi_rdata[31]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [35]),
        .I1(M_AXI_RDATA_I[35]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [3]),
        .I5(M_AXI_RDATA_I[3]),
        .O(s_axi_rdata[3]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [36]),
        .I1(M_AXI_RDATA_I[36]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [4]),
        .I5(M_AXI_RDATA_I[4]),
        .O(s_axi_rdata[4]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [37]),
        .I1(M_AXI_RDATA_I[37]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [5]),
        .I5(M_AXI_RDATA_I[5]),
        .O(s_axi_rdata[5]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [38]),
        .I1(M_AXI_RDATA_I[38]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [6]),
        .I5(M_AXI_RDATA_I[6]),
        .O(s_axi_rdata[6]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [39]),
        .I1(M_AXI_RDATA_I[39]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [7]),
        .I5(M_AXI_RDATA_I[7]),
        .O(s_axi_rdata[7]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [40]),
        .I1(M_AXI_RDATA_I[40]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [8]),
        .I5(M_AXI_RDATA_I[8]),
        .O(s_axi_rdata[8]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(\rresp_wrap_buffer_reg[1]_0 [41]),
        .I1(M_AXI_RDATA_I[41]),
        .I2(use_wrap_buffer),
        .I3(\MULTIPLE_WORD.current_index ),
        .I4(\rresp_wrap_buffer_reg[1]_0 [9]),
        .I5(M_AXI_RDATA_I[9]),
        .O(s_axi_rdata[9]));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    s_axi_rlast_INST_0_i_3
       (.I0(use_wrap_buffer_reg_0),
        .I1(\USE_RTL_LENGTH.length_counter_q_reg [1]),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg [0]),
        .I3(\USE_RTL_LENGTH.first_mi_word_q ),
        .I4(s_axi_rlast_INST_0_i_6_n_0),
        .O(last_beat__6));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    s_axi_rlast_INST_0_i_6
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg [2]),
        .I1(\USE_RTL_LENGTH.length_counter_q_reg [3]),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg [4]),
        .I3(\USE_RTL_LENGTH.length_counter_q_reg [5]),
        .I4(\USE_RTL_LENGTH.length_counter_q_reg [7]),
        .I5(\USE_RTL_LENGTH.length_counter_q_reg [6]),
        .O(s_axi_rlast_INST_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rresp[0]_INST_0 
       (.I0(rresp_wrap_buffer[0]),
        .I1(use_wrap_buffer),
        .I2(\rresp_wrap_buffer_reg[1]_0 [64]),
        .O(s_axi_rresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rresp[1]_INST_0 
       (.I0(rresp_wrap_buffer[1]),
        .I1(use_wrap_buffer),
        .I2(\rresp_wrap_buffer_reg[1]_0 [65]),
        .O(s_axi_rresp[1]));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    use_wrap_buffer_i_1
       (.I0(use_wrap_buffer_reg_1),
        .I1(last_beat__6),
        .I2(wrap_buffer_available),
        .I3(use_wrap_buffer_reg_2),
        .I4(use_wrap_buffer),
        .O(use_wrap_buffer_i_1_n_0));
  FDRE use_wrap_buffer_reg
       (.C(out),
        .CE(1'b1),
        .D(use_wrap_buffer_i_1_n_0),
        .Q(use_wrap_buffer),
        .R(SR));
  LUT4 #(
    .INIT(16'hBFA0)) 
    wrap_buffer_available_i_1__0
       (.I0(p_7_in),
        .I1(last_beat__6),
        .I2(use_wrap_buffer_reg_1),
        .I3(wrap_buffer_available),
        .O(wrap_buffer_available_i_1__0_n_0));
  FDRE wrap_buffer_available_reg
       (.C(out),
        .CE(1'b1),
        .D(wrap_buffer_available_i_1__0_n_0),
        .Q(wrap_buffer_available),
        .R(SR));
endmodule

(* C_AXI_ADDR_WIDTH = "64" *) (* C_AXI_IS_ACLK_ASYNC = "0" *) (* C_AXI_PROTOCOL = "1" *) 
(* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_WRITE = "1" *) (* C_FAMILY = "zynq" *) 
(* C_FIFO_MODE = "0" *) (* C_MAX_SPLIT_BEATS = "16" *) (* C_M_AXI_ACLK_RATIO = "2" *) 
(* C_M_AXI_BYTES_LOG = "3" *) (* C_M_AXI_DATA_WIDTH = "64" *) (* C_PACKING_LEVEL = "1" *) 
(* C_RATIO = "0" *) (* C_RATIO_LOG = "0" *) (* C_SUPPORTS_ID = "0" *) 
(* C_SYNCHRONIZER_STAGE = "3" *) (* C_S_AXI_ACLK_RATIO = "1" *) (* C_S_AXI_BYTES_LOG = "2" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_ID_WIDTH = "1" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_26_top" *) (* P_AXI3 = "1" *) (* P_AXI4 = "0" *) 
(* P_AXILITE = "2" *) (* P_CONVERSION = "2" *) (* P_MAX_SPLIT_BEATS = "16" *) 
module design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* keep = "true" *) input s_axi_aclk;
  (* keep = "true" *) input s_axi_aresetn;
  input [0:0]s_axi_awid;
  input [63:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [63:0]s_axi_araddr;
  input [3:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  (* keep = "true" *) input m_axi_aclk;
  (* keep = "true" *) input m_axi_aresetn;
  output [63:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [63:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  (* RTL_KEEP = "true" *) wire m_axi_aclk;
  wire [63:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  (* RTL_KEEP = "true" *) wire m_axi_aresetn;
  wire [3:0]m_axi_arlen;
  wire [1:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [63:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [1:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  (* RTL_KEEP = "true" *) wire s_axi_aclk;
  wire [63:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  (* RTL_KEEP = "true" *) wire s_axi_aresetn;
  wire [3:0]s_axi_arlen;
  wire [1:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [63:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [1:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_bready = s_axi_bready;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1:0] = m_axi_bresp;
  assign s_axi_bvalid = m_axi_bvalid;
  assign s_axi_rid[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_auto_us_0_axi_dwidth_converter_v2_1_26_axi_upsizer \gen_upsizer.gen_full_upsizer.axi_upsizer_inst 
       (.D({s_axi_awqos,s_axi_awlock,s_axi_awlen,s_axi_awcache,s_axi_awburst,s_axi_awsize,s_axi_awprot,s_axi_awaddr}),
        .Q({m_axi_awqos,m_axi_awlock,m_axi_awcache,m_axi_awprot,m_axi_awaddr[63:6]}),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19] (s_axi_rlast),
        .\USE_REGISTER.M_AXI_WVALID_q_reg (m_axi_wvalid),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr[5:0]),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .\m_payload_i_reg[86] ({m_axi_arqos,m_axi_arlock,m_axi_arcache,m_axi_arprot}),
        .\m_payload_i_reg[86]_0 ({s_axi_arqos,s_axi_arlock,s_axi_arlen,s_axi_arcache,s_axi_arburst,s_axi_arsize,s_axi_arprot,s_axi_araddr}),
        .m_valid_i_reg_inv(s_axi_aresetn),
        .out(s_axi_aclk),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .s_ready_i_reg(m_axi_rready));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_26_w_upsizer" *) 
module design_1_auto_us_0_axi_dwidth_converter_v2_1_26_w_upsizer
   (\USE_RTL_CURR_WORD.first_word_q ,
    SR,
    \USE_RTL_LENGTH.length_counter_q_reg[1]_0 ,
    \USE_REGISTER.M_AXI_WVALID_q_reg_0 ,
    \USE_RTL_LENGTH.first_mi_word_q ,
    wrap_buffer_available,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wready_0,
    \USE_RTL_CURR_WORD.current_word_q_reg[2]_0 ,
    \USE_RTL_LENGTH.length_counter_q_reg[1]_1 ,
    sel_first_word__0,
    \USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_0 ,
    m_axi_wdata,
    E,
    s_axi_wlast,
    out,
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ,
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1 ,
    s_axi_wstrb,
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0 ,
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0 ,
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0 ,
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0 ,
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0 ,
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0 ,
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0 ,
    \USE_RTL_LENGTH.length_counter_q_reg[1]_2 ,
    \USE_REGISTER.M_AXI_WVALID_q_reg_1 ,
    \USE_RTL_LENGTH.first_mi_word_q_reg_0 ,
    wrap_buffer_available_reg_0,
    Q,
    p_89_in,
    m_axi_wready,
    s_axi_wvalid,
    \USE_WRITE.wr_cmd_valid ,
    s_axi_wdata,
    p_79_in,
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0 ,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_2 ,
    \USE_RTL_LENGTH.length_counter_q_reg[0]_0 ,
    D,
    \USE_RTL_CURR_WORD.current_word_q_reg[2]_1 );
  output \USE_RTL_CURR_WORD.first_word_q ;
  output [0:0]SR;
  output [1:0]\USE_RTL_LENGTH.length_counter_q_reg[1]_0 ;
  output \USE_REGISTER.M_AXI_WVALID_q_reg_0 ;
  output \USE_RTL_LENGTH.first_mi_word_q ;
  output wrap_buffer_available;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wready_0;
  output [2:0]\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 ;
  output \USE_RTL_LENGTH.length_counter_q_reg[1]_1 ;
  output sel_first_word__0;
  output [2:0]\USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_0 ;
  output [63:0]m_axi_wdata;
  input [0:0]E;
  input s_axi_wlast;
  input out;
  input [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ;
  input [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1 ;
  input [3:0]s_axi_wstrb;
  input [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0 ;
  input [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0 ;
  input [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0 ;
  input [0:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0 ;
  input [0:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0 ;
  input [0:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0 ;
  input [0:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0 ;
  input \USE_RTL_LENGTH.length_counter_q_reg[1]_2 ;
  input \USE_REGISTER.M_AXI_WVALID_q_reg_1 ;
  input \USE_RTL_LENGTH.first_mi_word_q_reg_0 ;
  input wrap_buffer_available_reg_0;
  input [8:0]Q;
  input p_89_in;
  input m_axi_wready;
  input s_axi_wvalid;
  input \USE_WRITE.wr_cmd_valid ;
  input [31:0]s_axi_wdata;
  input p_79_in;
  input \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0 ;
  input \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_2 ;
  input \USE_RTL_LENGTH.length_counter_q_reg[0]_0 ;
  input [2:0]D;
  input [2:0]\USE_RTL_CURR_WORD.current_word_q_reg[2]_1 ;

  wire [2:0]D;
  wire [0:0]E;
  wire M_AXI_WDATA_I118_out__2;
  wire M_AXI_WDATA_I129_out__2;
  wire M_AXI_WDATA_I140_out__2;
  wire M_AXI_WDATA_I150_out__2;
  wire M_AXI_WDATA_I160_out__2;
  wire M_AXI_WDATA_I170_out__2;
  wire M_AXI_WDATA_I17_out__2;
  wire M_AXI_WDATA_I185_out__2;
  wire [8:0]Q;
  wire [0:0]SR;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_2 ;
  wire \USE_REGISTER.M_AXI_WLAST_q_i_1_n_0 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_i_9_n_0 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_reg_0 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_reg_1 ;
  wire [2:0]\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 ;
  wire [2:0]\USE_RTL_CURR_WORD.current_word_q_reg[2]_1 ;
  wire \USE_RTL_CURR_WORD.first_word_q ;
  wire [2:0]\USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_0 ;
  wire \USE_RTL_LENGTH.first_mi_word_q ;
  wire \USE_RTL_LENGTH.first_mi_word_q_reg_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[0]_i_1_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[2]_i_1_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[2]_i_2_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[3]_i_1_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[3]_i_2_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[4]_i_1_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[4]_i_2_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[5]_i_1_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[6]_i_1_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[7]_i_1_n_0 ;
  wire \USE_RTL_LENGTH.length_counter_q[7]_i_2_n_0 ;
  wire [7:2]\USE_RTL_LENGTH.length_counter_q_reg ;
  wire \USE_RTL_LENGTH.length_counter_q_reg[0]_0 ;
  wire [1:0]\USE_RTL_LENGTH.length_counter_q_reg[1]_0 ;
  wire \USE_RTL_LENGTH.length_counter_q_reg[1]_1 ;
  wire \USE_RTL_LENGTH.length_counter_q_reg[1]_2 ;
  wire \USE_WRITE.wr_cmd_valid ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[0]_i_1_n_0 ;
  wire [7:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg ;
  wire [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ;
  wire [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg_n_0_[0] ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[10]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[11]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[12]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[13]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[14]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_2_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[8]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[9]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[1]_i_1_n_0 ;
  wire [7:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg ;
  wire [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[16]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[17]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[18]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[19]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[20]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[21]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[22]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_2_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[2]_i_1_n_0 ;
  wire [7:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg ;
  wire [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[24]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[25]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[26]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[27]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[28]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[29]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[30]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_2_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_1_n_0 ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0 ;
  wire [7:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg ;
  wire [0:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[32]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[33]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[34]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[35]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[36]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[37]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[38]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_2_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[4]_i_1_n_0 ;
  wire [7:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg ;
  wire [0:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[40]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[41]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[42]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[43]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[44]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[45]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[46]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_2_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[5]_i_1_n_0 ;
  wire [7:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg ;
  wire [0:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[48]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[49]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[50]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[51]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[52]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[53]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[54]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_2_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[6]_i_1_n_0 ;
  wire [7:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg ;
  wire [0:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[56]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[57]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[58]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[59]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[60]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[61]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[62]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_3_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_1_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_2_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_4_n_0 ;
  wire [7:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg ;
  wire [0:0]\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0 ;
  wire [63:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wready_0;
  wire [7:0]m_axi_wstrb;
  wire out;
  wire [7:0]p_1_in;
  wire p_79_in;
  wire p_89_in;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire sel_first_word__0;
  wire wrap_buffer_available;
  wire wrap_buffer_available_reg_0;
  wire wstrb_wrap_buffer_1;
  wire wstrb_wrap_buffer_2;
  wire wstrb_wrap_buffer_3;
  wire wstrb_wrap_buffer_4;
  wire wstrb_wrap_buffer_5;
  wire wstrb_wrap_buffer_6;
  wire wstrb_wrap_buffer_7;

  LUT6 #(
    .INIT(64'hB000B0B000000000)) 
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_3 
       (.I0(m_axi_wready),
        .I1(\USE_REGISTER.M_AXI_WVALID_q_reg_0 ),
        .I2(s_axi_wvalid),
        .I3(wrap_buffer_available),
        .I4(Q[7]),
        .I5(\USE_WRITE.wr_cmd_valid ),
        .O(m_axi_wready_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \USE_REGISTER.M_AXI_WLAST_q_i_1 
       (.I0(s_axi_wlast),
        .I1(m_axi_wready),
        .I2(\USE_REGISTER.M_AXI_WVALID_q_reg_0 ),
        .I3(m_axi_wlast),
        .O(\USE_REGISTER.M_AXI_WLAST_q_i_1_n_0 ));
  FDRE \USE_REGISTER.M_AXI_WLAST_q_reg 
       (.C(out),
        .CE(1'b1),
        .D(\USE_REGISTER.M_AXI_WLAST_q_i_1_n_0 ),
        .Q(m_axi_wlast),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_6 
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg[1]_0 [1]),
        .I1(\USE_RTL_LENGTH.length_counter_q_reg[1]_0 [0]),
        .I2(\USE_RTL_LENGTH.first_mi_word_q ),
        .I3(\USE_REGISTER.M_AXI_WVALID_q_i_9_n_0 ),
        .I4(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_2 ),
        .O(\USE_RTL_LENGTH.length_counter_q_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_9 
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg [2]),
        .I1(\USE_RTL_LENGTH.length_counter_q_reg [3]),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg [4]),
        .I3(\USE_RTL_LENGTH.length_counter_q_reg [5]),
        .I4(\USE_RTL_LENGTH.length_counter_q_reg [7]),
        .I5(\USE_RTL_LENGTH.length_counter_q_reg [6]),
        .O(\USE_REGISTER.M_AXI_WVALID_q_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_REGISTER.M_AXI_WVALID_q_reg 
       (.C(out),
        .CE(1'b1),
        .D(\USE_REGISTER.M_AXI_WVALID_q_reg_1 ),
        .Q(\USE_REGISTER.M_AXI_WVALID_q_reg_0 ),
        .R(SR));
  FDRE \USE_RTL_CURR_WORD.current_word_q_reg[0] 
       (.C(out),
        .CE(E),
        .D(\USE_RTL_CURR_WORD.current_word_q_reg[2]_1 [0]),
        .Q(\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 [0]),
        .R(SR));
  FDRE \USE_RTL_CURR_WORD.current_word_q_reg[1] 
       (.C(out),
        .CE(E),
        .D(\USE_RTL_CURR_WORD.current_word_q_reg[2]_1 [1]),
        .Q(\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 [1]),
        .R(SR));
  FDRE \USE_RTL_CURR_WORD.current_word_q_reg[2] 
       (.C(out),
        .CE(E),
        .D(\USE_RTL_CURR_WORD.current_word_q_reg[2]_1 [2]),
        .Q(\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 [2]),
        .R(SR));
  FDSE \USE_RTL_CURR_WORD.first_word_q_reg 
       (.C(out),
        .CE(E),
        .D(s_axi_wlast),
        .Q(\USE_RTL_CURR_WORD.first_word_q ),
        .S(SR));
  LUT2 #(
    .INIT(4'hE)) 
    \USE_RTL_CURR_WORD.pre_next_word_q[2]_i_3 
       (.I0(\USE_RTL_CURR_WORD.first_word_q ),
        .I1(Q[8]),
        .O(sel_first_word__0));
  FDRE \USE_RTL_CURR_WORD.pre_next_word_q_reg[0] 
       (.C(out),
        .CE(E),
        .D(D[0]),
        .Q(\USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_0 [0]),
        .R(SR));
  FDRE \USE_RTL_CURR_WORD.pre_next_word_q_reg[1] 
       (.C(out),
        .CE(E),
        .D(D[1]),
        .Q(\USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_0 [1]),
        .R(SR));
  FDRE \USE_RTL_CURR_WORD.pre_next_word_q_reg[2] 
       (.C(out),
        .CE(E),
        .D(D[2]),
        .Q(\USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_0 [2]),
        .R(SR));
  FDSE \USE_RTL_LENGTH.first_mi_word_q_reg 
       (.C(out),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.first_mi_word_q_reg_0 ),
        .Q(\USE_RTL_LENGTH.first_mi_word_q ),
        .S(SR));
  LUT4 #(
    .INIT(16'h2F70)) 
    \USE_RTL_LENGTH.length_counter_q[0]_i_1 
       (.I0(\USE_RTL_LENGTH.first_mi_word_q ),
        .I1(Q[0]),
        .I2(p_89_in),
        .I3(\USE_RTL_LENGTH.length_counter_q_reg[1]_0 [0]),
        .O(\USE_RTL_LENGTH.length_counter_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hACCC5C3C)) 
    \USE_RTL_LENGTH.length_counter_q[2]_i_1 
       (.I0(Q[2]),
        .I1(\USE_RTL_LENGTH.length_counter_q_reg [2]),
        .I2(p_89_in),
        .I3(\USE_RTL_LENGTH.first_mi_word_q ),
        .I4(\USE_RTL_LENGTH.length_counter_q[2]_i_2_n_0 ),
        .O(\USE_RTL_LENGTH.length_counter_q[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \USE_RTL_LENGTH.length_counter_q[2]_i_2 
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg[1]_0 [0]),
        .I1(Q[0]),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg[1]_0 [1]),
        .I3(\USE_RTL_LENGTH.first_mi_word_q ),
        .I4(Q[1]),
        .O(\USE_RTL_LENGTH.length_counter_q[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD8D272D2)) 
    \USE_RTL_LENGTH.length_counter_q[3]_i_1 
       (.I0(p_89_in),
        .I1(\USE_RTL_LENGTH.length_counter_q[3]_i_2_n_0 ),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg [3]),
        .I3(\USE_RTL_LENGTH.first_mi_word_q ),
        .I4(Q[3]),
        .O(\USE_RTL_LENGTH.length_counter_q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hFFE2)) 
    \USE_RTL_LENGTH.length_counter_q[3]_i_2 
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg [2]),
        .I1(\USE_RTL_LENGTH.first_mi_word_q ),
        .I2(Q[2]),
        .I3(\USE_RTL_LENGTH.length_counter_q[2]_i_2_n_0 ),
        .O(\USE_RTL_LENGTH.length_counter_q[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hD8D272D2)) 
    \USE_RTL_LENGTH.length_counter_q[4]_i_1 
       (.I0(p_89_in),
        .I1(\USE_RTL_LENGTH.length_counter_q[4]_i_2_n_0 ),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg [4]),
        .I3(\USE_RTL_LENGTH.first_mi_word_q ),
        .I4(Q[4]),
        .O(\USE_RTL_LENGTH.length_counter_q[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFAEEEEFFFA)) 
    \USE_RTL_LENGTH.length_counter_q[4]_i_2 
       (.I0(\USE_RTL_LENGTH.length_counter_q[2]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg [2]),
        .I3(\USE_RTL_LENGTH.length_counter_q_reg [3]),
        .I4(\USE_RTL_LENGTH.first_mi_word_q ),
        .I5(Q[3]),
        .O(\USE_RTL_LENGTH.length_counter_q[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h3A9A)) 
    \USE_RTL_LENGTH.length_counter_q[5]_i_1 
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg [5]),
        .I1(\USE_RTL_LENGTH.length_counter_q[7]_i_2_n_0 ),
        .I2(p_89_in),
        .I3(\USE_RTL_LENGTH.first_mi_word_q ),
        .O(\USE_RTL_LENGTH.length_counter_q[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h7070F8DA)) 
    \USE_RTL_LENGTH.length_counter_q[6]_i_1 
       (.I0(p_89_in),
        .I1(\USE_RTL_LENGTH.first_mi_word_q ),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg [6]),
        .I3(\USE_RTL_LENGTH.length_counter_q_reg [5]),
        .I4(\USE_RTL_LENGTH.length_counter_q[7]_i_2_n_0 ),
        .O(\USE_RTL_LENGTH.length_counter_q[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3333F0E1F0F0F0F0)) 
    \USE_RTL_LENGTH.length_counter_q[7]_i_1 
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg [5]),
        .I1(\USE_RTL_LENGTH.length_counter_q[7]_i_2_n_0 ),
        .I2(\USE_RTL_LENGTH.length_counter_q_reg [7]),
        .I3(\USE_RTL_LENGTH.length_counter_q_reg [6]),
        .I4(\USE_RTL_LENGTH.first_mi_word_q ),
        .I5(p_89_in),
        .O(\USE_RTL_LENGTH.length_counter_q[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \USE_RTL_LENGTH.length_counter_q[7]_i_2 
       (.I0(\USE_RTL_LENGTH.length_counter_q[4]_i_2_n_0 ),
        .I1(\USE_RTL_LENGTH.length_counter_q_reg [4]),
        .I2(\USE_RTL_LENGTH.first_mi_word_q ),
        .I3(Q[4]),
        .O(\USE_RTL_LENGTH.length_counter_q[7]_i_2_n_0 ));
  FDRE \USE_RTL_LENGTH.length_counter_q_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.length_counter_q[0]_i_1_n_0 ),
        .Q(\USE_RTL_LENGTH.length_counter_q_reg[1]_0 [0]),
        .R(SR));
  FDRE \USE_RTL_LENGTH.length_counter_q_reg[1] 
       (.C(out),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.length_counter_q_reg[1]_2 ),
        .Q(\USE_RTL_LENGTH.length_counter_q_reg[1]_0 [1]),
        .R(SR));
  FDRE \USE_RTL_LENGTH.length_counter_q_reg[2] 
       (.C(out),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.length_counter_q[2]_i_1_n_0 ),
        .Q(\USE_RTL_LENGTH.length_counter_q_reg [2]),
        .R(SR));
  FDRE \USE_RTL_LENGTH.length_counter_q_reg[3] 
       (.C(out),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.length_counter_q[3]_i_1_n_0 ),
        .Q(\USE_RTL_LENGTH.length_counter_q_reg [3]),
        .R(SR));
  FDRE \USE_RTL_LENGTH.length_counter_q_reg[4] 
       (.C(out),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.length_counter_q[4]_i_1_n_0 ),
        .Q(\USE_RTL_LENGTH.length_counter_q_reg [4]),
        .R(SR));
  FDRE \USE_RTL_LENGTH.length_counter_q_reg[5] 
       (.C(out),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.length_counter_q[5]_i_1_n_0 ),
        .Q(\USE_RTL_LENGTH.length_counter_q_reg [5]),
        .R(SR));
  FDRE \USE_RTL_LENGTH.length_counter_q_reg[6] 
       (.C(out),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.length_counter_q[6]_i_1_n_0 ),
        .Q(\USE_RTL_LENGTH.length_counter_q_reg [6]),
        .R(SR));
  FDRE \USE_RTL_LENGTH.length_counter_q_reg[7] 
       (.C(out),
        .CE(1'b1),
        .D(\USE_RTL_LENGTH.length_counter_q[7]_i_1_n_0 ),
        .Q(\USE_RTL_LENGTH.length_counter_q_reg [7]),
        .R(SR));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .I2(p_79_in),
        .I3(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg_n_0_[0] ),
        .I4(M_AXI_WDATA_I185_out__2),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .I2(p_79_in),
        .I3(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg_n_0_[0] ),
        .I4(M_AXI_WDATA_I185_out__2),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[2]_i_1 
       (.I0(s_axi_wdata[2]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .I2(p_79_in),
        .I3(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg_n_0_[0] ),
        .I4(M_AXI_WDATA_I185_out__2),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[3]_i_1 
       (.I0(s_axi_wdata[3]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .I2(p_79_in),
        .I3(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg_n_0_[0] ),
        .I4(M_AXI_WDATA_I185_out__2),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[4]_i_1 
       (.I0(s_axi_wdata[4]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .I2(p_79_in),
        .I3(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg_n_0_[0] ),
        .I4(M_AXI_WDATA_I185_out__2),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[5]_i_1 
       (.I0(s_axi_wdata[5]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .I2(p_79_in),
        .I3(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg_n_0_[0] ),
        .I4(M_AXI_WDATA_I185_out__2),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[6]_i_1 
       (.I0(s_axi_wdata[6]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .I2(p_79_in),
        .I3(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg_n_0_[0] ),
        .I4(M_AXI_WDATA_I185_out__2),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1 
       (.I0(M_AXI_WDATA_I185_out__2),
        .I1(m_axi_wready),
        .I2(\USE_REGISTER.M_AXI_WVALID_q_reg_0 ),
        .I3(p_79_in),
        .I4(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg_n_0_[0] ),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_2 
       (.I0(s_axi_wdata[7]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .I2(p_79_in),
        .I3(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg_n_0_[0] ),
        .I4(M_AXI_WDATA_I185_out__2),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_3 
       (.I0(s_axi_wstrb[0]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0 ),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0 ),
        .O(M_AXI_WDATA_I185_out__2));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[0] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(m_axi_wdata[0]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[1] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(m_axi_wdata[1]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[2] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(m_axi_wdata[2]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[3] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(m_axi_wdata[3]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[4] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(m_axi_wdata[4]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[5] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(m_axi_wdata[5]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[6] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(m_axi_wdata[6]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[7] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(m_axi_wdata[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[0]_i_1 
       (.I0(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg_n_0_[0] ),
        .I1(p_79_in),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0 ),
        .I5(m_axi_wstrb[0]),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[0]_i_1_n_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[0]_i_1_n_0 ),
        .Q(m_axi_wstrb[0]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[0] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1 ),
        .D(s_axi_wdata[0]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[1] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1 ),
        .D(s_axi_wdata[1]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[2] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1 ),
        .D(s_axi_wdata[2]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[3] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1 ),
        .D(s_axi_wdata[3]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[4] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1 ),
        .D(s_axi_wdata[4]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[5] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1 ),
        .D(s_axi_wdata[5]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[6] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1 ),
        .D(s_axi_wdata[6]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1 ),
        .D(s_axi_wdata[7]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1 ),
        .D(s_axi_wstrb[0]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg_n_0_[0] ),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[10]_i_1 
       (.I0(s_axi_wdata[10]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_1),
        .I4(M_AXI_WDATA_I170_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[11]_i_1 
       (.I0(s_axi_wdata[11]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_1),
        .I4(M_AXI_WDATA_I170_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[12]_i_1 
       (.I0(s_axi_wdata[12]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_1),
        .I4(M_AXI_WDATA_I170_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[13]_i_1 
       (.I0(s_axi_wdata[13]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_1),
        .I4(M_AXI_WDATA_I170_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[14]_i_1 
       (.I0(s_axi_wdata[14]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_1),
        .I4(M_AXI_WDATA_I170_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1 
       (.I0(M_AXI_WDATA_I170_out__2),
        .I1(m_axi_wready),
        .I2(\USE_REGISTER.M_AXI_WVALID_q_reg_0 ),
        .I3(p_79_in),
        .I4(wstrb_wrap_buffer_1),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_2 
       (.I0(s_axi_wdata[15]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_1),
        .I4(M_AXI_WDATA_I170_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_3 
       (.I0(s_axi_wstrb[1]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0 ),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0 ),
        .O(M_AXI_WDATA_I170_out__2));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[8]_i_1 
       (.I0(s_axi_wdata[8]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_1),
        .I4(M_AXI_WDATA_I170_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[9]_i_1 
       (.I0(s_axi_wdata[9]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_1),
        .I4(M_AXI_WDATA_I170_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[9]_i_1_n_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[10] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[10]_i_1_n_0 ),
        .Q(m_axi_wdata[10]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[11] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[11]_i_1_n_0 ),
        .Q(m_axi_wdata[11]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[12] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[12]_i_1_n_0 ),
        .Q(m_axi_wdata[12]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[13] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[13]_i_1_n_0 ),
        .Q(m_axi_wdata[13]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[14] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[14]_i_1_n_0 ),
        .Q(m_axi_wdata[14]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[15] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_2_n_0 ),
        .Q(m_axi_wdata[15]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[8] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[8]_i_1_n_0 ),
        .Q(m_axi_wdata[8]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[9] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[9]_i_1_n_0 ),
        .Q(m_axi_wdata[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[1]_i_1 
       (.I0(wstrb_wrap_buffer_1),
        .I1(p_79_in),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0 ),
        .I3(s_axi_wstrb[1]),
        .I4(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0 ),
        .I5(m_axi_wstrb[1]),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[1]_i_1_n_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[1] 
       (.C(out),
        .CE(1'b1),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[1]_i_1_n_0 ),
        .Q(m_axi_wstrb[1]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[10] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[11] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[12] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[13] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[14] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[15] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[8] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[9] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0 ),
        .D(s_axi_wstrb[1]),
        .Q(wstrb_wrap_buffer_1),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[16]_i_1 
       (.I0(s_axi_wdata[16]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_2),
        .I4(M_AXI_WDATA_I160_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[17]_i_1 
       (.I0(s_axi_wdata[17]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_2),
        .I4(M_AXI_WDATA_I160_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[18]_i_1 
       (.I0(s_axi_wdata[18]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_2),
        .I4(M_AXI_WDATA_I160_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[19]_i_1 
       (.I0(s_axi_wdata[19]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_2),
        .I4(M_AXI_WDATA_I160_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[20]_i_1 
       (.I0(s_axi_wdata[20]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_2),
        .I4(M_AXI_WDATA_I160_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[21]_i_1 
       (.I0(s_axi_wdata[21]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_2),
        .I4(M_AXI_WDATA_I160_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[22]_i_1 
       (.I0(s_axi_wdata[22]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_2),
        .I4(M_AXI_WDATA_I160_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1 
       (.I0(M_AXI_WDATA_I160_out__2),
        .I1(m_axi_wready),
        .I2(\USE_REGISTER.M_AXI_WVALID_q_reg_0 ),
        .I3(p_79_in),
        .I4(wstrb_wrap_buffer_2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_2 
       (.I0(s_axi_wdata[23]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_2),
        .I4(M_AXI_WDATA_I160_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_3 
       (.I0(s_axi_wstrb[2]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0 ),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0 ),
        .O(M_AXI_WDATA_I160_out__2));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[16] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[16]_i_1_n_0 ),
        .Q(m_axi_wdata[16]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[17] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[17]_i_1_n_0 ),
        .Q(m_axi_wdata[17]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[18] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[18]_i_1_n_0 ),
        .Q(m_axi_wdata[18]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[19] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[19]_i_1_n_0 ),
        .Q(m_axi_wdata[19]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[20] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[20]_i_1_n_0 ),
        .Q(m_axi_wdata[20]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[21] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[21]_i_1_n_0 ),
        .Q(m_axi_wdata[21]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[22] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[22]_i_1_n_0 ),
        .Q(m_axi_wdata[22]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[23] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_2_n_0 ),
        .Q(m_axi_wdata[23]),
        .R(SR));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[2]_i_1 
       (.I0(wstrb_wrap_buffer_2),
        .I1(p_79_in),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0 ),
        .I3(s_axi_wstrb[2]),
        .I4(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0 ),
        .I5(m_axi_wstrb[2]),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[2]_i_1_n_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[2] 
       (.C(out),
        .CE(1'b1),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[2]_i_1_n_0 ),
        .Q(m_axi_wstrb[2]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[16] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[17] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[18] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[19] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[20] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[21] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[22] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[23] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0 ),
        .D(s_axi_wstrb[2]),
        .Q(wstrb_wrap_buffer_2),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[24]_i_1 
       (.I0(s_axi_wdata[24]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_3),
        .I4(M_AXI_WDATA_I150_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[25]_i_1 
       (.I0(s_axi_wdata[25]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_3),
        .I4(M_AXI_WDATA_I150_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[26]_i_1 
       (.I0(s_axi_wdata[26]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_3),
        .I4(M_AXI_WDATA_I150_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[27]_i_1 
       (.I0(s_axi_wdata[27]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_3),
        .I4(M_AXI_WDATA_I150_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[28]_i_1 
       (.I0(s_axi_wdata[28]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_3),
        .I4(M_AXI_WDATA_I150_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[29]_i_1 
       (.I0(s_axi_wdata[29]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_3),
        .I4(M_AXI_WDATA_I150_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[30]_i_1 
       (.I0(s_axi_wdata[30]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_3),
        .I4(M_AXI_WDATA_I150_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1 
       (.I0(M_AXI_WDATA_I150_out__2),
        .I1(m_axi_wready),
        .I2(\USE_REGISTER.M_AXI_WVALID_q_reg_0 ),
        .I3(p_79_in),
        .I4(wstrb_wrap_buffer_3),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_2 
       (.I0(s_axi_wdata[31]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_3),
        .I4(M_AXI_WDATA_I150_out__2),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_3 
       (.I0(s_axi_wstrb[3]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0 ),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0 ),
        .O(M_AXI_WDATA_I150_out__2));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[24] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[24]_i_1_n_0 ),
        .Q(m_axi_wdata[24]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[25] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[25]_i_1_n_0 ),
        .Q(m_axi_wdata[25]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[26] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[26]_i_1_n_0 ),
        .Q(m_axi_wdata[26]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[27] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[27]_i_1_n_0 ),
        .Q(m_axi_wdata[27]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[28] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[28]_i_1_n_0 ),
        .Q(m_axi_wdata[28]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[29] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[29]_i_1_n_0 ),
        .Q(m_axi_wdata[29]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[30] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[30]_i_1_n_0 ),
        .Q(m_axi_wdata[30]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[31] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0 ),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_2_n_0 ),
        .Q(m_axi_wdata[31]),
        .R(SR));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_1 
       (.I0(wstrb_wrap_buffer_3),
        .I1(p_79_in),
        .I2(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0 ),
        .I3(s_axi_wstrb[3]),
        .I4(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0 ),
        .I5(m_axi_wstrb[3]),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000002220222A)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2 
       (.I0(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_4_n_0 ),
        .I1(Q[6]),
        .I2(\USE_RTL_CURR_WORD.first_word_q ),
        .I3(Q[8]),
        .I4(\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 [2]),
        .I5(Q[5]),
        .O(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[3] 
       (.C(out),
        .CE(1'b1),
        .D(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_1_n_0 ),
        .Q(m_axi_wstrb[3]),
        .R(SR));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[24] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[25] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[26] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[27] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[28] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[29] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[30] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[31] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3] 
       (.C(out),
        .CE(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0 ),
        .D(s_axi_wstrb[3]),
        .Q(wstrb_wrap_buffer_3),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[32]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_4),
        .I4(M_AXI_WDATA_I140_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[32]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[33]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_4),
        .I4(M_AXI_WDATA_I140_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[33]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[34]_i_1 
       (.I0(s_axi_wdata[2]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_4),
        .I4(M_AXI_WDATA_I140_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[34]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[35]_i_1 
       (.I0(s_axi_wdata[3]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_4),
        .I4(M_AXI_WDATA_I140_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[35]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[36]_i_1 
       (.I0(s_axi_wdata[4]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_4),
        .I4(M_AXI_WDATA_I140_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[36]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[37]_i_1 
       (.I0(s_axi_wdata[5]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_4),
        .I4(M_AXI_WDATA_I140_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[37]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[38]_i_1 
       (.I0(s_axi_wdata[6]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_4),
        .I4(M_AXI_WDATA_I140_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[38]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1 
       (.I0(M_AXI_WDATA_I140_out__2),
        .I1(m_axi_wready),
        .I2(\USE_REGISTER.M_AXI_WVALID_q_reg_0 ),
        .I3(p_79_in),
        .I4(wstrb_wrap_buffer_4),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_2 
       (.I0(s_axi_wdata[7]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_4),
        .I4(M_AXI_WDATA_I140_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_3 
       (.I0(s_axi_wstrb[0]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_2_n_0 ),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0 ),
        .O(M_AXI_WDATA_I140_out__2));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[32] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[32]_i_1_n_0 ),
        .Q(m_axi_wdata[32]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[33] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[33]_i_1_n_0 ),
        .Q(m_axi_wdata[33]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[34] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[34]_i_1_n_0 ),
        .Q(m_axi_wdata[34]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[35] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[35]_i_1_n_0 ),
        .Q(m_axi_wdata[35]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[36] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[36]_i_1_n_0 ),
        .Q(m_axi_wdata[36]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[37] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[37]_i_1_n_0 ),
        .Q(m_axi_wdata[37]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[38] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[38]_i_1_n_0 ),
        .Q(m_axi_wdata[38]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[39] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_2_n_0 ),
        .Q(m_axi_wdata[39]),
        .R(SR));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[4]_i_1 
       (.I0(wstrb_wrap_buffer_4),
        .I1(p_79_in),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_2_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0 ),
        .I5(m_axi_wstrb[4]),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[4]_i_1_n_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[4] 
       (.C(out),
        .CE(1'b1),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[4]_i_1_n_0 ),
        .Q(m_axi_wstrb[4]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[32] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0 ),
        .D(s_axi_wdata[0]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[33] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[34] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0 ),
        .D(s_axi_wdata[2]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[35] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0 ),
        .D(s_axi_wdata[3]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[36] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0 ),
        .D(s_axi_wdata[4]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[37] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0 ),
        .D(s_axi_wdata[5]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[38] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0 ),
        .D(s_axi_wdata[6]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[39] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0 ),
        .D(s_axi_wdata[7]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0 ),
        .D(s_axi_wstrb[0]),
        .Q(wstrb_wrap_buffer_4),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[40]_i_1 
       (.I0(s_axi_wdata[8]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_5),
        .I4(M_AXI_WDATA_I129_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[40]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[41]_i_1 
       (.I0(s_axi_wdata[9]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_5),
        .I4(M_AXI_WDATA_I129_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[41]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[42]_i_1 
       (.I0(s_axi_wdata[10]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_5),
        .I4(M_AXI_WDATA_I129_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[42]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[43]_i_1 
       (.I0(s_axi_wdata[11]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_5),
        .I4(M_AXI_WDATA_I129_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[43]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[44]_i_1 
       (.I0(s_axi_wdata[12]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_5),
        .I4(M_AXI_WDATA_I129_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[44]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[45]_i_1 
       (.I0(s_axi_wdata[13]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_5),
        .I4(M_AXI_WDATA_I129_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[45]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[46]_i_1 
       (.I0(s_axi_wdata[14]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_5),
        .I4(M_AXI_WDATA_I129_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[46]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1 
       (.I0(M_AXI_WDATA_I129_out__2),
        .I1(m_axi_wready),
        .I2(\USE_REGISTER.M_AXI_WVALID_q_reg_0 ),
        .I3(p_79_in),
        .I4(wstrb_wrap_buffer_5),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_2 
       (.I0(s_axi_wdata[15]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_5),
        .I4(M_AXI_WDATA_I129_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_3 
       (.I0(s_axi_wstrb[1]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_2_n_0 ),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0 ),
        .O(M_AXI_WDATA_I129_out__2));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[40] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[40]_i_1_n_0 ),
        .Q(m_axi_wdata[40]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[41] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[41]_i_1_n_0 ),
        .Q(m_axi_wdata[41]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[42] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[42]_i_1_n_0 ),
        .Q(m_axi_wdata[42]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[43] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[43]_i_1_n_0 ),
        .Q(m_axi_wdata[43]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[44] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[44]_i_1_n_0 ),
        .Q(m_axi_wdata[44]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[45] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[45]_i_1_n_0 ),
        .Q(m_axi_wdata[45]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[46] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[46]_i_1_n_0 ),
        .Q(m_axi_wdata[46]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[47] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_2_n_0 ),
        .Q(m_axi_wdata[47]),
        .R(SR));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[5]_i_1 
       (.I0(wstrb_wrap_buffer_5),
        .I1(p_79_in),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_2_n_0 ),
        .I3(s_axi_wstrb[1]),
        .I4(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0 ),
        .I5(m_axi_wstrb[5]),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[5]_i_1_n_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[5] 
       (.C(out),
        .CE(1'b1),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[5]_i_1_n_0 ),
        .Q(m_axi_wstrb[5]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[40] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0 ),
        .D(s_axi_wdata[8]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[41] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0 ),
        .D(s_axi_wdata[9]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[42] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0 ),
        .D(s_axi_wdata[10]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[43] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[44] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[45] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[46] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[47] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0 ),
        .D(s_axi_wstrb[1]),
        .Q(wstrb_wrap_buffer_5),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[48]_i_1 
       (.I0(s_axi_wdata[16]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_6),
        .I4(M_AXI_WDATA_I118_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[48]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[49]_i_1 
       (.I0(s_axi_wdata[17]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_6),
        .I4(M_AXI_WDATA_I118_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[49]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[50]_i_1 
       (.I0(s_axi_wdata[18]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_6),
        .I4(M_AXI_WDATA_I118_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[50]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[51]_i_1 
       (.I0(s_axi_wdata[19]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_6),
        .I4(M_AXI_WDATA_I118_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[51]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[52]_i_1 
       (.I0(s_axi_wdata[20]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_6),
        .I4(M_AXI_WDATA_I118_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[52]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[53]_i_1 
       (.I0(s_axi_wdata[21]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_6),
        .I4(M_AXI_WDATA_I118_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[53]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[54]_i_1 
       (.I0(s_axi_wdata[22]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_6),
        .I4(M_AXI_WDATA_I118_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[54]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1 
       (.I0(M_AXI_WDATA_I118_out__2),
        .I1(m_axi_wready),
        .I2(\USE_REGISTER.M_AXI_WVALID_q_reg_0 ),
        .I3(p_79_in),
        .I4(wstrb_wrap_buffer_6),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_2 
       (.I0(s_axi_wdata[23]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_6),
        .I4(M_AXI_WDATA_I118_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_3 
       (.I0(s_axi_wstrb[2]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_2_n_0 ),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0 ),
        .O(M_AXI_WDATA_I118_out__2));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[48] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[48]_i_1_n_0 ),
        .Q(m_axi_wdata[48]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[49] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[49]_i_1_n_0 ),
        .Q(m_axi_wdata[49]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[50] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[50]_i_1_n_0 ),
        .Q(m_axi_wdata[50]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[51] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[51]_i_1_n_0 ),
        .Q(m_axi_wdata[51]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[52] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[52]_i_1_n_0 ),
        .Q(m_axi_wdata[52]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[53] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[53]_i_1_n_0 ),
        .Q(m_axi_wdata[53]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[54] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[54]_i_1_n_0 ),
        .Q(m_axi_wdata[54]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[55] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_2_n_0 ),
        .Q(m_axi_wdata[55]),
        .R(SR));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[6]_i_1 
       (.I0(wstrb_wrap_buffer_6),
        .I1(p_79_in),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_2_n_0 ),
        .I3(s_axi_wstrb[2]),
        .I4(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0 ),
        .I5(m_axi_wstrb[6]),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[6]_i_1_n_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[6] 
       (.C(out),
        .CE(1'b1),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[6]_i_1_n_0 ),
        .Q(m_axi_wstrb[6]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[48] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0 ),
        .D(s_axi_wdata[16]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[49] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0 ),
        .D(s_axi_wdata[17]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[50] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0 ),
        .D(s_axi_wdata[18]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[51] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0 ),
        .D(s_axi_wdata[19]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[52] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0 ),
        .D(s_axi_wdata[20]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[53] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0 ),
        .D(s_axi_wdata[21]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[54] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0 ),
        .D(s_axi_wdata[22]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[55] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0 ),
        .D(s_axi_wdata[23]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0 ),
        .D(s_axi_wstrb[2]),
        .Q(wstrb_wrap_buffer_6),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[56]_i_1 
       (.I0(s_axi_wdata[24]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_7),
        .I4(M_AXI_WDATA_I17_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[56]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[57]_i_1 
       (.I0(s_axi_wdata[25]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_7),
        .I4(M_AXI_WDATA_I17_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[57]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[58]_i_1 
       (.I0(s_axi_wdata[26]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_7),
        .I4(M_AXI_WDATA_I17_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[58]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[59]_i_1 
       (.I0(s_axi_wdata[27]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_7),
        .I4(M_AXI_WDATA_I17_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[59]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[60]_i_1 
       (.I0(s_axi_wdata[28]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_7),
        .I4(M_AXI_WDATA_I17_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[60]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[61]_i_1 
       (.I0(s_axi_wdata[29]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_7),
        .I4(M_AXI_WDATA_I17_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[61]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[62]_i_1 
       (.I0(s_axi_wdata[30]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_7),
        .I4(M_AXI_WDATA_I17_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[62]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_1 
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg[0]_0 ),
        .O(SR));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2 
       (.I0(M_AXI_WDATA_I17_out__2),
        .I1(m_axi_wready),
        .I2(\USE_REGISTER.M_AXI_WVALID_q_reg_0 ),
        .I3(p_79_in),
        .I4(wstrb_wrap_buffer_7),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_3 
       (.I0(s_axi_wdata[31]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .I2(p_79_in),
        .I3(wstrb_wrap_buffer_7),
        .I4(M_AXI_WDATA_I17_out__2),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_4 
       (.I0(s_axi_wstrb[3]),
        .I1(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_2_n_0 ),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0 ),
        .O(M_AXI_WDATA_I17_out__2));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[56]_i_1_n_0 ),
        .Q(m_axi_wdata[56]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[57] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[57]_i_1_n_0 ),
        .Q(m_axi_wdata[57]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[58] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[58]_i_1_n_0 ),
        .Q(m_axi_wdata[58]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[59] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[59]_i_1_n_0 ),
        .Q(m_axi_wdata[59]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[60] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[60]_i_1_n_0 ),
        .Q(m_axi_wdata[60]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[61] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[61]_i_1_n_0 ),
        .Q(m_axi_wdata[61]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[62] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[62]_i_1_n_0 ),
        .Q(m_axi_wdata[62]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[63] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0 ),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_3_n_0 ),
        .Q(m_axi_wdata[63]),
        .R(SR));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_1 
       (.I0(wstrb_wrap_buffer_7),
        .I1(p_79_in),
        .I2(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_2_n_0 ),
        .I3(s_axi_wstrb[3]),
        .I4(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0 ),
        .I5(m_axi_wstrb[7]),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA888A8880)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_2 
       (.I0(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_4_n_0 ),
        .I1(Q[6]),
        .I2(\USE_RTL_CURR_WORD.first_word_q ),
        .I3(Q[8]),
        .I4(\USE_RTL_CURR_WORD.current_word_q_reg[2]_0 [2]),
        .I5(Q[5]),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3 
       (.I0(m_axi_wready),
        .I1(\USE_REGISTER.M_AXI_WVALID_q_reg_0 ),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD000D0000000D000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_4 
       (.I0(\USE_REGISTER.M_AXI_WVALID_q_reg_0 ),
        .I1(m_axi_wready),
        .I2(s_axi_wvalid),
        .I3(\USE_WRITE.wr_cmd_valid ),
        .I4(Q[7]),
        .I5(wrap_buffer_available),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_4_n_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[7] 
       (.C(out),
        .CE(1'b1),
        .D(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_1_n_0 ),
        .Q(m_axi_wstrb[7]),
        .R(SR));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[56] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0 ),
        .D(s_axi_wdata[24]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [0]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[57] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0 ),
        .D(s_axi_wdata[25]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [1]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[58] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0 ),
        .D(s_axi_wdata[26]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [2]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[59] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0 ),
        .D(s_axi_wdata[27]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [3]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[60] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0 ),
        .D(s_axi_wdata[28]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [4]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[61] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0 ),
        .D(s_axi_wdata[29]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [5]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[62] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0 ),
        .D(s_axi_wdata[30]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [6]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[63] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0 ),
        .D(s_axi_wdata[31]),
        .Q(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg [7]),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7] 
       (.C(out),
        .CE(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0 ),
        .D(s_axi_wstrb[3]),
        .Q(wstrb_wrap_buffer_7),
        .R(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ));
  FDRE wrap_buffer_available_reg
       (.C(out),
        .CE(1'b1),
        .D(wrap_buffer_available_reg_0),
        .Q(wrap_buffer_available),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_26_axi_register_slice" *) 
module design_1_auto_us_0_axi_register_slice_v2_1_26_axi_register_slice
   (s_ready_i_reg,
    mr_rvalid,
    m_valid_i_reg,
    \m_payload_i_reg[66] ,
    Q,
    out,
    \USE_READ.rd_cmd_valid ,
    m_axi_rlast,
    m_axi_rresp,
    m_axi_rdata,
    s_axi_rready,
    p_13_in,
    m_axi_rvalid,
    m_valid_i_reg_0,
    s_ready_i_reg_0,
    \USE_RTL_LENGTH.first_mi_word_q ,
    E);
  output s_ready_i_reg;
  output mr_rvalid;
  output m_valid_i_reg;
  output \m_payload_i_reg[66] ;
  output [65:0]Q;
  input out;
  input \USE_READ.rd_cmd_valid ;
  input m_axi_rlast;
  input [1:0]m_axi_rresp;
  input [63:0]m_axi_rdata;
  input s_axi_rready;
  input p_13_in;
  input m_axi_rvalid;
  input m_valid_i_reg_0;
  input s_ready_i_reg_0;
  input \USE_RTL_LENGTH.first_mi_word_q ;
  input [0:0]E;

  wire [0:0]E;
  wire [65:0]Q;
  wire \USE_READ.rd_cmd_valid ;
  wire \USE_RTL_LENGTH.first_mi_word_q ;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire \m_payload_i_reg[66] ;
  wire m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire mr_rvalid;
  wire out;
  wire p_13_in;
  wire s_axi_rready;
  wire s_ready_i_reg;
  wire s_ready_i_reg_0;

  design_1_auto_us_0_axi_register_slice_v2_1_26_axic_register_slice__parameterized2 \r.r_pipe 
       (.E(E),
        .Q(Q),
        .\USE_READ.rd_cmd_valid (\USE_READ.rd_cmd_valid ),
        .\USE_RTL_LENGTH.first_mi_word_q (\USE_RTL_LENGTH.first_mi_word_q ),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .\m_payload_i_reg[66]_0 (\m_payload_i_reg[66] ),
        .m_valid_i_reg_0(mr_rvalid),
        .m_valid_i_reg_1(m_valid_i_reg),
        .m_valid_i_reg_2(m_valid_i_reg_0),
        .out(out),
        .p_13_in(p_13_in),
        .s_axi_rready(s_axi_rready),
        .s_ready_i_reg_0(s_ready_i_reg),
        .s_ready_i_reg_1(s_ready_i_reg_0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_26_axi_register_slice" *) 
module design_1_auto_us_0_axi_register_slice_v2_1_26_axi_register_slice__parameterized0
   (\aresetn_d_reg[1] ,
    \aresetn_d_reg[0] ,
    E,
    m_valid_i_reg_inv,
    in,
    Q,
    \m_payload_i_reg[70] ,
    m_axi_awaddr,
    m_axi_awburst,
    m_axi_arburst,
    m_axi_araddr,
    s_axi_arready,
    s_axi_awready,
    \m_payload_i_reg[86] ,
    m_axi_awsize,
    m_axi_arsize,
    SR,
    out,
    m_valid_i_reg_inv_0,
    m_axi_arready,
    m_valid_i_reg_inv_1,
    s_axi_arvalid,
    m_valid_i_reg_inv_2,
    m_axi_awready,
    s_axi_awvalid,
    D,
    \m_payload_i_reg[86]_0 ,
    s_ready_i_reg,
    s_ready_i_reg_0);
  output \aresetn_d_reg[1] ;
  output \aresetn_d_reg[0] ;
  output [0:0]E;
  output [0:0]m_valid_i_reg_inv;
  output [23:0]in;
  output [70:0]Q;
  output [23:0]\m_payload_i_reg[70] ;
  output [5:0]m_axi_awaddr;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_arburst;
  output [63:0]m_axi_araddr;
  output s_axi_arready;
  output s_axi_awready;
  output [12:0]\m_payload_i_reg[86] ;
  output [2:0]m_axi_awsize;
  output [2:0]m_axi_arsize;
  input [0:0]SR;
  input out;
  input m_valid_i_reg_inv_0;
  input m_axi_arready;
  input m_valid_i_reg_inv_1;
  input s_axi_arvalid;
  input m_valid_i_reg_inv_2;
  input m_axi_awready;
  input s_axi_awvalid;
  input [85:0]D;
  input [85:0]\m_payload_i_reg[86]_0 ;
  input s_ready_i_reg;
  input s_ready_i_reg_0;

  wire [85:0]D;
  wire [0:0]E;
  wire [70:0]Q;
  wire [0:0]SR;
  wire \aresetn_d_reg[0] ;
  wire \aresetn_d_reg[1] ;
  wire [23:0]in;
  wire [63:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire [5:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire [23:0]\m_payload_i_reg[70] ;
  wire [12:0]\m_payload_i_reg[86] ;
  wire [85:0]\m_payload_i_reg[86]_0 ;
  wire [0:0]m_valid_i_reg_inv;
  wire m_valid_i_reg_inv_0;
  wire m_valid_i_reg_inv_1;
  wire m_valid_i_reg_inv_2;
  wire out;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_ready_i_reg;
  wire s_ready_i_reg_0;

  design_1_auto_us_0_axi_register_slice_v2_1_26_axic_register_slice__parameterized3 \ar.ar_pipe 
       (.E(m_valid_i_reg_inv),
        .SR(SR),
        .\aresetn_d_reg[1]_0 (\aresetn_d_reg[1] ),
        .\aresetn_d_reg[1]_1 (\aresetn_d_reg[0] ),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .\m_payload_i_reg[70]_0 (\m_payload_i_reg[70] ),
        .\m_payload_i_reg[86]_0 (\m_payload_i_reg[86] ),
        .\m_payload_i_reg[86]_1 (\m_payload_i_reg[86]_0 ),
        .m_valid_i_reg_inv_0(m_valid_i_reg_inv_0),
        .m_valid_i_reg_inv_1(m_valid_i_reg_inv_1),
        .out(out),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_ready_i_reg_0(s_ready_i_reg_0));
  design_1_auto_us_0_axi_register_slice_v2_1_26_axic_register_slice__parameterized3_0 \aw.aw_pipe 
       (.D(D),
        .E(E),
        .Q(Q),
        .SR(SR),
        .\aresetn_d_reg[0]_0 (\aresetn_d_reg[0] ),
        .in(in),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_valid_i_reg_inv_0(m_valid_i_reg_inv_2),
        .m_valid_i_reg_inv_1(m_valid_i_reg_inv_1),
        .out(out),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_ready_i_reg_0(\aresetn_d_reg[1] ),
        .s_ready_i_reg_1(s_ready_i_reg));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_26_axic_register_slice" *) 
module design_1_auto_us_0_axi_register_slice_v2_1_26_axic_register_slice__parameterized2
   (s_ready_i_reg_0,
    m_valid_i_reg_0,
    m_valid_i_reg_1,
    \m_payload_i_reg[66]_0 ,
    Q,
    out,
    \USE_READ.rd_cmd_valid ,
    m_axi_rlast,
    m_axi_rresp,
    m_axi_rdata,
    s_axi_rready,
    p_13_in,
    m_axi_rvalid,
    m_valid_i_reg_2,
    s_ready_i_reg_1,
    \USE_RTL_LENGTH.first_mi_word_q ,
    E);
  output s_ready_i_reg_0;
  output m_valid_i_reg_0;
  output m_valid_i_reg_1;
  output \m_payload_i_reg[66]_0 ;
  output [65:0]Q;
  input out;
  input \USE_READ.rd_cmd_valid ;
  input m_axi_rlast;
  input [1:0]m_axi_rresp;
  input [63:0]m_axi_rdata;
  input s_axi_rready;
  input p_13_in;
  input m_axi_rvalid;
  input m_valid_i_reg_2;
  input s_ready_i_reg_1;
  input \USE_RTL_LENGTH.first_mi_word_q ;
  input [0:0]E;

  wire [0:0]E;
  wire M_AXI_RLAST;
  wire [65:0]Q;
  wire \USE_READ.rd_cmd_valid ;
  wire \USE_RTL_LENGTH.first_mi_word_q ;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire \m_payload_i_reg[66]_0 ;
  wire m_valid_i_i_1_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire m_valid_i_reg_2;
  wire out;
  wire p_13_in;
  wire s_axi_rready;
  wire s_ready_i_i_1_n_0;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire [66:0]skid_buffer;
  wire \skid_buffer_reg_n_0_[0] ;
  wire \skid_buffer_reg_n_0_[10] ;
  wire \skid_buffer_reg_n_0_[11] ;
  wire \skid_buffer_reg_n_0_[12] ;
  wire \skid_buffer_reg_n_0_[13] ;
  wire \skid_buffer_reg_n_0_[14] ;
  wire \skid_buffer_reg_n_0_[15] ;
  wire \skid_buffer_reg_n_0_[16] ;
  wire \skid_buffer_reg_n_0_[17] ;
  wire \skid_buffer_reg_n_0_[18] ;
  wire \skid_buffer_reg_n_0_[19] ;
  wire \skid_buffer_reg_n_0_[1] ;
  wire \skid_buffer_reg_n_0_[20] ;
  wire \skid_buffer_reg_n_0_[21] ;
  wire \skid_buffer_reg_n_0_[22] ;
  wire \skid_buffer_reg_n_0_[23] ;
  wire \skid_buffer_reg_n_0_[24] ;
  wire \skid_buffer_reg_n_0_[25] ;
  wire \skid_buffer_reg_n_0_[26] ;
  wire \skid_buffer_reg_n_0_[27] ;
  wire \skid_buffer_reg_n_0_[28] ;
  wire \skid_buffer_reg_n_0_[29] ;
  wire \skid_buffer_reg_n_0_[2] ;
  wire \skid_buffer_reg_n_0_[30] ;
  wire \skid_buffer_reg_n_0_[31] ;
  wire \skid_buffer_reg_n_0_[32] ;
  wire \skid_buffer_reg_n_0_[33] ;
  wire \skid_buffer_reg_n_0_[34] ;
  wire \skid_buffer_reg_n_0_[35] ;
  wire \skid_buffer_reg_n_0_[36] ;
  wire \skid_buffer_reg_n_0_[37] ;
  wire \skid_buffer_reg_n_0_[38] ;
  wire \skid_buffer_reg_n_0_[39] ;
  wire \skid_buffer_reg_n_0_[3] ;
  wire \skid_buffer_reg_n_0_[40] ;
  wire \skid_buffer_reg_n_0_[41] ;
  wire \skid_buffer_reg_n_0_[42] ;
  wire \skid_buffer_reg_n_0_[43] ;
  wire \skid_buffer_reg_n_0_[44] ;
  wire \skid_buffer_reg_n_0_[45] ;
  wire \skid_buffer_reg_n_0_[46] ;
  wire \skid_buffer_reg_n_0_[47] ;
  wire \skid_buffer_reg_n_0_[48] ;
  wire \skid_buffer_reg_n_0_[49] ;
  wire \skid_buffer_reg_n_0_[4] ;
  wire \skid_buffer_reg_n_0_[50] ;
  wire \skid_buffer_reg_n_0_[51] ;
  wire \skid_buffer_reg_n_0_[52] ;
  wire \skid_buffer_reg_n_0_[53] ;
  wire \skid_buffer_reg_n_0_[54] ;
  wire \skid_buffer_reg_n_0_[55] ;
  wire \skid_buffer_reg_n_0_[56] ;
  wire \skid_buffer_reg_n_0_[57] ;
  wire \skid_buffer_reg_n_0_[58] ;
  wire \skid_buffer_reg_n_0_[59] ;
  wire \skid_buffer_reg_n_0_[5] ;
  wire \skid_buffer_reg_n_0_[60] ;
  wire \skid_buffer_reg_n_0_[61] ;
  wire \skid_buffer_reg_n_0_[62] ;
  wire \skid_buffer_reg_n_0_[63] ;
  wire \skid_buffer_reg_n_0_[64] ;
  wire \skid_buffer_reg_n_0_[65] ;
  wire \skid_buffer_reg_n_0_[66] ;
  wire \skid_buffer_reg_n_0_[6] ;
  wire \skid_buffer_reg_n_0_[7] ;
  wire \skid_buffer_reg_n_0_[8] ;
  wire \skid_buffer_reg_n_0_[9] ;

  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \USE_RTL_LENGTH.first_mi_word_q_i_1__0 
       (.I0(M_AXI_RLAST),
        .I1(\USE_READ.rd_cmd_valid ),
        .I2(m_valid_i_reg_0),
        .I3(s_axi_rready),
        .I4(p_13_in),
        .I5(\USE_RTL_LENGTH.first_mi_word_q ),
        .O(\m_payload_i_reg[66]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \USE_RTL_LENGTH.length_counter_q[7]_i_4 
       (.I0(m_valid_i_reg_0),
        .I1(\USE_READ.rd_cmd_valid ),
        .O(m_valid_i_reg_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[0]_i_1 
       (.I0(m_axi_rdata[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[0] ),
        .O(skid_buffer[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[10]_i_1 
       (.I0(m_axi_rdata[10]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[10] ),
        .O(skid_buffer[10]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[11]_i_1 
       (.I0(m_axi_rdata[11]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[11] ),
        .O(skid_buffer[11]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[12]_i_1 
       (.I0(m_axi_rdata[12]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[12] ),
        .O(skid_buffer[12]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[13]_i_1 
       (.I0(m_axi_rdata[13]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[13] ),
        .O(skid_buffer[13]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[14]_i_1 
       (.I0(m_axi_rdata[14]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[14] ),
        .O(skid_buffer[14]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[15]_i_1 
       (.I0(m_axi_rdata[15]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[15] ),
        .O(skid_buffer[15]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[16]_i_1 
       (.I0(m_axi_rdata[16]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[16] ),
        .O(skid_buffer[16]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[17]_i_1 
       (.I0(m_axi_rdata[17]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[17] ),
        .O(skid_buffer[17]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[18]_i_1 
       (.I0(m_axi_rdata[18]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[18] ),
        .O(skid_buffer[18]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[19]_i_1 
       (.I0(m_axi_rdata[19]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[19] ),
        .O(skid_buffer[19]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[1]_i_1 
       (.I0(m_axi_rdata[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[1] ),
        .O(skid_buffer[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[20]_i_1 
       (.I0(m_axi_rdata[20]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[20] ),
        .O(skid_buffer[20]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[21]_i_1 
       (.I0(m_axi_rdata[21]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[21] ),
        .O(skid_buffer[21]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[22]_i_1 
       (.I0(m_axi_rdata[22]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[22] ),
        .O(skid_buffer[22]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[23]_i_1 
       (.I0(m_axi_rdata[23]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[23] ),
        .O(skid_buffer[23]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[24]_i_1 
       (.I0(m_axi_rdata[24]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[24] ),
        .O(skid_buffer[24]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[25]_i_1 
       (.I0(m_axi_rdata[25]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[25] ),
        .O(skid_buffer[25]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[26]_i_1 
       (.I0(m_axi_rdata[26]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[26] ),
        .O(skid_buffer[26]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[27]_i_1 
       (.I0(m_axi_rdata[27]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[27] ),
        .O(skid_buffer[27]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[28]_i_1 
       (.I0(m_axi_rdata[28]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[28] ),
        .O(skid_buffer[28]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[29]_i_1 
       (.I0(m_axi_rdata[29]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[29] ),
        .O(skid_buffer[29]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[2]_i_1 
       (.I0(m_axi_rdata[2]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[2] ),
        .O(skid_buffer[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[30]_i_1 
       (.I0(m_axi_rdata[30]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[30] ),
        .O(skid_buffer[30]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[31]_i_1 
       (.I0(m_axi_rdata[31]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[31] ),
        .O(skid_buffer[31]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[32]_i_1 
       (.I0(m_axi_rdata[32]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[32] ),
        .O(skid_buffer[32]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[33]_i_1 
       (.I0(m_axi_rdata[33]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[33] ),
        .O(skid_buffer[33]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[34]_i_1 
       (.I0(m_axi_rdata[34]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[34] ),
        .O(skid_buffer[34]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[35]_i_1 
       (.I0(m_axi_rdata[35]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[35] ),
        .O(skid_buffer[35]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[36]_i_1 
       (.I0(m_axi_rdata[36]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[36] ),
        .O(skid_buffer[36]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[37]_i_1 
       (.I0(m_axi_rdata[37]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[37] ),
        .O(skid_buffer[37]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[38]_i_1 
       (.I0(m_axi_rdata[38]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[38] ),
        .O(skid_buffer[38]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[39]_i_1 
       (.I0(m_axi_rdata[39]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[39] ),
        .O(skid_buffer[39]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[3]_i_1 
       (.I0(m_axi_rdata[3]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[3] ),
        .O(skid_buffer[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[40]_i_1 
       (.I0(m_axi_rdata[40]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[40] ),
        .O(skid_buffer[40]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[41]_i_1 
       (.I0(m_axi_rdata[41]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[41] ),
        .O(skid_buffer[41]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[42]_i_1 
       (.I0(m_axi_rdata[42]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[42] ),
        .O(skid_buffer[42]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[43]_i_1 
       (.I0(m_axi_rdata[43]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[43] ),
        .O(skid_buffer[43]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[44]_i_1 
       (.I0(m_axi_rdata[44]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[44] ),
        .O(skid_buffer[44]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[45]_i_1 
       (.I0(m_axi_rdata[45]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[45] ),
        .O(skid_buffer[45]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[46]_i_1 
       (.I0(m_axi_rdata[46]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[46] ),
        .O(skid_buffer[46]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[47]_i_1 
       (.I0(m_axi_rdata[47]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[47] ),
        .O(skid_buffer[47]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[48]_i_1 
       (.I0(m_axi_rdata[48]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[48] ),
        .O(skid_buffer[48]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[49]_i_1 
       (.I0(m_axi_rdata[49]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[49] ),
        .O(skid_buffer[49]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[4]_i_1 
       (.I0(m_axi_rdata[4]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[4] ),
        .O(skid_buffer[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[50]_i_1 
       (.I0(m_axi_rdata[50]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[50] ),
        .O(skid_buffer[50]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[51]_i_1 
       (.I0(m_axi_rdata[51]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[51] ),
        .O(skid_buffer[51]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[52]_i_1 
       (.I0(m_axi_rdata[52]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[52] ),
        .O(skid_buffer[52]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[53]_i_1 
       (.I0(m_axi_rdata[53]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[53] ),
        .O(skid_buffer[53]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[54]_i_1 
       (.I0(m_axi_rdata[54]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[54] ),
        .O(skid_buffer[54]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[55]_i_1 
       (.I0(m_axi_rdata[55]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[55] ),
        .O(skid_buffer[55]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[56]_i_1 
       (.I0(m_axi_rdata[56]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[56] ),
        .O(skid_buffer[56]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[57]_i_1 
       (.I0(m_axi_rdata[57]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[57] ),
        .O(skid_buffer[57]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[58]_i_1 
       (.I0(m_axi_rdata[58]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[58] ),
        .O(skid_buffer[58]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[59]_i_1 
       (.I0(m_axi_rdata[59]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[59] ),
        .O(skid_buffer[59]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[5]_i_1 
       (.I0(m_axi_rdata[5]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[5] ),
        .O(skid_buffer[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[60]_i_1 
       (.I0(m_axi_rdata[60]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[60] ),
        .O(skid_buffer[60]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[61]_i_1 
       (.I0(m_axi_rdata[61]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[61] ),
        .O(skid_buffer[61]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[62]_i_1 
       (.I0(m_axi_rdata[62]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[62] ),
        .O(skid_buffer[62]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[63]_i_1 
       (.I0(m_axi_rdata[63]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[63] ),
        .O(skid_buffer[63]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[64]_i_1 
       (.I0(m_axi_rresp[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[64] ),
        .O(skid_buffer[64]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[65]_i_1 
       (.I0(m_axi_rresp[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[65] ),
        .O(skid_buffer[65]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[66]_i_2 
       (.I0(m_axi_rlast),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[66] ),
        .O(skid_buffer[66]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[6]_i_1 
       (.I0(m_axi_rdata[6]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[6] ),
        .O(skid_buffer[6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[7]_i_1 
       (.I0(m_axi_rdata[7]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[7] ),
        .O(skid_buffer[7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[8]_i_1 
       (.I0(m_axi_rdata[8]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[8] ),
        .O(skid_buffer[8]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[9]_i_1 
       (.I0(m_axi_rdata[9]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[9] ),
        .O(skid_buffer[9]));
  FDRE \m_payload_i_reg[0] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[32]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[33]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[34]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[35]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[36]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE \m_payload_i_reg[37] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[37]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE \m_payload_i_reg[38] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[38]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE \m_payload_i_reg[39] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[39]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[40] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[40]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE \m_payload_i_reg[41] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[41]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE \m_payload_i_reg[42] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[42]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE \m_payload_i_reg[43] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[43]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE \m_payload_i_reg[44] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[44]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE \m_payload_i_reg[45] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[45]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE \m_payload_i_reg[46] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[46]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE \m_payload_i_reg[47] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[47]),
        .Q(Q[47]),
        .R(1'b0));
  FDRE \m_payload_i_reg[48] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[48]),
        .Q(Q[48]),
        .R(1'b0));
  FDRE \m_payload_i_reg[49] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[49]),
        .Q(Q[49]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[50] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[50]),
        .Q(Q[50]),
        .R(1'b0));
  FDRE \m_payload_i_reg[51] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[51]),
        .Q(Q[51]),
        .R(1'b0));
  FDRE \m_payload_i_reg[52] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[52]),
        .Q(Q[52]),
        .R(1'b0));
  FDRE \m_payload_i_reg[53] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[53]),
        .Q(Q[53]),
        .R(1'b0));
  FDRE \m_payload_i_reg[54] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[54]),
        .Q(Q[54]),
        .R(1'b0));
  FDRE \m_payload_i_reg[55] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[55]),
        .Q(Q[55]),
        .R(1'b0));
  FDRE \m_payload_i_reg[56] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[56]),
        .Q(Q[56]),
        .R(1'b0));
  FDRE \m_payload_i_reg[57] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[57]),
        .Q(Q[57]),
        .R(1'b0));
  FDRE \m_payload_i_reg[58] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[58]),
        .Q(Q[58]),
        .R(1'b0));
  FDRE \m_payload_i_reg[59] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[59]),
        .Q(Q[59]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[60] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[60]),
        .Q(Q[60]),
        .R(1'b0));
  FDRE \m_payload_i_reg[61] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[61]),
        .Q(Q[61]),
        .R(1'b0));
  FDRE \m_payload_i_reg[62] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[62]),
        .Q(Q[62]),
        .R(1'b0));
  FDRE \m_payload_i_reg[63] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[63]),
        .Q(Q[63]),
        .R(1'b0));
  FDRE \m_payload_i_reg[64] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[64]),
        .Q(Q[64]),
        .R(1'b0));
  FDRE \m_payload_i_reg[65] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[65]),
        .Q(Q[65]),
        .R(1'b0));
  FDRE \m_payload_i_reg[66] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[66]),
        .Q(M_AXI_RLAST),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(out),
        .CE(E),
        .D(skid_buffer[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF70FFFF00000000)) 
    m_valid_i_i_1
       (.I0(s_axi_rready),
        .I1(p_13_in),
        .I2(m_valid_i_reg_0),
        .I3(m_axi_rvalid),
        .I4(s_ready_i_reg_0),
        .I5(m_valid_i_reg_2),
        .O(m_valid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(out),
        .CE(1'b1),
        .D(m_valid_i_i_1_n_0),
        .Q(m_valid_i_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF444FFFF00000000)) 
    s_ready_i_i_1
       (.I0(m_axi_rvalid),
        .I1(s_ready_i_reg_0),
        .I2(s_axi_rready),
        .I3(p_13_in),
        .I4(m_valid_i_reg_0),
        .I5(s_ready_i_reg_1),
        .O(s_ready_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(out),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(s_ready_i_reg_0),
        .R(1'b0));
  FDRE \skid_buffer_reg[0] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[0]),
        .Q(\skid_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[10] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[10]),
        .Q(\skid_buffer_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[11] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[11]),
        .Q(\skid_buffer_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[12] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[12]),
        .Q(\skid_buffer_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[13] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[13]),
        .Q(\skid_buffer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[14] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[14]),
        .Q(\skid_buffer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[15] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[15]),
        .Q(\skid_buffer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[16] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[16]),
        .Q(\skid_buffer_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[17] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[17]),
        .Q(\skid_buffer_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[18] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[18]),
        .Q(\skid_buffer_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[19] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[19]),
        .Q(\skid_buffer_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[1] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[1]),
        .Q(\skid_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[20] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[20]),
        .Q(\skid_buffer_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[21] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[21]),
        .Q(\skid_buffer_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[22] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[22]),
        .Q(\skid_buffer_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[23] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[23]),
        .Q(\skid_buffer_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[24] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[24]),
        .Q(\skid_buffer_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[25] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[25]),
        .Q(\skid_buffer_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[26] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[26]),
        .Q(\skid_buffer_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[27] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[27]),
        .Q(\skid_buffer_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[28] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[28]),
        .Q(\skid_buffer_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[29] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[29]),
        .Q(\skid_buffer_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[2] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[2]),
        .Q(\skid_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[30] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[30]),
        .Q(\skid_buffer_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[31] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[31]),
        .Q(\skid_buffer_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[32] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[32]),
        .Q(\skid_buffer_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[33] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[33]),
        .Q(\skid_buffer_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[34] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[34]),
        .Q(\skid_buffer_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[35] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[35]),
        .Q(\skid_buffer_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[36] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[36]),
        .Q(\skid_buffer_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[37] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[37]),
        .Q(\skid_buffer_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[38] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[38]),
        .Q(\skid_buffer_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[39] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[39]),
        .Q(\skid_buffer_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[3] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[3]),
        .Q(\skid_buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[40] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[40]),
        .Q(\skid_buffer_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[41] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[41]),
        .Q(\skid_buffer_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[42] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[42]),
        .Q(\skid_buffer_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[43] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[43]),
        .Q(\skid_buffer_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[44] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[44]),
        .Q(\skid_buffer_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[45] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[45]),
        .Q(\skid_buffer_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[46] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[46]),
        .Q(\skid_buffer_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[47] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[47]),
        .Q(\skid_buffer_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[48] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[48]),
        .Q(\skid_buffer_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[49] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[49]),
        .Q(\skid_buffer_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[4] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[4]),
        .Q(\skid_buffer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[50] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[50]),
        .Q(\skid_buffer_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[51] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[51]),
        .Q(\skid_buffer_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[52] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[52]),
        .Q(\skid_buffer_reg_n_0_[52] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[53] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[53]),
        .Q(\skid_buffer_reg_n_0_[53] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[54] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[54]),
        .Q(\skid_buffer_reg_n_0_[54] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[55] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[55]),
        .Q(\skid_buffer_reg_n_0_[55] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[56] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[56]),
        .Q(\skid_buffer_reg_n_0_[56] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[57] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[57]),
        .Q(\skid_buffer_reg_n_0_[57] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[58] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[58]),
        .Q(\skid_buffer_reg_n_0_[58] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[59] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[59]),
        .Q(\skid_buffer_reg_n_0_[59] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[5] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[5]),
        .Q(\skid_buffer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[60] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[60]),
        .Q(\skid_buffer_reg_n_0_[60] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[61] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[61]),
        .Q(\skid_buffer_reg_n_0_[61] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[62] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[62]),
        .Q(\skid_buffer_reg_n_0_[62] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[63] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[63]),
        .Q(\skid_buffer_reg_n_0_[63] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[64] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rresp[0]),
        .Q(\skid_buffer_reg_n_0_[64] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[65] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rresp[1]),
        .Q(\skid_buffer_reg_n_0_[65] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[66] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rlast),
        .Q(\skid_buffer_reg_n_0_[66] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[6] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[6]),
        .Q(\skid_buffer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[7] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[7]),
        .Q(\skid_buffer_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[8] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[8]),
        .Q(\skid_buffer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[9] 
       (.C(out),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[9]),
        .Q(\skid_buffer_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_26_axic_register_slice" *) 
module design_1_auto_us_0_axi_register_slice_v2_1_26_axic_register_slice__parameterized3
   (\aresetn_d_reg[1]_0 ,
    E,
    \m_payload_i_reg[70]_0 ,
    m_axi_arburst,
    m_axi_araddr,
    s_axi_arready,
    \m_payload_i_reg[86]_0 ,
    m_axi_arsize,
    SR,
    \aresetn_d_reg[1]_1 ,
    out,
    m_valid_i_reg_inv_0,
    m_axi_arready,
    m_valid_i_reg_inv_1,
    s_axi_arvalid,
    \m_payload_i_reg[86]_1 ,
    s_ready_i_reg_0);
  output \aresetn_d_reg[1]_0 ;
  output [0:0]E;
  output [23:0]\m_payload_i_reg[70]_0 ;
  output [1:0]m_axi_arburst;
  output [63:0]m_axi_araddr;
  output s_axi_arready;
  output [12:0]\m_payload_i_reg[86]_0 ;
  output [2:0]m_axi_arsize;
  input [0:0]SR;
  input \aresetn_d_reg[1]_1 ;
  input out;
  input m_valid_i_reg_inv_0;
  input m_axi_arready;
  input m_valid_i_reg_inv_1;
  input s_axi_arvalid;
  input [85:0]\m_payload_i_reg[86]_1 ;
  input s_ready_i_reg_0;

  wire [0:0]E;
  wire [0:0]SR;
  wire \USE_RTL_FIFO.data_srl_reg[31][18]_srl32_i_2_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_2__0_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_3_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][24]_srl32_i_2_n_0 ;
  wire \aresetn_d_reg[1]_0 ;
  wire \aresetn_d_reg[1]_1 ;
  wire [63:0]m_axi_araddr;
  wire \m_axi_araddr[1]_INST_0_i_1_n_0 ;
  wire \m_axi_araddr[2]_INST_0_i_1_n_0 ;
  wire \m_axi_araddr[2]_INST_0_i_3_n_0 ;
  wire \m_axi_araddr[2]_INST_0_i_5_n_0 ;
  wire \m_axi_araddr[2]_INST_0_i_6_n_0 ;
  wire \m_axi_araddr[2]_INST_0_i_7_n_0 ;
  wire \m_axi_araddr[2]_INST_0_i_8_n_0 ;
  wire [1:0]m_axi_arburst;
  wire \m_axi_arlen[0]_INST_0_i_1_n_0 ;
  wire \m_axi_arlen[1]_INST_0_i_1_n_0 ;
  wire \m_axi_arlen[1]_INST_0_i_2_n_0 ;
  wire \m_axi_arlen[1]_INST_0_i_3_n_0 ;
  wire \m_axi_arlen[3]_INST_0_i_10_n_0 ;
  wire \m_axi_arlen[3]_INST_0_i_1_n_0 ;
  wire \m_axi_arlen[3]_INST_0_i_2_n_0 ;
  wire \m_axi_arlen[3]_INST_0_i_3_n_0 ;
  wire \m_axi_arlen[3]_INST_0_i_4_n_0 ;
  wire \m_axi_arlen[3]_INST_0_i_5_n_0 ;
  wire \m_axi_arlen[3]_INST_0_i_6_n_0 ;
  wire \m_axi_arlen[3]_INST_0_i_7_n_0 ;
  wire \m_axi_arlen[3]_INST_0_i_8_n_0 ;
  wire \m_axi_arlen[3]_INST_0_i_9_n_0 ;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire [23:0]\m_payload_i_reg[70]_0 ;
  wire [12:0]\m_payload_i_reg[86]_0 ;
  wire [85:0]\m_payload_i_reg[86]_1 ;
  wire m_valid_i_inv_i_1_n_0;
  wire m_valid_i_reg_inv_0;
  wire m_valid_i_reg_inv_1;
  wire out;
  wire [3:0]s_axi_arlen_ii;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_ready_i_i_1_n_0;
  wire s_ready_i_reg_0;
  wire [2:0]sr_araddr;
  wire [1:0]sr_arburst;
  wire [2:0]sr_arsize;

  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \USE_RTL_FIFO.data_srl_reg[31][10]_srl32_i_1 
       (.I0(sr_arsize[1]),
        .I1(sr_arsize[2]),
        .I2(sr_arsize[0]),
        .O(\m_payload_i_reg[70]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hFFFBFBFB)) 
    \USE_RTL_FIFO.data_srl_reg[31][11]_srl32_i_1 
       (.I0(sr_arburst[0]),
        .I1(sr_arburst[1]),
        .I2(\m_axi_araddr[2]_INST_0_i_5_n_0 ),
        .I3(\m_payload_i_reg[70]_0 [4]),
        .I4(s_axi_arlen_ii[0]),
        .O(\m_payload_i_reg[70]_0 [7]));
  LUT6 #(
    .INIT(64'h03020002FFFFFFFF)) 
    \USE_RTL_FIFO.data_srl_reg[31][12]_srl32_i_1__0 
       (.I0(s_axi_arlen_ii[1]),
        .I1(sr_arsize[1]),
        .I2(sr_arsize[2]),
        .I3(sr_arsize[0]),
        .I4(s_axi_arlen_ii[0]),
        .I5(\m_axi_araddr[2]_INST_0_i_1_n_0 ),
        .O(\m_payload_i_reg[70]_0 [8]));
  LUT1 #(
    .INIT(2'h1)) 
    \USE_RTL_FIFO.data_srl_reg[31][13]_srl32_i_1__0 
       (.I0(\m_axi_araddr[2]_INST_0_i_3_n_0 ),
        .O(\m_payload_i_reg[70]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \USE_RTL_FIFO.data_srl_reg[31][16]_srl32_i_1__0 
       (.I0(\m_axi_araddr[2]_INST_0_i_3_n_0 ),
        .I1(sr_araddr[2]),
        .O(\m_payload_i_reg[70]_0 [10]));
  LUT6 #(
    .INIT(64'h520052005200A200)) 
    \USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_1__0 
       (.I0(sr_araddr[0]),
        .I1(\m_axi_araddr[2]_INST_0_i_1_n_0 ),
        .I2(s_axi_arlen_ii[0]),
        .I3(\m_payload_i_reg[70]_0 [4]),
        .I4(sr_arburst[0]),
        .I5(sr_arburst[1]),
        .O(\m_payload_i_reg[70]_0 [11]));
  LUT6 #(
    .INIT(64'h00000000A95556AA)) 
    \USE_RTL_FIFO.data_srl_reg[31][18]_srl32_i_1__0 
       (.I0(sr_araddr[1]),
        .I1(sr_arburst[0]),
        .I2(sr_arburst[1]),
        .I3(\m_axi_araddr[1]_INST_0_i_1_n_0 ),
        .I4(\m_axi_arlen[3]_INST_0_i_5_n_0 ),
        .I5(\USE_RTL_FIFO.data_srl_reg[31][18]_srl32_i_2_n_0 ),
        .O(\m_payload_i_reg[70]_0 [12]));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEFEEEE)) 
    \USE_RTL_FIFO.data_srl_reg[31][18]_srl32_i_2 
       (.I0(sr_arsize[1]),
        .I1(sr_arsize[2]),
        .I2(\m_axi_araddr[1]_INST_0_i_1_n_0 ),
        .I3(\m_axi_araddr[2]_INST_0_i_5_n_0 ),
        .I4(sr_arburst[1]),
        .I5(sr_arburst[0]),
        .O(\USE_RTL_FIFO.data_srl_reg[31][18]_srl32_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h0906)) 
    \USE_RTL_FIFO.data_srl_reg[31][19]_srl32_i_1__0 
       (.I0(\m_axi_arlen[1]_INST_0_i_1_n_0 ),
        .I1(sr_araddr[2]),
        .I2(\m_axi_araddr[2]_INST_0_i_3_n_0 ),
        .I3(\m_axi_arlen[1]_INST_0_i_2_n_0 ),
        .O(\m_payload_i_reg[70]_0 [13]));
  LUT6 #(
    .INIT(64'h0000000000030001)) 
    \USE_RTL_FIFO.data_srl_reg[31][20]_srl32_i_1__0 
       (.I0(\m_axi_araddr[2]_INST_0_i_1_n_0 ),
        .I1(sr_arsize[0]),
        .I2(sr_arsize[1]),
        .I3(sr_arsize[2]),
        .I4(s_axi_arlen_ii[0]),
        .I5(sr_araddr[0]),
        .O(\m_payload_i_reg[70]_0 [14]));
  LUT6 #(
    .INIT(64'h5555550100000054)) 
    \USE_RTL_FIFO.data_srl_reg[31][21]_srl32_i_1__0 
       (.I0(\USE_RTL_FIFO.data_srl_reg[31][18]_srl32_i_2_n_0 ),
        .I1(sr_araddr[0]),
        .I2(sr_arsize[0]),
        .I3(sr_arsize[2]),
        .I4(sr_arsize[1]),
        .I5(sr_araddr[1]),
        .O(\m_payload_i_reg[70]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h00009699)) 
    \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_1__0 
       (.I0(sr_araddr[2]),
        .I1(\USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_2__0_n_0 ),
        .I2(\USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_3_n_0 ),
        .I3(sr_araddr[1]),
        .I4(\m_axi_araddr[2]_INST_0_i_3_n_0 ),
        .O(\m_payload_i_reg[70]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_2__0 
       (.I0(sr_arsize[0]),
        .I1(sr_arsize[2]),
        .I2(sr_arsize[1]),
        .O(\USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hFFF1)) 
    \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_3 
       (.I0(sr_araddr[0]),
        .I1(sr_arsize[0]),
        .I2(sr_arsize[2]),
        .I3(sr_arsize[1]),
        .O(\USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFEF000000000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][23]_srl32_i_1__0 
       (.I0(s_axi_arlen_ii[0]),
        .I1(\m_axi_araddr[2]_INST_0_i_5_n_0 ),
        .I2(sr_arburst[1]),
        .I3(sr_arburst[0]),
        .I4(\m_payload_i_reg[70]_0 [4]),
        .I5(sr_araddr[0]),
        .O(\m_payload_i_reg[70]_0 [17]));
  LUT6 #(
    .INIT(64'h00000000AAAAAA8A)) 
    \USE_RTL_FIFO.data_srl_reg[31][24]_srl32_i_1__0 
       (.I0(sr_araddr[1]),
        .I1(sr_arburst[0]),
        .I2(sr_arburst[1]),
        .I3(\m_axi_araddr[2]_INST_0_i_5_n_0 ),
        .I4(\m_axi_araddr[1]_INST_0_i_1_n_0 ),
        .I5(\USE_RTL_FIFO.data_srl_reg[31][24]_srl32_i_2_n_0 ),
        .O(\m_payload_i_reg[70]_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \USE_RTL_FIFO.data_srl_reg[31][24]_srl32_i_2 
       (.I0(sr_arsize[2]),
        .I1(sr_arsize[1]),
        .O(\USE_RTL_FIFO.data_srl_reg[31][24]_srl32_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \USE_RTL_FIFO.data_srl_reg[31][25]_srl32_i_1__0 
       (.I0(sr_araddr[2]),
        .I1(\m_axi_araddr[2]_INST_0_i_3_n_0 ),
        .O(\m_payload_i_reg[70]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \USE_RTL_FIFO.data_srl_reg[31][27]_srl32_i_1__0 
       (.I0(\m_axi_araddr[2]_INST_0_i_1_n_0 ),
        .I1(\m_payload_i_reg[70]_0 [22]),
        .O(\m_payload_i_reg[70]_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \USE_RTL_FIFO.data_srl_reg[31][29]_srl32_i_1__0 
       (.I0(sr_arburst[0]),
        .I1(sr_arburst[1]),
        .O(\m_payload_i_reg[70]_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \USE_RTL_FIFO.data_srl_reg[31][9]_srl32_i_1__0 
       (.I0(sr_arsize[0]),
        .I1(sr_arsize[2]),
        .I2(sr_arsize[1]),
        .O(\m_payload_i_reg[70]_0 [5]));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(out),
        .CE(1'b1),
        .D(\aresetn_d_reg[1]_1 ),
        .Q(\aresetn_d_reg[1]_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'h2AAA22222AAAAAAA)) 
    \m_axi_araddr[0]_INST_0 
       (.I0(sr_araddr[0]),
        .I1(\m_payload_i_reg[70]_0 [22]),
        .I2(s_axi_arlen_ii[0]),
        .I3(\m_payload_i_reg[70]_0 [4]),
        .I4(\m_axi_araddr[2]_INST_0_i_1_n_0 ),
        .I5(\m_payload_i_reg[70]_0 [20]),
        .O(m_axi_araddr[0]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \m_axi_araddr[0]_INST_0_i_1 
       (.I0(sr_arsize[0]),
        .I1(sr_arsize[1]),
        .I2(sr_arsize[2]),
        .O(\m_payload_i_reg[70]_0 [4]));
  LUT5 #(
    .INIT(32'h20AA2AAA)) 
    \m_axi_araddr[1]_INST_0 
       (.I0(sr_araddr[1]),
        .I1(\m_axi_araddr[1]_INST_0_i_1_n_0 ),
        .I2(\m_axi_araddr[2]_INST_0_i_1_n_0 ),
        .I3(\m_payload_i_reg[70]_0 [22]),
        .I4(\m_payload_i_reg[70]_0 [20]),
        .O(m_axi_araddr[1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h03020002)) 
    \m_axi_araddr[1]_INST_0_i_1 
       (.I0(s_axi_arlen_ii[1]),
        .I1(sr_arsize[1]),
        .I2(sr_arsize[2]),
        .I3(sr_arsize[0]),
        .I4(s_axi_arlen_ii[0]),
        .O(\m_axi_araddr[1]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h8000F700)) 
    \m_axi_araddr[2]_INST_0 
       (.I0(\m_axi_araddr[2]_INST_0_i_1_n_0 ),
        .I1(\m_payload_i_reg[70]_0 [22]),
        .I2(\m_axi_araddr[2]_INST_0_i_3_n_0 ),
        .I3(sr_araddr[2]),
        .I4(\m_payload_i_reg[70]_0 [20]),
        .O(m_axi_araddr[2]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \m_axi_araddr[2]_INST_0_i_1 
       (.I0(\m_axi_araddr[2]_INST_0_i_5_n_0 ),
        .I1(sr_arburst[1]),
        .I2(sr_arburst[0]),
        .O(\m_axi_araddr[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
    \m_axi_araddr[2]_INST_0_i_2 
       (.I0(s_axi_arlen_ii[2]),
        .I1(s_axi_arlen_ii[3]),
        .I2(s_axi_arlen_ii[1]),
        .I3(s_axi_arlen_ii[0]),
        .I4(\m_payload_i_reg[86]_0 [4]),
        .I5(\m_payload_i_reg[70]_0 [23]),
        .O(\m_payload_i_reg[70]_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \m_axi_araddr[2]_INST_0_i_3 
       (.I0(sr_arburst[0]),
        .I1(sr_arburst[1]),
        .I2(\m_axi_araddr[2]_INST_0_i_5_n_0 ),
        .I3(\m_axi_araddr[2]_INST_0_i_6_n_0 ),
        .O(\m_axi_araddr[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA800000000)) 
    \m_axi_araddr[2]_INST_0_i_4 
       (.I0(\m_axi_araddr[2]_INST_0_i_5_n_0 ),
        .I1(sr_araddr[2]),
        .I2(sr_araddr[1]),
        .I3(sr_araddr[0]),
        .I4(\m_axi_araddr[2]_INST_0_i_7_n_0 ),
        .I5(\m_payload_i_reg[70]_0 [22]),
        .O(\m_payload_i_reg[70]_0 [20]));
  LUT6 #(
    .INIT(64'hFFFFAAA8FFFFFFFF)) 
    \m_axi_araddr[2]_INST_0_i_5 
       (.I0(s_axi_arlen_ii[2]),
        .I1(sr_arsize[2]),
        .I2(sr_arsize[1]),
        .I3(sr_arsize[0]),
        .I4(s_axi_arlen_ii[3]),
        .I5(\m_axi_araddr[2]_INST_0_i_8_n_0 ),
        .O(\m_axi_araddr[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000F00CA000000CA)) 
    \m_axi_araddr[2]_INST_0_i_6 
       (.I0(s_axi_arlen_ii[2]),
        .I1(s_axi_arlen_ii[0]),
        .I2(sr_arsize[1]),
        .I3(sr_arsize[2]),
        .I4(sr_arsize[0]),
        .I5(s_axi_arlen_ii[1]),
        .O(\m_axi_araddr[2]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \m_axi_araddr[2]_INST_0_i_7 
       (.I0(sr_arburst[0]),
        .I1(sr_arburst[1]),
        .O(\m_axi_araddr[2]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h0505373F)) 
    \m_axi_araddr[2]_INST_0_i_8 
       (.I0(sr_arsize[1]),
        .I1(s_axi_arlen_ii[0]),
        .I2(sr_arsize[2]),
        .I3(sr_arsize[0]),
        .I4(s_axi_arlen_ii[1]),
        .O(\m_axi_araddr[2]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \m_axi_arburst[0]_INST_0 
       (.I0(\m_axi_araddr[2]_INST_0_i_1_n_0 ),
        .I1(\m_payload_i_reg[70]_0 [22]),
        .I2(sr_arburst[0]),
        .O(m_axi_arburst[0]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \m_axi_arburst[1]_INST_0 
       (.I0(\m_axi_araddr[2]_INST_0_i_1_n_0 ),
        .I1(\m_payload_i_reg[70]_0 [22]),
        .I2(sr_arburst[1]),
        .O(m_axi_arburst[1]));
  LUT6 #(
    .INIT(64'hAAAA6566AAAA66AA)) 
    \m_axi_arlen[0]_INST_0 
       (.I0(\m_axi_arlen[3]_INST_0_i_3_n_0 ),
        .I1(\m_axi_arlen[1]_INST_0_i_2_n_0 ),
        .I2(\m_axi_araddr[2]_INST_0_i_3_n_0 ),
        .I3(sr_araddr[2]),
        .I4(\m_axi_arlen[0]_INST_0_i_1_n_0 ),
        .I5(\m_axi_arlen[1]_INST_0_i_1_n_0 ),
        .O(\m_payload_i_reg[70]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \m_axi_arlen[0]_INST_0_i_1 
       (.I0(\m_payload_i_reg[70]_0 [22]),
        .I1(sr_arburst[1]),
        .I2(sr_arburst[0]),
        .O(\m_axi_arlen[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00EA0000FF15FFFF)) 
    \m_axi_arlen[1]_INST_0 
       (.I0(\m_axi_arlen[1]_INST_0_i_1_n_0 ),
        .I1(\m_axi_arlen[1]_INST_0_i_2_n_0 ),
        .I2(sr_araddr[2]),
        .I3(\m_axi_arlen[1]_INST_0_i_3_n_0 ),
        .I4(\m_axi_arlen[3]_INST_0_i_3_n_0 ),
        .I5(\m_axi_arlen[3]_INST_0_i_4_n_0 ),
        .O(\m_payload_i_reg[70]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hE8E8E888)) 
    \m_axi_arlen[1]_INST_0_i_1 
       (.I0(\m_payload_i_reg[70]_0 [18]),
        .I1(\m_axi_arlen[3]_INST_0_i_5_n_0 ),
        .I2(\m_axi_araddr[1]_INST_0_i_1_n_0 ),
        .I3(sr_arburst[1]),
        .I4(sr_arburst[0]),
        .O(\m_axi_arlen[1]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \m_axi_arlen[1]_INST_0_i_2 
       (.I0(\m_axi_araddr[2]_INST_0_i_6_n_0 ),
        .I1(sr_arburst[1]),
        .I2(sr_arburst[0]),
        .O(\m_axi_arlen[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF45FFFFFFFFFF)) 
    \m_axi_arlen[1]_INST_0_i_3 
       (.I0(\m_axi_arlen[1]_INST_0_i_2_n_0 ),
        .I1(\m_axi_araddr[2]_INST_0_i_3_n_0 ),
        .I2(sr_araddr[2]),
        .I3(sr_arburst[0]),
        .I4(sr_arburst[1]),
        .I5(\m_payload_i_reg[70]_0 [22]),
        .O(\m_axi_arlen[1]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h40BF)) 
    \m_axi_arlen[2]_INST_0 
       (.I0(\m_axi_arlen[3]_INST_0_i_4_n_0 ),
        .I1(\m_axi_arlen[3]_INST_0_i_3_n_0 ),
        .I2(\m_axi_arlen[3]_INST_0_i_2_n_0 ),
        .I3(\m_axi_arlen[3]_INST_0_i_1_n_0 ),
        .O(\m_payload_i_reg[70]_0 [2]));
  LUT6 #(
    .INIT(64'h0040FFFF00400040)) 
    \m_axi_arlen[3]_INST_0 
       (.I0(\m_axi_arlen[3]_INST_0_i_1_n_0 ),
        .I1(\m_axi_arlen[3]_INST_0_i_2_n_0 ),
        .I2(\m_axi_arlen[3]_INST_0_i_3_n_0 ),
        .I3(\m_axi_arlen[3]_INST_0_i_4_n_0 ),
        .I4(\m_payload_i_reg[70]_0 [22]),
        .I5(s_axi_arlen_ii[3]),
        .O(\m_payload_i_reg[70]_0 [3]));
  LUT6 #(
    .INIT(64'hFDFF0000FDFFFFFF)) 
    \m_axi_arlen[3]_INST_0_i_1 
       (.I0(sr_arsize[1]),
        .I1(sr_arsize[2]),
        .I2(sr_arsize[0]),
        .I3(s_axi_arlen_ii[3]),
        .I4(\m_payload_i_reg[70]_0 [22]),
        .I5(s_axi_arlen_ii[2]),
        .O(\m_axi_arlen[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hFCF7FFF7)) 
    \m_axi_arlen[3]_INST_0_i_10 
       (.I0(s_axi_arlen_ii[2]),
        .I1(sr_arsize[1]),
        .I2(sr_arsize[2]),
        .I3(sr_arsize[0]),
        .I4(s_axi_arlen_ii[3]),
        .O(\m_axi_arlen[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFE8)) 
    \m_axi_arlen[3]_INST_0_i_2 
       (.I0(\m_payload_i_reg[70]_0 [18]),
        .I1(\m_axi_arlen[3]_INST_0_i_5_n_0 ),
        .I2(\m_axi_arlen[3]_INST_0_i_6_n_0 ),
        .I3(\m_axi_arlen[3]_INST_0_i_7_n_0 ),
        .I4(\m_axi_arlen[0]_INST_0_i_1_n_0 ),
        .I5(\m_axi_arlen[3]_INST_0_i_8_n_0 ),
        .O(\m_axi_arlen[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_arlen[3]_INST_0_i_3 
       (.I0(\m_axi_arlen[3]_INST_0_i_9_n_0 ),
        .I1(\m_payload_i_reg[70]_0 [22]),
        .I2(s_axi_arlen_ii[0]),
        .O(\m_axi_arlen[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE0FF0000E0FFE0FF)) 
    \m_axi_arlen[3]_INST_0_i_4 
       (.I0(sr_arburst[1]),
        .I1(sr_arburst[0]),
        .I2(\m_payload_i_reg[86]_0 [4]),
        .I3(s_axi_arlen_ii[1]),
        .I4(\m_axi_arlen[3]_INST_0_i_10_n_0 ),
        .I5(\m_payload_i_reg[70]_0 [22]),
        .O(\m_axi_arlen[3]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h80808000)) 
    \m_axi_arlen[3]_INST_0_i_5 
       (.I0(sr_araddr[0]),
        .I1(s_axi_arlen_ii[0]),
        .I2(\m_payload_i_reg[70]_0 [4]),
        .I3(sr_arburst[0]),
        .I4(sr_arburst[1]),
        .O(\m_axi_arlen[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000B0008)) 
    \m_axi_arlen[3]_INST_0_i_6 
       (.I0(s_axi_arlen_ii[0]),
        .I1(sr_arsize[0]),
        .I2(sr_arsize[2]),
        .I3(sr_arsize[1]),
        .I4(s_axi_arlen_ii[1]),
        .I5(\m_payload_i_reg[70]_0 [23]),
        .O(\m_axi_arlen[3]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \m_axi_arlen[3]_INST_0_i_7 
       (.I0(sr_arburst[0]),
        .I1(sr_arburst[1]),
        .I2(\m_axi_araddr[2]_INST_0_i_6_n_0 ),
        .I3(sr_araddr[2]),
        .O(\m_axi_arlen[3]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h00055755)) 
    \m_axi_arlen[3]_INST_0_i_8 
       (.I0(sr_araddr[2]),
        .I1(\m_axi_araddr[2]_INST_0_i_5_n_0 ),
        .I2(sr_arburst[0]),
        .I3(sr_arburst[1]),
        .I4(\m_axi_araddr[2]_INST_0_i_6_n_0 ),
        .O(\m_axi_arlen[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \m_axi_arlen[3]_INST_0_i_9 
       (.I0(s_axi_arlen_ii[3]),
        .I1(sr_arsize[1]),
        .I2(s_axi_arlen_ii[1]),
        .I3(sr_arsize[0]),
        .I4(s_axi_arlen_ii[2]),
        .I5(sr_arsize[2]),
        .O(\m_axi_arlen[3]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axi_arsize[0]_INST_0 
       (.I0(sr_arsize[0]),
        .I1(\m_payload_i_reg[70]_0 [22]),
        .O(m_axi_arsize[0]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axi_arsize[1]_INST_0 
       (.I0(sr_arsize[1]),
        .I1(\m_payload_i_reg[70]_0 [22]),
        .O(m_axi_arsize[1]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axi_arsize[2]_INST_0 
       (.I0(sr_arsize[2]),
        .I1(\m_payload_i_reg[70]_0 [22]),
        .O(m_axi_arsize[2]));
  FDRE \m_payload_i_reg[0] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [0]),
        .Q(sr_araddr[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [10]),
        .Q(m_axi_araddr[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [11]),
        .Q(m_axi_araddr[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [12]),
        .Q(m_axi_araddr[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [13]),
        .Q(m_axi_araddr[13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [14]),
        .Q(m_axi_araddr[14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [15]),
        .Q(m_axi_araddr[15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [16]),
        .Q(m_axi_araddr[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [17]),
        .Q(m_axi_araddr[17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [18]),
        .Q(m_axi_araddr[18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [19]),
        .Q(m_axi_araddr[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [1]),
        .Q(sr_araddr[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [20]),
        .Q(m_axi_araddr[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [21]),
        .Q(m_axi_araddr[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [22]),
        .Q(m_axi_araddr[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [23]),
        .Q(m_axi_araddr[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [24]),
        .Q(m_axi_araddr[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [25]),
        .Q(m_axi_araddr[25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [26]),
        .Q(m_axi_araddr[26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [27]),
        .Q(m_axi_araddr[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [28]),
        .Q(m_axi_araddr[28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [29]),
        .Q(m_axi_araddr[29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [2]),
        .Q(sr_araddr[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [30]),
        .Q(m_axi_araddr[30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [31]),
        .Q(m_axi_araddr[31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [32]),
        .Q(m_axi_araddr[32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [33]),
        .Q(m_axi_araddr[33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [34]),
        .Q(m_axi_araddr[34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [35]),
        .Q(m_axi_araddr[35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [36]),
        .Q(m_axi_araddr[36]),
        .R(1'b0));
  FDRE \m_payload_i_reg[37] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [37]),
        .Q(m_axi_araddr[37]),
        .R(1'b0));
  FDRE \m_payload_i_reg[38] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [38]),
        .Q(m_axi_araddr[38]),
        .R(1'b0));
  FDRE \m_payload_i_reg[39] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [39]),
        .Q(m_axi_araddr[39]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [3]),
        .Q(m_axi_araddr[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[40] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [40]),
        .Q(m_axi_araddr[40]),
        .R(1'b0));
  FDRE \m_payload_i_reg[41] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [41]),
        .Q(m_axi_araddr[41]),
        .R(1'b0));
  FDRE \m_payload_i_reg[42] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [42]),
        .Q(m_axi_araddr[42]),
        .R(1'b0));
  FDRE \m_payload_i_reg[43] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [43]),
        .Q(m_axi_araddr[43]),
        .R(1'b0));
  FDRE \m_payload_i_reg[44] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [44]),
        .Q(m_axi_araddr[44]),
        .R(1'b0));
  FDRE \m_payload_i_reg[45] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [45]),
        .Q(m_axi_araddr[45]),
        .R(1'b0));
  FDRE \m_payload_i_reg[46] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [46]),
        .Q(m_axi_araddr[46]),
        .R(1'b0));
  FDRE \m_payload_i_reg[47] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [47]),
        .Q(m_axi_araddr[47]),
        .R(1'b0));
  FDRE \m_payload_i_reg[48] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [48]),
        .Q(m_axi_araddr[48]),
        .R(1'b0));
  FDRE \m_payload_i_reg[49] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [49]),
        .Q(m_axi_araddr[49]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [4]),
        .Q(m_axi_araddr[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[50] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [50]),
        .Q(m_axi_araddr[50]),
        .R(1'b0));
  FDRE \m_payload_i_reg[51] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [51]),
        .Q(m_axi_araddr[51]),
        .R(1'b0));
  FDRE \m_payload_i_reg[52] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [52]),
        .Q(m_axi_araddr[52]),
        .R(1'b0));
  FDRE \m_payload_i_reg[53] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [53]),
        .Q(m_axi_araddr[53]),
        .R(1'b0));
  FDRE \m_payload_i_reg[54] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [54]),
        .Q(m_axi_araddr[54]),
        .R(1'b0));
  FDRE \m_payload_i_reg[55] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [55]),
        .Q(m_axi_araddr[55]),
        .R(1'b0));
  FDRE \m_payload_i_reg[56] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [56]),
        .Q(m_axi_araddr[56]),
        .R(1'b0));
  FDRE \m_payload_i_reg[57] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [57]),
        .Q(m_axi_araddr[57]),
        .R(1'b0));
  FDRE \m_payload_i_reg[58] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [58]),
        .Q(m_axi_araddr[58]),
        .R(1'b0));
  FDRE \m_payload_i_reg[59] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [59]),
        .Q(m_axi_araddr[59]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [5]),
        .Q(m_axi_araddr[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[60] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [60]),
        .Q(m_axi_araddr[60]),
        .R(1'b0));
  FDRE \m_payload_i_reg[61] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [61]),
        .Q(m_axi_araddr[61]),
        .R(1'b0));
  FDRE \m_payload_i_reg[62] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [62]),
        .Q(m_axi_araddr[62]),
        .R(1'b0));
  FDRE \m_payload_i_reg[63] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [63]),
        .Q(m_axi_araddr[63]),
        .R(1'b0));
  FDRE \m_payload_i_reg[64] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [64]),
        .Q(\m_payload_i_reg[86]_0 [0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[65] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [65]),
        .Q(\m_payload_i_reg[86]_0 [1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[66] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [66]),
        .Q(\m_payload_i_reg[86]_0 [2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[67] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [67]),
        .Q(sr_arsize[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[68] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [68]),
        .Q(sr_arsize[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[69] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [69]),
        .Q(sr_arsize[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [6]),
        .Q(m_axi_araddr[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[70] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [70]),
        .Q(sr_arburst[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[71] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [71]),
        .Q(sr_arburst[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[72] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [72]),
        .Q(\m_payload_i_reg[86]_0 [3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[73] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [73]),
        .Q(\m_payload_i_reg[86]_0 [4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[74] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [74]),
        .Q(\m_payload_i_reg[86]_0 [5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[75] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [75]),
        .Q(\m_payload_i_reg[86]_0 [6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[76] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [76]),
        .Q(s_axi_arlen_ii[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[77] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [77]),
        .Q(s_axi_arlen_ii[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[78] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [78]),
        .Q(s_axi_arlen_ii[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[79] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [79]),
        .Q(s_axi_arlen_ii[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [7]),
        .Q(m_axi_araddr[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[80] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [80]),
        .Q(\m_payload_i_reg[86]_0 [7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[81] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [81]),
        .Q(\m_payload_i_reg[86]_0 [8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[83] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [82]),
        .Q(\m_payload_i_reg[86]_0 [9]),
        .R(1'b0));
  FDRE \m_payload_i_reg[84] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [83]),
        .Q(\m_payload_i_reg[86]_0 [10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[85] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [84]),
        .Q(\m_payload_i_reg[86]_0 [11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[86] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [85]),
        .Q(\m_payload_i_reg[86]_0 [12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [8]),
        .Q(m_axi_araddr[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(out),
        .CE(E),
        .D(\m_payload_i_reg[86]_1 [9]),
        .Q(m_axi_araddr[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0080FF80FFFFFFFF)) 
    m_valid_i_inv_i_1
       (.I0(m_valid_i_reg_inv_0),
        .I1(m_axi_arready),
        .I2(m_valid_i_reg_inv_1),
        .I3(s_axi_arready),
        .I4(s_axi_arvalid),
        .I5(\aresetn_d_reg[1]_0 ),
        .O(m_valid_i_inv_i_1_n_0));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    m_valid_i_reg_inv
       (.C(out),
        .CE(1'b1),
        .D(m_valid_i_inv_i_1_n_0),
        .Q(E),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h57F70000)) 
    s_ready_i_i_1
       (.I0(\aresetn_d_reg[1]_0 ),
        .I1(s_ready_i_reg_0),
        .I2(E),
        .I3(s_axi_arvalid),
        .I4(\aresetn_d_reg[1]_1 ),
        .O(s_ready_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(out),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(s_axi_arready),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_26_axic_register_slice" *) 
module design_1_auto_us_0_axi_register_slice_v2_1_26_axic_register_slice__parameterized3_0
   (\aresetn_d_reg[0]_0 ,
    E,
    in,
    Q,
    m_axi_awaddr,
    m_axi_awburst,
    s_axi_awready,
    m_axi_awsize,
    SR,
    out,
    m_valid_i_reg_inv_0,
    m_axi_awready,
    m_valid_i_reg_inv_1,
    s_axi_awvalid,
    s_ready_i_reg_0,
    D,
    s_ready_i_reg_1);
  output \aresetn_d_reg[0]_0 ;
  output [0:0]E;
  output [23:0]in;
  output [70:0]Q;
  output [5:0]m_axi_awaddr;
  output [1:0]m_axi_awburst;
  output s_axi_awready;
  output [2:0]m_axi_awsize;
  input [0:0]SR;
  input out;
  input m_valid_i_reg_inv_0;
  input m_axi_awready;
  input m_valid_i_reg_inv_1;
  input s_axi_awvalid;
  input s_ready_i_reg_0;
  input [85:0]D;
  input s_ready_i_reg_1;

  wire [85:0]D;
  wire [0:0]E;
  wire [70:0]Q;
  wire [0:0]SR;
  wire \USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_2_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][19]_srl32_i_2_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][21]_srl32_i_2_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_2_n_0 ;
  wire \aresetn_d_reg[0]_0 ;
  wire [23:0]in;
  wire [5:0]m_axi_awaddr;
  wire \m_axi_awaddr[1]_INST_0_i_1_n_0 ;
  wire \m_axi_awaddr[2]_INST_0_i_1_n_0 ;
  wire \m_axi_awaddr[2]_INST_0_i_3_n_0 ;
  wire \m_axi_awaddr[2]_INST_0_i_4_n_0 ;
  wire \m_axi_awaddr[3]_INST_0_i_1_n_0 ;
  wire \m_axi_awaddr[3]_INST_0_i_2_n_0 ;
  wire \m_axi_awaddr[4]_INST_0_i_1_n_0 ;
  wire \m_axi_awaddr[5]_INST_0_i_1_n_0 ;
  wire \m_axi_awaddr[5]_INST_0_i_3_n_0 ;
  wire \m_axi_awaddr[5]_INST_0_i_4_n_0 ;
  wire \m_axi_awaddr[5]_INST_0_i_5_n_0 ;
  wire \m_axi_awaddr[5]_INST_0_i_6_n_0 ;
  wire [1:0]m_axi_awburst;
  wire \m_axi_awlen[2]_INST_0_i_1_n_0 ;
  wire \m_axi_awlen[2]_INST_0_i_2_n_0 ;
  wire \m_axi_awlen[2]_INST_0_i_3_n_0 ;
  wire \m_axi_awlen[2]_INST_0_i_4_n_0 ;
  wire \m_axi_awlen[2]_INST_0_i_5_n_0 ;
  wire \m_axi_awlen[2]_INST_0_i_6_n_0 ;
  wire \m_axi_awlen[3]_INST_0_i_2_n_0 ;
  wire \m_axi_awlen[3]_INST_0_i_3_n_0 ;
  wire \m_axi_awlen[3]_INST_0_i_4_n_0 ;
  wire \m_axi_awlen[3]_INST_0_i_5_n_0 ;
  wire \m_axi_awlen[3]_INST_0_i_6_n_0 ;
  wire \m_axi_awlen[3]_INST_0_i_7_n_0 ;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_valid_i_inv_i_1__0_n_0;
  wire m_valid_i_reg_inv_0;
  wire m_valid_i_reg_inv_1;
  wire out;
  wire [3:0]s_axi_awlen_ii;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_ready_i_i_1_n_0;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire [5:0]sr_awaddr;
  wire [1:0]sr_awburst;
  wire [2:0]sr_awsize;

  LUT6 #(
    .INIT(64'hFFFFFFFF11100010)) 
    \USE_RTL_FIFO.data_srl_reg[31][12]_srl32_i_1 
       (.I0(sr_awsize[1]),
        .I1(sr_awsize[2]),
        .I2(s_axi_awlen_ii[1]),
        .I3(sr_awsize[0]),
        .I4(s_axi_awlen_ii[0]),
        .I5(\m_axi_awaddr[2]_INST_0_i_1_n_0 ),
        .O(in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \USE_RTL_FIFO.data_srl_reg[31][13]_srl32_i_1 
       (.I0(\m_axi_awaddr[2]_INST_0_i_3_n_0 ),
        .O(in[9]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \USE_RTL_FIFO.data_srl_reg[31][16]_srl32_i_1 
       (.I0(\m_axi_awaddr[2]_INST_0_i_3_n_0 ),
        .I1(sr_awaddr[2]),
        .O(in[10]));
  LUT6 #(
    .INIT(64'h008A000000300000)) 
    \USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_1 
       (.I0(in[7]),
        .I1(in[23]),
        .I2(s_axi_awlen_ii[0]),
        .I3(sr_awsize[0]),
        .I4(\USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_2_n_0 ),
        .I5(sr_awaddr[0]),
        .O(in[11]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_2 
       (.I0(sr_awsize[2]),
        .I1(sr_awsize[1]),
        .O(\USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC08030803020C020)) 
    \USE_RTL_FIFO.data_srl_reg[31][18]_srl32_i_1 
       (.I0(\m_axi_awaddr[2]_INST_0_i_1_n_0 ),
        .I1(sr_awaddr[1]),
        .I2(\USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_2_n_0 ),
        .I3(\m_axi_awaddr[3]_INST_0_i_1_n_0 ),
        .I4(in[23]),
        .I5(\m_axi_awlen[3]_INST_0_i_7_n_0 ),
        .O(in[12]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h6512)) 
    \USE_RTL_FIFO.data_srl_reg[31][19]_srl32_i_1 
       (.I0(\USE_RTL_FIFO.data_srl_reg[31][19]_srl32_i_2_n_0 ),
        .I1(\m_axi_awaddr[2]_INST_0_i_3_n_0 ),
        .I2(sr_awaddr[2]),
        .I3(\m_axi_awlen[2]_INST_0_i_6_n_0 ),
        .O(in[13]));
  LUT6 #(
    .INIT(64'h44C4004040C00040)) 
    \USE_RTL_FIFO.data_srl_reg[31][19]_srl32_i_2 
       (.I0(\m_axi_awlen[3]_INST_0_i_7_n_0 ),
        .I1(\USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_2_n_0 ),
        .I2(\m_axi_awaddr[3]_INST_0_i_1_n_0 ),
        .I3(in[23]),
        .I4(sr_awaddr[1]),
        .I5(\m_axi_awaddr[2]_INST_0_i_1_n_0 ),
        .O(\USE_RTL_FIFO.data_srl_reg[31][19]_srl32_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \USE_RTL_FIFO.data_srl_reg[31][20]_srl32_i_1 
       (.I0(in[7]),
        .I1(sr_awsize[0]),
        .I2(sr_awaddr[0]),
        .I3(sr_awsize[2]),
        .I4(sr_awsize[1]),
        .O(in[14]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h001E)) 
    \USE_RTL_FIFO.data_srl_reg[31][21]_srl32_i_1 
       (.I0(sr_awsize[0]),
        .I1(sr_awaddr[0]),
        .I2(sr_awaddr[1]),
        .I3(\USE_RTL_FIFO.data_srl_reg[31][21]_srl32_i_2_n_0 ),
        .O(in[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0010)) 
    \USE_RTL_FIFO.data_srl_reg[31][21]_srl32_i_2 
       (.I0(\m_axi_awaddr[3]_INST_0_i_1_n_0 ),
        .I1(\m_axi_awaddr[5]_INST_0_i_3_n_0 ),
        .I2(sr_awburst[1]),
        .I3(sr_awburst[0]),
        .I4(sr_awsize[1]),
        .I5(sr_awsize[2]),
        .O(\USE_RTL_FIFO.data_srl_reg[31][21]_srl32_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000066966666)) 
    \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_1 
       (.I0(sr_awaddr[2]),
        .I1(in[6]),
        .I2(sr_awaddr[1]),
        .I3(\USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_2_n_0 ),
        .I4(\USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_2_n_0 ),
        .I5(\m_axi_awaddr[2]_INST_0_i_3_n_0 ),
        .O(in[16]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_2 
       (.I0(sr_awsize[0]),
        .I1(sr_awaddr[0]),
        .O(\USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \USE_RTL_FIFO.data_srl_reg[31][23]_srl32_i_1 
       (.I0(in[7]),
        .I1(sr_awaddr[0]),
        .I2(sr_awsize[0]),
        .I3(sr_awsize[1]),
        .I4(sr_awsize[2]),
        .O(in[17]));
  LUT6 #(
    .INIT(64'h8888888888888088)) 
    \USE_RTL_FIFO.data_srl_reg[31][24]_srl32_i_1 
       (.I0(sr_awaddr[1]),
        .I1(\USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_2_n_0 ),
        .I2(sr_awburst[0]),
        .I3(sr_awburst[1]),
        .I4(\m_axi_awaddr[5]_INST_0_i_3_n_0 ),
        .I5(\m_axi_awaddr[3]_INST_0_i_1_n_0 ),
        .O(in[18]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \USE_RTL_FIFO.data_srl_reg[31][25]_srl32_i_1 
       (.I0(sr_awaddr[2]),
        .I1(\m_axi_awaddr[2]_INST_0_i_3_n_0 ),
        .O(in[19]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \USE_RTL_FIFO.data_srl_reg[31][27]_srl32_i_1 
       (.I0(in[22]),
        .I1(\m_axi_awaddr[2]_INST_0_i_1_n_0 ),
        .O(in[21]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \USE_RTL_FIFO.data_srl_reg[31][29]_srl32_i_1 
       (.I0(sr_awburst[0]),
        .I1(sr_awburst[1]),
        .O(in[23]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \USE_RTL_FIFO.data_srl_reg[31][8]_srl32_i_1 
       (.I0(sr_awsize[2]),
        .I1(sr_awsize[1]),
        .I2(sr_awsize[0]),
        .O(in[4]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \USE_RTL_FIFO.data_srl_reg[31][9]_srl32_i_1 
       (.I0(sr_awsize[0]),
        .I1(sr_awsize[1]),
        .I2(sr_awsize[2]),
        .O(in[5]));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(1'b1),
        .Q(\aresetn_d_reg[0]_0 ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h0B00FF00)) 
    \m_axi_awaddr[0]_INST_0 
       (.I0(\m_axi_awaddr[2]_INST_0_i_1_n_0 ),
        .I1(in[22]),
        .I2(in[20]),
        .I3(sr_awaddr[0]),
        .I4(in[7]),
        .O(m_axi_awaddr[0]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \m_axi_awaddr[0]_INST_0_i_1 
       (.I0(\m_axi_awaddr[2]_INST_0_i_1_n_0 ),
        .I1(s_axi_awlen_ii[0]),
        .I2(sr_awsize[0]),
        .I3(sr_awsize[1]),
        .I4(sr_awsize[2]),
        .O(in[7]));
  LUT5 #(
    .INIT(32'hFF000B00)) 
    \m_axi_awaddr[1]_INST_0 
       (.I0(\m_axi_awaddr[2]_INST_0_i_1_n_0 ),
        .I1(in[22]),
        .I2(in[20]),
        .I3(sr_awaddr[1]),
        .I4(\m_axi_awaddr[1]_INST_0_i_1_n_0 ),
        .O(m_axi_awaddr[1]));
  LUT6 #(
    .INIT(64'h0404040404040004)) 
    \m_axi_awaddr[1]_INST_0_i_1 
       (.I0(sr_awburst[0]),
        .I1(sr_awburst[1]),
        .I2(\m_axi_awaddr[5]_INST_0_i_3_n_0 ),
        .I3(\m_axi_awaddr[3]_INST_0_i_1_n_0 ),
        .I4(sr_awsize[2]),
        .I5(sr_awsize[1]),
        .O(\m_axi_awaddr[1]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'hFF000B00)) 
    \m_axi_awaddr[2]_INST_0 
       (.I0(\m_axi_awaddr[2]_INST_0_i_1_n_0 ),
        .I1(in[22]),
        .I2(in[20]),
        .I3(sr_awaddr[2]),
        .I4(\m_axi_awaddr[2]_INST_0_i_3_n_0 ),
        .O(m_axi_awaddr[2]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \m_axi_awaddr[2]_INST_0_i_1 
       (.I0(\m_axi_awaddr[5]_INST_0_i_3_n_0 ),
        .I1(sr_awburst[1]),
        .I2(sr_awburst[0]),
        .O(\m_axi_awaddr[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \m_axi_awaddr[2]_INST_0_i_2 
       (.I0(in[23]),
        .I1(s_axi_awlen_ii[1]),
        .I2(s_axi_awlen_ii[2]),
        .I3(s_axi_awlen_ii[0]),
        .I4(s_axi_awlen_ii[3]),
        .I5(Q[62]),
        .O(in[22]));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axi_awaddr[2]_INST_0_i_3 
       (.I0(\m_axi_awaddr[2]_INST_0_i_4_n_0 ),
        .I1(\m_axi_awaddr[2]_INST_0_i_1_n_0 ),
        .O(\m_axi_awaddr[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF5F5FFFF303F)) 
    \m_axi_awaddr[2]_INST_0_i_4 
       (.I0(s_axi_awlen_ii[0]),
        .I1(s_axi_awlen_ii[1]),
        .I2(sr_awsize[0]),
        .I3(s_axi_awlen_ii[2]),
        .I4(sr_awsize[2]),
        .I5(sr_awsize[1]),
        .O(\m_axi_awaddr[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555AA6AAAAAAAAA)) 
    \m_axi_awaddr[3]_INST_0 
       (.I0(sr_awaddr[3]),
        .I1(\m_axi_awaddr[3]_INST_0_i_1_n_0 ),
        .I2(sr_awsize[1]),
        .I3(sr_awsize[2]),
        .I4(\m_axi_awaddr[3]_INST_0_i_2_n_0 ),
        .I5(in[20]),
        .O(m_axi_awaddr[3]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_awaddr[3]_INST_0_i_1 
       (.I0(s_axi_awlen_ii[0]),
        .I1(sr_awsize[0]),
        .I2(s_axi_awlen_ii[1]),
        .O(\m_axi_awaddr[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h11100010)) 
    \m_axi_awaddr[3]_INST_0_i_2 
       (.I0(sr_awsize[1]),
        .I1(sr_awsize[2]),
        .I2(s_axi_awlen_ii[3]),
        .I3(sr_awsize[0]),
        .I4(s_axi_awlen_ii[2]),
        .O(\m_axi_awaddr[3]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9AAA)) 
    \m_axi_awaddr[4]_INST_0 
       (.I0(sr_awaddr[4]),
        .I1(\m_axi_awaddr[4]_INST_0_i_1_n_0 ),
        .I2(sr_awaddr[3]),
        .I3(in[20]),
        .O(m_axi_awaddr[4]));
  LUT6 #(
    .INIT(64'hA2A28AAAAAAA8AAA)) 
    \m_axi_awaddr[4]_INST_0_i_1 
       (.I0(\m_axi_awlen[2]_INST_0_i_1_n_0 ),
        .I1(sr_awsize[1]),
        .I2(sr_awsize[2]),
        .I3(s_axi_awlen_ii[0]),
        .I4(sr_awsize[0]),
        .I5(s_axi_awlen_ii[1]),
        .O(\m_axi_awaddr[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \m_axi_awaddr[5]_INST_0 
       (.I0(sr_awaddr[5]),
        .I1(sr_awaddr[4]),
        .I2(\m_axi_awaddr[5]_INST_0_i_1_n_0 ),
        .I3(sr_awaddr[3]),
        .I4(in[20]),
        .O(m_axi_awaddr[5]));
  LUT6 #(
    .INIT(64'h0000AAAACFC00000)) 
    \m_axi_awaddr[5]_INST_0_i_1 
       (.I0(\m_axi_awaddr[3]_INST_0_i_1_n_0 ),
        .I1(s_axi_awlen_ii[2]),
        .I2(sr_awsize[0]),
        .I3(s_axi_awlen_ii[3]),
        .I4(sr_awsize[1]),
        .I5(sr_awsize[2]),
        .O(\m_axi_awaddr[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222220)) 
    \m_axi_awaddr[5]_INST_0_i_2 
       (.I0(\m_axi_awaddr[5]_INST_0_i_3_n_0 ),
        .I1(\m_axi_awaddr[5]_INST_0_i_4_n_0 ),
        .I2(sr_awaddr[2]),
        .I3(sr_awaddr[1]),
        .I4(sr_awaddr[0]),
        .I5(\m_axi_awaddr[5]_INST_0_i_5_n_0 ),
        .O(in[20]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'hFFFFF800)) 
    \m_axi_awaddr[5]_INST_0_i_3 
       (.I0(sr_awsize[0]),
        .I1(sr_awsize[1]),
        .I2(sr_awsize[2]),
        .I3(s_axi_awlen_ii[0]),
        .I4(\m_axi_awaddr[5]_INST_0_i_6_n_0 ),
        .O(\m_axi_awaddr[5]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \m_axi_awaddr[5]_INST_0_i_4 
       (.I0(sr_awburst[0]),
        .I1(sr_awburst[1]),
        .O(\m_axi_awaddr[5]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h55555557)) 
    \m_axi_awaddr[5]_INST_0_i_5 
       (.I0(Q[62]),
        .I1(s_axi_awlen_ii[3]),
        .I2(s_axi_awlen_ii[0]),
        .I3(s_axi_awlen_ii[2]),
        .I4(s_axi_awlen_ii[1]),
        .O(\m_axi_awaddr[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFFFEAAAA)) 
    \m_axi_awaddr[5]_INST_0_i_6 
       (.I0(s_axi_awlen_ii[3]),
        .I1(sr_awsize[1]),
        .I2(sr_awsize[2]),
        .I3(sr_awsize[0]),
        .I4(s_axi_awlen_ii[2]),
        .I5(s_axi_awlen_ii[1]),
        .O(\m_axi_awaddr[5]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \m_axi_awburst[0]_INST_0 
       (.I0(in[22]),
        .I1(\m_axi_awaddr[2]_INST_0_i_1_n_0 ),
        .I2(sr_awburst[0]),
        .O(m_axi_awburst[0]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \m_axi_awburst[1]_INST_0 
       (.I0(in[22]),
        .I1(\m_axi_awaddr[2]_INST_0_i_1_n_0 ),
        .I2(sr_awburst[1]),
        .O(m_axi_awburst[1]));
  LUT6 #(
    .INIT(64'h5656565656A6A6A6)) 
    \m_axi_awlen[0]_INST_0 
       (.I0(\m_axi_awlen[2]_INST_0_i_3_n_0 ),
        .I1(s_axi_awlen_ii[0]),
        .I2(in[22]),
        .I3(in[6]),
        .I4(s_axi_awlen_ii[1]),
        .I5(\m_axi_awaddr[3]_INST_0_i_2_n_0 ),
        .O(in[0]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h22D2DDD2)) 
    \m_axi_awlen[1]_INST_0 
       (.I0(\m_axi_awlen[2]_INST_0_i_3_n_0 ),
        .I1(\m_axi_awlen[2]_INST_0_i_2_n_0 ),
        .I2(s_axi_awlen_ii[1]),
        .I3(in[22]),
        .I4(\m_axi_awlen[2]_INST_0_i_1_n_0 ),
        .O(in[1]));
  LUT6 #(
    .INIT(64'h00740000FF8BFFFF)) 
    \m_axi_awlen[2]_INST_0 
       (.I0(\m_axi_awlen[2]_INST_0_i_1_n_0 ),
        .I1(in[22]),
        .I2(s_axi_awlen_ii[1]),
        .I3(\m_axi_awlen[2]_INST_0_i_2_n_0 ),
        .I4(\m_axi_awlen[2]_INST_0_i_3_n_0 ),
        .I5(\m_axi_awlen[2]_INST_0_i_4_n_0 ),
        .O(in[2]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'hFFF5F3FF)) 
    \m_axi_awlen[2]_INST_0_i_1 
       (.I0(s_axi_awlen_ii[3]),
        .I1(s_axi_awlen_ii[2]),
        .I2(sr_awsize[2]),
        .I3(sr_awsize[1]),
        .I4(sr_awsize[0]),
        .O(\m_axi_awlen[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h150015FF)) 
    \m_axi_awlen[2]_INST_0_i_2 
       (.I0(\m_axi_awaddr[3]_INST_0_i_2_n_0 ),
        .I1(s_axi_awlen_ii[1]),
        .I2(in[6]),
        .I3(in[22]),
        .I4(s_axi_awlen_ii[0]),
        .O(\m_axi_awlen[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FF007100710000)) 
    \m_axi_awlen[2]_INST_0_i_3 
       (.I0(\m_axi_awlen[3]_INST_0_i_7_n_0 ),
        .I1(\m_axi_awlen[3]_INST_0_i_6_n_0 ),
        .I2(in[18]),
        .I3(\m_axi_awlen[2]_INST_0_i_5_n_0 ),
        .I4(sr_awaddr[2]),
        .I5(\m_axi_awlen[2]_INST_0_i_6_n_0 ),
        .O(\m_axi_awlen[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFDF0000FFDFFFFF)) 
    \m_axi_awlen[2]_INST_0_i_4 
       (.I0(s_axi_awlen_ii[3]),
        .I1(sr_awsize[0]),
        .I2(sr_awsize[1]),
        .I3(sr_awsize[2]),
        .I4(in[22]),
        .I5(s_axi_awlen_ii[2]),
        .O(\m_axi_awlen[2]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \m_axi_awlen[2]_INST_0_i_5 
       (.I0(\m_axi_awaddr[5]_INST_0_i_5_n_0 ),
        .I1(sr_awburst[0]),
        .I2(sr_awburst[1]),
        .O(\m_axi_awlen[2]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \m_axi_awlen[2]_INST_0_i_6 
       (.I0(sr_awburst[1]),
        .I1(sr_awburst[0]),
        .I2(\m_axi_awaddr[2]_INST_0_i_4_n_0 ),
        .O(\m_axi_awlen[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0A0A0A8F8A)) 
    \m_axi_awlen[3]_INST_0 
       (.I0(s_axi_awlen_ii[3]),
        .I1(in[6]),
        .I2(in[22]),
        .I3(s_axi_awlen_ii[2]),
        .I4(\m_axi_awlen[3]_INST_0_i_2_n_0 ),
        .I5(\m_axi_awlen[3]_INST_0_i_3_n_0 ),
        .O(in[3]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \m_axi_awlen[3]_INST_0_i_1 
       (.I0(sr_awsize[2]),
        .I1(sr_awsize[1]),
        .I2(sr_awsize[0]),
        .O(in[6]));
  LUT6 #(
    .INIT(64'hEFEFEEEFEEEFEEEE)) 
    \m_axi_awlen[3]_INST_0_i_2 
       (.I0(\m_axi_awlen[2]_INST_0_i_2_n_0 ),
        .I1(\m_axi_awlen[3]_INST_0_i_4_n_0 ),
        .I2(\m_axi_awlen[3]_INST_0_i_5_n_0 ),
        .I3(in[18]),
        .I4(\m_axi_awlen[3]_INST_0_i_6_n_0 ),
        .I5(\m_axi_awlen[3]_INST_0_i_7_n_0 ),
        .O(\m_axi_awlen[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \m_axi_awlen[3]_INST_0_i_3 
       (.I0(\m_axi_awlen[2]_INST_0_i_1_n_0 ),
        .I1(in[22]),
        .I2(s_axi_awlen_ii[1]),
        .O(\m_axi_awlen[3]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'hFFFFF2FF)) 
    \m_axi_awlen[3]_INST_0_i_4 
       (.I0(\m_axi_awaddr[2]_INST_0_i_4_n_0 ),
        .I1(sr_awaddr[2]),
        .I2(sr_awburst[1]),
        .I3(sr_awburst[0]),
        .I4(\m_axi_awaddr[5]_INST_0_i_5_n_0 ),
        .O(\m_axi_awlen[3]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \m_axi_awlen[3]_INST_0_i_5 
       (.I0(\m_axi_awaddr[2]_INST_0_i_4_n_0 ),
        .I1(sr_awburst[0]),
        .I2(sr_awburst[1]),
        .I3(sr_awaddr[2]),
        .O(\m_axi_awlen[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1F111FFFFFFFFFFF)) 
    \m_axi_awlen[3]_INST_0_i_6 
       (.I0(sr_awburst[1]),
        .I1(sr_awburst[0]),
        .I2(s_axi_awlen_ii[0]),
        .I3(sr_awsize[0]),
        .I4(s_axi_awlen_ii[1]),
        .I5(\USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_2_n_0 ),
        .O(\m_axi_awlen[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDFDFDFFFFFFFFFFF)) 
    \m_axi_awlen[3]_INST_0_i_7 
       (.I0(\USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_2_n_0 ),
        .I1(sr_awsize[0]),
        .I2(s_axi_awlen_ii[0]),
        .I3(sr_awburst[0]),
        .I4(sr_awburst[1]),
        .I5(sr_awaddr[0]),
        .O(\m_axi_awlen[3]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axi_awsize[0]_INST_0 
       (.I0(sr_awsize[0]),
        .I1(in[22]),
        .O(m_axi_awsize[0]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axi_awsize[1]_INST_0 
       (.I0(sr_awsize[1]),
        .I1(in[22]),
        .O(m_axi_awsize[1]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axi_awsize[2]_INST_0 
       (.I0(sr_awsize[2]),
        .I1(in[22]),
        .O(m_axi_awsize[2]));
  FDRE \m_payload_i_reg[0] 
       (.C(out),
        .CE(E),
        .D(D[0]),
        .Q(sr_awaddr[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(out),
        .CE(E),
        .D(D[10]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(out),
        .CE(E),
        .D(D[11]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(out),
        .CE(E),
        .D(D[12]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(out),
        .CE(E),
        .D(D[13]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(out),
        .CE(E),
        .D(D[14]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(out),
        .CE(E),
        .D(D[15]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(out),
        .CE(E),
        .D(D[16]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(out),
        .CE(E),
        .D(D[17]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(out),
        .CE(E),
        .D(D[18]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(out),
        .CE(E),
        .D(D[19]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(out),
        .CE(E),
        .D(D[1]),
        .Q(sr_awaddr[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(out),
        .CE(E),
        .D(D[20]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(out),
        .CE(E),
        .D(D[21]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(out),
        .CE(E),
        .D(D[22]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(out),
        .CE(E),
        .D(D[23]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(out),
        .CE(E),
        .D(D[24]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(out),
        .CE(E),
        .D(D[25]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(out),
        .CE(E),
        .D(D[26]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(out),
        .CE(E),
        .D(D[27]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(out),
        .CE(E),
        .D(D[28]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(out),
        .CE(E),
        .D(D[29]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(out),
        .CE(E),
        .D(D[2]),
        .Q(sr_awaddr[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(out),
        .CE(E),
        .D(D[30]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(out),
        .CE(E),
        .D(D[31]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(out),
        .CE(E),
        .D(D[32]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(out),
        .CE(E),
        .D(D[33]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(out),
        .CE(E),
        .D(D[34]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(out),
        .CE(E),
        .D(D[35]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(out),
        .CE(E),
        .D(D[36]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[37] 
       (.C(out),
        .CE(E),
        .D(D[37]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[38] 
       (.C(out),
        .CE(E),
        .D(D[38]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[39] 
       (.C(out),
        .CE(E),
        .D(D[39]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(out),
        .CE(E),
        .D(D[3]),
        .Q(sr_awaddr[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[40] 
       (.C(out),
        .CE(E),
        .D(D[40]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[41] 
       (.C(out),
        .CE(E),
        .D(D[41]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[42] 
       (.C(out),
        .CE(E),
        .D(D[42]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE \m_payload_i_reg[43] 
       (.C(out),
        .CE(E),
        .D(D[43]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE \m_payload_i_reg[44] 
       (.C(out),
        .CE(E),
        .D(D[44]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE \m_payload_i_reg[45] 
       (.C(out),
        .CE(E),
        .D(D[45]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE \m_payload_i_reg[46] 
       (.C(out),
        .CE(E),
        .D(D[46]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE \m_payload_i_reg[47] 
       (.C(out),
        .CE(E),
        .D(D[47]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE \m_payload_i_reg[48] 
       (.C(out),
        .CE(E),
        .D(D[48]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE \m_payload_i_reg[49] 
       (.C(out),
        .CE(E),
        .D(D[49]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(out),
        .CE(E),
        .D(D[4]),
        .Q(sr_awaddr[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[50] 
       (.C(out),
        .CE(E),
        .D(D[50]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE \m_payload_i_reg[51] 
       (.C(out),
        .CE(E),
        .D(D[51]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE \m_payload_i_reg[52] 
       (.C(out),
        .CE(E),
        .D(D[52]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE \m_payload_i_reg[53] 
       (.C(out),
        .CE(E),
        .D(D[53]),
        .Q(Q[47]),
        .R(1'b0));
  FDRE \m_payload_i_reg[54] 
       (.C(out),
        .CE(E),
        .D(D[54]),
        .Q(Q[48]),
        .R(1'b0));
  FDRE \m_payload_i_reg[55] 
       (.C(out),
        .CE(E),
        .D(D[55]),
        .Q(Q[49]),
        .R(1'b0));
  FDRE \m_payload_i_reg[56] 
       (.C(out),
        .CE(E),
        .D(D[56]),
        .Q(Q[50]),
        .R(1'b0));
  FDRE \m_payload_i_reg[57] 
       (.C(out),
        .CE(E),
        .D(D[57]),
        .Q(Q[51]),
        .R(1'b0));
  FDRE \m_payload_i_reg[58] 
       (.C(out),
        .CE(E),
        .D(D[58]),
        .Q(Q[52]),
        .R(1'b0));
  FDRE \m_payload_i_reg[59] 
       (.C(out),
        .CE(E),
        .D(D[59]),
        .Q(Q[53]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(out),
        .CE(E),
        .D(D[5]),
        .Q(sr_awaddr[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[60] 
       (.C(out),
        .CE(E),
        .D(D[60]),
        .Q(Q[54]),
        .R(1'b0));
  FDRE \m_payload_i_reg[61] 
       (.C(out),
        .CE(E),
        .D(D[61]),
        .Q(Q[55]),
        .R(1'b0));
  FDRE \m_payload_i_reg[62] 
       (.C(out),
        .CE(E),
        .D(D[62]),
        .Q(Q[56]),
        .R(1'b0));
  FDRE \m_payload_i_reg[63] 
       (.C(out),
        .CE(E),
        .D(D[63]),
        .Q(Q[57]),
        .R(1'b0));
  FDRE \m_payload_i_reg[64] 
       (.C(out),
        .CE(E),
        .D(D[64]),
        .Q(Q[58]),
        .R(1'b0));
  FDRE \m_payload_i_reg[65] 
       (.C(out),
        .CE(E),
        .D(D[65]),
        .Q(Q[59]),
        .R(1'b0));
  FDRE \m_payload_i_reg[66] 
       (.C(out),
        .CE(E),
        .D(D[66]),
        .Q(Q[60]),
        .R(1'b0));
  FDRE \m_payload_i_reg[67] 
       (.C(out),
        .CE(E),
        .D(D[67]),
        .Q(sr_awsize[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[68] 
       (.C(out),
        .CE(E),
        .D(D[68]),
        .Q(sr_awsize[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[69] 
       (.C(out),
        .CE(E),
        .D(D[69]),
        .Q(sr_awsize[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(out),
        .CE(E),
        .D(D[6]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[70] 
       (.C(out),
        .CE(E),
        .D(D[70]),
        .Q(sr_awburst[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[71] 
       (.C(out),
        .CE(E),
        .D(D[71]),
        .Q(sr_awburst[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[72] 
       (.C(out),
        .CE(E),
        .D(D[72]),
        .Q(Q[61]),
        .R(1'b0));
  FDRE \m_payload_i_reg[73] 
       (.C(out),
        .CE(E),
        .D(D[73]),
        .Q(Q[62]),
        .R(1'b0));
  FDRE \m_payload_i_reg[74] 
       (.C(out),
        .CE(E),
        .D(D[74]),
        .Q(Q[63]),
        .R(1'b0));
  FDRE \m_payload_i_reg[75] 
       (.C(out),
        .CE(E),
        .D(D[75]),
        .Q(Q[64]),
        .R(1'b0));
  FDRE \m_payload_i_reg[76] 
       (.C(out),
        .CE(E),
        .D(D[76]),
        .Q(s_axi_awlen_ii[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[77] 
       (.C(out),
        .CE(E),
        .D(D[77]),
        .Q(s_axi_awlen_ii[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[78] 
       (.C(out),
        .CE(E),
        .D(D[78]),
        .Q(s_axi_awlen_ii[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[79] 
       (.C(out),
        .CE(E),
        .D(D[79]),
        .Q(s_axi_awlen_ii[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(out),
        .CE(E),
        .D(D[7]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[80] 
       (.C(out),
        .CE(E),
        .D(D[80]),
        .Q(Q[65]),
        .R(1'b0));
  FDRE \m_payload_i_reg[81] 
       (.C(out),
        .CE(E),
        .D(D[81]),
        .Q(Q[66]),
        .R(1'b0));
  FDRE \m_payload_i_reg[83] 
       (.C(out),
        .CE(E),
        .D(D[82]),
        .Q(Q[67]),
        .R(1'b0));
  FDRE \m_payload_i_reg[84] 
       (.C(out),
        .CE(E),
        .D(D[83]),
        .Q(Q[68]),
        .R(1'b0));
  FDRE \m_payload_i_reg[85] 
       (.C(out),
        .CE(E),
        .D(D[84]),
        .Q(Q[69]),
        .R(1'b0));
  FDRE \m_payload_i_reg[86] 
       (.C(out),
        .CE(E),
        .D(D[85]),
        .Q(Q[70]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(out),
        .CE(E),
        .D(D[8]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(out),
        .CE(E),
        .D(D[9]),
        .Q(Q[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0080FF80FFFFFFFF)) 
    m_valid_i_inv_i_1__0
       (.I0(m_valid_i_reg_inv_0),
        .I1(m_axi_awready),
        .I2(m_valid_i_reg_inv_1),
        .I3(s_axi_awready),
        .I4(s_axi_awvalid),
        .I5(s_ready_i_reg_0),
        .O(m_valid_i_inv_i_1__0_n_0));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    m_valid_i_reg_inv
       (.C(out),
        .CE(1'b1),
        .D(m_valid_i_inv_i_1__0_n_0),
        .Q(E),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h57F70000)) 
    s_ready_i_i_1
       (.I0(s_ready_i_reg_0),
        .I1(s_ready_i_reg_1),
        .I2(E),
        .I3(s_axi_awvalid),
        .I4(\aresetn_d_reg[0]_0 ),
        .O(s_ready_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(out),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(s_axi_awready),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "generic_baseblocks_v2_1_0_command_fifo" *) 
module design_1_auto_us_0_generic_baseblocks_v2_1_0_command_fifo
   (\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ,
    s_axi_wlast_0,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[29]_0 ,
    \USE_RTL_LENGTH.length_counter_q_reg[0] ,
    Q,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28]_0 ,
    s_axi_wvalid_0,
    wrap_buffer_available_reg,
    wrap_buffer_available_reg_0,
    wrap_buffer_available_reg_1,
    wrap_buffer_available_reg_2,
    wrap_buffer_available_reg_3,
    wrap_buffer_available_reg_4,
    wrap_buffer_available_reg_5,
    wrap_buffer_available_reg_6,
    s_axi_wready,
    p_79_in,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_0 ,
    D,
    \USE_RTL_CURR_WORD.pre_next_word_q_reg[2] ,
    s_axi_aresetn,
    cmd_push_block0,
    m_axi_awvalid,
    cmd_push_block_reg,
    s_axi_wlast_1,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1 ,
    s_axi_wlast_2,
    SR,
    out,
    s_axi_wlast,
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0] ,
    cmd_push_block,
    E,
    \USE_RTL_LENGTH.length_counter_q_reg[1] ,
    \USE_RTL_LENGTH.first_mi_word_q ,
    \USE_RTL_LENGTH.length_counter_q_reg[1]_0 ,
    \USE_REGISTER.M_AXI_WVALID_q_reg ,
    wrap_buffer_available,
    s_axi_wvalid,
    s_axi_wstrb,
    m_axi_wready,
    \USE_REGISTER.M_AXI_WVALID_q_reg_0 ,
    \USE_RTL_CURR_WORD.current_word_q_reg[2] ,
    sel_first_word__0,
    \USE_RTL_CURR_WORD.first_word_q ,
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ,
    m_axi_awready,
    in);
  output \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ;
  output [0:0]s_axi_wlast_0;
  output \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[29]_0 ;
  output \USE_RTL_LENGTH.length_counter_q_reg[0] ;
  output [8:0]Q;
  output \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28]_0 ;
  output [0:0]s_axi_wvalid_0;
  output [0:0]wrap_buffer_available_reg;
  output [0:0]wrap_buffer_available_reg_0;
  output [0:0]wrap_buffer_available_reg_1;
  output [0:0]wrap_buffer_available_reg_2;
  output [0:0]wrap_buffer_available_reg_3;
  output [0:0]wrap_buffer_available_reg_4;
  output [0:0]wrap_buffer_available_reg_5;
  output [0:0]wrap_buffer_available_reg_6;
  output s_axi_wready;
  output p_79_in;
  output \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_0 ;
  output [2:0]D;
  output [2:0]\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] ;
  output s_axi_aresetn;
  output cmd_push_block0;
  output m_axi_awvalid;
  output cmd_push_block_reg;
  output s_axi_wlast_1;
  output \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1 ;
  output s_axi_wlast_2;
  input [0:0]SR;
  input out;
  input s_axi_wlast;
  input \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0] ;
  input cmd_push_block;
  input [0:0]E;
  input [1:0]\USE_RTL_LENGTH.length_counter_q_reg[1] ;
  input \USE_RTL_LENGTH.first_mi_word_q ;
  input \USE_RTL_LENGTH.length_counter_q_reg[1]_0 ;
  input \USE_REGISTER.M_AXI_WVALID_q_reg ;
  input wrap_buffer_available;
  input s_axi_wvalid;
  input [3:0]s_axi_wstrb;
  input m_axi_wready;
  input \USE_REGISTER.M_AXI_WVALID_q_reg_0 ;
  input [2:0]\USE_RTL_CURR_WORD.current_word_q_reg[2] ;
  input sel_first_word__0;
  input \USE_RTL_CURR_WORD.first_word_q ;
  input [2:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ;
  input m_axi_awready;
  input [23:0]in;

  wire [2:0]D;
  wire [0:0]E;
  wire M_READY_I;
  wire [8:0]Q;
  wire [0:0]SR;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_0 ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28]_0 ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[29]_0 ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20] ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[21] ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[22] ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_i_4_n_0 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_i_5_n_0 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_i_7_n_0 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_i_8_n_0 ;
  wire \USE_REGISTER.M_AXI_WVALID_q_reg ;
  wire \USE_REGISTER.M_AXI_WVALID_q_reg_0 ;
  wire \USE_RTL_ADDR.addr_q ;
  wire \USE_RTL_ADDR.addr_q[0]_i_1_n_0 ;
  wire \USE_RTL_ADDR.addr_q[1]_i_1_n_0 ;
  wire \USE_RTL_ADDR.addr_q[2]_i_1_n_0 ;
  wire \USE_RTL_ADDR.addr_q[3]_i_1_n_0 ;
  wire \USE_RTL_ADDR.addr_q[4]_i_2_n_0 ;
  wire \USE_RTL_ADDR.addr_q[4]_i_3_n_0 ;
  wire [4:0]\USE_RTL_ADDR.addr_q_reg ;
  wire [2:0]\USE_RTL_CURR_WORD.current_word_q_reg[2] ;
  wire \USE_RTL_CURR_WORD.first_word_q ;
  wire \USE_RTL_CURR_WORD.pre_next_word_q[1]_i_2_n_0 ;
  wire \USE_RTL_CURR_WORD.pre_next_word_q[2]_i_2_n_0 ;
  wire [2:0]\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] ;
  wire \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][10]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][11]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][12]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][13]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][16]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][17]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][18]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][19]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][1]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][20]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][21]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][23]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][24]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][25]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][26]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][27]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][28]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][29]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][2]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][3]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][4]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][8]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][9]_srl32_n_0 ;
  wire \USE_RTL_LENGTH.first_mi_word_q ;
  wire \USE_RTL_LENGTH.length_counter_q_reg[0] ;
  wire [1:0]\USE_RTL_LENGTH.length_counter_q_reg[1] ;
  wire \USE_RTL_LENGTH.length_counter_q_reg[1]_0 ;
  wire \USE_RTL_VALID_WRITE.buffer_Full_q ;
  wire \USE_RTL_VALID_WRITE.buffer_Full_q_i_1_n_0 ;
  wire \USE_RTL_VALID_WRITE.buffer_Full_q_i_2_n_0 ;
  wire \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/last_word0__4 ;
  wire [1:0]\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/next_word_i__2 ;
  wire \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_1_in ;
  wire \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_86_in ;
  wire \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/store_in_wrap_buffer_enabled__1 ;
  wire \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/word_completed__7 ;
  wire \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/wrap_buffer_available0 ;
  wire \USE_WRITE.wr_cmd_complete_wrap ;
  wire [1:0]\USE_WRITE.wr_cmd_first_word ;
  wire [2:0]\USE_WRITE.wr_cmd_mask ;
  wire \USE_WRITE.wr_cmd_modified ;
  wire \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0] ;
  wire [2:0]\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 ;
  wire \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_8_n_0 ;
  wire buffer_Empty__3;
  wire [2:0]cmd_last_word;
  wire cmd_push_block;
  wire cmd_push_block0;
  wire cmd_push_block_reg;
  wire [2:0]cmd_step;
  wire data_Exists_I;
  wire [23:0]in;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_wready;
  wire next_Data_Exists;
  wire out;
  wire p_79_in;
  wire s_axi_aresetn;
  wire s_axi_wlast;
  wire [0:0]s_axi_wlast_0;
  wire s_axi_wlast_1;
  wire s_axi_wlast_2;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]s_axi_wvalid_0;
  wire sel_first_word__0;
  wire valid_Write;
  wire wrap_buffer_available;
  wire [0:0]wrap_buffer_available_reg;
  wire [0:0]wrap_buffer_available_reg_0;
  wire [0:0]wrap_buffer_available_reg_1;
  wire [0:0]wrap_buffer_available_reg_2;
  wire [0:0]wrap_buffer_available_reg_3;
  wire [0:0]wrap_buffer_available_reg_4;
  wire [0:0]wrap_buffer_available_reg_5;
  wire [0:0]wrap_buffer_available_reg_6;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][10]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][11]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][12]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][13]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][16]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][17]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][18]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][19]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][20]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][21]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][22]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][23]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][24]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][25]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][26]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][27]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][28]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][29]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][2]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][3]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][4]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][8]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][9]_srl32_Q31_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h8F)) 
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_1 
       (.I0(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[29]_0 ),
        .I1(s_axi_wlast),
        .I2(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .O(M_READY_I));
  LUT6 #(
    .INIT(64'hAAAAAA8AAA8AAA8A)) 
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_2 
       (.I0(\USE_RTL_LENGTH.length_counter_q_reg[1]_0 ),
        .I1(Q[8]),
        .I2(\USE_WRITE.wr_cmd_modified ),
        .I3(\USE_REGISTER.M_AXI_WVALID_q_i_7_n_0 ),
        .I4(\USE_REGISTER.M_AXI_WVALID_q_reg ),
        .I5(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/last_word0__4 ),
        .O(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[29]_0 ));
  LUT6 #(
    .INIT(64'hA80802A200000000)) 
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_4 
       (.I0(\USE_REGISTER.M_AXI_WVALID_q_i_8_n_0 ),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 [0]),
        .I2(sel_first_word__0),
        .I3(\USE_WRITE.wr_cmd_first_word [0]),
        .I4(cmd_last_word[0]),
        .I5(\USE_REGISTER.M_AXI_WVALID_q_i_5_n_0 ),
        .O(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/last_word0__4 ));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[0] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[10] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][10]_srl32_n_0 ),
        .Q(cmd_step[2]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[11] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][11]_srl32_n_0 ),
        .Q(\USE_WRITE.wr_cmd_mask [0]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[12] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][12]_srl32_n_0 ),
        .Q(\USE_WRITE.wr_cmd_mask [1]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[13] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][13]_srl32_n_0 ),
        .Q(\USE_WRITE.wr_cmd_mask [2]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[16] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][16]_srl32_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[17] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][17]_srl32_n_0 ),
        .Q(cmd_last_word[0]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[18] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][18]_srl32_n_0 ),
        .Q(cmd_last_word[1]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][19]_srl32_n_0 ),
        .Q(cmd_last_word[2]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][1]_srl32_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[20] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][20]_srl32_n_0 ),
        .Q(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20] ),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[21] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][21]_srl32_n_0 ),
        .Q(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[21] ),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[22] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][22]_srl32_n_0 ),
        .Q(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[22] ),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[23] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][23]_srl32_n_0 ),
        .Q(\USE_WRITE.wr_cmd_first_word [0]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[24] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][24]_srl32_n_0 ),
        .Q(\USE_WRITE.wr_cmd_first_word [1]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[25] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][25]_srl32_n_0 ),
        .Q(Q[6]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[26] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][26]_srl32_n_0 ),
        .Q(Q[7]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[27] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][27]_srl32_n_0 ),
        .Q(\USE_WRITE.wr_cmd_complete_wrap ),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][28]_srl32_n_0 ),
        .Q(\USE_WRITE.wr_cmd_modified ),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[29] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][29]_srl32_n_0 ),
        .Q(Q[8]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[2] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][2]_srl32_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[3] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][3]_srl32_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[4] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][4]_srl32_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[8] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][8]_srl32_n_0 ),
        .Q(cmd_step[0]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[9] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][9]_srl32_n_0 ),
        .Q(cmd_step[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg 
       (.C(out),
        .CE(M_READY_I),
        .D(data_Exists_I),
        .Q(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'h4000FFFF40004000)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_1 
       (.I0(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/store_in_wrap_buffer_enabled__1 ),
        .I1(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .I2(s_axi_wvalid),
        .I3(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/word_completed__7 ),
        .I4(m_axi_wready),
        .I5(\USE_REGISTER.M_AXI_WVALID_q_reg_0 ),
        .O(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_10 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\USE_RTL_LENGTH.first_mi_word_q ),
        .I3(Q[0]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_11 
       (.I0(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[21] ),
        .I1(\USE_RTL_CURR_WORD.first_word_q ),
        .I2(Q[8]),
        .I3(\USE_RTL_CURR_WORD.current_word_q_reg[2] [1]),
        .O(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/next_word_i__2 [1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_12 
       (.I0(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20] ),
        .I1(\USE_RTL_CURR_WORD.first_word_q ),
        .I2(Q[8]),
        .I3(\USE_RTL_CURR_WORD.current_word_q_reg[2] [0]),
        .O(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/next_word_i__2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_2 
       (.I0(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .I1(Q[7]),
        .I2(wrap_buffer_available),
        .O(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/store_in_wrap_buffer_enabled__1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF80FFFF)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_3 
       (.I0(\USE_REGISTER.M_AXI_WVALID_q_i_4_n_0 ),
        .I1(\USE_REGISTER.M_AXI_WVALID_q_i_5_n_0 ),
        .I2(\USE_REGISTER.M_AXI_WVALID_q_reg ),
        .I3(\USE_REGISTER.M_AXI_WVALID_q_i_7_n_0 ),
        .I4(\USE_WRITE.wr_cmd_modified ),
        .I5(Q[8]),
        .O(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/word_completed__7 ));
  LUT6 #(
    .INIT(64'h999A999500000000)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_4 
       (.I0(cmd_last_word[0]),
        .I1(\USE_WRITE.wr_cmd_first_word [0]),
        .I2(\USE_RTL_CURR_WORD.first_word_q ),
        .I3(Q[8]),
        .I4(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 [0]),
        .I5(\USE_REGISTER.M_AXI_WVALID_q_i_8_n_0 ),
        .O(\USE_REGISTER.M_AXI_WVALID_q_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hFE0201FD)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_5 
       (.I0(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 [2]),
        .I1(Q[8]),
        .I2(\USE_RTL_CURR_WORD.first_word_q ),
        .I3(Q[6]),
        .I4(cmd_last_word[2]),
        .O(\USE_REGISTER.M_AXI_WVALID_q_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000001500150015)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_7 
       (.I0(\USE_WRITE.wr_cmd_complete_wrap ),
        .I1(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/next_word_i__2 [1]),
        .I2(\USE_WRITE.wr_cmd_mask [1]),
        .I3(\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] [2]),
        .I4(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/next_word_i__2 [0]),
        .I5(\USE_WRITE.wr_cmd_mask [0]),
        .O(\USE_REGISTER.M_AXI_WVALID_q_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFE0201FD)) 
    \USE_REGISTER.M_AXI_WVALID_q_i_8 
       (.I0(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 [1]),
        .I1(Q[8]),
        .I2(\USE_RTL_CURR_WORD.first_word_q ),
        .I3(\USE_WRITE.wr_cmd_first_word [1]),
        .I4(cmd_last_word[1]),
        .O(\USE_REGISTER.M_AXI_WVALID_q_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \USE_RTL_ADDR.addr_q[0]_i_1 
       (.I0(\USE_RTL_ADDR.addr_q_reg [0]),
        .O(\USE_RTL_ADDR.addr_q[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999999996)) 
    \USE_RTL_ADDR.addr_q[1]_i_1 
       (.I0(\USE_RTL_ADDR.addr_q_reg [1]),
        .I1(\USE_RTL_ADDR.addr_q_reg [0]),
        .I2(cmd_push_block),
        .I3(E),
        .I4(\USE_RTL_VALID_WRITE.buffer_Full_q ),
        .I5(M_READY_I),
        .O(\USE_RTL_ADDR.addr_q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hA9A96AA9)) 
    \USE_RTL_ADDR.addr_q[2]_i_1 
       (.I0(\USE_RTL_ADDR.addr_q_reg [2]),
        .I1(\USE_RTL_ADDR.addr_q_reg [0]),
        .I2(\USE_RTL_ADDR.addr_q_reg [1]),
        .I3(valid_Write),
        .I4(M_READY_I),
        .O(\USE_RTL_ADDR.addr_q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAA9A9AAA9)) 
    \USE_RTL_ADDR.addr_q[3]_i_1 
       (.I0(\USE_RTL_ADDR.addr_q_reg [3]),
        .I1(\USE_RTL_ADDR.addr_q_reg [0]),
        .I2(\USE_RTL_ADDR.addr_q_reg [1]),
        .I3(valid_Write),
        .I4(M_READY_I),
        .I5(\USE_RTL_ADDR.addr_q_reg [2]),
        .O(\USE_RTL_ADDR.addr_q[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444300000000)) 
    \USE_RTL_ADDR.addr_q[4]_i_1 
       (.I0(buffer_Empty__3),
        .I1(M_READY_I),
        .I2(\USE_RTL_VALID_WRITE.buffer_Full_q ),
        .I3(E),
        .I4(cmd_push_block),
        .I5(data_Exists_I),
        .O(\USE_RTL_ADDR.addr_q ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAA9AA)) 
    \USE_RTL_ADDR.addr_q[4]_i_2 
       (.I0(\USE_RTL_ADDR.addr_q_reg [4]),
        .I1(\USE_RTL_ADDR.addr_q_reg [0]),
        .I2(\USE_RTL_ADDR.addr_q_reg [1]),
        .I3(\USE_RTL_ADDR.addr_q[4]_i_3_n_0 ),
        .I4(\USE_RTL_ADDR.addr_q_reg [2]),
        .I5(\USE_RTL_ADDR.addr_q_reg [3]),
        .O(\USE_RTL_ADDR.addr_q[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFD5)) 
    \USE_RTL_ADDR.addr_q[4]_i_3 
       (.I0(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .I1(s_axi_wlast),
        .I2(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[29]_0 ),
        .I3(\USE_RTL_VALID_WRITE.buffer_Full_q ),
        .I4(E),
        .I5(cmd_push_block),
        .O(\USE_RTL_ADDR.addr_q[4]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_RTL_ADDR.addr_q_reg[0] 
       (.C(out),
        .CE(\USE_RTL_ADDR.addr_q ),
        .D(\USE_RTL_ADDR.addr_q[0]_i_1_n_0 ),
        .Q(\USE_RTL_ADDR.addr_q_reg [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_RTL_ADDR.addr_q_reg[1] 
       (.C(out),
        .CE(\USE_RTL_ADDR.addr_q ),
        .D(\USE_RTL_ADDR.addr_q[1]_i_1_n_0 ),
        .Q(\USE_RTL_ADDR.addr_q_reg [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_RTL_ADDR.addr_q_reg[2] 
       (.C(out),
        .CE(\USE_RTL_ADDR.addr_q ),
        .D(\USE_RTL_ADDR.addr_q[2]_i_1_n_0 ),
        .Q(\USE_RTL_ADDR.addr_q_reg [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_RTL_ADDR.addr_q_reg[3] 
       (.C(out),
        .CE(\USE_RTL_ADDR.addr_q ),
        .D(\USE_RTL_ADDR.addr_q[3]_i_1_n_0 ),
        .Q(\USE_RTL_ADDR.addr_q_reg [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_RTL_ADDR.addr_q_reg[4] 
       (.C(out),
        .CE(\USE_RTL_ADDR.addr_q ),
        .D(\USE_RTL_ADDR.addr_q[4]_i_2_n_0 ),
        .Q(\USE_RTL_ADDR.addr_q_reg [4]),
        .R(SR));
  LUT5 #(
    .INIT(32'hFE020000)) 
    \USE_RTL_CURR_WORD.current_word_q[0]_i_1 
       (.I0(\USE_RTL_CURR_WORD.current_word_q_reg[2] [0]),
        .I1(Q[8]),
        .I2(\USE_RTL_CURR_WORD.first_word_q ),
        .I3(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20] ),
        .I4(\USE_WRITE.wr_cmd_mask [0]),
        .O(\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h888A8880)) 
    \USE_RTL_CURR_WORD.current_word_q[1]_i_1 
       (.I0(\USE_WRITE.wr_cmd_mask [1]),
        .I1(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[21] ),
        .I2(\USE_RTL_CURR_WORD.first_word_q ),
        .I3(Q[8]),
        .I4(\USE_RTL_CURR_WORD.current_word_q_reg[2] [1]),
        .O(\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] [1]));
  LUT5 #(
    .INIT(32'hFE020000)) 
    \USE_RTL_CURR_WORD.current_word_q[2]_i_1 
       (.I0(\USE_RTL_CURR_WORD.current_word_q_reg[2] [2]),
        .I1(Q[8]),
        .I2(\USE_RTL_CURR_WORD.first_word_q ),
        .I3(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[22] ),
        .I4(\USE_WRITE.wr_cmd_mask [2]),
        .O(\USE_RTL_CURR_WORD.pre_next_word_q_reg[2] [2]));
  LUT6 #(
    .INIT(64'h8888008088888888)) 
    \USE_RTL_CURR_WORD.first_word_q_i_1 
       (.I0(s_axi_wvalid),
        .I1(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .I2(Q[7]),
        .I3(wrap_buffer_available),
        .I4(m_axi_wready),
        .I5(\USE_REGISTER.M_AXI_WVALID_q_reg_0 ),
        .O(s_axi_wvalid_0));
  LUT6 #(
    .INIT(64'h54570000ABA80000)) 
    \USE_RTL_CURR_WORD.pre_next_word_q[0]_i_1 
       (.I0(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20] ),
        .I1(\USE_RTL_CURR_WORD.first_word_q ),
        .I2(Q[8]),
        .I3(\USE_RTL_CURR_WORD.current_word_q_reg[2] [0]),
        .I4(\USE_WRITE.wr_cmd_mask [0]),
        .I5(cmd_step[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h56A60000A9590000)) 
    \USE_RTL_CURR_WORD.pre_next_word_q[1]_i_1 
       (.I0(cmd_step[1]),
        .I1(\USE_RTL_CURR_WORD.current_word_q_reg[2] [1]),
        .I2(sel_first_word__0),
        .I3(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[21] ),
        .I4(\USE_WRITE.wr_cmd_mask [1]),
        .I5(\USE_RTL_CURR_WORD.pre_next_word_q[1]_i_2_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h5557FFF7)) 
    \USE_RTL_CURR_WORD.pre_next_word_q[1]_i_2 
       (.I0(cmd_step[0]),
        .I1(\USE_RTL_CURR_WORD.current_word_q_reg[2] [0]),
        .I2(Q[8]),
        .I3(\USE_RTL_CURR_WORD.first_word_q ),
        .I4(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20] ),
        .O(\USE_RTL_CURR_WORD.pre_next_word_q[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9A95656A00000000)) 
    \USE_RTL_CURR_WORD.pre_next_word_q[2]_i_1 
       (.I0(\USE_RTL_CURR_WORD.pre_next_word_q[2]_i_2_n_0 ),
        .I1(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[22] ),
        .I2(sel_first_word__0),
        .I3(\USE_RTL_CURR_WORD.current_word_q_reg[2] [2]),
        .I4(cmd_step[2]),
        .I5(\USE_WRITE.wr_cmd_mask [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hB2B2B2BBB2B2B222)) 
    \USE_RTL_CURR_WORD.pre_next_word_q[2]_i_2 
       (.I0(cmd_step[1]),
        .I1(\USE_RTL_CURR_WORD.pre_next_word_q[1]_i_2_n_0 ),
        .I2(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[21] ),
        .I3(\USE_RTL_CURR_WORD.first_word_q ),
        .I4(Q[8]),
        .I5(\USE_RTL_CURR_WORD.current_word_q_reg[2] [1]),
        .O(\USE_RTL_CURR_WORD.pre_next_word_q[2]_i_2_n_0 ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][0]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[0]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][0]_srl32_Q31_UNCONNECTED ));
  LUT3 #(
    .INIT(8'h01)) 
    \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1 
       (.I0(cmd_push_block),
        .I1(E),
        .I2(\USE_RTL_VALID_WRITE.buffer_Full_q ),
        .O(valid_Write));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][10]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][10]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[6]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][10]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][10]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][11]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][11]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[7]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][11]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][11]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][12]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][12]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[8]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][12]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][12]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][13]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][13]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[9]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][13]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][13]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][16]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][16]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[10]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][16]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][16]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][17]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][17]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[11]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][17]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][17]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][18]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][18]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[12]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][18]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][18]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][19]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][19]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[13]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][19]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][19]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][1]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[1]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][1]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][20]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][20]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[14]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][20]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][20]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][21]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][21]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[15]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][21]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][21]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][22]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][22]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[16]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][22]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][22]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][23]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][23]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[17]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][23]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][23]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][24]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][24]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[18]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][24]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][24]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][25]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][25]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[19]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][25]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][25]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][26]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][26]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[20]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][26]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][26]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][27]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][27]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[21]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][27]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][27]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][28]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][28]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[22]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][28]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][28]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][29]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][29]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[23]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][29]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][29]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][2]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][2]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[2]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][2]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][2]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][3]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][3]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[3]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][3]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][3]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][4]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][4]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(1'b0),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][4]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][4]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][8]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][8]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[4]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][8]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][8]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][9]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][9]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[5]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][9]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][9]_srl32_Q31_UNCONNECTED ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_RTL_LENGTH.first_mi_word_q_i_1 
       (.I0(s_axi_wlast),
        .I1(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[29]_0 ),
        .I2(\USE_RTL_LENGTH.first_mi_word_q ),
        .O(s_axi_wlast_2));
  LUT6 #(
    .INIT(64'hF5A0DD225F0ADD22)) 
    \USE_RTL_LENGTH.length_counter_q[1]_i_1 
       (.I0(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[29]_0 ),
        .I1(\USE_RTL_LENGTH.length_counter_q_reg[1] [0]),
        .I2(Q[0]),
        .I3(\USE_RTL_LENGTH.length_counter_q_reg[1] [1]),
        .I4(\USE_RTL_LENGTH.first_mi_word_q ),
        .I5(Q[1]),
        .O(\USE_RTL_LENGTH.length_counter_q_reg[0] ));
  LUT6 #(
    .INIT(64'h00FFFFFF00100000)) 
    \USE_RTL_VALID_WRITE.buffer_Full_q_i_1 
       (.I0(E),
        .I1(cmd_push_block),
        .I2(\USE_RTL_VALID_WRITE.buffer_Full_q_i_2_n_0 ),
        .I3(M_READY_I),
        .I4(data_Exists_I),
        .I5(\USE_RTL_VALID_WRITE.buffer_Full_q ),
        .O(\USE_RTL_VALID_WRITE.buffer_Full_q_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \USE_RTL_VALID_WRITE.buffer_Full_q_i_2 
       (.I0(\USE_RTL_ADDR.addr_q_reg [2]),
        .I1(\USE_RTL_ADDR.addr_q_reg [3]),
        .I2(\USE_RTL_ADDR.addr_q_reg [4]),
        .I3(\USE_RTL_ADDR.addr_q_reg [1]),
        .I4(\USE_RTL_ADDR.addr_q_reg [0]),
        .O(\USE_RTL_VALID_WRITE.buffer_Full_q_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_RTL_VALID_WRITE.buffer_Full_q_reg 
       (.C(out),
        .CE(1'b1),
        .D(\USE_RTL_VALID_WRITE.buffer_Full_q_i_1_n_0 ),
        .Q(\USE_RTL_VALID_WRITE.buffer_Full_q ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q[0]_i_1 
       (.I0(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[29]_0 ),
        .I1(s_axi_wlast),
        .I2(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .I3(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0] ),
        .O(s_axi_wlast_0));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q[0]_i_2 
       (.I0(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_1_in ),
        .I1(wrap_buffer_available),
        .I2(Q[7]),
        .I3(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .I4(s_axi_wvalid),
        .I5(s_axi_wstrb[0]),
        .O(wrap_buffer_available_reg_6));
  LUT5 #(
    .INIT(32'hFFFEAAAE)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q[0]_i_3 
       (.I0(Q[5]),
        .I1(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 [2]),
        .I2(Q[8]),
        .I3(\USE_RTL_CURR_WORD.first_word_q ),
        .I4(Q[6]),
        .O(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_1_in ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q[1]_i_1 
       (.I0(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_1_in ),
        .I1(wrap_buffer_available),
        .I2(Q[7]),
        .I3(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .I4(s_axi_wvalid),
        .I5(s_axi_wstrb[1]),
        .O(wrap_buffer_available_reg_5));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q[2]_i_1 
       (.I0(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_1_in ),
        .I1(wrap_buffer_available),
        .I2(Q[7]),
        .I3(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .I4(s_axi_wvalid),
        .I5(s_axi_wstrb[2]),
        .O(wrap_buffer_available_reg_4));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q[3]_i_1 
       (.I0(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_1_in ),
        .I1(wrap_buffer_available),
        .I2(Q[7]),
        .I3(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .I4(s_axi_wvalid),
        .I5(s_axi_wstrb[3]),
        .O(wrap_buffer_available_reg_3));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q[4]_i_1 
       (.I0(wrap_buffer_available),
        .I1(Q[7]),
        .I2(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .I3(s_axi_wvalid),
        .I4(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_1_in ),
        .I5(s_axi_wstrb[0]),
        .O(wrap_buffer_available_reg_2));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q[5]_i_1 
       (.I0(wrap_buffer_available),
        .I1(Q[7]),
        .I2(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .I3(s_axi_wvalid),
        .I4(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_1_in ),
        .I5(s_axi_wstrb[1]),
        .O(wrap_buffer_available_reg_1));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q[6]_i_1 
       (.I0(wrap_buffer_available),
        .I1(Q[7]),
        .I2(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .I3(s_axi_wvalid),
        .I4(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_1_in ),
        .I5(s_axi_wstrb[2]),
        .O(wrap_buffer_available_reg_0));
  LUT3 #(
    .INIT(8'h80)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_5 
       (.I0(wrap_buffer_available),
        .I1(s_axi_wvalid_0),
        .I2(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_86_in ),
        .O(p_79_in));
  LUT6 #(
    .INIT(64'h4500550000000000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_6 
       (.I0(\USE_WRITE.wr_cmd_modified ),
        .I1(wrap_buffer_available),
        .I2(Q[7]),
        .I3(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .I4(s_axi_wvalid),
        .I5(s_axi_wvalid_0),
        .O(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28]_0 ));
  LUT5 #(
    .INIT(32'h08800000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_7 
       (.I0(\USE_WRITE.wr_cmd_modified ),
        .I1(\USE_REGISTER.M_AXI_WVALID_q_i_4_n_0 ),
        .I2(cmd_last_word[2]),
        .I3(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_8_n_0 ),
        .I4(\USE_REGISTER.M_AXI_WVALID_q_reg ),
        .O(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_86_in ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h5457)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_8 
       (.I0(Q[6]),
        .I1(\USE_RTL_CURR_WORD.first_word_q ),
        .I2(Q[8]),
        .I3(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0 [2]),
        .O(\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q[7]_i_1 
       (.I0(wrap_buffer_available),
        .I1(Q[7]),
        .I2(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .I3(s_axi_wvalid),
        .I4(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_1_in ),
        .I5(s_axi_wstrb[3]),
        .O(wrap_buffer_available_reg));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h1101)) 
    cmd_push_block_i_1
       (.I0(m_axi_awready),
        .I1(E),
        .I2(\USE_RTL_VALID_WRITE.buffer_Full_q ),
        .I3(cmd_push_block),
        .O(cmd_push_block0));
  LUT6 #(
    .INIT(64'h5557FFFF00020002)) 
    data_Exists_I_i_1
       (.I0(buffer_Empty__3),
        .I1(\USE_RTL_VALID_WRITE.buffer_Full_q ),
        .I2(E),
        .I3(cmd_push_block),
        .I4(M_READY_I),
        .I5(data_Exists_I),
        .O(next_Data_Exists));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    data_Exists_I_i_2
       (.I0(\USE_RTL_ADDR.addr_q_reg [0]),
        .I1(\USE_RTL_ADDR.addr_q_reg [1]),
        .I2(\USE_RTL_ADDR.addr_q_reg [2]),
        .I3(\USE_RTL_ADDR.addr_q_reg [4]),
        .I4(\USE_RTL_ADDR.addr_q_reg [3]),
        .O(buffer_Empty__3));
  FDRE #(
    .INIT(1'b0)) 
    data_Exists_I_reg
       (.C(out),
        .CE(1'b1),
        .D(next_Data_Exists),
        .Q(data_Exists_I),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    m_axi_awvalid_INST_0
       (.I0(\USE_RTL_VALID_WRITE.buffer_Full_q ),
        .I1(cmd_push_block),
        .I2(E),
        .O(m_axi_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'hB)) 
    m_valid_i_inv_i_2
       (.I0(cmd_push_block),
        .I1(\USE_RTL_VALID_WRITE.buffer_Full_q ),
        .O(cmd_push_block_reg));
  LUT5 #(
    .INIT(32'hF2FF0000)) 
    s_axi_wready_INST_0
       (.I0(Q[7]),
        .I1(wrap_buffer_available),
        .I2(m_axi_wready),
        .I3(\USE_REGISTER.M_AXI_WVALID_q_reg_0 ),
        .I4(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .O(s_axi_wready));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h77F7)) 
    s_ready_i_i_2
       (.I0(\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0] ),
        .I1(m_axi_awready),
        .I2(\USE_RTL_VALID_WRITE.buffer_Full_q ),
        .I3(cmd_push_block),
        .O(s_axi_aresetn));
  LUT5 #(
    .INIT(32'hFF7FFF00)) 
    wrap_buffer_available_i_1
       (.I0(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[29]_0 ),
        .I1(s_axi_wlast),
        .I2(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .I3(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/wrap_buffer_available0 ),
        .I4(wrap_buffer_available),
        .O(s_axi_wlast_1));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    wrap_buffer_available_i_2
       (.I0(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/word_completed__7 ),
        .I1(s_axi_wvalid),
        .I2(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .I3(Q[7]),
        .I4(wrap_buffer_available),
        .O(\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/wrap_buffer_available0 ));
endmodule

(* ORIG_REF_NAME = "generic_baseblocks_v2_1_0_command_fifo" *) 
module design_1_auto_us_0_generic_baseblocks_v2_1_0_command_fifo_1
   (\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_0 ,
    Q,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1 ,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]_0 ,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_2 ,
    s_axi_rvalid,
    s_axi_rready_0,
    p_13_in,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_3 ,
    D,
    \pre_next_word_1_reg[2] ,
    \MULTIPLE_WORD.current_index ,
    s_axi_aresetn,
    cmd_push_block0,
    m_axi_arvalid,
    cmd_push_block_reg,
    SR,
    out,
    \USE_RTL_LENGTH.first_mi_word_q ,
    E,
    use_wrap_buffer,
    mr_rvalid,
    s_axi_rready,
    cmd_push_block,
    m_axi_arvalid_0,
    last_beat__6,
    wrap_buffer_available,
    \current_word_1_reg[2] ,
    sel_first_word__0,
    first_word,
    first_word_reg,
    s_ready_i_reg,
    m_axi_arready,
    in);
  output \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ;
  output \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_0 ;
  output [5:0]Q;
  output \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1 ;
  output \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]_0 ;
  output \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_2 ;
  output s_axi_rvalid;
  output [0:0]s_axi_rready_0;
  output p_13_in;
  output \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_3 ;
  output [2:0]D;
  output [2:0]\pre_next_word_1_reg[2] ;
  output \MULTIPLE_WORD.current_index ;
  output s_axi_aresetn;
  output cmd_push_block0;
  output m_axi_arvalid;
  output cmd_push_block_reg;
  input [0:0]SR;
  input out;
  input \USE_RTL_LENGTH.first_mi_word_q ;
  input [0:0]E;
  input use_wrap_buffer;
  input mr_rvalid;
  input s_axi_rready;
  input cmd_push_block;
  input [0:0]m_axi_arvalid_0;
  input last_beat__6;
  input wrap_buffer_available;
  input [2:0]\current_word_1_reg[2] ;
  input sel_first_word__0;
  input first_word;
  input [2:0]first_word_reg;
  input s_ready_i_reg;
  input m_axi_arready;
  input [23:0]in;

  wire [2:0]D;
  wire [0:0]E;
  wire \MULTIPLE_WORD.current_index ;
  wire M_READY_I;
  wire [5:0]Q;
  wire [0:0]SR;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]_0 ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_0 ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[10] ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[17] ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[18] ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[19] ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20] ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[21] ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[22] ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[23] ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[24] ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[25] ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[8] ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[9] ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1 ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_2 ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_3 ;
  wire [2:2]\USE_READ.gen_non_fifo_r_upsizer.read_data_inst/current_word__2 ;
  wire [1:1]\USE_READ.gen_non_fifo_r_upsizer.read_data_inst/next_word_i__2 ;
  wire \USE_READ.rd_cmd_complete_wrap ;
  wire [2:0]\USE_READ.rd_cmd_mask ;
  wire \USE_READ.rd_cmd_modified ;
  wire [2:2]\USE_READ.rd_cmd_offset ;
  wire \USE_RTL_ADDR.addr_q ;
  wire \USE_RTL_ADDR.addr_q[0]_i_1__0_n_0 ;
  wire \USE_RTL_ADDR.addr_q[1]_i_1__0_n_0 ;
  wire \USE_RTL_ADDR.addr_q[2]_i_1__0_n_0 ;
  wire \USE_RTL_ADDR.addr_q[3]_i_1__0_n_0 ;
  wire \USE_RTL_ADDR.addr_q[4]_i_2__0_n_0 ;
  wire \USE_RTL_ADDR.addr_q[4]_i_3__0_n_0 ;
  wire [4:0]\USE_RTL_ADDR.addr_q_reg ;
  wire \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][10]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][11]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][12]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][13]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][16]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][17]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][18]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][19]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][1]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][20]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][21]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][23]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][24]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][25]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][26]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][27]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][28]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][29]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][2]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][3]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][8]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][9]_srl32_n_0 ;
  wire \USE_RTL_LENGTH.first_mi_word_q ;
  wire \USE_RTL_LENGTH.length_counter_q[7]_i_5_n_0 ;
  wire \USE_RTL_VALID_WRITE.buffer_Full_q ;
  wire \USE_RTL_VALID_WRITE.buffer_Full_q_i_1__0_n_0 ;
  wire \USE_RTL_VALID_WRITE.buffer_Full_q_i_2__0_n_0 ;
  wire buffer_Empty__3;
  wire cmd_push_block;
  wire cmd_push_block0;
  wire cmd_push_block_reg;
  wire [2:0]\current_word_1_reg[2] ;
  wire data_Exists_I;
  wire first_word;
  wire [2:0]first_word_reg;
  wire [23:0]in;
  wire last_beat__6;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [0:0]m_axi_arvalid_0;
  wire mr_rvalid;
  wire next_Data_Exists;
  wire out;
  wire p_13_in;
  wire \pre_next_word_1[1]_i_2_n_0 ;
  wire \pre_next_word_1[2]_i_3_n_0 ;
  wire [2:0]\pre_next_word_1_reg[2] ;
  wire s_axi_aresetn;
  wire s_axi_rlast_INST_0_i_2_n_0;
  wire s_axi_rlast_INST_0_i_4_n_0;
  wire s_axi_rready;
  wire [0:0]s_axi_rready_0;
  wire s_axi_rvalid;
  wire s_ready_i_i_3_n_0;
  wire s_ready_i_reg;
  wire sel_first_word__0;
  wire use_wrap_buffer;
  wire valid_Write;
  wire wrap_buffer_available;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][10]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][11]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][12]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][13]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][16]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][17]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][18]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][19]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][20]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][21]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][22]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][23]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][24]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][25]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][26]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][27]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][28]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][29]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][2]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][3]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][8]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][9]_srl32_Q31_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hA800FFFF)) 
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_1__0 
       (.I0(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]_0 ),
        .I1(use_wrap_buffer),
        .I2(mr_rvalid),
        .I3(s_axi_rready),
        .I4(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .O(M_READY_I));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[0] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[10] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][10]_srl32_n_0 ),
        .Q(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[10] ),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[11] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][11]_srl32_n_0 ),
        .Q(\USE_READ.rd_cmd_mask [0]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[12] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][12]_srl32_n_0 ),
        .Q(\USE_READ.rd_cmd_mask [1]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[13] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][13]_srl32_n_0 ),
        .Q(\USE_READ.rd_cmd_mask [2]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[16] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][16]_srl32_n_0 ),
        .Q(\USE_READ.rd_cmd_offset ),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[17] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][17]_srl32_n_0 ),
        .Q(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[17] ),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[18] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][18]_srl32_n_0 ),
        .Q(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[18] ),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][19]_srl32_n_0 ),
        .Q(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[19] ),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][1]_srl32_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[20] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][20]_srl32_n_0 ),
        .Q(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20] ),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[21] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][21]_srl32_n_0 ),
        .Q(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[21] ),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[22] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][22]_srl32_n_0 ),
        .Q(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[22] ),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[23] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][23]_srl32_n_0 ),
        .Q(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[23] ),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[24] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][24]_srl32_n_0 ),
        .Q(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[24] ),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[25] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][25]_srl32_n_0 ),
        .Q(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[25] ),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[26] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][26]_srl32_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[27] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][27]_srl32_n_0 ),
        .Q(\USE_READ.rd_cmd_complete_wrap ),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][28]_srl32_n_0 ),
        .Q(\USE_READ.rd_cmd_modified ),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[29] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][29]_srl32_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[2] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][2]_srl32_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[3] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][3]_srl32_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[8] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][8]_srl32_n_0 ),
        .Q(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[8] ),
        .R(SR));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[9] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][9]_srl32_n_0 ),
        .Q(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[9] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg 
       (.C(out),
        .CE(M_READY_I),
        .D(data_Exists_I),
        .Q(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \USE_RTL_ADDR.addr_q[0]_i_1__0 
       (.I0(\USE_RTL_ADDR.addr_q_reg [0]),
        .O(\USE_RTL_ADDR.addr_q[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999999996)) 
    \USE_RTL_ADDR.addr_q[1]_i_1__0 
       (.I0(\USE_RTL_ADDR.addr_q_reg [1]),
        .I1(\USE_RTL_ADDR.addr_q_reg [0]),
        .I2(cmd_push_block),
        .I3(m_axi_arvalid_0),
        .I4(\USE_RTL_VALID_WRITE.buffer_Full_q ),
        .I5(M_READY_I),
        .O(\USE_RTL_ADDR.addr_q[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hA9A96AA9)) 
    \USE_RTL_ADDR.addr_q[2]_i_1__0 
       (.I0(\USE_RTL_ADDR.addr_q_reg [2]),
        .I1(\USE_RTL_ADDR.addr_q_reg [0]),
        .I2(\USE_RTL_ADDR.addr_q_reg [1]),
        .I3(valid_Write),
        .I4(M_READY_I),
        .O(\USE_RTL_ADDR.addr_q[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAA9A9AAA9)) 
    \USE_RTL_ADDR.addr_q[3]_i_1__0 
       (.I0(\USE_RTL_ADDR.addr_q_reg [3]),
        .I1(\USE_RTL_ADDR.addr_q_reg [0]),
        .I2(\USE_RTL_ADDR.addr_q_reg [1]),
        .I3(valid_Write),
        .I4(M_READY_I),
        .I5(\USE_RTL_ADDR.addr_q_reg [2]),
        .O(\USE_RTL_ADDR.addr_q[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h4444444300000000)) 
    \USE_RTL_ADDR.addr_q[4]_i_1__0 
       (.I0(buffer_Empty__3),
        .I1(M_READY_I),
        .I2(\USE_RTL_VALID_WRITE.buffer_Full_q ),
        .I3(m_axi_arvalid_0),
        .I4(cmd_push_block),
        .I5(data_Exists_I),
        .O(\USE_RTL_ADDR.addr_q ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAA9AA)) 
    \USE_RTL_ADDR.addr_q[4]_i_2__0 
       (.I0(\USE_RTL_ADDR.addr_q_reg [4]),
        .I1(\USE_RTL_ADDR.addr_q_reg [0]),
        .I2(\USE_RTL_ADDR.addr_q_reg [1]),
        .I3(\USE_RTL_ADDR.addr_q[4]_i_3__0_n_0 ),
        .I4(\USE_RTL_ADDR.addr_q_reg [2]),
        .I5(\USE_RTL_ADDR.addr_q_reg [3]),
        .O(\USE_RTL_ADDR.addr_q[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hDDD55555FFFFFFFF)) 
    \USE_RTL_ADDR.addr_q[4]_i_3__0 
       (.I0(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .I1(s_axi_rready),
        .I2(mr_rvalid),
        .I3(use_wrap_buffer),
        .I4(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]_0 ),
        .I5(valid_Write),
        .O(\USE_RTL_ADDR.addr_q[4]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_RTL_ADDR.addr_q_reg[0] 
       (.C(out),
        .CE(\USE_RTL_ADDR.addr_q ),
        .D(\USE_RTL_ADDR.addr_q[0]_i_1__0_n_0 ),
        .Q(\USE_RTL_ADDR.addr_q_reg [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_RTL_ADDR.addr_q_reg[1] 
       (.C(out),
        .CE(\USE_RTL_ADDR.addr_q ),
        .D(\USE_RTL_ADDR.addr_q[1]_i_1__0_n_0 ),
        .Q(\USE_RTL_ADDR.addr_q_reg [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_RTL_ADDR.addr_q_reg[2] 
       (.C(out),
        .CE(\USE_RTL_ADDR.addr_q ),
        .D(\USE_RTL_ADDR.addr_q[2]_i_1__0_n_0 ),
        .Q(\USE_RTL_ADDR.addr_q_reg [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_RTL_ADDR.addr_q_reg[3] 
       (.C(out),
        .CE(\USE_RTL_ADDR.addr_q ),
        .D(\USE_RTL_ADDR.addr_q[3]_i_1__0_n_0 ),
        .Q(\USE_RTL_ADDR.addr_q_reg [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_RTL_ADDR.addr_q_reg[4] 
       (.C(out),
        .CE(\USE_RTL_ADDR.addr_q ),
        .D(\USE_RTL_ADDR.addr_q[4]_i_2__0_n_0 ),
        .Q(\USE_RTL_ADDR.addr_q_reg [4]),
        .R(SR));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][0]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[0]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][0]_srl32_Q31_UNCONNECTED ));
  LUT3 #(
    .INIT(8'h01)) 
    \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1__0 
       (.I0(cmd_push_block),
        .I1(m_axi_arvalid_0),
        .I2(\USE_RTL_VALID_WRITE.buffer_Full_q ),
        .O(valid_Write));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][10]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][10]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[6]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][10]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][10]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][11]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][11]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[7]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][11]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][11]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][12]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][12]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[8]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][12]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][12]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][13]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][13]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[9]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][13]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][13]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][16]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][16]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[10]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][16]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][16]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][17]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][17]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[11]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][17]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][17]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][18]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][18]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[12]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][18]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][18]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][19]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][19]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[13]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][19]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][19]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][1]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[1]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][1]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][20]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][20]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[14]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][20]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][20]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][21]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][21]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[15]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][21]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][21]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][22]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][22]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[16]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][22]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][22]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][23]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][23]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[17]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][23]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][23]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][24]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][24]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[18]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][24]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][24]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][25]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][25]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[19]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][25]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][25]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][26]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][26]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[20]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][26]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][26]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][27]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][27]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[21]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][27]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][27]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][28]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][28]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[22]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][28]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][28]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][29]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][29]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[23]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][29]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][29]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][2]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][2]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[2]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][2]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][2]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][3]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][3]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[3]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][3]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][3]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][8]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][8]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[4]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][8]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][8]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][9]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][9]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(valid_Write),
        .CLK(out),
        .D(in[5]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][9]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][9]_srl32_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h11110111FFFFFFFF)) 
    \USE_RTL_LENGTH.length_counter_q[7]_i_3 
       (.I0(\USE_RTL_LENGTH.length_counter_q[7]_i_5_n_0 ),
        .I1(s_ready_i_i_3_n_0),
        .I2(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]_0 ),
        .I3(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .I4(use_wrap_buffer),
        .I5(s_axi_rready),
        .O(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_3 ));
  LUT3 #(
    .INIT(8'hB0)) 
    \USE_RTL_LENGTH.length_counter_q[7]_i_5 
       (.I0(Q[5]),
        .I1(\USE_READ.rd_cmd_modified ),
        .I2(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .O(\USE_RTL_LENGTH.length_counter_q[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00100000)) 
    \USE_RTL_VALID_WRITE.buffer_Full_q_i_1__0 
       (.I0(m_axi_arvalid_0),
        .I1(cmd_push_block),
        .I2(\USE_RTL_VALID_WRITE.buffer_Full_q_i_2__0_n_0 ),
        .I3(M_READY_I),
        .I4(data_Exists_I),
        .I5(\USE_RTL_VALID_WRITE.buffer_Full_q ),
        .O(\USE_RTL_VALID_WRITE.buffer_Full_q_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \USE_RTL_VALID_WRITE.buffer_Full_q_i_2__0 
       (.I0(\USE_RTL_ADDR.addr_q_reg [2]),
        .I1(\USE_RTL_ADDR.addr_q_reg [3]),
        .I2(\USE_RTL_ADDR.addr_q_reg [4]),
        .I3(\USE_RTL_ADDR.addr_q_reg [1]),
        .I4(\USE_RTL_ADDR.addr_q_reg [0]),
        .O(\USE_RTL_VALID_WRITE.buffer_Full_q_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_RTL_VALID_WRITE.buffer_Full_q_reg 
       (.C(out),
        .CE(1'b1),
        .D(\USE_RTL_VALID_WRITE.buffer_Full_q_i_1__0_n_0 ),
        .Q(\USE_RTL_VALID_WRITE.buffer_Full_q ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h1101)) 
    cmd_push_block_i_1__0
       (.I0(m_axi_arready),
        .I1(m_axi_arvalid_0),
        .I2(\USE_RTL_VALID_WRITE.buffer_Full_q ),
        .I3(cmd_push_block),
        .O(cmd_push_block0));
  LUT5 #(
    .INIT(32'hFE020000)) 
    \current_word_1[0]_i_1 
       (.I0(\current_word_1_reg[2] [0]),
        .I1(Q[5]),
        .I2(first_word),
        .I3(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20] ),
        .I4(\USE_READ.rd_cmd_mask [0]),
        .O(\pre_next_word_1_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h888A8880)) 
    \current_word_1[1]_i_1 
       (.I0(\USE_READ.rd_cmd_mask [1]),
        .I1(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[21] ),
        .I2(first_word),
        .I3(Q[5]),
        .I4(\current_word_1_reg[2] [1]),
        .O(\pre_next_word_1_reg[2] [1]));
  LUT5 #(
    .INIT(32'hFE020000)) 
    \current_word_1[2]_i_1 
       (.I0(\current_word_1_reg[2] [2]),
        .I1(Q[5]),
        .I2(first_word),
        .I3(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[22] ),
        .I4(\USE_READ.rd_cmd_mask [2]),
        .O(\pre_next_word_1_reg[2] [2]));
  LUT6 #(
    .INIT(64'h5557FFFF00020002)) 
    data_Exists_I_i_1__0
       (.I0(buffer_Empty__3),
        .I1(\USE_RTL_VALID_WRITE.buffer_Full_q ),
        .I2(m_axi_arvalid_0),
        .I3(cmd_push_block),
        .I4(M_READY_I),
        .I5(data_Exists_I),
        .O(next_Data_Exists));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    data_Exists_I_i_2__0
       (.I0(\USE_RTL_ADDR.addr_q_reg [0]),
        .I1(\USE_RTL_ADDR.addr_q_reg [1]),
        .I2(\USE_RTL_ADDR.addr_q_reg [2]),
        .I3(\USE_RTL_ADDR.addr_q_reg [4]),
        .I4(\USE_RTL_ADDR.addr_q_reg [3]),
        .O(buffer_Empty__3));
  FDRE #(
    .INIT(1'b0)) 
    data_Exists_I_reg
       (.C(out),
        .CE(1'b1),
        .D(next_Data_Exists),
        .Q(data_Exists_I),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    m_axi_arvalid_INST_0
       (.I0(\USE_RTL_VALID_WRITE.buffer_Full_q ),
        .I1(cmd_push_block),
        .I2(m_axi_arvalid_0),
        .O(m_axi_arvalid));
  LUT3 #(
    .INIT(8'h8F)) 
    \m_payload_i[66]_i_1 
       (.I0(s_axi_rready),
        .I1(p_13_in),
        .I2(mr_rvalid),
        .O(s_axi_rready_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hB)) 
    m_valid_i_inv_i_2__0
       (.I0(cmd_push_block),
        .I1(\USE_RTL_VALID_WRITE.buffer_Full_q ),
        .O(cmd_push_block_reg));
  LUT6 #(
    .INIT(64'h54570000ABA80000)) 
    \pre_next_word_1[0]_i_1 
       (.I0(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20] ),
        .I1(first_word),
        .I2(Q[5]),
        .I3(\current_word_1_reg[2] [0]),
        .I4(\USE_READ.rd_cmd_mask [0]),
        .I5(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[8] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h56A60000A9590000)) 
    \pre_next_word_1[1]_i_1 
       (.I0(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[9] ),
        .I1(\current_word_1_reg[2] [1]),
        .I2(sel_first_word__0),
        .I3(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[21] ),
        .I4(\USE_READ.rd_cmd_mask [1]),
        .I5(\pre_next_word_1[1]_i_2_n_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h5557FFF7)) 
    \pre_next_word_1[1]_i_2 
       (.I0(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[8] ),
        .I1(\current_word_1_reg[2] [0]),
        .I2(Q[5]),
        .I3(first_word),
        .I4(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20] ),
        .O(\pre_next_word_1[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9A95656A00000000)) 
    \pre_next_word_1[2]_i_2 
       (.I0(\pre_next_word_1[2]_i_3_n_0 ),
        .I1(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[22] ),
        .I2(sel_first_word__0),
        .I3(\current_word_1_reg[2] [2]),
        .I4(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[10] ),
        .I5(\USE_READ.rd_cmd_mask [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hB2B2B2BBB2B2B222)) 
    \pre_next_word_1[2]_i_3 
       (.I0(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[9] ),
        .I1(\pre_next_word_1[1]_i_2_n_0 ),
        .I2(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[21] ),
        .I3(first_word),
        .I4(Q[5]),
        .I5(\current_word_1_reg[2] [1]),
        .O(\pre_next_word_1[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hFFFFFE02)) 
    \s_axi_rdata[31]_INST_0_i_1 
       (.I0(first_word_reg[2]),
        .I1(Q[5]),
        .I2(first_word),
        .I3(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[25] ),
        .I4(\USE_READ.rd_cmd_offset ),
        .O(\MULTIPLE_WORD.current_index ));
  LUT6 #(
    .INIT(64'h9000900090909000)) 
    s_axi_rlast_INST_0
       (.I0(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[19] ),
        .I1(\USE_READ.gen_non_fifo_r_upsizer.read_data_inst/current_word__2 ),
        .I2(s_axi_rlast_INST_0_i_2_n_0),
        .I3(use_wrap_buffer),
        .I4(last_beat__6),
        .I5(wrap_buffer_available),
        .O(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    s_axi_rlast_INST_0_i_1
       (.I0(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[25] ),
        .I1(first_word),
        .I2(Q[5]),
        .I3(first_word_reg[2]),
        .O(\USE_READ.gen_non_fifo_r_upsizer.read_data_inst/current_word__2 ));
  LUT6 #(
    .INIT(64'h999A999500000000)) 
    s_axi_rlast_INST_0_i_2
       (.I0(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[17] ),
        .I1(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[23] ),
        .I2(first_word),
        .I3(Q[5]),
        .I4(first_word_reg[0]),
        .I5(s_axi_rlast_INST_0_i_4_n_0),
        .O(s_axi_rlast_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFE0201FD)) 
    s_axi_rlast_INST_0_i_4
       (.I0(first_word_reg[1]),
        .I1(Q[5]),
        .I2(first_word),
        .I3(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[24] ),
        .I4(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[18] ),
        .O(s_axi_rlast_INST_0_i_4_n_0));
  LUT5 #(
    .INIT(32'h00000010)) 
    s_axi_rlast_INST_0_i_5
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\USE_RTL_LENGTH.first_mi_word_q ),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    s_axi_rvalid_INST_0
       (.I0(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .I1(mr_rvalid),
        .I2(use_wrap_buffer),
        .O(s_axi_rvalid));
  LUT6 #(
    .INIT(64'hFFF0FFF0F4F0FFF0)) 
    s_ready_i_i_2__0
       (.I0(use_wrap_buffer),
        .I1(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]_0 ),
        .I2(s_ready_i_i_3_n_0),
        .I3(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .I4(\USE_READ.rd_cmd_modified ),
        .I5(Q[5]),
        .O(p_13_in));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h77F7)) 
    s_ready_i_i_2__1
       (.I0(s_ready_i_reg),
        .I1(m_axi_arready),
        .I2(\USE_RTL_VALID_WRITE.buffer_Full_q ),
        .I3(cmd_push_block),
        .O(s_axi_aresetn));
  LUT6 #(
    .INIT(64'h0000000000000070)) 
    s_ready_i_i_3
       (.I0(\USE_READ.gen_non_fifo_r_upsizer.read_data_inst/next_word_i__2 ),
        .I1(\USE_READ.rd_cmd_mask [1]),
        .I2(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .I3(\USE_READ.rd_cmd_complete_wrap ),
        .I4(\pre_next_word_1_reg[2] [2]),
        .I5(\pre_next_word_1_reg[2] [0]),
        .O(s_ready_i_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    s_ready_i_i_4
       (.I0(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[21] ),
        .I1(first_word),
        .I2(Q[5]),
        .I3(\current_word_1_reg[2] [1]),
        .O(\USE_READ.gen_non_fifo_r_upsizer.read_data_inst/next_word_i__2 ));
  LUT6 #(
    .INIT(64'hA8A8A8A8AAA8A8A8)) 
    use_wrap_buffer_i_2
       (.I0(E),
        .I1(\USE_RTL_LENGTH.length_counter_q[7]_i_5_n_0 ),
        .I2(s_ready_i_i_3_n_0),
        .I3(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]_0 ),
        .I4(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .I5(use_wrap_buffer),
        .O(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hA8000000)) 
    use_wrap_buffer_i_3
       (.I0(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ),
        .I1(use_wrap_buffer),
        .I2(mr_rvalid),
        .I3(s_axi_rready),
        .I4(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]_0 ),
        .O(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_2 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
