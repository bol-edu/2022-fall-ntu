//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Thu Jan  5 05:23:52 2023
//Host        : DESKTOP-B6S694L running 64-bit major release  (build 9200)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AM_out " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AM_out, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1" *) input [31:0]AM_out_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AM_out " *) input [0:0]AM_out_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AM_out " *) input [0:0]AM_out_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AM_out " *) input [3:0]AM_out_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AM_out " *) input [0:0]AM_out_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AM_out " *) output AM_out_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AM_out " *) input [3:0]AM_out_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AM_out " *) input [0:0]AM_out_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AM_out " *) input AM_out_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 IM " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME IM, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1" *) input [31:0]IM_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 IM " *) input [0:0]IM_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 IM " *) input [0:0]IM_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 IM " *) input [3:0]IM_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 IM " *) input [0:0]IM_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 IM " *) output IM_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 IM " *) input [3:0]IM_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 IM " *) input [0:0]IM_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 IM " *) input IM_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF AM_out:IM:s_axi_control:test_data:test_label_out, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 100000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [3:0]s_axi_control_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input [3:0]s_axi_control_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output [1:0]s_axi_control_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output [31:0]s_axi_control_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output [1:0]s_axi_control_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input [31:0]s_axi_control_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input [3:0]s_axi_control_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_data " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_data, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1" *) input [31:0]test_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_data " *) input [0:0]test_data_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_data " *) input [0:0]test_data_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_data " *) input [3:0]test_data_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_data " *) input [0:0]test_data_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_data " *) output test_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_data " *) input [3:0]test_data_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_data " *) input [0:0]test_data_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_data " *) input test_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_label_out " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_label_out, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1" *) output [31:0]test_label_out_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_label_out " *) output [0:0]test_label_out_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_label_out " *) output [0:0]test_label_out_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_label_out " *) output [3:0]test_label_out_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_label_out " *) output [0:0]test_label_out_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_label_out " *) input test_label_out_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_label_out " *) output [3:0]test_label_out_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_label_out " *) output [0:0]test_label_out_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 test_label_out " *) output test_label_out_tvalid;

  wire [31:0]AM_out_0_1_TDATA;
  wire [0:0]AM_out_0_1_TDEST;
  wire [0:0]AM_out_0_1_TID;
  wire [3:0]AM_out_0_1_TKEEP;
  wire [0:0]AM_out_0_1_TLAST;
  wire AM_out_0_1_TREADY;
  wire [3:0]AM_out_0_1_TSTRB;
  wire [0:0]AM_out_0_1_TUSER;
  wire AM_out_0_1_TVALID;
  wire [31:0]IM_0_1_TDATA;
  wire [0:0]IM_0_1_TDEST;
  wire [0:0]IM_0_1_TID;
  wire [3:0]IM_0_1_TKEEP;
  wire [0:0]IM_0_1_TLAST;
  wire IM_0_1_TREADY;
  wire [3:0]IM_0_1_TSTRB;
  wire [0:0]IM_0_1_TUSER;
  wire IM_0_1_TVALID;
  wire ap_clk_0_1;
  wire ap_rst_n_0_1;
  wire hls_inst_interrupt;
  wire [31:0]hls_inst_test_label_out_TDATA;
  wire [0:0]hls_inst_test_label_out_TDEST;
  wire [0:0]hls_inst_test_label_out_TID;
  wire [3:0]hls_inst_test_label_out_TKEEP;
  wire [0:0]hls_inst_test_label_out_TLAST;
  wire hls_inst_test_label_out_TREADY;
  wire [3:0]hls_inst_test_label_out_TSTRB;
  wire [0:0]hls_inst_test_label_out_TUSER;
  wire hls_inst_test_label_out_TVALID;
  wire [3:0]s_axi_control_0_1_ARADDR;
  wire s_axi_control_0_1_ARREADY;
  wire s_axi_control_0_1_ARVALID;
  wire [3:0]s_axi_control_0_1_AWADDR;
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
  wire [31:0]test_data_0_1_TDATA;
  wire [0:0]test_data_0_1_TDEST;
  wire [0:0]test_data_0_1_TID;
  wire [3:0]test_data_0_1_TKEEP;
  wire [0:0]test_data_0_1_TLAST;
  wire test_data_0_1_TREADY;
  wire [3:0]test_data_0_1_TSTRB;
  wire [0:0]test_data_0_1_TUSER;
  wire test_data_0_1_TVALID;

  assign AM_out_0_1_TDATA = AM_out_tdata[31:0];
  assign AM_out_0_1_TDEST = AM_out_tdest[0];
  assign AM_out_0_1_TID = AM_out_tid[0];
  assign AM_out_0_1_TKEEP = AM_out_tkeep[3:0];
  assign AM_out_0_1_TLAST = AM_out_tlast[0];
  assign AM_out_0_1_TSTRB = AM_out_tstrb[3:0];
  assign AM_out_0_1_TUSER = AM_out_tuser[0];
  assign AM_out_0_1_TVALID = AM_out_tvalid;
  assign AM_out_tready = AM_out_0_1_TREADY;
  assign IM_0_1_TDATA = IM_tdata[31:0];
  assign IM_0_1_TDEST = IM_tdest[0];
  assign IM_0_1_TID = IM_tid[0];
  assign IM_0_1_TKEEP = IM_tkeep[3:0];
  assign IM_0_1_TLAST = IM_tlast[0];
  assign IM_0_1_TSTRB = IM_tstrb[3:0];
  assign IM_0_1_TUSER = IM_tuser[0];
  assign IM_0_1_TVALID = IM_tvalid;
  assign IM_tready = IM_0_1_TREADY;
  assign ap_clk_0_1 = ap_clk;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign hls_inst_test_label_out_TREADY = test_label_out_tready;
  assign interrupt = hls_inst_interrupt;
  assign s_axi_control_0_1_ARADDR = s_axi_control_araddr[3:0];
  assign s_axi_control_0_1_ARVALID = s_axi_control_arvalid;
  assign s_axi_control_0_1_AWADDR = s_axi_control_awaddr[3:0];
  assign s_axi_control_0_1_AWVALID = s_axi_control_awvalid;
  assign s_axi_control_0_1_BREADY = s_axi_control_bready;
  assign s_axi_control_0_1_RREADY = s_axi_control_rready;
  assign s_axi_control_0_1_WDATA = s_axi_control_wdata[31:0];
  assign s_axi_control_0_1_WSTRB = s_axi_control_wstrb[3:0];
  assign s_axi_control_0_1_WVALID = s_axi_control_wvalid;
  assign s_axi_control_arready = s_axi_control_0_1_ARREADY;
  assign s_axi_control_awready = s_axi_control_0_1_AWREADY;
  assign s_axi_control_bresp[1:0] = s_axi_control_0_1_BRESP;
  assign s_axi_control_bvalid = s_axi_control_0_1_BVALID;
  assign s_axi_control_rdata[31:0] = s_axi_control_0_1_RDATA;
  assign s_axi_control_rresp[1:0] = s_axi_control_0_1_RRESP;
  assign s_axi_control_rvalid = s_axi_control_0_1_RVALID;
  assign s_axi_control_wready = s_axi_control_0_1_WREADY;
  assign test_data_0_1_TDATA = test_data_tdata[31:0];
  assign test_data_0_1_TDEST = test_data_tdest[0];
  assign test_data_0_1_TID = test_data_tid[0];
  assign test_data_0_1_TKEEP = test_data_tkeep[3:0];
  assign test_data_0_1_TLAST = test_data_tlast[0];
  assign test_data_0_1_TSTRB = test_data_tstrb[3:0];
  assign test_data_0_1_TUSER = test_data_tuser[0];
  assign test_data_0_1_TVALID = test_data_tvalid;
  assign test_data_tready = test_data_0_1_TREADY;
  assign test_label_out_tdata[31:0] = hls_inst_test_label_out_TDATA;
  assign test_label_out_tdest[0] = hls_inst_test_label_out_TDEST;
  assign test_label_out_tid[0] = hls_inst_test_label_out_TID;
  assign test_label_out_tkeep[3:0] = hls_inst_test_label_out_TKEEP;
  assign test_label_out_tlast[0] = hls_inst_test_label_out_TLAST;
  assign test_label_out_tstrb[3:0] = hls_inst_test_label_out_TSTRB;
  assign test_label_out_tuser[0] = hls_inst_test_label_out_TUSER;
  assign test_label_out_tvalid = hls_inst_test_label_out_TVALID;
  bd_0_hls_inst_0 hls_inst
       (.AM_out_TDATA(AM_out_0_1_TDATA),
        .AM_out_TDEST(AM_out_0_1_TDEST),
        .AM_out_TID(AM_out_0_1_TID),
        .AM_out_TKEEP(AM_out_0_1_TKEEP),
        .AM_out_TLAST(AM_out_0_1_TLAST),
        .AM_out_TREADY(AM_out_0_1_TREADY),
        .AM_out_TSTRB(AM_out_0_1_TSTRB),
        .AM_out_TUSER(AM_out_0_1_TUSER),
        .AM_out_TVALID(AM_out_0_1_TVALID),
        .IM_TDATA(IM_0_1_TDATA),
        .IM_TDEST(IM_0_1_TDEST),
        .IM_TID(IM_0_1_TID),
        .IM_TKEEP(IM_0_1_TKEEP),
        .IM_TLAST(IM_0_1_TLAST),
        .IM_TREADY(IM_0_1_TREADY),
        .IM_TSTRB(IM_0_1_TSTRB),
        .IM_TUSER(IM_0_1_TUSER),
        .IM_TVALID(IM_0_1_TVALID),
        .ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .interrupt(hls_inst_interrupt),
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
        .s_axi_control_WVALID(s_axi_control_0_1_WVALID),
        .test_data_TDATA(test_data_0_1_TDATA),
        .test_data_TDEST(test_data_0_1_TDEST),
        .test_data_TID(test_data_0_1_TID),
        .test_data_TKEEP(test_data_0_1_TKEEP),
        .test_data_TLAST(test_data_0_1_TLAST),
        .test_data_TREADY(test_data_0_1_TREADY),
        .test_data_TSTRB(test_data_0_1_TSTRB),
        .test_data_TUSER(test_data_0_1_TUSER),
        .test_data_TVALID(test_data_0_1_TVALID),
        .test_label_out_TDATA(hls_inst_test_label_out_TDATA),
        .test_label_out_TDEST(hls_inst_test_label_out_TDEST),
        .test_label_out_TID(hls_inst_test_label_out_TID),
        .test_label_out_TKEEP(hls_inst_test_label_out_TKEEP),
        .test_label_out_TLAST(hls_inst_test_label_out_TLAST),
        .test_label_out_TREADY(hls_inst_test_label_out_TREADY),
        .test_label_out_TSTRB(hls_inst_test_label_out_TSTRB),
        .test_label_out_TUSER(hls_inst_test_label_out_TUSER),
        .test_label_out_TVALID(hls_inst_test_label_out_TVALID));
endmodule
