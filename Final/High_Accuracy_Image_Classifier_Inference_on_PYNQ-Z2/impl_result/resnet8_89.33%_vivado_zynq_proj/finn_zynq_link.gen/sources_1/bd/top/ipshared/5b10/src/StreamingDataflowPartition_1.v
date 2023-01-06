//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Wed Dec 28 08:39:59 2022
//Host        : finn_dev_yhp running 64-bit Ubuntu 18.04.5 LTS
//Command     : generate_target StreamingDataflowPartition_1.bd
//Design      : StreamingDataflowPartition_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "StreamingDataflowPartition_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=StreamingDataflowPartition_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=83,numReposBlks=74,numNonXlnxBlks=0,numHierBlks=9,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=54,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "StreamingDataflowPartition_1.hwdef" *) 
module StreamingDataflowPartition_1
   (ap_clk,
    ap_rst_n,
    m_axis_0_tdata,
    m_axis_0_tready,
    m_axis_0_tvalid,
    s_axis_0_tdata,
    s_axis_0_tready,
    s_axis_0_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF s_axis_0:m_axis_0, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN StreamingDataflowPartition_1_ap_clk_0, FREQ_HZ 100000000.000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_0, CLK_DOMAIN StreamingDataflowPartition_1_ap_clk_0, FREQ_HZ 100000000.000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [7:0]m_axis_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 " *) input m_axis_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 " *) output m_axis_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_0, CLK_DOMAIN StreamingDataflowPartition_1_ap_clk_0, FREQ_HZ 100000000.000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [7:0]s_axis_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 " *) output s_axis_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 " *) input s_axis_0_tvalid;

  wire [7:0]StreamingDataflowPartition_1_AddStreams_Batch_0_out_V_TDATA;
  wire StreamingDataflowPartition_1_AddStreams_Batch_0_out_V_TREADY;
  wire StreamingDataflowPartition_1_AddStreams_Batch_0_out_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_AddStreams_Batch_1_out_V_TDATA;
  wire StreamingDataflowPartition_1_AddStreams_Batch_1_out_V_TREADY;
  wire StreamingDataflowPartition_1_AddStreams_Batch_1_out_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_AddStreams_Batch_2_out_V_TDATA;
  wire StreamingDataflowPartition_1_AddStreams_Batch_2_out_V_TREADY;
  wire StreamingDataflowPartition_1_AddStreams_Batch_2_out_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_ConvolutionInputGenerator_0_out_V_TDATA;
  wire StreamingDataflowPartition_1_ConvolutionInputGenerator_0_out_V_TREADY;
  wire StreamingDataflowPartition_1_ConvolutionInputGenerator_0_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_ConvolutionInputGenerator_1_out_V_TDATA;
  wire StreamingDataflowPartition_1_ConvolutionInputGenerator_1_out_V_TREADY;
  wire StreamingDataflowPartition_1_ConvolutionInputGenerator_1_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_ConvolutionInputGenerator_2_out_V_TDATA;
  wire StreamingDataflowPartition_1_ConvolutionInputGenerator_2_out_V_TREADY;
  wire StreamingDataflowPartition_1_ConvolutionInputGenerator_2_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_ConvolutionInputGenerator_3_out_V_TDATA;
  wire StreamingDataflowPartition_1_ConvolutionInputGenerator_3_out_V_TREADY;
  wire StreamingDataflowPartition_1_ConvolutionInputGenerator_3_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_ConvolutionInputGenerator_4_out_V_TDATA;
  wire StreamingDataflowPartition_1_ConvolutionInputGenerator_4_out_V_TREADY;
  wire StreamingDataflowPartition_1_ConvolutionInputGenerator_4_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_ConvolutionInputGenerator_5_out_V_TDATA;
  wire StreamingDataflowPartition_1_ConvolutionInputGenerator_5_out_V_TREADY;
  wire StreamingDataflowPartition_1_ConvolutionInputGenerator_5_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_ConvolutionInputGenerator_6_out_V_TDATA;
  wire StreamingDataflowPartition_1_ConvolutionInputGenerator_6_out_V_TREADY;
  wire StreamingDataflowPartition_1_ConvolutionInputGenerator_6_out_V_TVALID;
  wire [159:0]StreamingDataflowPartition_1_DownSampler_0_out_V_TDATA;
  wire StreamingDataflowPartition_1_DownSampler_0_out_V_TREADY;
  wire StreamingDataflowPartition_1_DownSampler_0_out_V_TVALID;
  wire [319:0]StreamingDataflowPartition_1_DownSampler_1_out_V_TDATA;
  wire StreamingDataflowPartition_1_DownSampler_1_out_V_TREADY;
  wire StreamingDataflowPartition_1_DownSampler_1_out_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_DuplicateStreams_Batch_0_out0_V_TDATA;
  wire StreamingDataflowPartition_1_DuplicateStreams_Batch_0_out0_V_TREADY;
  wire StreamingDataflowPartition_1_DuplicateStreams_Batch_0_out0_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_DuplicateStreams_Batch_0_out1_V_TDATA;
  wire StreamingDataflowPartition_1_DuplicateStreams_Batch_0_out1_V_TREADY;
  wire StreamingDataflowPartition_1_DuplicateStreams_Batch_0_out1_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_DuplicateStreams_Batch_1_out0_V_TDATA;
  wire StreamingDataflowPartition_1_DuplicateStreams_Batch_1_out0_V_TREADY;
  wire StreamingDataflowPartition_1_DuplicateStreams_Batch_1_out0_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_DuplicateStreams_Batch_1_out1_V_TDATA;
  wire StreamingDataflowPartition_1_DuplicateStreams_Batch_1_out1_V_TREADY;
  wire StreamingDataflowPartition_1_DuplicateStreams_Batch_1_out1_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_DuplicateStreams_Batch_2_out0_V_TDATA;
  wire StreamingDataflowPartition_1_DuplicateStreams_Batch_2_out0_V_TREADY;
  wire StreamingDataflowPartition_1_DuplicateStreams_Batch_2_out0_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_DuplicateStreams_Batch_2_out1_V_TDATA;
  wire StreamingDataflowPartition_1_DuplicateStreams_Batch_2_out1_V_TREADY;
  wire StreamingDataflowPartition_1_DuplicateStreams_Batch_2_out1_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_FMPadding_Batch_0_out_V_TDATA;
  wire StreamingDataflowPartition_1_FMPadding_Batch_0_out_V_TREADY;
  wire StreamingDataflowPartition_1_FMPadding_Batch_0_out_V_TVALID;
  wire [159:0]StreamingDataflowPartition_1_FMPadding_Batch_1_out_V_TDATA;
  wire StreamingDataflowPartition_1_FMPadding_Batch_1_out_V_TREADY;
  wire StreamingDataflowPartition_1_FMPadding_Batch_1_out_V_TVALID;
  wire [159:0]StreamingDataflowPartition_1_FMPadding_Batch_2_out_V_TDATA;
  wire StreamingDataflowPartition_1_FMPadding_Batch_2_out_V_TREADY;
  wire StreamingDataflowPartition_1_FMPadding_Batch_2_out_V_TVALID;
  wire [159:0]StreamingDataflowPartition_1_FMPadding_Batch_3_out_V_TDATA;
  wire StreamingDataflowPartition_1_FMPadding_Batch_3_out_V_TREADY;
  wire StreamingDataflowPartition_1_FMPadding_Batch_3_out_V_TVALID;
  wire [319:0]StreamingDataflowPartition_1_FMPadding_Batch_4_out_V_TDATA;
  wire StreamingDataflowPartition_1_FMPadding_Batch_4_out_V_TREADY;
  wire StreamingDataflowPartition_1_FMPadding_Batch_4_out_V_TVALID;
  wire [319:0]StreamingDataflowPartition_1_FMPadding_Batch_5_out_V_TDATA;
  wire StreamingDataflowPartition_1_FMPadding_Batch_5_out_V_TREADY;
  wire StreamingDataflowPartition_1_FMPadding_Batch_5_out_V_TVALID;
  wire [639:0]StreamingDataflowPartition_1_FMPadding_Batch_6_out_V_TDATA;
  wire StreamingDataflowPartition_1_FMPadding_Batch_6_out_V_TREADY;
  wire StreamingDataflowPartition_1_FMPadding_Batch_6_out_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_MatrixVectorActivation_0_out_V_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_0_out_V_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_0_out_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_MatrixVectorActivation_1_out_V_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_1_out_V_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_1_out_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_MatrixVectorActivation_2_out_V_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_2_out_V_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_2_out_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_MatrixVectorActivation_3_out_V_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_3_out_V_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_3_out_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_MatrixVectorActivation_4_out_V_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_4_out_V_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_4_out_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_MatrixVectorActivation_5_out_V_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_5_out_V_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_5_out_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_MatrixVectorActivation_6_out_V_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_6_out_V_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_6_out_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_MatrixVectorActivation_7_out_V_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_7_out_V_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_7_out_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_MatrixVectorActivation_8_out_V_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_8_out_V_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_8_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0_out_V_TVALID;
  wire [319:0]StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_10_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_10_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_10_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_11_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_11_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_11_out_V_TVALID;
  wire [319:0]StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_12_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_12_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_12_out_V_TVALID;
  wire [319:0]StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_13_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_13_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_13_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_14_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_14_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_14_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_15_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_15_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_15_out_V_TVALID;
  wire [639:0]StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_16_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_16_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_16_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_17_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_17_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_17_out_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1_out_V_TVALID;
  wire [159:0]StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3_out_V_TVALID;
  wire [159:0]StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5_out_V_TVALID;
  wire [159:0]StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6_out_V_TVALID;
  wire [159:0]StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_9_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_9_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_9_out_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_StreamingFIFO_0_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingFIFO_0_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingFIFO_0_out_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_StreamingFIFO_10_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingFIFO_10_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingFIFO_10_out_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_StreamingFIFO_1_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingFIFO_1_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingFIFO_1_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_StreamingFIFO_2_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingFIFO_2_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingFIFO_2_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_StreamingFIFO_3_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingFIFO_3_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingFIFO_3_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_StreamingFIFO_4_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingFIFO_4_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingFIFO_4_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_StreamingFIFO_5_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingFIFO_5_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingFIFO_5_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_StreamingFIFO_6_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingFIFO_6_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingFIFO_6_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_StreamingFIFO_7_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingFIFO_7_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingFIFO_7_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_StreamingFIFO_8_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingFIFO_8_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingFIFO_8_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_StreamingFIFO_9_out_V_TDATA;
  wire StreamingDataflowPartition_1_StreamingFIFO_9_out_V_TREADY;
  wire StreamingDataflowPartition_1_StreamingFIFO_9_out_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_Thresholding_Batch_0_out_V_TDATA;
  wire StreamingDataflowPartition_1_Thresholding_Batch_0_out_V_TREADY;
  wire StreamingDataflowPartition_1_Thresholding_Batch_0_out_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_Thresholding_Batch_1_out_V_TDATA;
  wire StreamingDataflowPartition_1_Thresholding_Batch_1_out_V_TREADY;
  wire StreamingDataflowPartition_1_Thresholding_Batch_1_out_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_Thresholding_Batch_2_out_V_TDATA;
  wire StreamingDataflowPartition_1_Thresholding_Batch_2_out_V_TREADY;
  wire StreamingDataflowPartition_1_Thresholding_Batch_2_out_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_Thresholding_Batch_3_out_V_TDATA;
  wire StreamingDataflowPartition_1_Thresholding_Batch_3_out_V_TREADY;
  wire StreamingDataflowPartition_1_Thresholding_Batch_3_out_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_Thresholding_Batch_4_out_V_TDATA;
  wire StreamingDataflowPartition_1_Thresholding_Batch_4_out_V_TREADY;
  wire StreamingDataflowPartition_1_Thresholding_Batch_4_out_V_TVALID;
  wire ap_clk_0_1;
  wire ap_rst_n_0_1;
  wire [7:0]in0_V_0_1_TDATA;
  wire in0_V_0_1_TREADY;
  wire in0_V_0_1_TVALID;

  assign StreamingDataflowPartition_1_StreamingFIFO_10_out_V_TREADY = m_axis_0_tready;
  assign ap_clk_0_1 = ap_clk;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign in0_V_0_1_TDATA = s_axis_0_tdata[7:0];
  assign in0_V_0_1_TVALID = s_axis_0_tvalid;
  assign m_axis_0_tdata[7:0] = StreamingDataflowPartition_1_StreamingFIFO_10_out_V_TDATA;
  assign m_axis_0_tvalid = StreamingDataflowPartition_1_StreamingFIFO_10_out_V_TVALID;
  assign s_axis_0_tready = in0_V_0_1_TREADY;
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_AddStreams_Batch_0_0 StreamingDataflowPartition_1_AddStreams_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_2_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_2_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_2_out_V_TVALID),
        .in1_V_TDATA(StreamingDataflowPartition_1_Thresholding_Batch_1_out_V_TDATA),
        .in1_V_TREADY(StreamingDataflowPartition_1_Thresholding_Batch_1_out_V_TREADY),
        .in1_V_TVALID(StreamingDataflowPartition_1_Thresholding_Batch_1_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_AddStreams_Batch_0_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_AddStreams_Batch_0_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_AddStreams_Batch_0_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_AddStreams_Batch_1_0 StreamingDataflowPartition_1_AddStreams_Batch_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_5_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_5_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_5_out_V_TVALID),
        .in1_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_3_out_V_TDATA),
        .in1_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_3_out_V_TREADY),
        .in1_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_3_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_AddStreams_Batch_1_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_AddStreams_Batch_1_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_AddStreams_Batch_1_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_AddStreams_Batch_2_0 StreamingDataflowPartition_1_AddStreams_Batch_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_8_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_8_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_8_out_V_TVALID),
        .in1_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_6_out_V_TDATA),
        .in1_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_6_out_V_TREADY),
        .in1_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_6_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_AddStreams_Batch_2_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_AddStreams_Batch_2_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_AddStreams_Batch_2_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_ConvolutionInputGenerator_0_0 StreamingDataflowPartition_1_ConvolutionInputGenerator_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_ConvolutionInputGenerator_0_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_ConvolutionInputGenerator_0_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_ConvolutionInputGenerator_0_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_ConvolutionInputGenerator_1_0 StreamingDataflowPartition_1_ConvolutionInputGenerator_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_ConvolutionInputGenerator_1_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_ConvolutionInputGenerator_1_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_ConvolutionInputGenerator_1_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_ConvolutionInputGenerator_2_0 StreamingDataflowPartition_1_ConvolutionInputGenerator_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_ConvolutionInputGenerator_2_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_ConvolutionInputGenerator_2_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_ConvolutionInputGenerator_2_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_ConvolutionInputGenerator_3_0 StreamingDataflowPartition_1_ConvolutionInputGenerator_3
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_ConvolutionInputGenerator_3_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_ConvolutionInputGenerator_3_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_ConvolutionInputGenerator_3_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_ConvolutionInputGenerator_4_0 StreamingDataflowPartition_1_ConvolutionInputGenerator_4
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_11_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_11_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_11_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_ConvolutionInputGenerator_4_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_ConvolutionInputGenerator_4_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_ConvolutionInputGenerator_4_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_ConvolutionInputGenerator_5_0 StreamingDataflowPartition_1_ConvolutionInputGenerator_5
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_14_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_14_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_14_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_ConvolutionInputGenerator_5_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_ConvolutionInputGenerator_5_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_ConvolutionInputGenerator_5_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_ConvolutionInputGenerator_6_0 StreamingDataflowPartition_1_ConvolutionInputGenerator_6
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_17_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_17_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_17_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_ConvolutionInputGenerator_6_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_ConvolutionInputGenerator_6_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_ConvolutionInputGenerator_6_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_DownSampler_0_0 StreamingDataflowPartition_1_DownSampler_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_DownSampler_0_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_DownSampler_0_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_DownSampler_0_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_DownSampler_1_0 StreamingDataflowPartition_1_DownSampler_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_12_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_12_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_12_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_DownSampler_1_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_DownSampler_1_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_DownSampler_1_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_DuplicateStreams_Batch_0_0 StreamingDataflowPartition_1_DuplicateStreams_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_0_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_0_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_0_out_V_TVALID),
        .out0_V_TDATA(StreamingDataflowPartition_1_DuplicateStreams_Batch_0_out0_V_TDATA),
        .out0_V_TREADY(StreamingDataflowPartition_1_DuplicateStreams_Batch_0_out0_V_TREADY),
        .out0_V_TVALID(StreamingDataflowPartition_1_DuplicateStreams_Batch_0_out0_V_TVALID),
        .out1_V_TDATA(StreamingDataflowPartition_1_DuplicateStreams_Batch_0_out1_V_TDATA),
        .out1_V_TREADY(StreamingDataflowPartition_1_DuplicateStreams_Batch_0_out1_V_TREADY),
        .out1_V_TVALID(StreamingDataflowPartition_1_DuplicateStreams_Batch_0_out1_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_DuplicateStreams_Batch_1_0 StreamingDataflowPartition_1_DuplicateStreams_Batch_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_Thresholding_Batch_2_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_Thresholding_Batch_2_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_Thresholding_Batch_2_out_V_TVALID),
        .out0_V_TDATA(StreamingDataflowPartition_1_DuplicateStreams_Batch_1_out0_V_TDATA),
        .out0_V_TREADY(StreamingDataflowPartition_1_DuplicateStreams_Batch_1_out0_V_TREADY),
        .out0_V_TVALID(StreamingDataflowPartition_1_DuplicateStreams_Batch_1_out0_V_TVALID),
        .out1_V_TDATA(StreamingDataflowPartition_1_DuplicateStreams_Batch_1_out1_V_TDATA),
        .out1_V_TREADY(StreamingDataflowPartition_1_DuplicateStreams_Batch_1_out1_V_TREADY),
        .out1_V_TVALID(StreamingDataflowPartition_1_DuplicateStreams_Batch_1_out1_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_DuplicateStreams_Batch_2_0 StreamingDataflowPartition_1_DuplicateStreams_Batch_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_Thresholding_Batch_3_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_Thresholding_Batch_3_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_Thresholding_Batch_3_out_V_TVALID),
        .out0_V_TDATA(StreamingDataflowPartition_1_DuplicateStreams_Batch_2_out0_V_TDATA),
        .out0_V_TREADY(StreamingDataflowPartition_1_DuplicateStreams_Batch_2_out0_V_TREADY),
        .out0_V_TVALID(StreamingDataflowPartition_1_DuplicateStreams_Batch_2_out0_V_TVALID),
        .out1_V_TDATA(StreamingDataflowPartition_1_DuplicateStreams_Batch_2_out1_V_TDATA),
        .out1_V_TREADY(StreamingDataflowPartition_1_DuplicateStreams_Batch_2_out1_V_TREADY),
        .out1_V_TVALID(StreamingDataflowPartition_1_DuplicateStreams_Batch_2_out1_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_FMPadding_Batch_0_0 StreamingDataflowPartition_1_FMPadding_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_FMPadding_Batch_0_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_FMPadding_Batch_0_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_FMPadding_Batch_0_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_FMPadding_Batch_1_0 StreamingDataflowPartition_1_FMPadding_Batch_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_FMPadding_Batch_1_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_FMPadding_Batch_1_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_FMPadding_Batch_1_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_FMPadding_Batch_2_0 StreamingDataflowPartition_1_FMPadding_Batch_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_FMPadding_Batch_2_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_FMPadding_Batch_2_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_FMPadding_Batch_2_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_FMPadding_Batch_3_0 StreamingDataflowPartition_1_FMPadding_Batch_3
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_FMPadding_Batch_3_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_FMPadding_Batch_3_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_FMPadding_Batch_3_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_FMPadding_Batch_4_0 StreamingDataflowPartition_1_FMPadding_Batch_4
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_10_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_10_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_10_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_FMPadding_Batch_4_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_FMPadding_Batch_4_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_FMPadding_Batch_4_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_FMPadding_Batch_5_0 StreamingDataflowPartition_1_FMPadding_Batch_5
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_13_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_13_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_13_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_FMPadding_Batch_5_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_FMPadding_Batch_5_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_FMPadding_Batch_5_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_FMPadding_Batch_6_0 StreamingDataflowPartition_1_FMPadding_Batch_6
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_16_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_16_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_16_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_FMPadding_Batch_6_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_FMPadding_Batch_6_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_FMPadding_Batch_6_out_V_TVALID));
  StreamingDataflowPartition_1_MatrixVectorActivation_0_imp_12DA6W7 StreamingDataflowPartition_1_MatrixVectorActivation_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataflowPartition_1_StreamingFIFO_1_out_V_TDATA),
        .in0_V_tready(StreamingDataflowPartition_1_StreamingFIFO_1_out_V_TREADY),
        .in0_V_tvalid(StreamingDataflowPartition_1_StreamingFIFO_1_out_V_TVALID),
        .out_V_tdata(StreamingDataflowPartition_1_MatrixVectorActivation_0_out_V_TDATA),
        .out_V_tready(StreamingDataflowPartition_1_MatrixVectorActivation_0_out_V_TREADY),
        .out_V_tvalid(StreamingDataflowPartition_1_MatrixVectorActivation_0_out_V_TVALID));
  StreamingDataflowPartition_1_MatrixVectorActivation_1_imp_1SQGJ7N StreamingDataflowPartition_1_MatrixVectorActivation_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataflowPartition_1_StreamingFIFO_2_out_V_TDATA),
        .in0_V_tready(StreamingDataflowPartition_1_StreamingFIFO_2_out_V_TREADY),
        .in0_V_tvalid(StreamingDataflowPartition_1_StreamingFIFO_2_out_V_TVALID),
        .out_V_tdata(StreamingDataflowPartition_1_MatrixVectorActivation_1_out_V_TDATA),
        .out_V_tready(StreamingDataflowPartition_1_MatrixVectorActivation_1_out_V_TREADY),
        .out_V_tvalid(StreamingDataflowPartition_1_MatrixVectorActivation_1_out_V_TVALID));
  StreamingDataflowPartition_1_MatrixVectorActivation_2_imp_L5XICV StreamingDataflowPartition_1_MatrixVectorActivation_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataflowPartition_1_StreamingFIFO_3_out_V_TDATA),
        .in0_V_tready(StreamingDataflowPartition_1_StreamingFIFO_3_out_V_TREADY),
        .in0_V_tvalid(StreamingDataflowPartition_1_StreamingFIFO_3_out_V_TVALID),
        .out_V_tdata(StreamingDataflowPartition_1_MatrixVectorActivation_2_out_V_TDATA),
        .out_V_tready(StreamingDataflowPartition_1_MatrixVectorActivation_2_out_V_TREADY),
        .out_V_tvalid(StreamingDataflowPartition_1_MatrixVectorActivation_2_out_V_TVALID));
  StreamingDataflowPartition_1_MatrixVectorActivation_3_imp_D3ZRIJ StreamingDataflowPartition_1_MatrixVectorActivation_3
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataflowPartition_1_StreamingFIFO_4_out_V_TDATA),
        .in0_V_tready(StreamingDataflowPartition_1_StreamingFIFO_4_out_V_TREADY),
        .in0_V_tvalid(StreamingDataflowPartition_1_StreamingFIFO_4_out_V_TVALID),
        .out_V_tdata(StreamingDataflowPartition_1_MatrixVectorActivation_3_out_V_TDATA),
        .out_V_tready(StreamingDataflowPartition_1_MatrixVectorActivation_3_out_V_TREADY),
        .out_V_tvalid(StreamingDataflowPartition_1_MatrixVectorActivation_3_out_V_TVALID));
  StreamingDataflowPartition_1_MatrixVectorActivation_4_imp_1PD0JP2 StreamingDataflowPartition_1_MatrixVectorActivation_4
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataflowPartition_1_StreamingFIFO_5_out_V_TDATA),
        .in0_V_tready(StreamingDataflowPartition_1_StreamingFIFO_5_out_V_TREADY),
        .in0_V_tvalid(StreamingDataflowPartition_1_StreamingFIFO_5_out_V_TVALID),
        .out_V_tdata(StreamingDataflowPartition_1_MatrixVectorActivation_4_out_V_TDATA),
        .out_V_tready(StreamingDataflowPartition_1_MatrixVectorActivation_4_out_V_TREADY),
        .out_V_tvalid(StreamingDataflowPartition_1_MatrixVectorActivation_4_out_V_TVALID));
  StreamingDataflowPartition_1_MatrixVectorActivation_5_imp_1GR5W9E StreamingDataflowPartition_1_MatrixVectorActivation_5
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataflowPartition_1_StreamingFIFO_6_out_V_TDATA),
        .in0_V_tready(StreamingDataflowPartition_1_StreamingFIFO_6_out_V_TREADY),
        .in0_V_tvalid(StreamingDataflowPartition_1_StreamingFIFO_6_out_V_TVALID),
        .out_V_tdata(StreamingDataflowPartition_1_MatrixVectorActivation_5_out_V_TDATA),
        .out_V_tready(StreamingDataflowPartition_1_MatrixVectorActivation_5_out_V_TREADY),
        .out_V_tvalid(StreamingDataflowPartition_1_MatrixVectorActivation_5_out_V_TVALID));
  StreamingDataflowPartition_1_MatrixVectorActivation_6_imp_7JAR5Q StreamingDataflowPartition_1_MatrixVectorActivation_6
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataflowPartition_1_StreamingFIFO_7_out_V_TDATA),
        .in0_V_tready(StreamingDataflowPartition_1_StreamingFIFO_7_out_V_TREADY),
        .in0_V_tvalid(StreamingDataflowPartition_1_StreamingFIFO_7_out_V_TVALID),
        .out_V_tdata(StreamingDataflowPartition_1_MatrixVectorActivation_6_out_V_TDATA),
        .out_V_tready(StreamingDataflowPartition_1_MatrixVectorActivation_6_out_V_TREADY),
        .out_V_tvalid(StreamingDataflowPartition_1_MatrixVectorActivation_6_out_V_TVALID));
  StreamingDataflowPartition_1_MatrixVectorActivation_7_imp_XCH13U StreamingDataflowPartition_1_MatrixVectorActivation_7
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataflowPartition_1_StreamingFIFO_8_out_V_TDATA),
        .in0_V_tready(StreamingDataflowPartition_1_StreamingFIFO_8_out_V_TREADY),
        .in0_V_tvalid(StreamingDataflowPartition_1_StreamingFIFO_8_out_V_TVALID),
        .out_V_tdata(StreamingDataflowPartition_1_MatrixVectorActivation_7_out_V_TDATA),
        .out_V_tready(StreamingDataflowPartition_1_MatrixVectorActivation_7_out_V_TREADY),
        .out_V_tvalid(StreamingDataflowPartition_1_MatrixVectorActivation_7_out_V_TVALID));
  StreamingDataflowPartition_1_MatrixVectorActivation_8_imp_A5DAKL StreamingDataflowPartition_1_MatrixVectorActivation_8
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataflowPartition_1_StreamingFIFO_9_out_V_TDATA),
        .in0_V_tready(StreamingDataflowPartition_1_StreamingFIFO_9_out_V_TREADY),
        .in0_V_tvalid(StreamingDataflowPartition_1_StreamingFIFO_9_out_V_TVALID),
        .out_V_tdata(StreamingDataflowPartition_1_MatrixVectorActivation_8_out_V_TDATA),
        .out_V_tready(StreamingDataflowPartition_1_MatrixVectorActivation_8_out_V_TREADY),
        .out_V_tvalid(StreamingDataflowPartition_1_MatrixVectorActivation_8_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0_0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_Thresholding_Batch_0_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_Thresholding_Batch_0_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_Thresholding_Batch_0_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1_0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_FMPadding_Batch_0_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_FMPadding_Batch_0_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_FMPadding_Batch_0_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_10_0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_10
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_4_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_4_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_4_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_10_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_10_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_10_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_11_0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_11
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_FMPadding_Batch_4_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_FMPadding_Batch_4_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_FMPadding_Batch_4_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_11_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_11_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_11_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_12_0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_12
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_DuplicateStreams_Batch_2_out1_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_DuplicateStreams_Batch_2_out1_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_DuplicateStreams_Batch_2_out1_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_12_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_12_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_12_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_13_0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_13
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_DuplicateStreams_Batch_2_out0_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_DuplicateStreams_Batch_2_out0_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_DuplicateStreams_Batch_2_out0_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_13_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_13_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_13_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_14_0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_14
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_FMPadding_Batch_5_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_FMPadding_Batch_5_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_FMPadding_Batch_5_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_14_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_14_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_14_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_15_0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_15
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_DownSampler_1_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_DownSampler_1_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_DownSampler_1_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_15_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_15_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_15_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_16_0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_16
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_7_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_7_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_7_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_16_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_16_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_16_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_17_0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_17
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_FMPadding_Batch_6_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_FMPadding_Batch_6_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_FMPadding_Batch_6_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_17_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_17_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_17_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2_0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_DuplicateStreams_Batch_0_out0_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_DuplicateStreams_Batch_0_out0_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_DuplicateStreams_Batch_0_out0_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3_0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_FMPadding_Batch_1_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_FMPadding_Batch_1_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_FMPadding_Batch_1_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4_0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_1_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_1_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_1_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5_0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_FMPadding_Batch_2_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_FMPadding_Batch_2_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_FMPadding_Batch_2_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6_0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_DuplicateStreams_Batch_1_out1_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_DuplicateStreams_Batch_1_out1_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_DuplicateStreams_Batch_1_out1_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7_0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_DuplicateStreams_Batch_1_out0_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_DuplicateStreams_Batch_1_out0_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_DuplicateStreams_Batch_1_out0_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8_0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_FMPadding_Batch_3_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_FMPadding_Batch_3_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_FMPadding_Batch_3_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_9_0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_9
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_DownSampler_0_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_DownSampler_0_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_DownSampler_0_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_9_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_9_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_9_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingFIFO_0_0 StreamingDataflowPartition_1_StreamingFIFO_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(in0_V_0_1_TDATA),
        .in0_V_TREADY(in0_V_0_1_TREADY),
        .in0_V_TVALID(in0_V_0_1_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingFIFO_0_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingFIFO_0_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingFIFO_0_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingFIFO_1_0 StreamingDataflowPartition_1_StreamingFIFO_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_ConvolutionInputGenerator_0_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_ConvolutionInputGenerator_0_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_ConvolutionInputGenerator_0_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingFIFO_1_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingFIFO_1_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingFIFO_1_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingFIFO_10_0 StreamingDataflowPartition_1_StreamingFIFO_10
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_Thresholding_Batch_4_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_Thresholding_Batch_4_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_Thresholding_Batch_4_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingFIFO_10_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingFIFO_10_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingFIFO_10_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingFIFO_2_0 StreamingDataflowPartition_1_StreamingFIFO_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_ConvolutionInputGenerator_1_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_ConvolutionInputGenerator_1_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_ConvolutionInputGenerator_1_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingFIFO_2_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingFIFO_2_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingFIFO_2_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingFIFO_3_0 StreamingDataflowPartition_1_StreamingFIFO_3
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_ConvolutionInputGenerator_2_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_ConvolutionInputGenerator_2_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_ConvolutionInputGenerator_2_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingFIFO_3_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingFIFO_3_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingFIFO_3_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingFIFO_4_0 StreamingDataflowPartition_1_StreamingFIFO_4
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_9_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_9_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_9_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingFIFO_4_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingFIFO_4_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingFIFO_4_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingFIFO_5_0 StreamingDataflowPartition_1_StreamingFIFO_5
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_ConvolutionInputGenerator_3_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_ConvolutionInputGenerator_3_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_ConvolutionInputGenerator_3_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingFIFO_5_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingFIFO_5_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingFIFO_5_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingFIFO_6_0 StreamingDataflowPartition_1_StreamingFIFO_6
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_ConvolutionInputGenerator_4_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_ConvolutionInputGenerator_4_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_ConvolutionInputGenerator_4_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingFIFO_6_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingFIFO_6_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingFIFO_6_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingFIFO_7_0 StreamingDataflowPartition_1_StreamingFIFO_7
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_15_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_15_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_15_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingFIFO_7_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingFIFO_7_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingFIFO_7_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingFIFO_8_0 StreamingDataflowPartition_1_StreamingFIFO_8
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_ConvolutionInputGenerator_5_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_ConvolutionInputGenerator_5_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_ConvolutionInputGenerator_5_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingFIFO_8_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingFIFO_8_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingFIFO_8_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_StreamingFIFO_9_0 StreamingDataflowPartition_1_StreamingFIFO_9
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_ConvolutionInputGenerator_6_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_ConvolutionInputGenerator_6_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_ConvolutionInputGenerator_6_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_StreamingFIFO_9_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_StreamingFIFO_9_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_StreamingFIFO_9_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_Thresholding_Batch_0_0 StreamingDataflowPartition_1_Thresholding_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_StreamingFIFO_0_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_StreamingFIFO_0_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_StreamingFIFO_0_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_Thresholding_Batch_0_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_Thresholding_Batch_0_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_Thresholding_Batch_0_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_Thresholding_Batch_1_0 StreamingDataflowPartition_1_Thresholding_Batch_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_DuplicateStreams_Batch_0_out1_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_DuplicateStreams_Batch_0_out1_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_DuplicateStreams_Batch_0_out1_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_Thresholding_Batch_1_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_Thresholding_Batch_1_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_Thresholding_Batch_1_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_Thresholding_Batch_2_0 StreamingDataflowPartition_1_Thresholding_Batch_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_AddStreams_Batch_0_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_AddStreams_Batch_0_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_AddStreams_Batch_0_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_Thresholding_Batch_2_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_Thresholding_Batch_2_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_Thresholding_Batch_2_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_Thresholding_Batch_3_0 StreamingDataflowPartition_1_Thresholding_Batch_3
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_AddStreams_Batch_1_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_AddStreams_Batch_1_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_AddStreams_Batch_1_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_Thresholding_Batch_3_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_Thresholding_Batch_3_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_Thresholding_Batch_3_out_V_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_Thresholding_Batch_4_0 StreamingDataflowPartition_1_Thresholding_Batch_4
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataflowPartition_1_AddStreams_Batch_2_out_V_TDATA),
        .in0_V_TREADY(StreamingDataflowPartition_1_AddStreams_Batch_2_out_V_TREADY),
        .in0_V_TVALID(StreamingDataflowPartition_1_AddStreams_Batch_2_out_V_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_Thresholding_Batch_4_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_Thresholding_Batch_4_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_Thresholding_Batch_4_out_V_TVALID));
endmodule

module StreamingDataflowPartition_1_MatrixVectorActivation_0_imp_12DA6W7
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]StreamingDataflowPartition_1_MatrixVectorActivation_0_out_V_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_0_out_V_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_0_out_V_TVALID;
  wire [7:0]StreamingDataflowPartition_1_MatrixVectorActivation_0_wstrm_m_axis_0_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_0_wstrm_m_axis_0_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_0_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [7:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign StreamingDataflowPartition_1_MatrixVectorActivation_0_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[7:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = StreamingDataflowPartition_1_MatrixVectorActivation_0_out_V_TDATA;
  assign out_V_tvalid = StreamingDataflowPartition_1_MatrixVectorActivation_0_out_V_TVALID;
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_MatrixVectorActivation_0_0 StreamingDataflowPartition_1_MatrixVectorActivation_0
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_0_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_0_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_0_out_V_TVALID),
        .weights_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_0_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_0_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_0_wstrm_m_axis_0_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_MatrixVectorActivation_0_wstrm_0 StreamingDataflowPartition_1_MatrixVectorActivation_0_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(StreamingDataflowPartition_1_MatrixVectorActivation_0_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(StreamingDataflowPartition_1_MatrixVectorActivation_0_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(StreamingDataflowPartition_1_MatrixVectorActivation_0_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module StreamingDataflowPartition_1_MatrixVectorActivation_1_imp_1SQGJ7N
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [15:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]StreamingDataflowPartition_1_MatrixVectorActivation_1_out_V_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_1_out_V_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_1_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_MatrixVectorActivation_1_wstrm_m_axis_0_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_1_wstrm_m_axis_0_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_1_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [15:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign StreamingDataflowPartition_1_MatrixVectorActivation_1_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[15:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = StreamingDataflowPartition_1_MatrixVectorActivation_1_out_V_TDATA;
  assign out_V_tvalid = StreamingDataflowPartition_1_MatrixVectorActivation_1_out_V_TVALID;
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_MatrixVectorActivation_1_0 StreamingDataflowPartition_1_MatrixVectorActivation_1
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_1_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_1_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_1_out_V_TVALID),
        .weights_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_1_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_1_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_1_wstrm_m_axis_0_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_MatrixVectorActivation_1_wstrm_0 StreamingDataflowPartition_1_MatrixVectorActivation_1_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(StreamingDataflowPartition_1_MatrixVectorActivation_1_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(StreamingDataflowPartition_1_MatrixVectorActivation_1_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(StreamingDataflowPartition_1_MatrixVectorActivation_1_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module StreamingDataflowPartition_1_MatrixVectorActivation_2_imp_L5XICV
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [15:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]StreamingDataflowPartition_1_MatrixVectorActivation_2_out_V_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_2_out_V_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_2_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_MatrixVectorActivation_2_wstrm_m_axis_0_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_2_wstrm_m_axis_0_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_2_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [15:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign StreamingDataflowPartition_1_MatrixVectorActivation_2_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[15:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = StreamingDataflowPartition_1_MatrixVectorActivation_2_out_V_TDATA;
  assign out_V_tvalid = StreamingDataflowPartition_1_MatrixVectorActivation_2_out_V_TVALID;
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_MatrixVectorActivation_2_0 StreamingDataflowPartition_1_MatrixVectorActivation_2
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_2_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_2_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_2_out_V_TVALID),
        .weights_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_2_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_2_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_2_wstrm_m_axis_0_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_MatrixVectorActivation_2_wstrm_0 StreamingDataflowPartition_1_MatrixVectorActivation_2_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(StreamingDataflowPartition_1_MatrixVectorActivation_2_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(StreamingDataflowPartition_1_MatrixVectorActivation_2_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(StreamingDataflowPartition_1_MatrixVectorActivation_2_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module StreamingDataflowPartition_1_MatrixVectorActivation_3_imp_D3ZRIJ
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [15:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]StreamingDataflowPartition_1_MatrixVectorActivation_3_out_V_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_3_out_V_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_3_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_MatrixVectorActivation_3_wstrm_m_axis_0_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_3_wstrm_m_axis_0_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_3_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [15:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign StreamingDataflowPartition_1_MatrixVectorActivation_3_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[15:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = StreamingDataflowPartition_1_MatrixVectorActivation_3_out_V_TDATA;
  assign out_V_tvalid = StreamingDataflowPartition_1_MatrixVectorActivation_3_out_V_TVALID;
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_MatrixVectorActivation_3_0 StreamingDataflowPartition_1_MatrixVectorActivation_3
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_3_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_3_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_3_out_V_TVALID),
        .weights_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_3_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_3_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_3_wstrm_m_axis_0_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_MatrixVectorActivation_3_wstrm_0 StreamingDataflowPartition_1_MatrixVectorActivation_3_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(StreamingDataflowPartition_1_MatrixVectorActivation_3_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(StreamingDataflowPartition_1_MatrixVectorActivation_3_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(StreamingDataflowPartition_1_MatrixVectorActivation_3_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module StreamingDataflowPartition_1_MatrixVectorActivation_4_imp_1PD0JP2
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [15:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]StreamingDataflowPartition_1_MatrixVectorActivation_4_out_V_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_4_out_V_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_4_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_MatrixVectorActivation_4_wstrm_m_axis_0_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_4_wstrm_m_axis_0_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_4_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [15:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign StreamingDataflowPartition_1_MatrixVectorActivation_4_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[15:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = StreamingDataflowPartition_1_MatrixVectorActivation_4_out_V_TDATA;
  assign out_V_tvalid = StreamingDataflowPartition_1_MatrixVectorActivation_4_out_V_TVALID;
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_MatrixVectorActivation_4_0 StreamingDataflowPartition_1_MatrixVectorActivation_4
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_4_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_4_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_4_out_V_TVALID),
        .weights_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_4_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_4_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_4_wstrm_m_axis_0_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_MatrixVectorActivation_4_wstrm_0 StreamingDataflowPartition_1_MatrixVectorActivation_4_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(StreamingDataflowPartition_1_MatrixVectorActivation_4_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(StreamingDataflowPartition_1_MatrixVectorActivation_4_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(StreamingDataflowPartition_1_MatrixVectorActivation_4_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module StreamingDataflowPartition_1_MatrixVectorActivation_5_imp_1GR5W9E
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [15:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]StreamingDataflowPartition_1_MatrixVectorActivation_5_out_V_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_5_out_V_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_5_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_MatrixVectorActivation_5_wstrm_m_axis_0_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_5_wstrm_m_axis_0_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_5_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [15:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign StreamingDataflowPartition_1_MatrixVectorActivation_5_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[15:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = StreamingDataflowPartition_1_MatrixVectorActivation_5_out_V_TDATA;
  assign out_V_tvalid = StreamingDataflowPartition_1_MatrixVectorActivation_5_out_V_TVALID;
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_MatrixVectorActivation_5_0 StreamingDataflowPartition_1_MatrixVectorActivation_5
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_5_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_5_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_5_out_V_TVALID),
        .weights_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_5_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_5_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_5_wstrm_m_axis_0_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_MatrixVectorActivation_5_wstrm_0 StreamingDataflowPartition_1_MatrixVectorActivation_5_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(StreamingDataflowPartition_1_MatrixVectorActivation_5_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(StreamingDataflowPartition_1_MatrixVectorActivation_5_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(StreamingDataflowPartition_1_MatrixVectorActivation_5_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module StreamingDataflowPartition_1_MatrixVectorActivation_6_imp_7JAR5Q
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [15:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]StreamingDataflowPartition_1_MatrixVectorActivation_6_out_V_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_6_out_V_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_6_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_MatrixVectorActivation_6_wstrm_m_axis_0_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_6_wstrm_m_axis_0_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_6_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [15:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign StreamingDataflowPartition_1_MatrixVectorActivation_6_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[15:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = StreamingDataflowPartition_1_MatrixVectorActivation_6_out_V_TDATA;
  assign out_V_tvalid = StreamingDataflowPartition_1_MatrixVectorActivation_6_out_V_TVALID;
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_MatrixVectorActivation_6_0 StreamingDataflowPartition_1_MatrixVectorActivation_6
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_6_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_6_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_6_out_V_TVALID),
        .weights_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_6_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_6_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_6_wstrm_m_axis_0_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_MatrixVectorActivation_6_wstrm_0 StreamingDataflowPartition_1_MatrixVectorActivation_6_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(StreamingDataflowPartition_1_MatrixVectorActivation_6_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(StreamingDataflowPartition_1_MatrixVectorActivation_6_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(StreamingDataflowPartition_1_MatrixVectorActivation_6_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module StreamingDataflowPartition_1_MatrixVectorActivation_7_imp_XCH13U
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [15:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]StreamingDataflowPartition_1_MatrixVectorActivation_7_out_V_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_7_out_V_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_7_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_MatrixVectorActivation_7_wstrm_m_axis_0_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_7_wstrm_m_axis_0_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_7_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [15:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign StreamingDataflowPartition_1_MatrixVectorActivation_7_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[15:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = StreamingDataflowPartition_1_MatrixVectorActivation_7_out_V_TDATA;
  assign out_V_tvalid = StreamingDataflowPartition_1_MatrixVectorActivation_7_out_V_TVALID;
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_MatrixVectorActivation_7_0 StreamingDataflowPartition_1_MatrixVectorActivation_7
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_7_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_7_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_7_out_V_TVALID),
        .weights_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_7_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_7_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_7_wstrm_m_axis_0_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_MatrixVectorActivation_7_wstrm_0 StreamingDataflowPartition_1_MatrixVectorActivation_7_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(StreamingDataflowPartition_1_MatrixVectorActivation_7_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(StreamingDataflowPartition_1_MatrixVectorActivation_7_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(StreamingDataflowPartition_1_MatrixVectorActivation_7_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module StreamingDataflowPartition_1_MatrixVectorActivation_8_imp_A5DAKL
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [15:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]StreamingDataflowPartition_1_MatrixVectorActivation_8_out_V_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_8_out_V_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_8_out_V_TVALID;
  wire [15:0]StreamingDataflowPartition_1_MatrixVectorActivation_8_wstrm_m_axis_0_TDATA;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_8_wstrm_m_axis_0_TREADY;
  wire StreamingDataflowPartition_1_MatrixVectorActivation_8_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [15:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign StreamingDataflowPartition_1_MatrixVectorActivation_8_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[15:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = StreamingDataflowPartition_1_MatrixVectorActivation_8_out_V_TDATA;
  assign out_V_tvalid = StreamingDataflowPartition_1_MatrixVectorActivation_8_out_V_TVALID;
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_MatrixVectorActivation_8_0 StreamingDataflowPartition_1_MatrixVectorActivation_8
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_8_out_V_TDATA),
        .out_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_8_out_V_TREADY),
        .out_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_8_out_V_TVALID),
        .weights_V_TDATA(StreamingDataflowPartition_1_MatrixVectorActivation_8_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(StreamingDataflowPartition_1_MatrixVectorActivation_8_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(StreamingDataflowPartition_1_MatrixVectorActivation_8_wstrm_m_axis_0_TVALID));
  StreamingDataflowPartition_1_StreamingDataflowPartition_1_MatrixVectorActivation_8_wstrm_0 StreamingDataflowPartition_1_MatrixVectorActivation_8_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(StreamingDataflowPartition_1_MatrixVectorActivation_8_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(StreamingDataflowPartition_1_MatrixVectorActivation_8_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(StreamingDataflowPartition_1_MatrixVectorActivation_8_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule
