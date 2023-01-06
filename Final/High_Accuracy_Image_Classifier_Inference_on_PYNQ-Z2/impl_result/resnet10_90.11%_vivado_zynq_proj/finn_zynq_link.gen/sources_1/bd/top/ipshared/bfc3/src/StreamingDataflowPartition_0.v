//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Wed Dec 28 15:00:01 2022
//Host        : finn_dev_yhp running 64-bit Ubuntu 18.04.5 LTS
//Command     : generate_target StreamingDataflowPartition_0.bd
//Design      : StreamingDataflowPartition_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "StreamingDataflowPartition_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=StreamingDataflowPartition_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "StreamingDataflowPartition_0.hwdef" *) 
module StreamingDataflowPartition_0
   (ap_clk,
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
    m_axis_0_tdata,
    m_axis_0_tready,
    m_axis_0_tvalid,
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
    s_axi_control_0_wvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF s_axi_control_0:m_axi_gmem0:m_axis_0, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN StreamingDataflowPartition_0_ap_clk_0, FREQ_HZ 100000000.000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem0, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN StreamingDataflowPartition_0_ap_clk_0, DATA_WIDTH 64, FREQ_HZ 100000000.000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m_axi_gmem0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [1:0]m_axi_gmem0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [3:0]m_axi_gmem0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [7:0]m_axi_gmem0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [1:0]m_axi_gmem0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [2:0]m_axi_gmem0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [3:0]m_axi_gmem0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) input m_axi_gmem0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [3:0]m_axi_gmem0_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [2:0]m_axi_gmem0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output m_axi_gmem0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [63:0]m_axi_gmem0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [1:0]m_axi_gmem0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [3:0]m_axi_gmem0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [7:0]m_axi_gmem0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [1:0]m_axi_gmem0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [2:0]m_axi_gmem0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [3:0]m_axi_gmem0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) input m_axi_gmem0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [3:0]m_axi_gmem0_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [2:0]m_axi_gmem0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output m_axi_gmem0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output m_axi_gmem0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) input [1:0]m_axi_gmem0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) input m_axi_gmem0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) input [63:0]m_axi_gmem0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) input m_axi_gmem0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output m_axi_gmem0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) input [1:0]m_axi_gmem0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) input m_axi_gmem0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [63:0]m_axi_gmem0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output m_axi_gmem0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) input m_axi_gmem0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [7:0]m_axi_gmem0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output m_axi_gmem0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_0, CLK_DOMAIN StreamingDataflowPartition_0_ap_clk_0, FREQ_HZ 100000000.000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [7:0]m_axis_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 " *) input m_axis_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 " *) output m_axis_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control_0, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN StreamingDataflowPartition_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 100000000.000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [5:0]s_axi_control_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 ARREADY" *) output s_axi_control_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 ARVALID" *) input s_axi_control_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 AWADDR" *) input [5:0]s_axi_control_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 AWREADY" *) output s_axi_control_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 AWVALID" *) input s_axi_control_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 BREADY" *) input s_axi_control_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 BRESP" *) output [1:0]s_axi_control_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 BVALID" *) output s_axi_control_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 RDATA" *) output [31:0]s_axi_control_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 RREADY" *) input s_axi_control_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 RRESP" *) output [1:0]s_axi_control_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 RVALID" *) output s_axi_control_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 WDATA" *) input [31:0]s_axi_control_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 WREADY" *) output s_axi_control_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 WSTRB" *) input [3:0]s_axi_control_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_0 WVALID" *) input s_axi_control_0_wvalid;

  wire [63:0]StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARADDR;
  wire [1:0]StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARBURST;
  wire [3:0]StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARCACHE;
  wire [7:0]StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARLEN;
  wire [1:0]StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARLOCK;
  wire [2:0]StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARPROT;
  wire [3:0]StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARQOS;
  wire StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARREADY;
  wire [3:0]StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARREGION;
  wire [2:0]StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARSIZE;
  wire StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARVALID;
  wire [63:0]StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWADDR;
  wire [1:0]StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWBURST;
  wire [3:0]StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWCACHE;
  wire [7:0]StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWLEN;
  wire [1:0]StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWLOCK;
  wire [2:0]StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWPROT;
  wire [3:0]StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWQOS;
  wire StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWREADY;
  wire [3:0]StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWREGION;
  wire [2:0]StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWSIZE;
  wire StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWVALID;
  wire StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_BREADY;
  wire [1:0]StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_BRESP;
  wire StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_BVALID;
  wire [63:0]StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_RDATA;
  wire StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_RLAST;
  wire StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_RREADY;
  wire [1:0]StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_RRESP;
  wire StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_RVALID;
  wire [63:0]StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_WDATA;
  wire StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_WLAST;
  wire StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_WREADY;
  wire [7:0]StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_WSTRB;
  wire StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_WVALID;
  wire [7:0]StreamingDataflowPartition_0_IODMA_0_out_V_TDATA;
  wire StreamingDataflowPartition_0_IODMA_0_out_V_TREADY;
  wire StreamingDataflowPartition_0_IODMA_0_out_V_TVALID;
  wire ap_clk_0_1;
  wire ap_rst_n_0_1;
  wire [5:0]s_axi_control_0_1_ARADDR;
  wire s_axi_control_0_1_ARREADY;
  wire s_axi_control_0_1_ARVALID;
  wire [5:0]s_axi_control_0_1_AWADDR;
  wire s_axi_control_0_1_AWREADY;
  wire s_axi_control_0_1_AWVALID;
  wire s_axi_control_0_1_BREADY;
  wire [1:0]s_axi_control_0_1_BRESP;
  wire s_axi_control_0_1_BVALID;
  wire [31:0]s_axi_control_0_1_RDATA;
  wire s_axi_control_0_1_RREADY;
  wire [1:0]s_axi_control_0_1_RRESP;
  wire s_axi_control_0_1_RVALID;
  wire [31:0]s_axi_control_0_1_WDATA;
  wire s_axi_control_0_1_WREADY;
  wire [3:0]s_axi_control_0_1_WSTRB;
  wire s_axi_control_0_1_WVALID;

  assign StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARREADY = m_axi_gmem0_arready;
  assign StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWREADY = m_axi_gmem0_awready;
  assign StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_BRESP = m_axi_gmem0_bresp[1:0];
  assign StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_BVALID = m_axi_gmem0_bvalid;
  assign StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_RDATA = m_axi_gmem0_rdata[63:0];
  assign StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_RLAST = m_axi_gmem0_rlast;
  assign StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_RRESP = m_axi_gmem0_rresp[1:0];
  assign StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_RVALID = m_axi_gmem0_rvalid;
  assign StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_WREADY = m_axi_gmem0_wready;
  assign StreamingDataflowPartition_0_IODMA_0_out_V_TREADY = m_axis_0_tready;
  assign ap_clk_0_1 = ap_clk;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign m_axi_gmem0_araddr[63:0] = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARADDR;
  assign m_axi_gmem0_arburst[1:0] = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARBURST;
  assign m_axi_gmem0_arcache[3:0] = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARCACHE;
  assign m_axi_gmem0_arlen[7:0] = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARLEN;
  assign m_axi_gmem0_arlock[1:0] = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARLOCK;
  assign m_axi_gmem0_arprot[2:0] = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARPROT;
  assign m_axi_gmem0_arqos[3:0] = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARQOS;
  assign m_axi_gmem0_arregion[3:0] = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARREGION;
  assign m_axi_gmem0_arsize[2:0] = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARSIZE;
  assign m_axi_gmem0_arvalid = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARVALID;
  assign m_axi_gmem0_awaddr[63:0] = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWADDR;
  assign m_axi_gmem0_awburst[1:0] = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWBURST;
  assign m_axi_gmem0_awcache[3:0] = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWCACHE;
  assign m_axi_gmem0_awlen[7:0] = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWLEN;
  assign m_axi_gmem0_awlock[1:0] = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWLOCK;
  assign m_axi_gmem0_awprot[2:0] = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWPROT;
  assign m_axi_gmem0_awqos[3:0] = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWQOS;
  assign m_axi_gmem0_awregion[3:0] = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWREGION;
  assign m_axi_gmem0_awsize[2:0] = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWSIZE;
  assign m_axi_gmem0_awvalid = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWVALID;
  assign m_axi_gmem0_bready = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_BREADY;
  assign m_axi_gmem0_rready = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_RREADY;
  assign m_axi_gmem0_wdata[63:0] = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_WDATA;
  assign m_axi_gmem0_wlast = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_WLAST;
  assign m_axi_gmem0_wstrb[7:0] = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_WSTRB;
  assign m_axi_gmem0_wvalid = StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_WVALID;
  assign m_axis_0_tdata[7:0] = StreamingDataflowPartition_0_IODMA_0_out_V_TDATA;
  assign m_axis_0_tvalid = StreamingDataflowPartition_0_IODMA_0_out_V_TVALID;
  assign s_axi_control_0_1_ARADDR = s_axi_control_0_araddr[5:0];
  assign s_axi_control_0_1_ARVALID = s_axi_control_0_arvalid;
  assign s_axi_control_0_1_AWADDR = s_axi_control_0_awaddr[5:0];
  assign s_axi_control_0_1_AWVALID = s_axi_control_0_awvalid;
  assign s_axi_control_0_1_BREADY = s_axi_control_0_bready;
  assign s_axi_control_0_1_RREADY = s_axi_control_0_rready;
  assign s_axi_control_0_1_WDATA = s_axi_control_0_wdata[31:0];
  assign s_axi_control_0_1_WSTRB = s_axi_control_0_wstrb[3:0];
  assign s_axi_control_0_1_WVALID = s_axi_control_0_wvalid;
  assign s_axi_control_0_arready = s_axi_control_0_1_ARREADY;
  assign s_axi_control_0_awready = s_axi_control_0_1_AWREADY;
  assign s_axi_control_0_bresp[1:0] = s_axi_control_0_1_BRESP;
  assign s_axi_control_0_bvalid = s_axi_control_0_1_BVALID;
  assign s_axi_control_0_rdata[31:0] = s_axi_control_0_1_RDATA;
  assign s_axi_control_0_rresp[1:0] = s_axi_control_0_1_RRESP;
  assign s_axi_control_0_rvalid = s_axi_control_0_1_RVALID;
  assign s_axi_control_0_wready = s_axi_control_0_1_WREADY;
  StreamingDataflowPartition_0_StreamingDataflowPartition_0_IODMA_0_0 StreamingDataflowPartition_0_IODMA_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .m_axi_gmem_ARADDR(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARADDR),
        .m_axi_gmem_ARBURST(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARBURST),
        .m_axi_gmem_ARCACHE(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARCACHE),
        .m_axi_gmem_ARLEN(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARLEN),
        .m_axi_gmem_ARLOCK(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARLOCK),
        .m_axi_gmem_ARPROT(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARPROT),
        .m_axi_gmem_ARQOS(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARQOS),
        .m_axi_gmem_ARREADY(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARREADY),
        .m_axi_gmem_ARREGION(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARREGION),
        .m_axi_gmem_ARSIZE(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARSIZE),
        .m_axi_gmem_ARVALID(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_ARVALID),
        .m_axi_gmem_AWADDR(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWADDR),
        .m_axi_gmem_AWBURST(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWBURST),
        .m_axi_gmem_AWCACHE(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWCACHE),
        .m_axi_gmem_AWLEN(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWLEN),
        .m_axi_gmem_AWLOCK(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWLOCK),
        .m_axi_gmem_AWPROT(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWPROT),
        .m_axi_gmem_AWQOS(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWQOS),
        .m_axi_gmem_AWREADY(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWREADY),
        .m_axi_gmem_AWREGION(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWREGION),
        .m_axi_gmem_AWSIZE(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWSIZE),
        .m_axi_gmem_AWVALID(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_AWVALID),
        .m_axi_gmem_BREADY(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_BREADY),
        .m_axi_gmem_BRESP(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_BRESP),
        .m_axi_gmem_BVALID(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_BVALID),
        .m_axi_gmem_RDATA(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_RDATA),
        .m_axi_gmem_RLAST(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_RLAST),
        .m_axi_gmem_RREADY(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_RREADY),
        .m_axi_gmem_RRESP(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_RRESP),
        .m_axi_gmem_RVALID(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_RVALID),
        .m_axi_gmem_WDATA(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_WDATA),
        .m_axi_gmem_WLAST(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_WLAST),
        .m_axi_gmem_WREADY(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_WREADY),
        .m_axi_gmem_WSTRB(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_WSTRB),
        .m_axi_gmem_WVALID(StreamingDataflowPartition_0_IODMA_0_m_axi_gmem_WVALID),
        .out_V_TDATA(StreamingDataflowPartition_0_IODMA_0_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_0_IODMA_0_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_0_IODMA_0_out_V_TVALID),
        .s_axi_control_ARADDR(s_axi_control_0_1_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_0_1_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_0_1_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_0_1_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_0_1_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_0_1_AWVALID),
        .s_axi_control_BREADY(s_axi_control_0_1_BREADY),
        .s_axi_control_BRESP(s_axi_control_0_1_BRESP),
        .s_axi_control_BVALID(s_axi_control_0_1_BVALID),
        .s_axi_control_RDATA(s_axi_control_0_1_RDATA),
        .s_axi_control_RREADY(s_axi_control_0_1_RREADY),
        .s_axi_control_RRESP(s_axi_control_0_1_RRESP),
        .s_axi_control_RVALID(s_axi_control_0_1_RVALID),
        .s_axi_control_WDATA(s_axi_control_0_1_WDATA),
        .s_axi_control_WREADY(s_axi_control_0_1_WREADY),
        .s_axi_control_WSTRB(s_axi_control_0_1_WSTRB),
        .s_axi_control_WVALID(s_axi_control_0_1_WVALID));
endmodule
