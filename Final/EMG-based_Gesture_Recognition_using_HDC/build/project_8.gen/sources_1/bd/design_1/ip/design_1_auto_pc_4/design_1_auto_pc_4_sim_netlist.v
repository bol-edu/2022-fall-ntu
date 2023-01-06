// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Jan  5 05:45:45 2023
// Host        : DESKTOP-B6S694L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_auto_pc_4 -prefix
//               design_1_auto_pc_4_ design_1_auto_pc_1_sim_netlist.v
// Design      : design_1_auto_pc_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_auto_pc_4_axi_data_fifo_v2_1_25_axic_fifo
   (empty,
    SR,
    din,
    m_axi_rready,
    s_axi_rvalid,
    s_axi_rlast,
    S_AXI_AREADY_I_reg,
    command_ongoing_reg,
    aresetn_0,
    E,
    m_axi_arvalid,
    aclk,
    rd_en,
    s_axi_rready,
    m_axi_rvalid,
    m_axi_rlast,
    command_ongoing_reg_0,
    S_AXI_AREADY_I_reg_0,
    s_axi_arvalid,
    aresetn,
    command_ongoing,
    command_ongoing_reg_1,
    m_axi_arready,
    cmd_push_block,
    need_to_split_q,
    Q,
    split_ongoing_reg,
    access_is_incr_q);
  output empty;
  output [0:0]SR;
  output [0:0]din;
  output m_axi_rready;
  output s_axi_rvalid;
  output s_axi_rlast;
  output S_AXI_AREADY_I_reg;
  output command_ongoing_reg;
  output aresetn_0;
  output [0:0]E;
  output m_axi_arvalid;
  input aclk;
  input rd_en;
  input s_axi_rready;
  input m_axi_rvalid;
  input m_axi_rlast;
  input command_ongoing_reg_0;
  input S_AXI_AREADY_I_reg_0;
  input s_axi_arvalid;
  input aresetn;
  input command_ongoing;
  input command_ongoing_reg_1;
  input m_axi_arready;
  input cmd_push_block;
  input need_to_split_q;
  input [3:0]Q;
  input [3:0]split_ongoing_reg;
  input access_is_incr_q;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_reg;
  wire S_AXI_AREADY_I_reg_0;
  wire access_is_incr_q;
  wire aclk;
  wire aresetn;
  wire aresetn_0;
  wire cmd_push_block;
  wire command_ongoing;
  wire command_ongoing_reg;
  wire command_ongoing_reg_0;
  wire command_ongoing_reg_1;
  wire [0:0]din;
  wire empty;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire need_to_split_q;
  wire rd_en;
  wire s_axi_arvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [3:0]split_ongoing_reg;

  design_1_auto_pc_4_axi_data_fifo_v2_1_25_fifo_gen inst
       (.E(E),
        .Q(Q),
        .SR(SR),
        .S_AXI_AREADY_I_reg(S_AXI_AREADY_I_reg),
        .S_AXI_AREADY_I_reg_0(S_AXI_AREADY_I_reg_0),
        .access_is_incr_q(access_is_incr_q),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(aresetn_0),
        .cmd_push_block(cmd_push_block),
        .command_ongoing(command_ongoing),
        .command_ongoing_reg(command_ongoing_reg),
        .command_ongoing_reg_0(command_ongoing_reg_0),
        .command_ongoing_reg_1(command_ongoing_reg_1),
        .din(din),
        .empty(empty),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .need_to_split_q(need_to_split_q),
        .rd_en(rd_en),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .split_ongoing_reg(split_ongoing_reg));
endmodule

module design_1_auto_pc_4_axi_data_fifo_v2_1_25_fifo_gen
   (empty,
    SR,
    din,
    m_axi_rready,
    s_axi_rvalid,
    s_axi_rlast,
    S_AXI_AREADY_I_reg,
    command_ongoing_reg,
    aresetn_0,
    E,
    m_axi_arvalid,
    aclk,
    rd_en,
    s_axi_rready,
    m_axi_rvalid,
    m_axi_rlast,
    command_ongoing_reg_0,
    S_AXI_AREADY_I_reg_0,
    s_axi_arvalid,
    aresetn,
    command_ongoing,
    command_ongoing_reg_1,
    m_axi_arready,
    cmd_push_block,
    need_to_split_q,
    Q,
    split_ongoing_reg,
    access_is_incr_q);
  output empty;
  output [0:0]SR;
  output [0:0]din;
  output m_axi_rready;
  output s_axi_rvalid;
  output s_axi_rlast;
  output S_AXI_AREADY_I_reg;
  output command_ongoing_reg;
  output aresetn_0;
  output [0:0]E;
  output m_axi_arvalid;
  input aclk;
  input rd_en;
  input s_axi_rready;
  input m_axi_rvalid;
  input m_axi_rlast;
  input command_ongoing_reg_0;
  input S_AXI_AREADY_I_reg_0;
  input s_axi_arvalid;
  input aresetn;
  input command_ongoing;
  input command_ongoing_reg_1;
  input m_axi_arready;
  input cmd_push_block;
  input need_to_split_q;
  input [3:0]Q;
  input [3:0]split_ongoing_reg;
  input access_is_incr_q;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_i_3_n_0;
  wire S_AXI_AREADY_I_i_5_n_0;
  wire S_AXI_AREADY_I_reg;
  wire S_AXI_AREADY_I_reg_0;
  wire \USE_READ.USE_SPLIT_R.rd_cmd_split ;
  wire access_is_incr_q;
  wire aclk;
  wire aresetn;
  wire aresetn_0;
  wire cmd_push;
  wire cmd_push_block;
  wire command_ongoing;
  wire command_ongoing_reg;
  wire command_ongoing_reg_0;
  wire command_ongoing_reg_1;
  wire [0:0]din;
  wire empty;
  wire full;
  wire last_split__1;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire need_to_split_q;
  wire rd_en;
  wire s_axi_arvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [3:0]split_ongoing_reg;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  LUT6 #(
    .INIT(64'h5575FF7500000000)) 
    S_AXI_AREADY_I_i_1
       (.I0(command_ongoing_reg_0),
        .I1(S_AXI_AREADY_I_i_3_n_0),
        .I2(last_split__1),
        .I3(S_AXI_AREADY_I_reg_0),
        .I4(s_axi_arvalid),
        .I5(aresetn),
        .O(S_AXI_AREADY_I_reg));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h5DFF)) 
    S_AXI_AREADY_I_i_3
       (.I0(command_ongoing),
        .I1(full),
        .I2(cmd_push_block),
        .I3(m_axi_arready),
        .O(S_AXI_AREADY_I_i_3_n_0));
  LUT6 #(
    .INIT(64'h82000082FFFFFFFF)) 
    S_AXI_AREADY_I_i_4
       (.I0(S_AXI_AREADY_I_i_5_n_0),
        .I1(Q[2]),
        .I2(split_ongoing_reg[2]),
        .I3(Q[3]),
        .I4(split_ongoing_reg[3]),
        .I5(access_is_incr_q),
        .O(last_split__1));
  LUT4 #(
    .INIT(16'h9009)) 
    S_AXI_AREADY_I_i_5
       (.I0(Q[0]),
        .I1(split_ongoing_reg[0]),
        .I2(Q[1]),
        .I3(split_ongoing_reg[1]),
        .O(S_AXI_AREADY_I_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \S_AXI_ASIZE_Q[2]_i_1 
       (.I0(aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h2022A0A0)) 
    cmd_push_block_i_1
       (.I0(aresetn),
        .I1(m_axi_arready),
        .I2(cmd_push_block),
        .I3(full),
        .I4(command_ongoing),
        .O(aresetn_0));
  LUT6 #(
    .INIT(64'h8AFFAAAA00000000)) 
    command_ongoing_i_1
       (.I0(command_ongoing),
        .I1(S_AXI_AREADY_I_i_3_n_0),
        .I2(last_split__1),
        .I3(command_ongoing_reg_1),
        .I4(command_ongoing_reg_0),
        .I5(aresetn),
        .O(command_ongoing_reg));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "1" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "1" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_auto_pc_4_fifo_generator_v13_2_7 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(aclk),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din(din),
        .dout(\USE_READ.USE_SPLIT_R.rd_cmd_split ),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(cmd_push),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h2)) 
    fifo_gen_inst_i_1
       (.I0(need_to_split_q),
        .I1(last_split__1),
        .O(din));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    fifo_gen_inst_i_2
       (.I0(command_ongoing),
        .I1(full),
        .I2(cmd_push_block),
        .O(cmd_push));
  LUT3 #(
    .INIT(8'hB0)) 
    m_axi_arvalid_INST_0
       (.I0(cmd_push_block),
        .I1(full),
        .I2(command_ongoing),
        .O(m_axi_arvalid));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    m_axi_rready_INST_0
       (.I0(s_axi_rready),
        .I1(m_axi_rvalid),
        .I2(empty),
        .O(m_axi_rready));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_rlast_INST_0
       (.I0(m_axi_rlast),
        .I1(\USE_READ.USE_SPLIT_R.rd_cmd_split ),
        .O(s_axi_rlast));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_rvalid_INST_0
       (.I0(m_axi_rvalid),
        .I1(empty),
        .O(s_axi_rvalid));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8A00)) 
    split_ongoing_i_1
       (.I0(m_axi_arready),
        .I1(cmd_push_block),
        .I2(full),
        .I3(command_ongoing),
        .O(E));
endmodule

module design_1_auto_pc_4_axi_protocol_converter_v2_1_26_a_axi3_conv
   (empty,
    E,
    m_axi_rready,
    s_axi_rvalid,
    s_axi_rlast,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_araddr,
    m_axi_arvalid,
    m_axi_arlen,
    m_axi_arlock,
    aclk,
    rd_en,
    s_axi_arlock,
    s_axi_rready,
    m_axi_rvalid,
    s_axi_arsize,
    s_axi_arlen,
    m_axi_rlast,
    s_axi_arvalid,
    aresetn,
    s_axi_araddr,
    s_axi_arburst,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    m_axi_arready);
  output empty;
  output [0:0]E;
  output m_axi_rready;
  output s_axi_rvalid;
  output s_axi_rlast;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [31:0]m_axi_araddr;
  output m_axi_arvalid;
  output [3:0]m_axi_arlen;
  output [0:0]m_axi_arlock;
  input aclk;
  input rd_en;
  input [0:0]s_axi_arlock;
  input s_axi_rready;
  input m_axi_rvalid;
  input [2:0]s_axi_arsize;
  input [7:0]s_axi_arlen;
  input m_axi_rlast;
  input s_axi_arvalid;
  input aresetn;
  input [31:0]s_axi_araddr;
  input [1:0]s_axi_arburst;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input m_axi_arready;

  wire [0:0]E;
  wire M_AXI_AADDR_I1__0;
  wire [31:0]S_AXI_AADDR_Q;
  wire [3:0]S_AXI_ALEN_Q;
  wire \S_AXI_ALOCK_Q_reg_n_0_[0] ;
  wire S_AXI_AREADY_I_i_2_n_0;
  wire \USE_R_CHANNEL.cmd_queue_n_1 ;
  wire \USE_R_CHANNEL.cmd_queue_n_6 ;
  wire \USE_R_CHANNEL.cmd_queue_n_7 ;
  wire \USE_R_CHANNEL.cmd_queue_n_8 ;
  wire access_is_incr;
  wire access_is_incr_q;
  wire aclk;
  wire [11:5]addr_step;
  wire [11:5]addr_step_q;
  wire \addr_step_q[6]_i_1_n_0 ;
  wire \addr_step_q[7]_i_1_n_0 ;
  wire \addr_step_q[8]_i_1_n_0 ;
  wire \addr_step_q[9]_i_1_n_0 ;
  wire [1:0]areset_d;
  wire aresetn;
  wire cmd_push_block;
  wire cmd_split_i;
  wire command_ongoing;
  wire command_ongoing_i_2_n_0;
  wire empty;
  wire first_split__2;
  wire [11:4]first_step;
  wire [11:0]first_step_q;
  wire \first_step_q[0]_i_1_n_0 ;
  wire \first_step_q[10]_i_2_n_0 ;
  wire \first_step_q[11]_i_2_n_0 ;
  wire \first_step_q[1]_i_1_n_0 ;
  wire \first_step_q[2]_i_1_n_0 ;
  wire \first_step_q[3]_i_1_n_0 ;
  wire \first_step_q[6]_i_2_n_0 ;
  wire \first_step_q[7]_i_2_n_0 ;
  wire \first_step_q[8]_i_2_n_0 ;
  wire \first_step_q[9]_i_2_n_0 ;
  wire incr_need_to_split__0;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire need_to_split_q;
  wire [31:0]next_mi_addr;
  wire \next_mi_addr[11]_i_2_n_0 ;
  wire \next_mi_addr[11]_i_3_n_0 ;
  wire \next_mi_addr[11]_i_4_n_0 ;
  wire \next_mi_addr[11]_i_5_n_0 ;
  wire \next_mi_addr[15]_i_2_n_0 ;
  wire \next_mi_addr[15]_i_3_n_0 ;
  wire \next_mi_addr[15]_i_4_n_0 ;
  wire \next_mi_addr[15]_i_5_n_0 ;
  wire \next_mi_addr[15]_i_6_n_0 ;
  wire \next_mi_addr[15]_i_7_n_0 ;
  wire \next_mi_addr[15]_i_8_n_0 ;
  wire \next_mi_addr[15]_i_9_n_0 ;
  wire \next_mi_addr[19]_i_2_n_0 ;
  wire \next_mi_addr[19]_i_3_n_0 ;
  wire \next_mi_addr[19]_i_4_n_0 ;
  wire \next_mi_addr[19]_i_5_n_0 ;
  wire \next_mi_addr[23]_i_2_n_0 ;
  wire \next_mi_addr[23]_i_3_n_0 ;
  wire \next_mi_addr[23]_i_4_n_0 ;
  wire \next_mi_addr[23]_i_5_n_0 ;
  wire \next_mi_addr[27]_i_2_n_0 ;
  wire \next_mi_addr[27]_i_3_n_0 ;
  wire \next_mi_addr[27]_i_4_n_0 ;
  wire \next_mi_addr[27]_i_5_n_0 ;
  wire \next_mi_addr[31]_i_2_n_0 ;
  wire \next_mi_addr[31]_i_3_n_0 ;
  wire \next_mi_addr[31]_i_4_n_0 ;
  wire \next_mi_addr[31]_i_5_n_0 ;
  wire \next_mi_addr[3]_i_2_n_0 ;
  wire \next_mi_addr[3]_i_3_n_0 ;
  wire \next_mi_addr[3]_i_4_n_0 ;
  wire \next_mi_addr[3]_i_5_n_0 ;
  wire \next_mi_addr[7]_i_2_n_0 ;
  wire \next_mi_addr[7]_i_3_n_0 ;
  wire \next_mi_addr[7]_i_4_n_0 ;
  wire \next_mi_addr[7]_i_5_n_0 ;
  wire \next_mi_addr_reg[11]_i_1_n_0 ;
  wire \next_mi_addr_reg[11]_i_1_n_1 ;
  wire \next_mi_addr_reg[11]_i_1_n_2 ;
  wire \next_mi_addr_reg[11]_i_1_n_3 ;
  wire \next_mi_addr_reg[11]_i_1_n_4 ;
  wire \next_mi_addr_reg[11]_i_1_n_5 ;
  wire \next_mi_addr_reg[11]_i_1_n_6 ;
  wire \next_mi_addr_reg[11]_i_1_n_7 ;
  wire \next_mi_addr_reg[15]_i_1_n_0 ;
  wire \next_mi_addr_reg[15]_i_1_n_1 ;
  wire \next_mi_addr_reg[15]_i_1_n_2 ;
  wire \next_mi_addr_reg[15]_i_1_n_3 ;
  wire \next_mi_addr_reg[15]_i_1_n_4 ;
  wire \next_mi_addr_reg[15]_i_1_n_5 ;
  wire \next_mi_addr_reg[15]_i_1_n_6 ;
  wire \next_mi_addr_reg[15]_i_1_n_7 ;
  wire \next_mi_addr_reg[19]_i_1_n_0 ;
  wire \next_mi_addr_reg[19]_i_1_n_1 ;
  wire \next_mi_addr_reg[19]_i_1_n_2 ;
  wire \next_mi_addr_reg[19]_i_1_n_3 ;
  wire \next_mi_addr_reg[19]_i_1_n_4 ;
  wire \next_mi_addr_reg[19]_i_1_n_5 ;
  wire \next_mi_addr_reg[19]_i_1_n_6 ;
  wire \next_mi_addr_reg[19]_i_1_n_7 ;
  wire \next_mi_addr_reg[23]_i_1_n_0 ;
  wire \next_mi_addr_reg[23]_i_1_n_1 ;
  wire \next_mi_addr_reg[23]_i_1_n_2 ;
  wire \next_mi_addr_reg[23]_i_1_n_3 ;
  wire \next_mi_addr_reg[23]_i_1_n_4 ;
  wire \next_mi_addr_reg[23]_i_1_n_5 ;
  wire \next_mi_addr_reg[23]_i_1_n_6 ;
  wire \next_mi_addr_reg[23]_i_1_n_7 ;
  wire \next_mi_addr_reg[27]_i_1_n_0 ;
  wire \next_mi_addr_reg[27]_i_1_n_1 ;
  wire \next_mi_addr_reg[27]_i_1_n_2 ;
  wire \next_mi_addr_reg[27]_i_1_n_3 ;
  wire \next_mi_addr_reg[27]_i_1_n_4 ;
  wire \next_mi_addr_reg[27]_i_1_n_5 ;
  wire \next_mi_addr_reg[27]_i_1_n_6 ;
  wire \next_mi_addr_reg[27]_i_1_n_7 ;
  wire \next_mi_addr_reg[31]_i_1_n_1 ;
  wire \next_mi_addr_reg[31]_i_1_n_2 ;
  wire \next_mi_addr_reg[31]_i_1_n_3 ;
  wire \next_mi_addr_reg[31]_i_1_n_4 ;
  wire \next_mi_addr_reg[31]_i_1_n_5 ;
  wire \next_mi_addr_reg[31]_i_1_n_6 ;
  wire \next_mi_addr_reg[31]_i_1_n_7 ;
  wire \next_mi_addr_reg[3]_i_1_n_0 ;
  wire \next_mi_addr_reg[3]_i_1_n_1 ;
  wire \next_mi_addr_reg[3]_i_1_n_2 ;
  wire \next_mi_addr_reg[3]_i_1_n_3 ;
  wire \next_mi_addr_reg[3]_i_1_n_4 ;
  wire \next_mi_addr_reg[3]_i_1_n_5 ;
  wire \next_mi_addr_reg[3]_i_1_n_6 ;
  wire \next_mi_addr_reg[3]_i_1_n_7 ;
  wire \next_mi_addr_reg[7]_i_1_n_0 ;
  wire \next_mi_addr_reg[7]_i_1_n_1 ;
  wire \next_mi_addr_reg[7]_i_1_n_2 ;
  wire \next_mi_addr_reg[7]_i_1_n_3 ;
  wire \next_mi_addr_reg[7]_i_1_n_4 ;
  wire \next_mi_addr_reg[7]_i_1_n_5 ;
  wire \next_mi_addr_reg[7]_i_1_n_6 ;
  wire \next_mi_addr_reg[7]_i_1_n_7 ;
  wire [3:0]num_transactions_q;
  wire [3:0]p_0_in;
  wire \pushed_commands[3]_i_1_n_0 ;
  wire [3:0]pushed_commands_reg;
  wire pushed_new_cmd;
  wire rd_en;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [6:0]size_mask;
  wire [31:0]size_mask_q;
  wire split_ongoing;
  wire [3:3]\NLW_next_mi_addr_reg[31]_i_1_CO_UNCONNECTED ;

  FDRE \S_AXI_AADDR_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[0]),
        .Q(S_AXI_AADDR_Q[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[10]),
        .Q(S_AXI_AADDR_Q[10]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[11]),
        .Q(S_AXI_AADDR_Q[11]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[12]),
        .Q(S_AXI_AADDR_Q[12]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[13]),
        .Q(S_AXI_AADDR_Q[13]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[14]),
        .Q(S_AXI_AADDR_Q[14]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[15]),
        .Q(S_AXI_AADDR_Q[15]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[16]),
        .Q(S_AXI_AADDR_Q[16]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[17]),
        .Q(S_AXI_AADDR_Q[17]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[18]),
        .Q(S_AXI_AADDR_Q[18]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[19]),
        .Q(S_AXI_AADDR_Q[19]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[1]),
        .Q(S_AXI_AADDR_Q[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[20]),
        .Q(S_AXI_AADDR_Q[20]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[21]),
        .Q(S_AXI_AADDR_Q[21]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[22]),
        .Q(S_AXI_AADDR_Q[22]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[23]),
        .Q(S_AXI_AADDR_Q[23]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[24]),
        .Q(S_AXI_AADDR_Q[24]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[25]),
        .Q(S_AXI_AADDR_Q[25]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[26]),
        .Q(S_AXI_AADDR_Q[26]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[27]),
        .Q(S_AXI_AADDR_Q[27]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[28]),
        .Q(S_AXI_AADDR_Q[28]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[29]),
        .Q(S_AXI_AADDR_Q[29]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[2]),
        .Q(S_AXI_AADDR_Q[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[30]),
        .Q(S_AXI_AADDR_Q[30]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[31]),
        .Q(S_AXI_AADDR_Q[31]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[3]),
        .Q(S_AXI_AADDR_Q[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[4]),
        .Q(S_AXI_AADDR_Q[4]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[5]),
        .Q(S_AXI_AADDR_Q[5]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[6]),
        .Q(S_AXI_AADDR_Q[6]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[7]),
        .Q(S_AXI_AADDR_Q[7]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[8]),
        .Q(S_AXI_AADDR_Q[8]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[9]),
        .Q(S_AXI_AADDR_Q[9]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ABURST_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arburst[0]),
        .Q(m_axi_arburst[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ABURST_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arburst[1]),
        .Q(m_axi_arburst[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ACACHE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arcache[0]),
        .Q(m_axi_arcache[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ACACHE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arcache[1]),
        .Q(m_axi_arcache[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ACACHE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arcache[2]),
        .Q(m_axi_arcache[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ACACHE_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arcache[3]),
        .Q(m_axi_arcache[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ALEN_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[0]),
        .Q(S_AXI_ALEN_Q[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ALEN_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[1]),
        .Q(S_AXI_ALEN_Q[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ALEN_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[2]),
        .Q(S_AXI_ALEN_Q[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ALEN_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[3]),
        .Q(S_AXI_ALEN_Q[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ALOCK_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlock),
        .Q(\S_AXI_ALOCK_Q_reg_n_0_[0] ),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_APROT_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arprot[0]),
        .Q(m_axi_arprot[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_APROT_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arprot[1]),
        .Q(m_axi_arprot[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_APROT_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arprot[2]),
        .Q(m_axi_arprot[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AQOS_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arqos[0]),
        .Q(m_axi_arqos[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AQOS_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arqos[1]),
        .Q(m_axi_arqos[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AQOS_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arqos[2]),
        .Q(m_axi_arqos[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AQOS_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arqos[3]),
        .Q(m_axi_arqos[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  LUT2 #(
    .INIT(4'hB)) 
    S_AXI_AREADY_I_i_2
       (.I0(areset_d[0]),
        .I1(areset_d[1]),
        .O(S_AXI_AREADY_I_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    S_AXI_AREADY_I_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_R_CHANNEL.cmd_queue_n_6 ),
        .Q(E),
        .R(1'b0));
  FDRE \S_AXI_ASIZE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arsize[0]),
        .Q(m_axi_arsize[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ASIZE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arsize[1]),
        .Q(m_axi_arsize[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ASIZE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arsize[2]),
        .Q(m_axi_arsize[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  design_1_auto_pc_4_axi_data_fifo_v2_1_25_axic_fifo \USE_R_CHANNEL.cmd_queue 
       (.E(pushed_new_cmd),
        .Q(num_transactions_q),
        .SR(\USE_R_CHANNEL.cmd_queue_n_1 ),
        .S_AXI_AREADY_I_reg(\USE_R_CHANNEL.cmd_queue_n_6 ),
        .S_AXI_AREADY_I_reg_0(E),
        .access_is_incr_q(access_is_incr_q),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(\USE_R_CHANNEL.cmd_queue_n_8 ),
        .cmd_push_block(cmd_push_block),
        .command_ongoing(command_ongoing),
        .command_ongoing_reg(\USE_R_CHANNEL.cmd_queue_n_7 ),
        .command_ongoing_reg_0(S_AXI_AREADY_I_i_2_n_0),
        .command_ongoing_reg_1(command_ongoing_i_2_n_0),
        .din(cmd_split_i),
        .empty(empty),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .need_to_split_q(need_to_split_q),
        .rd_en(rd_en),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .split_ongoing_reg(pushed_commands_reg));
  LUT2 #(
    .INIT(4'h2)) 
    access_is_incr_q_i_1
       (.I0(s_axi_arburst[0]),
        .I1(s_axi_arburst[1]),
        .O(access_is_incr));
  FDRE #(
    .INIT(1'b0)) 
    access_is_incr_q_reg
       (.C(aclk),
        .CE(E),
        .D(access_is_incr),
        .Q(access_is_incr_q),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \addr_step_q[10]_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .O(addr_step[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \addr_step_q[11]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .O(addr_step[11]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \addr_step_q[5]_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .O(addr_step[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \addr_step_q[6]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .O(\addr_step_q[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \addr_step_q[7]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .O(\addr_step_q[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \addr_step_q[8]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(\addr_step_q[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \addr_step_q[9]_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .O(\addr_step_q[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(addr_step[10]),
        .Q(addr_step_q[10]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(addr_step[11]),
        .Q(addr_step_q[11]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(addr_step[5]),
        .Q(addr_step_q[5]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(\addr_step_q[6]_i_1_n_0 ),
        .Q(addr_step_q[6]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(\addr_step_q[7]_i_1_n_0 ),
        .Q(addr_step_q[7]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(\addr_step_q[8]_i_1_n_0 ),
        .Q(addr_step_q[8]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(\addr_step_q[9]_i_1_n_0 ),
        .Q(addr_step_q[9]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_R_CHANNEL.cmd_queue_n_1 ),
        .Q(areset_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(areset_d[0]),
        .Q(areset_d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_push_block_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_R_CHANNEL.cmd_queue_n_8 ),
        .Q(cmd_push_block),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    command_ongoing_i_2
       (.I0(s_axi_arvalid),
        .I1(E),
        .O(command_ongoing_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    command_ongoing_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_R_CHANNEL.cmd_queue_n_7 ),
        .Q(command_ongoing),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \first_step_q[0]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arsize[2]),
        .O(\first_step_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \first_step_q[10]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(\first_step_q[10]_i_2_n_0 ),
        .O(first_step[10]));
  LUT6 #(
    .INIT(64'h2AAA800080000000)) 
    \first_step_q[10]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arlen[2]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arlen[3]),
        .I5(s_axi_arsize[0]),
        .O(\first_step_q[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \first_step_q[11]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(\first_step_q[11]_i_2_n_0 ),
        .O(first_step[11]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \first_step_q[11]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arlen[3]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arlen[2]),
        .I5(s_axi_arsize[0]),
        .O(\first_step_q[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000514)) 
    \first_step_q[1]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arsize[2]),
        .O(\first_step_q[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000F3C6A)) 
    \first_step_q[2]_i_1 
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arsize[1]),
        .I5(s_axi_arsize[2]),
        .O(\first_step_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \first_step_q[3]_i_1 
       (.I0(\first_step_q[7]_i_2_n_0 ),
        .I1(s_axi_arsize[2]),
        .O(\first_step_q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h01FF0100)) 
    \first_step_q[4]_i_1 
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[2]),
        .I4(\first_step_q[8]_i_2_n_0 ),
        .O(first_step[4]));
  LUT6 #(
    .INIT(64'h0036FFFF00360000)) 
    \first_step_q[5]_i_1 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arsize[2]),
        .I5(\first_step_q[9]_i_2_n_0 ),
        .O(first_step[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \first_step_q[6]_i_1 
       (.I0(\first_step_q[6]_i_2_n_0 ),
        .I1(s_axi_arsize[2]),
        .I2(\first_step_q[10]_i_2_n_0 ),
        .O(first_step[6]));
  LUT5 #(
    .INIT(32'h07531642)) 
    \first_step_q[6]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arlen[2]),
        .O(\first_step_q[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \first_step_q[7]_i_1 
       (.I0(\first_step_q[7]_i_2_n_0 ),
        .I1(s_axi_arsize[2]),
        .I2(\first_step_q[11]_i_2_n_0 ),
        .O(first_step[7]));
  LUT6 #(
    .INIT(64'h07FD53B916EC42A8)) 
    \first_step_q[7]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arlen[2]),
        .I5(s_axi_arlen[3]),
        .O(\first_step_q[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \first_step_q[8]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(\first_step_q[8]_i_2_n_0 ),
        .O(first_step[8]));
  LUT6 #(
    .INIT(64'h14EAEA6262C8C840)) 
    \first_step_q[8]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[3]),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arlen[0]),
        .I5(s_axi_arlen[2]),
        .O(\first_step_q[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \first_step_q[9]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(\first_step_q[9]_i_2_n_0 ),
        .O(first_step[9]));
  LUT6 #(
    .INIT(64'h4AA2A2A228808080)) 
    \first_step_q[9]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[2]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arlen[1]),
        .I5(s_axi_arlen[3]),
        .O(\first_step_q[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\first_step_q[0]_i_1_n_0 ),
        .Q(first_step_q[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(first_step[10]),
        .Q(first_step_q[10]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(first_step[11]),
        .Q(first_step_q[11]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\first_step_q[1]_i_1_n_0 ),
        .Q(first_step_q[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\first_step_q[2]_i_1_n_0 ),
        .Q(first_step_q[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(\first_step_q[3]_i_1_n_0 ),
        .Q(first_step_q[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(first_step[4]),
        .Q(first_step_q[4]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(first_step[5]),
        .Q(first_step_q[5]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(first_step[6]),
        .Q(first_step_q[6]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(first_step[7]),
        .Q(first_step_q[7]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(first_step[8]),
        .Q(first_step_q[8]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(first_step[9]),
        .Q(first_step_q[9]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    incr_need_to_split
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arburst[0]),
        .I2(s_axi_arlen[5]),
        .I3(s_axi_arlen[4]),
        .I4(s_axi_arlen[6]),
        .I5(s_axi_arlen[7]),
        .O(incr_need_to_split__0));
  FDRE #(
    .INIT(1'b0)) 
    incr_need_to_split_q_reg
       (.C(aclk),
        .CE(E),
        .D(incr_need_to_split__0),
        .Q(need_to_split_q),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[0]_INST_0 
       (.I0(next_mi_addr[0]),
        .I1(size_mask_q[0]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[0]),
        .O(m_axi_araddr[0]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[10]_INST_0 
       (.I0(next_mi_addr[10]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[10]),
        .O(m_axi_araddr[10]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[11]_INST_0 
       (.I0(next_mi_addr[11]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[11]),
        .O(m_axi_araddr[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[12]_INST_0 
       (.I0(next_mi_addr[12]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[12]),
        .O(m_axi_araddr[12]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[13]_INST_0 
       (.I0(next_mi_addr[13]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[13]),
        .O(m_axi_araddr[13]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[14]_INST_0 
       (.I0(next_mi_addr[14]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[14]),
        .O(m_axi_araddr[14]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[15]_INST_0 
       (.I0(next_mi_addr[15]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[15]),
        .O(m_axi_araddr[15]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[16]_INST_0 
       (.I0(next_mi_addr[16]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[16]),
        .O(m_axi_araddr[16]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[17]_INST_0 
       (.I0(next_mi_addr[17]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[17]),
        .O(m_axi_araddr[17]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[18]_INST_0 
       (.I0(next_mi_addr[18]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[18]),
        .O(m_axi_araddr[18]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[19]_INST_0 
       (.I0(next_mi_addr[19]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[19]),
        .O(m_axi_araddr[19]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[1]_INST_0 
       (.I0(next_mi_addr[1]),
        .I1(size_mask_q[1]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[1]),
        .O(m_axi_araddr[1]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[20]_INST_0 
       (.I0(next_mi_addr[20]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[20]),
        .O(m_axi_araddr[20]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[21]_INST_0 
       (.I0(next_mi_addr[21]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[21]),
        .O(m_axi_araddr[21]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[22]_INST_0 
       (.I0(next_mi_addr[22]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[22]),
        .O(m_axi_araddr[22]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[23]_INST_0 
       (.I0(next_mi_addr[23]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[23]),
        .O(m_axi_araddr[23]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[24]_INST_0 
       (.I0(next_mi_addr[24]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[24]),
        .O(m_axi_araddr[24]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[25]_INST_0 
       (.I0(next_mi_addr[25]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[25]),
        .O(m_axi_araddr[25]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[26]_INST_0 
       (.I0(next_mi_addr[26]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[26]),
        .O(m_axi_araddr[26]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[27]_INST_0 
       (.I0(next_mi_addr[27]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[27]),
        .O(m_axi_araddr[27]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[28]_INST_0 
       (.I0(next_mi_addr[28]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[28]),
        .O(m_axi_araddr[28]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[29]_INST_0 
       (.I0(next_mi_addr[29]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[29]),
        .O(m_axi_araddr[29]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[2]_INST_0 
       (.I0(next_mi_addr[2]),
        .I1(size_mask_q[2]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[2]),
        .O(m_axi_araddr[2]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[30]_INST_0 
       (.I0(next_mi_addr[30]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[30]),
        .O(m_axi_araddr[30]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[31]_INST_0 
       (.I0(next_mi_addr[31]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[31]),
        .O(m_axi_araddr[31]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[3]_INST_0 
       (.I0(next_mi_addr[3]),
        .I1(size_mask_q[3]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[3]),
        .O(m_axi_araddr[3]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[4]_INST_0 
       (.I0(next_mi_addr[4]),
        .I1(size_mask_q[4]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[4]),
        .O(m_axi_araddr[4]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[5]_INST_0 
       (.I0(next_mi_addr[5]),
        .I1(size_mask_q[5]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[5]),
        .O(m_axi_araddr[5]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[6]_INST_0 
       (.I0(next_mi_addr[6]),
        .I1(size_mask_q[6]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[6]),
        .O(m_axi_araddr[6]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[7]_INST_0 
       (.I0(next_mi_addr[7]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[7]),
        .O(m_axi_araddr[7]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[8]_INST_0 
       (.I0(next_mi_addr[8]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[8]),
        .O(m_axi_araddr[8]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[9]_INST_0 
       (.I0(next_mi_addr[9]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[9]),
        .O(m_axi_araddr[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \m_axi_arlen[0]_INST_0 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[3]),
        .I3(pushed_commands_reg[2]),
        .I4(need_to_split_q),
        .I5(S_AXI_ALEN_Q[0]),
        .O(m_axi_arlen[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \m_axi_arlen[1]_INST_0 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[3]),
        .I3(pushed_commands_reg[2]),
        .I4(need_to_split_q),
        .I5(S_AXI_ALEN_Q[1]),
        .O(m_axi_arlen[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \m_axi_arlen[2]_INST_0 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[3]),
        .I3(pushed_commands_reg[2]),
        .I4(need_to_split_q),
        .I5(S_AXI_ALEN_Q[2]),
        .O(m_axi_arlen[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \m_axi_arlen[3]_INST_0 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[3]),
        .I3(pushed_commands_reg[2]),
        .I4(need_to_split_q),
        .I5(S_AXI_ALEN_Q[3]),
        .O(m_axi_arlen[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axi_arlock[0]_INST_0 
       (.I0(\S_AXI_ALOCK_Q_reg_n_0_[0] ),
        .I1(need_to_split_q),
        .O(m_axi_arlock));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[11]_i_2 
       (.I0(m_axi_araddr[11]),
        .I1(addr_step_q[11]),
        .I2(first_split__2),
        .I3(first_step_q[11]),
        .O(\next_mi_addr[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[11]_i_3 
       (.I0(m_axi_araddr[10]),
        .I1(addr_step_q[10]),
        .I2(first_split__2),
        .I3(first_step_q[10]),
        .O(\next_mi_addr[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[11]_i_4 
       (.I0(m_axi_araddr[9]),
        .I1(addr_step_q[9]),
        .I2(first_split__2),
        .I3(first_step_q[9]),
        .O(\next_mi_addr[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[11]_i_5 
       (.I0(m_axi_araddr[8]),
        .I1(addr_step_q[8]),
        .I2(first_split__2),
        .I3(first_step_q[8]),
        .O(\next_mi_addr[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \next_mi_addr[11]_i_6 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[3]),
        .I3(pushed_commands_reg[2]),
        .O(first_split__2));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_2 
       (.I0(next_mi_addr[15]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[15]),
        .O(\next_mi_addr[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_3 
       (.I0(next_mi_addr[14]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[14]),
        .O(\next_mi_addr[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_4 
       (.I0(next_mi_addr[13]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[13]),
        .O(\next_mi_addr[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_5 
       (.I0(next_mi_addr[12]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[12]),
        .O(\next_mi_addr[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_6 
       (.I0(next_mi_addr[15]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[15]),
        .O(\next_mi_addr[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_7 
       (.I0(next_mi_addr[14]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[14]),
        .O(\next_mi_addr[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_8 
       (.I0(next_mi_addr[13]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[13]),
        .O(\next_mi_addr[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_9 
       (.I0(next_mi_addr[12]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[12]),
        .O(\next_mi_addr[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[19]_i_2 
       (.I0(next_mi_addr[19]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[19]),
        .O(\next_mi_addr[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[19]_i_3 
       (.I0(next_mi_addr[18]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[18]),
        .O(\next_mi_addr[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[19]_i_4 
       (.I0(next_mi_addr[17]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[17]),
        .O(\next_mi_addr[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[19]_i_5 
       (.I0(next_mi_addr[16]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[16]),
        .O(\next_mi_addr[19]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[23]_i_2 
       (.I0(next_mi_addr[23]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[23]),
        .O(\next_mi_addr[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[23]_i_3 
       (.I0(next_mi_addr[22]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[22]),
        .O(\next_mi_addr[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[23]_i_4 
       (.I0(next_mi_addr[21]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[21]),
        .O(\next_mi_addr[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[23]_i_5 
       (.I0(next_mi_addr[20]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[20]),
        .O(\next_mi_addr[23]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[27]_i_2 
       (.I0(next_mi_addr[27]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[27]),
        .O(\next_mi_addr[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[27]_i_3 
       (.I0(next_mi_addr[26]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[26]),
        .O(\next_mi_addr[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[27]_i_4 
       (.I0(next_mi_addr[25]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[25]),
        .O(\next_mi_addr[27]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[27]_i_5 
       (.I0(next_mi_addr[24]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[24]),
        .O(\next_mi_addr[27]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[31]_i_2 
       (.I0(next_mi_addr[31]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[31]),
        .O(\next_mi_addr[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[31]_i_3 
       (.I0(next_mi_addr[30]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[30]),
        .O(\next_mi_addr[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[31]_i_4 
       (.I0(next_mi_addr[29]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[29]),
        .O(\next_mi_addr[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[31]_i_5 
       (.I0(next_mi_addr[28]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[28]),
        .O(\next_mi_addr[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1DDDE222E222E222)) 
    \next_mi_addr[3]_i_2 
       (.I0(S_AXI_AADDR_Q[3]),
        .I1(M_AXI_AADDR_I1__0),
        .I2(size_mask_q[3]),
        .I3(next_mi_addr[3]),
        .I4(first_split__2),
        .I5(first_step_q[3]),
        .O(\next_mi_addr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1DDDE222E222E222)) 
    \next_mi_addr[3]_i_3 
       (.I0(S_AXI_AADDR_Q[2]),
        .I1(M_AXI_AADDR_I1__0),
        .I2(size_mask_q[2]),
        .I3(next_mi_addr[2]),
        .I4(first_split__2),
        .I5(first_step_q[2]),
        .O(\next_mi_addr[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1DDDE222E222E222)) 
    \next_mi_addr[3]_i_4 
       (.I0(S_AXI_AADDR_Q[1]),
        .I1(M_AXI_AADDR_I1__0),
        .I2(size_mask_q[1]),
        .I3(next_mi_addr[1]),
        .I4(first_split__2),
        .I5(first_step_q[1]),
        .O(\next_mi_addr[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1DDDE222E222E222)) 
    \next_mi_addr[3]_i_5 
       (.I0(S_AXI_AADDR_Q[0]),
        .I1(M_AXI_AADDR_I1__0),
        .I2(size_mask_q[0]),
        .I3(next_mi_addr[0]),
        .I4(first_split__2),
        .I5(first_step_q[0]),
        .O(\next_mi_addr[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \next_mi_addr[3]_i_6 
       (.I0(split_ongoing),
        .I1(access_is_incr_q),
        .O(M_AXI_AADDR_I1__0));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[7]_i_2 
       (.I0(m_axi_araddr[7]),
        .I1(addr_step_q[7]),
        .I2(first_split__2),
        .I3(first_step_q[7]),
        .O(\next_mi_addr[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[7]_i_3 
       (.I0(m_axi_araddr[6]),
        .I1(addr_step_q[6]),
        .I2(first_split__2),
        .I3(first_step_q[6]),
        .O(\next_mi_addr[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[7]_i_4 
       (.I0(m_axi_araddr[5]),
        .I1(addr_step_q[5]),
        .I2(first_split__2),
        .I3(first_step_q[5]),
        .O(\next_mi_addr[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[7]_i_5 
       (.I0(m_axi_araddr[4]),
        .I1(size_mask_q[0]),
        .I2(first_split__2),
        .I3(first_step_q[4]),
        .O(\next_mi_addr[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[0] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[3]_i_1_n_7 ),
        .Q(next_mi_addr[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[10] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[11]_i_1_n_5 ),
        .Q(next_mi_addr[10]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[11] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[11]_i_1_n_4 ),
        .Q(next_mi_addr[11]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[11]_i_1 
       (.CI(\next_mi_addr_reg[7]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[11]_i_1_n_0 ,\next_mi_addr_reg[11]_i_1_n_1 ,\next_mi_addr_reg[11]_i_1_n_2 ,\next_mi_addr_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(m_axi_araddr[11:8]),
        .O({\next_mi_addr_reg[11]_i_1_n_4 ,\next_mi_addr_reg[11]_i_1_n_5 ,\next_mi_addr_reg[11]_i_1_n_6 ,\next_mi_addr_reg[11]_i_1_n_7 }),
        .S({\next_mi_addr[11]_i_2_n_0 ,\next_mi_addr[11]_i_3_n_0 ,\next_mi_addr[11]_i_4_n_0 ,\next_mi_addr[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[12] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[15]_i_1_n_7 ),
        .Q(next_mi_addr[12]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[13] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[15]_i_1_n_6 ),
        .Q(next_mi_addr[13]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[14] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[15]_i_1_n_5 ),
        .Q(next_mi_addr[14]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[15] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[15]_i_1_n_4 ),
        .Q(next_mi_addr[15]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[15]_i_1 
       (.CI(\next_mi_addr_reg[11]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[15]_i_1_n_0 ,\next_mi_addr_reg[15]_i_1_n_1 ,\next_mi_addr_reg[15]_i_1_n_2 ,\next_mi_addr_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\next_mi_addr[15]_i_2_n_0 ,\next_mi_addr[15]_i_3_n_0 ,\next_mi_addr[15]_i_4_n_0 ,\next_mi_addr[15]_i_5_n_0 }),
        .O({\next_mi_addr_reg[15]_i_1_n_4 ,\next_mi_addr_reg[15]_i_1_n_5 ,\next_mi_addr_reg[15]_i_1_n_6 ,\next_mi_addr_reg[15]_i_1_n_7 }),
        .S({\next_mi_addr[15]_i_6_n_0 ,\next_mi_addr[15]_i_7_n_0 ,\next_mi_addr[15]_i_8_n_0 ,\next_mi_addr[15]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[16] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[19]_i_1_n_7 ),
        .Q(next_mi_addr[16]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[17] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[19]_i_1_n_6 ),
        .Q(next_mi_addr[17]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[18] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[19]_i_1_n_5 ),
        .Q(next_mi_addr[18]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[19] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[19]_i_1_n_4 ),
        .Q(next_mi_addr[19]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[19]_i_1 
       (.CI(\next_mi_addr_reg[15]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[19]_i_1_n_0 ,\next_mi_addr_reg[19]_i_1_n_1 ,\next_mi_addr_reg[19]_i_1_n_2 ,\next_mi_addr_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[19]_i_1_n_4 ,\next_mi_addr_reg[19]_i_1_n_5 ,\next_mi_addr_reg[19]_i_1_n_6 ,\next_mi_addr_reg[19]_i_1_n_7 }),
        .S({\next_mi_addr[19]_i_2_n_0 ,\next_mi_addr[19]_i_3_n_0 ,\next_mi_addr[19]_i_4_n_0 ,\next_mi_addr[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[1] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[3]_i_1_n_6 ),
        .Q(next_mi_addr[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[20] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[23]_i_1_n_7 ),
        .Q(next_mi_addr[20]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[21] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[23]_i_1_n_6 ),
        .Q(next_mi_addr[21]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[22] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[23]_i_1_n_5 ),
        .Q(next_mi_addr[22]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[23] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[23]_i_1_n_4 ),
        .Q(next_mi_addr[23]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[23]_i_1 
       (.CI(\next_mi_addr_reg[19]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[23]_i_1_n_0 ,\next_mi_addr_reg[23]_i_1_n_1 ,\next_mi_addr_reg[23]_i_1_n_2 ,\next_mi_addr_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[23]_i_1_n_4 ,\next_mi_addr_reg[23]_i_1_n_5 ,\next_mi_addr_reg[23]_i_1_n_6 ,\next_mi_addr_reg[23]_i_1_n_7 }),
        .S({\next_mi_addr[23]_i_2_n_0 ,\next_mi_addr[23]_i_3_n_0 ,\next_mi_addr[23]_i_4_n_0 ,\next_mi_addr[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[24] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[27]_i_1_n_7 ),
        .Q(next_mi_addr[24]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[25] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[27]_i_1_n_6 ),
        .Q(next_mi_addr[25]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[26] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[27]_i_1_n_5 ),
        .Q(next_mi_addr[26]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[27] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[27]_i_1_n_4 ),
        .Q(next_mi_addr[27]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[27]_i_1 
       (.CI(\next_mi_addr_reg[23]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[27]_i_1_n_0 ,\next_mi_addr_reg[27]_i_1_n_1 ,\next_mi_addr_reg[27]_i_1_n_2 ,\next_mi_addr_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[27]_i_1_n_4 ,\next_mi_addr_reg[27]_i_1_n_5 ,\next_mi_addr_reg[27]_i_1_n_6 ,\next_mi_addr_reg[27]_i_1_n_7 }),
        .S({\next_mi_addr[27]_i_2_n_0 ,\next_mi_addr[27]_i_3_n_0 ,\next_mi_addr[27]_i_4_n_0 ,\next_mi_addr[27]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[28] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_7 ),
        .Q(next_mi_addr[28]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[29] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_6 ),
        .Q(next_mi_addr[29]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[2] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[3]_i_1_n_5 ),
        .Q(next_mi_addr[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[30] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_5 ),
        .Q(next_mi_addr[30]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[31] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_4 ),
        .Q(next_mi_addr[31]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[31]_i_1 
       (.CI(\next_mi_addr_reg[27]_i_1_n_0 ),
        .CO({\NLW_next_mi_addr_reg[31]_i_1_CO_UNCONNECTED [3],\next_mi_addr_reg[31]_i_1_n_1 ,\next_mi_addr_reg[31]_i_1_n_2 ,\next_mi_addr_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[31]_i_1_n_4 ,\next_mi_addr_reg[31]_i_1_n_5 ,\next_mi_addr_reg[31]_i_1_n_6 ,\next_mi_addr_reg[31]_i_1_n_7 }),
        .S({\next_mi_addr[31]_i_2_n_0 ,\next_mi_addr[31]_i_3_n_0 ,\next_mi_addr[31]_i_4_n_0 ,\next_mi_addr[31]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[3] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[3]_i_1_n_4 ),
        .Q(next_mi_addr[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\next_mi_addr_reg[3]_i_1_n_0 ,\next_mi_addr_reg[3]_i_1_n_1 ,\next_mi_addr_reg[3]_i_1_n_2 ,\next_mi_addr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(m_axi_araddr[3:0]),
        .O({\next_mi_addr_reg[3]_i_1_n_4 ,\next_mi_addr_reg[3]_i_1_n_5 ,\next_mi_addr_reg[3]_i_1_n_6 ,\next_mi_addr_reg[3]_i_1_n_7 }),
        .S({\next_mi_addr[3]_i_2_n_0 ,\next_mi_addr[3]_i_3_n_0 ,\next_mi_addr[3]_i_4_n_0 ,\next_mi_addr[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[4] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[7]_i_1_n_7 ),
        .Q(next_mi_addr[4]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[5] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[7]_i_1_n_6 ),
        .Q(next_mi_addr[5]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[6] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[7]_i_1_n_5 ),
        .Q(next_mi_addr[6]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[7] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[7]_i_1_n_4 ),
        .Q(next_mi_addr[7]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[7]_i_1 
       (.CI(\next_mi_addr_reg[3]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[7]_i_1_n_0 ,\next_mi_addr_reg[7]_i_1_n_1 ,\next_mi_addr_reg[7]_i_1_n_2 ,\next_mi_addr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(m_axi_araddr[7:4]),
        .O({\next_mi_addr_reg[7]_i_1_n_4 ,\next_mi_addr_reg[7]_i_1_n_5 ,\next_mi_addr_reg[7]_i_1_n_6 ,\next_mi_addr_reg[7]_i_1_n_7 }),
        .S({\next_mi_addr[7]_i_2_n_0 ,\next_mi_addr[7]_i_3_n_0 ,\next_mi_addr[7]_i_4_n_0 ,\next_mi_addr[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[8] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[11]_i_1_n_7 ),
        .Q(next_mi_addr[8]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[9] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[11]_i_1_n_6 ),
        .Q(next_mi_addr[9]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[4]),
        .Q(num_transactions_q[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[5]),
        .Q(num_transactions_q[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[6]),
        .Q(num_transactions_q[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[7]),
        .Q(num_transactions_q[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pushed_commands[0]_i_1 
       (.I0(pushed_commands_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pushed_commands[1]_i_1 
       (.I0(pushed_commands_reg[0]),
        .I1(pushed_commands_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pushed_commands[2]_i_1 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[2]),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'hB)) 
    \pushed_commands[3]_i_1 
       (.I0(E),
        .I1(aresetn),
        .O(\pushed_commands[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pushed_commands[3]_i_2 
       (.I0(pushed_commands_reg[2]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[1]),
        .I3(pushed_commands_reg[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[0] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(p_0_in[0]),
        .Q(pushed_commands_reg[0]),
        .R(\pushed_commands[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[1] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(p_0_in[1]),
        .Q(pushed_commands_reg[1]),
        .R(\pushed_commands[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[2] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(p_0_in[2]),
        .Q(pushed_commands_reg[2]),
        .R(\pushed_commands[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[3] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(p_0_in[3]),
        .Q(pushed_commands_reg[3]),
        .R(\pushed_commands[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \size_mask_q[0]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .O(size_mask[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \size_mask_q[1]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .O(size_mask[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \size_mask_q[2]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(size_mask[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \size_mask_q[3]_i_1 
       (.I0(s_axi_arsize[2]),
        .O(size_mask[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \size_mask_q[4]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(size_mask[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \size_mask_q[5]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .O(size_mask[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \size_mask_q[6]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .O(size_mask[6]));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[0]),
        .Q(size_mask_q[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[1]),
        .Q(size_mask_q[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[2]),
        .Q(size_mask_q[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(1'b1),
        .Q(size_mask_q[31]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[3]),
        .Q(size_mask_q[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[4]),
        .Q(size_mask_q[4]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[5]),
        .Q(size_mask_q[5]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[6]),
        .Q(size_mask_q[6]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    split_ongoing_reg
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(cmd_split_i),
        .Q(split_ongoing),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
endmodule

module design_1_auto_pc_4_axi_protocol_converter_v2_1_26_axi3_conv
   (m_axi_rready,
    s_axi_rvalid,
    S_AXI_AREADY_I_reg,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_araddr,
    m_axi_arvalid,
    m_axi_arlen,
    m_axi_arlock,
    s_axi_rlast,
    s_axi_rready,
    m_axi_rvalid,
    s_axi_arsize,
    s_axi_arlen,
    aclk,
    s_axi_araddr,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    aresetn,
    m_axi_arready,
    m_axi_rlast);
  output m_axi_rready;
  output s_axi_rvalid;
  output S_AXI_AREADY_I_reg;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [31:0]m_axi_araddr;
  output m_axi_arvalid;
  output [3:0]m_axi_arlen;
  output [0:0]m_axi_arlock;
  output s_axi_rlast;
  input s_axi_rready;
  input m_axi_rvalid;
  input [2:0]s_axi_arsize;
  input [7:0]s_axi_arlen;
  input aclk;
  input [31:0]s_axi_araddr;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  input aresetn;
  input m_axi_arready;
  input m_axi_rlast;

  wire S_AXI_AREADY_I_reg;
  wire \USE_READ.USE_SPLIT_R.rd_cmd_ready ;
  wire \USE_R_CHANNEL.cmd_queue/inst/empty ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;

  design_1_auto_pc_4_axi_protocol_converter_v2_1_26_a_axi3_conv \USE_READ.USE_SPLIT_R.read_addr_inst 
       (.E(S_AXI_AREADY_I_reg),
        .aclk(aclk),
        .aresetn(aresetn),
        .empty(\USE_R_CHANNEL.cmd_queue/inst/empty ),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .rd_en(\USE_READ.USE_SPLIT_R.rd_cmd_ready ),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
  design_1_auto_pc_4_axi_protocol_converter_v2_1_26_r_axi3_conv \USE_READ.USE_SPLIT_R.read_data_inst 
       (.empty(\USE_R_CHANNEL.cmd_queue/inst/empty ),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rvalid(m_axi_rvalid),
        .rd_en(\USE_READ.USE_SPLIT_R.rd_cmd_ready ),
        .s_axi_rready(s_axi_rready));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_WRITE = "0" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "zynq" *) 
(* C_IGNORE_ID = "1" *) (* C_M_AXI_PROTOCOL = "1" *) (* C_S_AXI_PROTOCOL = "0" *) 
(* C_TRANSLATION_MODE = "2" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* P_AXI3 = "1" *) 
(* P_AXI4 = "0" *) (* P_AXILITE = "2" *) (* P_AXILITE_SIZE = "3'b011" *) 
(* P_CONVERSION = "2" *) (* P_DECERR = "2'b11" *) (* P_INCR = "2'b01" *) 
(* P_PROTECTION = "1" *) (* P_SLVERR = "2'b10" *) 
module design_1_auto_pc_4_axi_protocol_converter_v2_1_26_axi_protocol_converter
   (aclk,
    aresetn,
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
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
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
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]\^m_axi_arlock ;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;

  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \^m_axi_arlock [0];
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63:0] = m_axi_rdata;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rresp[1:0] = m_axi_rresp;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_wready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_auto_pc_4_axi_protocol_converter_v2_1_26_axi3_conv \gen_axi4_axi3.axi3_conv_inst 
       (.S_AXI_AREADY_I_reg(s_axi_arready),
        .aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(\^m_axi_arlock ),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
endmodule

module design_1_auto_pc_4_axi_protocol_converter_v2_1_26_r_axi3_conv
   (rd_en,
    m_axi_rlast,
    s_axi_rready,
    m_axi_rvalid,
    empty);
  output rd_en;
  input m_axi_rlast;
  input s_axi_rready;
  input m_axi_rvalid;
  input empty;

  wire empty;
  wire m_axi_rlast;
  wire m_axi_rvalid;
  wire rd_en;
  wire s_axi_rready;

  LUT4 #(
    .INIT(16'h0080)) 
    cmd_ready_i
       (.I0(m_axi_rlast),
        .I1(s_axi_rready),
        .I2(m_axi_rvalid),
        .I3(empty),
        .O(rd_en));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_auto_pc_1,axi_protocol_converter_v2_1_26_axi_protocol_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_converter_v2_1_26_axi_protocol_converter,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module design_1_auto_pc_4
   (aclk,
    aresetn,
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
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input [3:0]s_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [63:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 8, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]\^m_axi_arlock ;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [63:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire NLW_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_inst_m_axi_bready_UNCONNECTED;
  wire NLW_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_inst_s_axi_awready_UNCONNECTED;
  wire NLW_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_inst_s_axi_wready_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_inst_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \^m_axi_arlock [0];
  GND GND
       (.G(\<const0> ));
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_IGNORE_ID = "1" *) 
  (* C_M_AXI_PROTOCOL = "1" *) 
  (* C_S_AXI_PROTOCOL = "0" *) 
  (* C_TRANSLATION_MODE = "2" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b011" *) 
  (* P_CONVERSION = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_INCR = "2'b01" *) 
  (* P_PROTECTION = "1" *) 
  (* P_SLVERR = "2'b10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_auto_pc_4_axi_protocol_converter_v2_1_26_axi_protocol_converter inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock({NLW_inst_m_axi_arlock_UNCONNECTED[1],\^m_axi_arlock }),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(NLW_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_inst_m_axi_awlen_UNCONNECTED[3:0]),
        .m_axi_awlock(NLW_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(NLW_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_inst_m_axi_wvalid_UNCONNECTED),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(1'b0),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b1}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b1),
        .s_axi_wready(NLW_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module design_1_auto_pc_4_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
h4/8v0FBgXUomE5kJVs58UlO/ao4SLHpniPXt+fomPPYB6tv3U0iBfOL5737ZNNEhgP1kkKeMvq+
VxOLW94g7JZT6mWc5ZuQ7jgK8Qpa6+1xpVVQBB6gVSEeHij7ZHqPdYaLC9rL/SR7notnBC1OujFi
++mTu5z/HJZtnN4VJQw=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Su6POoQw092/hg4JN8GOCSrLUa435VAUaqUned4C4G61yBHlUmaG63UO+KxY5pgyMrDH6/XH2bPa
fona2wB0Y0sw6W61PXOfiew7cH42baMY0P9UBRjH25EZTf72W3O8r7DNj16ob9pPi7bkuCd3aab3
hdfeY613n+hUbAXTLQqbhjqGmO9kFeC/VmdSITa02RauMnpfVxz1wLu9iUQ0V+mPTp6hvfNXlD0F
7oONLZJg+c6/+uSw1WbEiltO2Lplqvbb0sYbZjtTSEQZSdF4DiUdA0SGK+L75aDYGx3Z/ajCRpBx
Mr39wb5wiDr6SJ/QQ/JmYc+HrTs/fbN9BJ/Grg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
JbOromwhdJgnOFMOfO8mpnyFC1anQPoDL/XeHYQuoY4+0yjNmPGasGLGjanpoUgfOYngBHPrFFFH
rapGBPsHEbT6JXWHeRJexf2moVhmq1sHJ7n+Jx1rVNuyclUCC08Fg3sy6FdUQmptKSpqOw1x0DV8
R9ZlmwLTkoN8IV6D7sg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XbCcyKbk3pmZ92QhZ1iCj+9jpzUJAn91N3YYwVHN3gwcgTU0NRr0oD7EmkLoZ8hVAhh/9YMUp7DE
059wcAzCBsD2W3CWY+GHUSJS57Xt2yi9tZH7binajEyHpCqaFKKO9WxDTO9XnYLVswRvAii0DOJL
mY+z3Z0uDx55BVWqbbvDkA5gABsZLueFt15rXRJPRnAjzWXhYzjiqC1WQDy5UHl/LBDlsOMuouyd
gM4k7zzEZUOy4o1sI2isD+6T/wd+iOsXvq39rguDUtkw3SR4GJmk+rBu3rBh+EvBHKxaWqQjGGNV
qWyrqd89LjZFGnXZ2jvsgxldJWCellgTK1ZEfA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dG5h8R2Fe36rfzcvmeDU4OapeKO/Lhe0DkL+4c9AG4It+1yVmtHeEWL8eVWMvHdPTwqJqgkMQbh4
OO9/9XZMyYCWFJTHu4ossKo7zKccfTeBbKfgP+rDEckDTGIWXihj2YJ2N0p6q9Ynpsz9qOLdoXTY
gZXwoOe4MrZBJWZrDOqkD1hQ+cRUV9c8S6FlH+AyBNj5dlaAM0Jyq6a8TvcRmLoZfdi1zFWXeTUW
/XfWQRP+vnqqV8VPdyfaJJzaKnG1u9PnvSFauc3SzydGZfICacU2pPxqAaJWzDYwSns+vd4vCu7u
e01UXo4XXeFCvO/9mye0QnyrDHhuE0b1Svw/jQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
K8hvyEyHvgdg02DFF2GnEdLUq6j/uKT5fsI+Nkpbw14CRrq5p+STF83Or85VDleAax2TYln4LhGn
6G6INbZ4BdMuA4nVtyx5xaogScfMwbjrTAn0bqxT20M++g4cn4gW2g3oEFMnXaYCsLaJ58t4/T42
ocO8oqJeCowKICP/eM+B+/jSusNp4JILdp522MKky1zANadPwlv8a7QrMrJQrnb/lF8qC10yXqfM
LbKfbAEBaHlel46y7YBqdIimfeAVng194wkXobD6WuMhQOpFkigBOLQzoKQWN1TWeY5/rSQt9pcT
xLm+NEQmtlL61OudMCIqm++dCQSgE4NFJj1fCw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gSLVZdmdCqRy/3LoTp5M48T1hUUfGQp8cxVz4NQ+P65mrZ0oJJXHSaNbzdvtYH41+27aGh3RBbLb
pzz+TmeVuEVneG5nGe1VY2ogM1D7tBMRUvNgXK2PkSRLnk9tYgnxoYi0cYLBxa3piqBh44cdYXif
bT0Uh2vFogmdeH5hxVNFk8FEhULNtR/T9r9ilPNDQALb08fQM461sjlhS2jgRgH0X8LZqnBOii+F
7+GguDMENTlzU0XSYWEcGFH9V5PdYMehb0WgZeiqTchxRuQFmLjDhI4J5dkci8RmkLCwz4KyjfOi
S8Nkg20qh9otuAisfQTh4Qx2lC7x7BHgmuwy0w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
kXlkvzJI7Tq1glqNfjqmCb8YU69bhN9hH5OsWvFNj7VseyX6/5l9Mgif4B1r1LeKz06I27dmB9g7
AuHBFZ0bPN86mURBL/HK/dTOGyLYAveWeOIK1kqX56i4H9UNIUObEphcz9wdT0OgXHTPMxiIpJhT
1o5oYJW49mDsAv5yxe4FvPo6rFgZAiEo34vJGDxzz4//zJq0z+GxJNCibpLydZBWaJWRfsDUs9pm
1O6hS3KPIL5Evg1JOFt1uwKb1xEA08ETT+qYwg6zmFfwQbs6O7modRmBtEd1n9mrqsgCAviiLPtN
LUFiLdrywPt7LArLCRz4h5uHJxz/21Pj5m1VZtZq9nFmsbp6Lw/0RF1+nN8o+RIu+/tmu74xkL/8
nNEc9mEFy912OKP6WDP4Ajzg4gl9xhtaYA5eGkNB/43YjgGsmTe+L0dyxHIwa734JNMb5zC5dRtR
V4pCnWZKmnDJDXvMftedQzqQvdFwJg5hLxrHfkPD8LqiOwVck/Nt6QSF

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ADtaDIjUIR6zZBfz+lPRaDMdXcoufPACX4aSe06/DoTgIDvM+UOlm8rH20gKO3r8YdsuLtUh7rhz
ekJB22nBPUdbl3FvlGdQIgiCyJ8XgZYvvuOo9I765yKjFxQsFmQE0Ih86fqCqvYmRnsZkpk1uQ7v
JpqhWGBX6tLgYu/txP+ShnzFfkWGhj29JhYII0zqJMBCjGeM89F+mlH+X/YL5Q/fZYyh9Cr2CJx6
ofJpBZ1SPlXwgafXVi0QAUVuQEBmZYVn9Kze++tMEr6qv62ANq23LevYQfCsYKoY5iyf5U7jJ5Qx
eC9nG5Es4y6lz5giep7veaXdBFBHd7VuD56v4w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zFwVPvNmX5sBruiGDSfENTp6EBfydwYKhxWi0YDKQ4j0gu6AMV8yJP6GXeJs/A9Zgb1UFE+sJifk
OngE9N2vVRp43pAVauHQf1hUkSWPDJuZ9yEQZbR7F3mmiBKu/Aehj7KcAjv07FWv46HzxRL9E2xx
gpDOzAyNSNubxORv7bVYUV0C4Fr+tZRA6douG4rxi56npPfzIAZjyU4wPvwabxrJ9L4ZRuZXciLk
lJGTIJZTH2uclPmuo57jlIXGo1ZtQZgRCDfn7W02AQ7MDKblx47m+E+sUKKYHZlvf30GkPcwlucZ
ZcUcGnYaRCZnrhwFl0qxxXn2pO15vG4MJXOHMw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Lq86c/0SMuvdLuij6dbfI/ah4/50WGATVNRwXobLfbnZqWOhhEk3VDQATTxe7ZLrUauwrLuMoKhS
j4kqT2raqDijA51Tz7ee+F/MUKvyxGDJqfBi5JJX9y81LCXav7HpdRiPTy6w5O3tQoQbugh61D0B
oJBwNvL22Oi10e+Bu7H1yQvsbksxPAA8VE8HK+OJzZETk0PfHS2ySL5WXLQf7duD6CWmpWdLMrZQ
ojOqvNL31LsO1gZhssTk4RgyZUrZ3CboBbLWDxq2L/SsF5YiRIUPDTe17rRcrxa1y6LzMD/ve/nR
mptJOGxlUgLpJaPAA7jH3b+EQGlrHzHOsG8fFQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 72640)
`pragma protect data_block
kDFui1bOnd51ooa9ttQGvmWuDbtNYQVDxxB7mKrLBzBMj+TkcxYAOm88kGHbmUJDNBp3/2huVtT1
vIOXrcooKWfxvs+9pzk6qmBDRzx55sPxRpnITs019nhC1BdFZ8DUd3cXnirQyhhJ1oBe69WbgxIf
0mEVOjo1uHiK5ZS5mzhNDHCwVc9J8bNJItb1BspZptwyQRCaiDbjCvsYdnLtLfXSo++4I1uTeiJu
GsSOMfpDnCWjUGCDYnxRaqC8kC0OCtHGWAlWvP62MOKVmLPBY2tvR9DIDdonyMQP34ZZS0zYbuy8
mYx8Dias39xIUQqoBOrgCDNohH5kNiNWGrGZnPxJkeN92rtNkyUygP+snwubA9//raItyFXmoFql
j9oaDetOhX5AUMwbcySYMnqUDaew/tVAPeeb6ZTPOW52EyYukZYjxWZb0xmELBWUXo4TrYpk/Rbf
GmXU4OUVavGgxTKtbyhfoXWnLsW5S5o8PjT+t9wMx0U29MiaryHe6gKPTekkbcatFV2LUz7MR1J9
SBXbYGqZfuyB5t8ambKFdMFwE3qak+6CDV8exOn82EosqZO8dk2i7gNX1p8Mk16Z3LRm4g5lxUrm
3kq3cgi1xYNHr1e0TWE/RTOvyfcgEuOJ3AXnTBlfzqjdkCEyufENShH9L/bkDoFLFBXfs+Yz73kx
kBH3o3N+fuDXGP/MdBwZFbiMhlcxniy3AowNJEGHqaQRjoHYZmvXyxlQBYevYvutAPmdxYG/So5z
1tb96ZKfzkfOGW93WGifYiW0TAqhxIsach+IEtyzOiQJypFRd1GiHE1qsptVYzdRZK8SUKlgACh1
ao4zgJwmWAmxKTn1cPxJbP2pB3oSnL1kPnztFVdfz+Uhzio7Mz1z5QWYIg2xTMj4bFczbfbjwhKJ
zIlh4yCVJDAjbAoLejSN6Wkf99r55L0wWGijDn0LQQ6khnJdZZvDkAOfpKvDIDxT043TwFgsHd7Z
uRy+0/cgkx5jnQR9mX5NpTxSoJQAAspjf+51i3Jke242ejm5p679QbdgJY/eIz8M8O2wCXJ4ixt4
Yn4L9u1g4dYT2ohDHzlY0+mVXmjz1F8cXlG/r/lrXucwWvj4W1sx80suCwehPlXkQOBpzMhf7OiJ
gKL25Ym/s0pJZ3ze73RjaA/sN4BRo/w3+G6g02hO/ub3ABoD1SdZFXlHV6c+4BnOjcEwZQPdOZbp
zy9htbu4zc/NBeD3yOWLotrCbNxGVDwSPahaS42Tj24gSuXEgCQPCaktLIo5yJ5P0tawJqNL+8jI
oUAn9DQJ2zxM+tuIfv85J4CzZFt/NqmUNcVbQcESUur88jLRhnSDi+3G6BFMQiTuow+RPJTxnwbW
9bsWxUe/jU9zzjefhkMnkxAbibtIF5QA218oe9jDZW9NK6/XXJ3BwSo4cyLIVe086GLRFqDWcrVT
CVadFs4LuOtoWgN0Fpk2S8PfTTzvcI3AcrCIW9SWZvUUgPf3y1EOBWlwz6W2hycsySdO8oC/iVJm
9M0NG/0iMh3sOMNwqDcSoX6YUho7w/e6XRJ4U7a/7P/ZsgOWMVuZCHXsnZ10wH5mBxkKO45ulFZH
h7gzRJ53UHF1oga+nzTcxYM/bUFXdxeQ5kHJ5XUHUWqzYEa1ynmNjhyu/BjYt1qOKQ4KTLKe/VTB
BXHAWLRYHlfprdNAxX7j771S/Mj9ExfvEidN/s4TXLXQ8eXMU6GMp8nFhKFX2wQM4/0i3dNEXYGU
tNvoJy5abngy6E9+aC45JRViVaJN6BX4ooCOX/3ferjJakWD6Dmlg8ULhAuL7eUThTk480wSh8kX
G1CsTh9SMF0qU/z9sE50PlXBz6YHi6fGwnll0V1/W38+ML7nA90k6/DWmmlkiR8kzr3HZMo5AfQk
+cxVq6YfAlstqPji78pbyISBxSPqUBT+RUhGadXA9SIoJyn3Aybf/HV7+89hosGv3jyBaRoVxeaT
J41sgYfJbDetUsFGtk4HdJLd4eZoSKOZlq7T/L8dTuDcPBy/0nh5tjcnRpllyyX5p5R3avsYh7JQ
jYZQVgtZ/B8sxTW6TQwBpl0pBL4VLp5zslXKlWQngIAkt+g9XnTmo/FTeQA/MBzuPXsUgBE9hCtZ
+l91SIU8yzICta23eq7Emj6lEq53Joc1lFaIpOPY3MyBLrH0rX/qjlaTtcTGsYCBju17NaG/cJZn
MRQ90/YpdbvFen0FqBLUwROHxFbBsLurnAPDQbS5q5vgeEZOa7k0aZU1IhDC7T/cV0O+ZXpGmNfZ
keTxjMSpDXavZLFsdzue2w4RDNYHaevI+ZAii8mgHqj4JY5xU6P1YeM1CMbRU8PT4XlaRLOK+N1H
/Sysx5X0YiO71csXiMS3Gqj//HSUbz3fTRxcU4jY72Ih7IlGCAvI77LtBChYzOvBtKAzrrmrSBhf
8IPW3n83boVLe33PhJBM9IkdI7+OYj0Tk2r0ZAL4QH3chCfmH0YQpWUdIJ2pNih2wO0KFwtkLwm7
lLjgmGdhs3m4798+JBv5jjCNLVf3zZuj4Ng5BqJIEqTIYgTIGwrdYtnksQX52jkFnXfdfQjOhjp2
VM5qcJ5unSzsnpcJP7e2yqqpBXre7JnRi6eWWqAJpjhchdpgM03ScGsmmICm0BBEI9QwnmH+9fQf
wmsJvOr4AdgSMXoAJbzn009pBstg/sGgaO+2Usemkw6reYw5sRJnoaTKBD0UFW4yH2xVnS5CxPFO
IHZ0cQaaedBjBA4pzaIVUk/GZ2+5yQqjAm2bl736A5FszOJtZsUlH8jMH3MeiZ/mr6urmHJSVFmj
cjE+4nqgSavLnpTWbOdLK9t8XVGLv9WHWq0bmm2SCGRO6HdNoSXwgc9QejFzg9foTeOKD26I4YWo
t12USvXIXU9Lyxnrmbd1b/PF3/ppxwyBl+Dcc5fp98UEFU7j4cfGCedENNrpQe1e2ifp79TtyjqB
uklQ6D7i6QdGrihsJlpUnJRgyUZ3OTxv+vVlr3NeFGWwWmwK+dJWWQoBciF0XbtNxuheazZYAK8R
IdWuxZSjzW49Hbt5LZm+tZ6xxYvsQcwpm4evqSCZweGrQQiUjhxt8udxHJf8sVGhWAmMTVH3bkim
G1CGuMTYFrq2CQyvxYDjgFjGMzPoUsO6+c2B3NK7s58MtZY0vDvXrZ9YXGD7+hbBNSzyO4khw3/Y
OSxbIWeZEnbXj0JM7jglNOj/7GLPv5bQARKr4LnBlMq4fKSpVIobWVSosuLHZzm+1c0P/uEN6aly
sPbcz55JAQ61eM7btbwYAIFTcuZRIF827VH2pVIT6YZF3rxIJIVrDk7A/eiUOPivmpl/dk/qY057
qkaDPN1VyfcVOXywKsrjPwq1V9A23R2feWNydem3pC8y6QeiL2+hLt9H7sdTMOIvLG7owaFCjFgZ
xF1qt26u6Xf1XND/nyz6Xl//flS+XHV8vLegU6pJd1A4JKLBbQafelwVPXNnDZeT/wuwP51xtYey
rZIYq+Ju0rsOdMWP/Tpkw9Z9bjvm3yGakT11D1GVVmHyrA9Ko9yLxr4qq0dxjN0o6P7+DYJFQVpf
xx1Y3H7IiB8YtcHKOZeqqZAw27DUFqQTZk0HqDf/w6HibIIFLoLpg3thj2xWXSEJotAl4h+C/0Qf
h56BI+i4dhL0t6ioZzGfENgvPEJ368JeHH/WBBpq6AUqF0RMssU8Xw4wIr6GU1a7edvUZSz4YdAq
9ezcaKqI7btzVAluJyyRczhqkQ4xStLHQ/Ps+A0smD5E0eFskOo93izVwGyryVcXFEbeAAB8PGZd
ew8ZYf6CtV8SCzt4UvicZG5HQliYyCoXryXVkksyfCeMB0lkr+pixEAYyOAY6McKBzGGgVe9zM7Z
Mh8WoStZNZBQBFypXRpQ0f6ZIWFuaY/ThYn6BDGA/oXp3aPBl8g9eQB70BLXyuoFYerjfJONSpJe
wlMshc0QHhLPPU/fSvGCFKVnpfGQd+2yK9/HLPBilY/kPisApY5MbuJaMhfjPLGI0Mc8eRPT9w/S
TIqSEauHxYBp1/SLcDJxhBB0gV8UDiZNH1203PQfEgd1NEYcxiyEHw6KCzr3M/CUXSDEaWdzgv7Z
ZZutcellGHXipGB71G5iRdmcHIxyk3+OS9zGWJ15fF+v1RlP5T7Oj/O80j2mekhuO2E5pSHyHZ2L
EcdZMw3ZvXy25ybAGPpFy2Kh6ezQWn5MKFEWfW1vIp5Nkt29sVns4n37f4ah5lwM2eAinXR94Cgw
ef/5nEXkD9AcNMh2/5zdbatM9oli6Z3nzksMQQOr0wOv27wpZSt7W0oT/NKB3OorKXfjc7lsP6Qm
0dsnOU/QaZDEpy/XKzKzf/bFb7zGpRcXm9m/w6DGI/LvXjg7T7Ygqrv6u1iz5Oyd5pJyNCB1Rpwa
VSqDl9E6e+sQ8gvgj1jif9FqvLla8bmXPcOYj6dZiKt9G5zQ2+Ibgv2geiTs1XTXm7c8L+Bnk1Gi
pzQsjgMaW7mnPCBSZ+8VKVLti4FAB0KE7bwbxS0wlO5xGH29if35LJ+KYCC1c40QR5FaYMKaqFhw
e+HoL67+8gPgaHKKMtt00TCuBPbbXMFB2KpKPspw6YpeC9vTfOm8Rpn7d7hbdZt2mD69yS+y/mxV
R/+0uLGz5BTA/5+fhPn4Fy50U1xj8pfdxGBClqYY81yJqo/vPtfZiZUW3an0HlNuPJ6j1d4Urdoz
harE5D3kwoap5V0cdtNbp2wgFpqX4ouwG1zRRniWpnFK7tcohk1x4Dh+rZm1F2Ves2O8wZVrAFGx
q95OzsG5+WW4yfu7+1PZOzosB5ytr0B/2UjudHB71JOTOxdhNc4BcG/hEWU2CDc4eSkbTyzs9rJ1
SpX70oFe0XL5YkZaw0CSowCQ/R3wlZLSWtTASaLskRD5M4JRBZHMtDPpE/rZuifCVUZhoLM3KHkW
X1Fc/bzv2QeUmLgS2EShRXwrrLmGY9WjoOCMiMa5uIzWEpD9eay//bzLtaV+nCEuIX1zrvdSDXTl
ECPKQ5PKqzfx+abIv+ox/rCmfdrPB+j+LuiHItx5eaoFl6fN4QJOqY1AWSVQQMdQ0iFWqk9XpL2p
/voOFDbyV0M1wbRYbpFecAYq8TeQXaGHToJJ8PvU7TXwrFd2u2u6ZhdGNL2X5oJiM8G+rveO6Cp6
ZkuOf7HIcalvZfRzt8OwXJdTW9u/r8QScAXghB+RXlVbE1rw/c5Wo5fsUCu7Yclc5A5xBBW8lOnA
j0aqxDQ+tuldiUyk/yYU+Ala2fyqpM8b5EDARK7hZ+l+y3JqqpYHeo8AfyHUbuoOVKD0+2Br85Un
i4ZlD2EVlbwW9kXDb52nKJ1Xmjw8aeDUVRKJYmCY2nu6BICdCB5A0ty/Suv1bVV++Ac5zPexidoF
iVA/FHmthX1ps4seCBXMVV83mfXC0JPxQGU2iXxjtMquvOazLjiXZOgx5GWTbCPKg/gKyUz73eZ2
YhOgOCEOwxDIoGqgQckdkWZibIHh9s2j8nScBSnQqdfRCin8vOJZpoVmjnPNEhBe2CaqyhFwdUac
W9OC13+KXWMfEmWBmWDxog9Kvp3x/v7McQOqRWcZDzx2C4oZuKelcY9TnPkhPsVmkY2vCURnl30U
xdDYargrdY7lQ+5a0VxEZHsngiAYxxuKW5HXssJUVFpgRGxn3EaNKuHfCjXag2aK+Y9qAsSOe1Kn
oKI1hDWElaHat06kUorKWX3iPxl+IcVPGStyrZAsMY5WHvl7bSuMMTgiTDj+00WFblZJaqDw0Bc+
Rvndsuan2vldETl3swX3akPDyjA21qxgabzyh+UXp+wOqazk7Z0MnSVccceIj51LDzcqrDBUQmPB
qyddDrTDVyMih4WcXBQWMdFV/SebdYJieMAgHw5LtFsJ0oWNILoVVL2zAqWlKnMKzFRAueDkTa4T
t/Ds7X6ikZSSLxha/oH3EsyRXuPA+JN8EApdQ7z0gk1DpIhATPKBRrmsbqXq5jmqur9oCx7fuuIq
/evVHXmvEbFpIvLF6v9vvuCKGuDJcf+neXqxSK+hqUpfXDchiBhxuIipqUZolUGAmAX9xvt5n7nw
S1LLgZpNu4HwKyumw2GzqxS68L/BcqvPvtgQUXaOAv08J5nVSKgBtKSm2SovanqSy9tHEA0m2JYr
FV01x5Ujk0QnDuaTVbtif+mymQ+nU87BkESNFOV7uhFQwtE1G5BEo9UMRmitP6FKaVc1/ft9FWAp
sX30dLsC1rIo7R7MwTgWe4Kt+2KbAE9FPnUEkP/mP8dTwFGyJz18Jub31vQiHugfoLyNKsxWZ8z3
8+4aJx3WSBc6JkEcdFY92+0k4rZd4K5qK+2JPAfp76PmFXtnHHY8PaD7dZgA6v4ilj828g2EjFEe
bIfOpdu+tcjJUIFwkYOwpfcXKYfhgcepFXXtzZi+AraVZ6GTALFP4gOXpN75kBWVnzkcl0vBwYMQ
yKPg6nJ9EG87FkLaAFLF7zwQxMo1FrKw17tE19Ro5QKmwrnnivtuyIwGAt/XBj0uazApFGIE6Wc9
FhTSvwSVH0fDJyZGa9g2H+9TQtEKZG1n0/oBKDwDAOz5Bjh+C9jHETYUbs3MK+wjWmgz1ZS/Mxp9
YhsVWjVdGiO7MqagrG5sa4WGrmFz8jSvDcOcwqAS+mKiRyjrxugQdggmMY6Z7hDuYgZrvbya+pOi
atG1Az/UXq90Cu2O3yfUtyyJbrMebvdGWSTEJOjorhP5XTwU1b92cEZEpO6Zp8fmt5w8da/f0Ps7
ZB8qCoRGanW9xV9tIMui6GEVpfsud5YHWXo18JH0hwdLlR/RrogSAMb3uj4S4e5BrZybTjJ75Zej
bpAVkRFI6DHLdVZ5qTucn8LbOqdvywcSU+vmTCrXNQuYiefySvJ/nKmHYTGumFl2vvv3ShZdNvd9
LgpiktlwLvEjn8H9QnCPd8lci1Hcc09WNuVKMB8NY4yL6r+O6K5vQQUyjSOHfo9Cp2/j3os0vpnA
Y8+Ub12503fqhne1RPNFRDO4ChODmSGE8ywmoEIW8sQ6C60BD4fxj9dOltxZZn9ansAAOHt7GPBn
kHOsoikAtzVSzFcVp81sYlaRxgXm3Il0Lps+joLs9qCY4y3onMZw0e4j9rYOaYbmdpWK32dKOHX5
9YxR1nqChkTKZo8T65Z6ArUPDNMGooo8mN3FTd39hbLjBRaTs30NInnnr1S06cjSDAWy9AYy8oAw
2GTnSifZnU4T8y41DnCk5iaslnlSZuiVNJKz6MhNhBwKSgyZjOTGjDANq+eX5cqD2uGqYcHG+k+7
AnW5vtOHHQX5UpTX1EettXJu+p4M13ixc23RKOK7P7AcBnNQQDlN7zdWDK3XIECMYLXTv0LcHN6v
PxjSt5NuNqY5RfNqY034hSg9JzUsHn1xcWj9f07lCEyCLsXVetPy4FTNnQu7JwrFQ+OZ0e27vA/9
IYmQ96U1IjLa/HuXkyIfwc32QFy0YWToUpRzQ+IYd3Xcw4Jm1CPeccIKm4/JSWXBRPwdWIkTUZyk
i66tMrT0taF8optQOkkkGd1FXsRQCsrVNWBjv/UvCYBz2bg5KS6w95yF5ppvHb9PLOUOKkzMD6Gx
+wAqQ1UEs3ql6/D1n/Lv5WMEc0KE7l4HGhf5YP1PdQM6oKvDChk45MHivbslqWRdg5yJX/wIW97d
yuY7jdwO6SJLvOkBGs9rXS7OP0t9a4ezXgeeb7nR5BZDFMYyROHDGNLIxMa1JUZuh+vGN1VL2MN3
9KF18R2TaicAsjaTh84agKGkic2dxPTdyPZNKJgGPqnXqXcm3rL4tekNfDkPfMAxfCddRo27AdBO
PnDLMlwlBIy5UbSt1h3o8nTkT4VXwIE5xguFHDeEHAtRggaq+Jl6U6gtvYPs/DGX1IkimSflJ7Wn
7Bhb3zTWY7qnmyFIuRa+Vly8vC+aBEDFtJxbY2WSY7kUN/ntj7zyoHwjbRmIa+DoxQK+xas7q9sF
t3Pg5MypRZ8wU8A1yGQz3U16TCl67QG6hPefcveRykFRET5uxCE2fCkrnL9wDOOYxsvpto3ynW9P
by/8pqtdJAwdG48DIszQAjZ4b5aohfcF1yJTsm/8irUkOWfFP1gzwoS3xn5zKR0kkvE6aKJiOnYW
2Z92fSX79L0xK8J3UjZazQbgGyRBA7T8ohovkUumdbiLobc1VftEaoFRXh+y9C4z8rjPxHPctc/c
26O7nWowX3vhXnhdQ9uSWylxFlb8Dyue2h1owcMWg0sf+TWF2Ob8vUp1J5/Lkcs/cGhUGrqEHNtG
0flqkXee1TwCY1auunYMuX4Lv/vmix8dl7s02reHdLg17BlkrSB15WAZNfEqgYSiYwUXe3gqytZW
FdnWICXMSA4uCmbYe3oEBhTRcozEWvjtQOINTSSXqnKDeNjTKK44NOUFsbCvQD0TOZxGEeaU5g4z
8XoUsYWA3Jkq7zwSBqCpQVcJpbgJ8fBAXpgvcB99voWzbEvzHM0xrEnomaLbhrQ/ElSON77jEfi9
kT4WB7U5w8xnbdhgDLpUAXFJrBqdjRulLTt5qjIo9dAjkwuhYiOEVkjUPLgFJEpNerrzUv9R+42B
tNYnGsmjX9szlWSsNd+EvxuGxOOgLTgs3ZHHNtz+YNIUdwJNy7E7cOTG/Huu9+vYlZcGLA84ooKi
byaUt4a8P7OJVb25IaEvzCYNcSfatWxOZV5/iZun2yNQB+9QCE32hLPlxhsKrcA71AHA7ig2vW9N
XhtLXNVgfJDEfucIs8UGypM4hv08MFEJ7jGvj5GrYZbEPLdxX+nENjJrw8yn7zkWsOcshj5cy6C0
L4oK6fse/IgY2FMcTL4P2f0czzkTgoXbXrgy3/Q4wrkdbkFMln2sWtAnV3zvXemcw+wI1vrZmQRB
Mgw56oF8036SgBiW2vaNnE9K34VM1bS+BOnD+P+UtfuXxD5WNhLnU6o5kbnlghdE7t48CRK5to4x
b42Dm4x3JgVzNLrGF+0h/oPAQ85mjFbkQ/ms03FUHbN3cx4+TZvKtgmh1jW6XstXur2Jnv8ILFed
Eop7j4stiIPMY1vlVUzTReePkJLa9Y2+DBGLMnmxvWZ7it/emfKCbJ4EWmSTKG+AgzTNnXOQ9j2m
TTqkvyTDY9LbAwWzAQq+YByEwxr8VKPj1wQDS+lZF5r+/7XXUVMREZpTtW4H3JLxjSY+xxnpzG7P
67g6BvC37TQtmf234o8Cc0DJvTkhXsZtwF6ZDXiisPIYgHzfYYtB6Cr/lbyRvp+j7y9tBCAiG3pF
Y/8U1OvycG+xYHBMoy3g/MbfLw/+E/9gfWE9UUHvxs3JXO/9FdgJhFcddVSdsFt2EOoVHaSYTc6T
N3uN9Alwg+cR75ePDryCr3m9e1DVs7rjUsWbXe78ESqLFH93cN3/dZoPBxQ53vyto/ZONrYV3AfK
IfSLgqRP9lHx50GjTBdA/MyMCArzE1PJ1EwMo12jps4cOXmSU3r3l8izFUJ9MZmokVabB4Z2fsu5
ZEJMohNczw4mlPin74R+kF62usr/z0llTCMUwySQMVaYvfDU7rJBAPc0OvVbssTOiwFPLkEWoSNb
W2NwH5t/pU9f5G3xhn9ZuryO8nEgGSiqkQTmxUBMTNDmo1n3UUNB2JiSp952B0/atWj8eubTT/dx
TzpHBfBVuzL8iM1iarjdxe1B91s8eM6Zren+VEp7ibASkx28dBCJyXrqposTxM4WDf5kp+2ea1Hd
QmyE957zfqWuuivtRZ8LJXIi3xvEYOfR3UH2+uv76+Et6zZdi5VsDzE0eOjKnlH/WfzKsht4+CKP
WSZ2IRdEXXLeZclp6QqwiJp8Gwd9K3a0pHJ5KdgjZu//KeDxFjuIX3zQ343xUYt57zK5JnI/txKv
GpzL8oR3ugT7n7Vu8ZB/1SQq+2l8qgfsfzVSotf44GtgIDdNCXHClRePckqFHB7YNlxekFvYIElu
Z2KmiK48IJS+G8FojXNzHS7IhJmtpyYAUSiOJcIIDWafIiPkjLgOwHBnapPHKeoFgpWOxUqSgWuf
+EC9vjmyzISTHnE5Az7IKDFgeOnQa3bEdvdWWfVZA1MPulPAFEW7Tz22agFkLy8Mc6Xco8UZORv8
wJQ0uEv/+3sxwhfiyiQLj5ENR30nFx3VGoD5KfEoOLNz+9/HlBnlSMvjFjYKc/PLMQbqT4Jh+XwE
8OXfttssYepbeRp15+OXzh4hnFFka8ar+gDnV5HnUTOhZfiD7ETXltOBWgzVUP/hEz+sTe0tNXxF
UarEBZLOGHpdBV8uqZr3z9u0t0OnV21Ax+YCSyDvJZhD979R1Ga58/FhuuvtDCLvXevM2or6kOdh
OSJA52DvkkYE/ruBXMMVjB9DqqUtret46oOAx4RJQS0hkST8eacWWvJjWsZFMUQSZfn4UGxhBgWL
9NBLcTC9qqHYP1NAMo1zSVofvTFTIEcSiWtE8hKocFj7WFD+BSRMUXpnV3PQ/+A/QI793qMyRgqk
mqbPJcwoPP6tcVK0X/9IwDwnezyvLb774jN6R8GbhbpEusXNeWxsy/n8r4ArVueb1wx8OsXZYiBn
wnc30UrZhxA5/jr7lcbbe4doT9YP1HHecoeT/8CzjeLpZbZb9RkhEksOaDKX/aWV7z6i7VipDL1D
3h9vAvUE8O0edT2w1FKybJIRV57xRY32lPC9bJ0JHa2nAcYMoXqva4yRbAFXtmZrRBwRy7so+/RT
PSEuKQvlAzLEHRKcYoap9GqmiwG2Lqn7foanWY2iTAbfnypK4oINU0gitkiOkEZ3muSByd45lv3I
iQewlMns4tWVFtFk6r6ayiL1qyUq73M44BTB1TH2l/WOBewk7E+uK8wEIQ8/AisOVAW3dHumXxDm
l6O4Q2PB9etK8hCCFCPc4IaeWLE4FOjlgRM/1S0r2YxNBf334cXkAd4dNhyojkMqcrVUIaJoD3BT
uAI0Kt4ME8Y3FlCyesAlGa4OH14lT+9Yo2WnRcVOvpPQltseZkvDB7zK+hJNbC1fhAifvgdZnzw8
WMDJ21/pUlRCyrATCRMJrn8Hgdq0NSh8uHVxdQxUNEHVw03P0e1gnM3Jbk56clPkO3qA0btPg4pA
ujllxc7lnsEfuDCSsaw7MdELD19ZHCDd8QMaLd28vCpMmTP633sqo4RBO7fYlrmZYiqsgOZRbpoF
xAXpzSKHJxhe37Aca+1L8J62WZF8EZz04okEJbatLF3NP9xyI238I8g/3u7yvc4TF+kDGK6EnDsS
8+iVo4ZCOmbnqUw9mFaQBrQuKo0aCYaSaXUclKAvoionk+HCppObWRDujmwHYxozXefGEfp0ZUVm
i2rXB9PgWoVhnqyttAbg1XTKftO8brHKr+njtL3ja5oBpW/weAOeq+ekvx6cutoEZqZ8geB+bDzA
vrC2ocTjuH8dxF7ibyGog8KBWHTQjK1tSYxsx5h4BkYZwbuoy+Gj/qM+6ChUdLjhkprMleCXFvlQ
pkXxg+FcWY6wuzoVMB5dcObotO1bR3RSCSB0veNWGHOtr6A45e43VV46f9YB+Za6UoYAY6QrEI6l
3aoOxQg3Dpm7wllewbE2aMeEWXi9PFlDACSX42t612YEh+fSAzi9c5NYMv0QxM/tNlghUe22gFS4
eXTBUlJKEQNPMDDm02QcM0fOdMVgLVMRGIGsD1kf1hcwDfUxhixvZWUbk4jMchObxdd2d0YxueQl
VW7p8WowD0zVRAya23tpj0yY8mRTgMYIfUmFLdC/w9jxnV2JCx/84mjkTsn1RZ4eDPkZwcmQOXgu
qKi5bK/52438QiS+VmHnEn+685vlmWHZKG6DunirDe9af/xVoXbBh8OAdn/+BxK1S/a6fIgKXd3y
XqWOnMGyGoWvkclJ3xfR8gq7SdEPV/i3DSiOHvs27ueHmN81fpxWozDXhfiL9eHJY5wUaOaen2ae
E0fVEZbWwbh9jHGXstpd6AcYS4Bix7XjPCgZCbP9valgicD8MGWw0eE04L//762iuquI3Oxar6H0
Kb22Sk1nxW5n8eQoxhkoZAyvXpS9cLieZ1fsv41XItj0ySn6FBY8oh+xgPvYpqP5cRPvjNhm7Yvb
LE0T4Wqwd+KuqMUmnt7KFor3NgAgknzb7BIR3ZJm/hWdCTb2/lEGRAGZnoXnTflvI1DXBgVvKKPw
3/zmP/u3NTwpGW0qk/NJqEPq1HlL8BjH5kaZZQOE07S1aPdCqoZKymzju5VFBdbExdq0e66C69bt
Mo2s/KkH4+rhKeNncEuxZwDXbdgBpz3Hjt9vCl4WZcvH5OOLVJqWVJinmmhJd9IdBl1IxS2ANS7m
FXax/2squAbpEm1g2slUsAV6rK6wlUAfKAyyQeLYnBOejAgqTDxADLwhZpfLbBxzjqTlUw3wuyyH
NcZcCqEInKBhQL/Q3j6y5+mtcmVsSQHbkIvgrPJlLJlYLMRmVbe3IW5CZEOw+Vn5X7dys5FsD8T5
5V7Hi//ktHuTMN3n3BLBARDkNeVGwKn9/kRmtS2MNLhMv41PdyjRtH+BS3S7zWz2d1lAI301Dpmn
C3a70Mz2QDRO1fA8ilZnAxmp1oAHJxE+7Lm5tf86qtv8R0Dg1Y6wC/rgJAvpA2SKqiDaUuGt6V4s
jceCKYWMCBZ7TUzBIUmLDVn+s50qD40k7Mgbd//acMTccMO0mEQpIlCmhc2QUsEYO55bwKiwSbo8
c5Ptms3NF0PRO+DTMMgP18eAda4/bYQogWR3A70NYOL9m14GjioS1gsYHnnwj0nelQ3KfGpUxapQ
4VZ4AawQlNyqYAi/4hzw80IdonE3uJBGPIh+2QyVO6yUeedVkKobH9X2cSit1NFrzY4Opl3fwDnp
gwvKJJNB2GUeOdUo5ewTSSmDgMjxBnfZHadLZM/dMZyX/mAxA5aB7gu6ZNB38E+urUAcuh2ljIIF
U36XkPpKGZ6pHyq9x7Pli/GS2Rbes/ajSB3blGr6NFNZ4Sb+gE1SpBqP9oKHhw7gKp/jjW5QxlP1
gN8R0djTpYYphE9ajXJeCh4oDzi/l1UZOnCA8xGp4ubQlMdr5+aPnjBLIqPJF3Smk2zKath24N2s
D4JFTadFn7xtI+HhP7OE7qmTH6rhZGX8r2vM+V2cuXimtsudjb1+vmLaUNlUz8L13PBBo4aYU/Xu
9MPzD9LPiA2NLBnqz5SRCQWkqRcR3UT1tKUqWv9ryhoTSaMcJL4ZRcdfyDlpO57oUtYNjm2bTfbs
GkO1dpULOXMLLNAduvUpmxFfgrmNNDXqeAmz2kek31jzvfWITHq58iZZymRA5TBPkqTsFhinnzwH
aZpOyOOmNgR2QCcYzU7cGlaJKwtJ1lMjv4TxqRe8pwE8AZIrKB3mcPLWsPkRawwnba5UGOlUYf7p
jTgzoxFDeWWL7faxK9Rnh5xvhdGz4tdLudXJCZO1MWzxPUuZklHobZxt7HpmH8AkDJ1BqVw+TMxr
ATN3sFoj6Bw58JWzZF3lOM2oU4+9a/kAWj65PlLX+d6oTLiwAVCtCa7OCu8/Zi7stzEJJJxWfrvA
nUx2G5jdsAgMuHa6vnchtCdCmlWMEdQa/eUtMaM622YYQTWFsAEpXROJXhI1WmNzsapgv9IZ/1GK
O9uzgP0HnUloGVBMq5cV9569+W4TZsAyppH5PK4LQBU9PJwgvwyUgKrgynIRfqS3S+uNwrL+zLV5
o3kfoXoEzd5YlJKdwiimeUY9TEriAaFKCIKRmL2INOWRcCRZByngQLhHJxGXsNhmJkNXhOZsuqPs
yFHvs9Je3XrGQAcINeaAIrdB7xUwKtlt+PbqfPGtYJsNbBexp3EriLRo8euj8CZG4N5tkiMerpcQ
x1IhwFdcPYz0JInVgxxsn1OrZ5ZWNorWp/tPdMAmvYsc3Qia7pkyT07CXPZcvU6l89IhBfqxz383
dc0ArbyZxx/I+6RUfYQ+OqdZNJjDt1YCiB2m5/uHdB3sO4IfQGNF1hC9PrToq6zo2fFPLeI8ZjhS
XFptZlnQwc2ZXPR4yMDRSfbCI/j29q6B79o8p6jqQ7KY+Q8/9+8AHOufbdefjxJmVTyQItvA3ZMl
Guzer8Qs4aAJ+/He3jlTRG3MQ393DqQH+WotLQyyWOSXiXezslhpmLqWyJ5Yes/Yxdi+aH2Y6Yf6
shI0QJ5io/qX5/cnhAHJiD/f+SuKarjUp66hIxcP5Bb+D0j0ISraJXjKmzBEW+TlA23iPEs6krCT
OfzjNusecqAn33lNiVwSP2lRrw2yBBkO85b4x0W7uhIo6gi4opRbss/rbUvN9TORre5XZoKoUqC7
fDbUvN4z4Vat0NxRUofTe5/DMe9i/zE2lM8NhPTiK/nAglpmbobwjrPiTdBg7YJFZAk8qUmdAwqC
WaZ7kotqsdRjlkLvQxHFSkcfgW4hQ5Hm+sjdsINV7z49zMl98FvNDofxiXyWpNaPZ2yeoi2Y09Lh
l1+2+DugXDOcEvk9ylra1gRuBgDKRZvNCIsS1PKi6SxnnGyulLU88++EG2X78e3COtNnpW5ncpvQ
ZOTsTgKoAe1gT5XPy+fuN9/ENQTEWL7KPmfvmFDH0ySyW8bDCN2bEAdrUhYnVMq2dHBeczRYp2nC
dyqTiaMNWxOiKu7fztzyY3VWY47zYPXXd6l3P3YuQsOpxnCuobllPYgQyq/ngIZY83+Ko4XeXD32
EaJYUgTh1HeAQPem8mhxPd3TRxA6p3d1x9Que+o5P7svalIV+kb+dtjUJWp9rUTjZqr+JNSb0W3Q
HkYbWPib+4WroxsC/xvKrDygT20metBrdTLrS6vu3ROruu45JbvPauoSMJOtkXRiHAPnqRj8NVb4
osPPSgmvZkTeF8qqEP9EG0Oys4br8aD8cCnSsNIsQN1C1vqRISvULWLAOMqmctq2O58s48+KQTso
C40ownoqUwwJQq0+s8wpdhjD6l5FSZR87sp47IS+bpDlUZeVbtXeTqEPkBjFgN13a7/Qx31ByPSb
6jGJUkSZ+2Q0WkqaUXz7wyEW3W5MuTSbZdflUBSyCiUI+KmLZPDhcRVHJ9pmE+xVJM65nhoka9h0
J3upcuTUayo3o/zgyohvFOf/rfOOKBqYO9OgdhS6R6Pw8vyJFOY9/hKtQT0vELU1kc9ayY8iWBvo
yP/3pHUVB+iuiVOpPUTdnlMD6Z+BKWpcUgmpo5j4uIiMvoqfG6Ch0dYRShIbFgUcqhouAamZ25lm
Frv4EceYOI9N/wherOAll4rnpNF2Nc+i8pgwXDtNbkJUnJM1xaW8MELRdQ/V2MbMpAKkjYcJmv3g
8mXbv29oJP2wS4U/j4O31vSEanRb47gW5NZ4D19yO81WG1OP/eflrhFdL1UCjYD5MjoTAFe0fwzI
H/wXYPXZd7NOxRe4gbjQcRxeY2ttpIN67xaAOS+GF0hjq762xsiyZ3dTsT7/v2XnwzLgh/S/xKGy
jp1G9dmfAq3rzrCrj/F0VG1/4wgjuTGyNS44ed5w07+RVmPAb9c1LwxwjtuDGb43W+2FvfjaJhWa
xOKTefmmwnE70xmsOB/y9MyC9IN7hjs6H1DTas5hOsU121/k3VwZX85rgIC96F5bGSff5ckllmZx
HBj1scQ/OMLO5IK6D+jMxAekkPd+h9vpX6HEoldhqao+yRv2APQ7RkSYJtgzXjTcBG0dpUN6m8TW
x9iwSxo3tMI+Sif1srev4ufKJhvQVj7pz4O/7E7cGnNBWTZdtajp9g12zsI02ULl/ttrZeinaZSJ
7ey+/1Hh4HdmRq23LImCTMlHQVAlB3WQ0pWEObmVM17aUmqINuYoAibuU6F4bhlEUz4c0b1GTl3z
a5tHwFdW5/Xe4+ca05uirWpKyTMuAcOuBb2Y3f80XL000wph77fA01LLSaxAp/Ww2uYQAuqTMHwH
s868mwBAt3Iw17tkde6Z6T9TzySgtdBSiArUAIpxJ5IN2fQw9h55A7MqEA/e1/v/+wUqqeiWNMcm
gu1FWTcq3P3M5xU27WSgveoo4TmCSGX0lfn/bhTMXwoe0vF09CN31whnaOu3AwYEGZ+lv5c9JXZ+
UrQV/3wrZyfL1bJL+TM5L3nzI7JFyiimueXpRVn2A6wtbJaxNIsOsEJo+BIGv7ky5UtY3TIKOQUG
1pEesjqlkhua3d60Yh3IMjAkZ8XAAModyBZ8WS7M/PZ6vQ4cef6i0LDBCAJOVmBR55NC5gBAg9tD
KP4T4WVakP8xyl44vHmg9NIyWmyilyIAgJ+TrEGoPcuRNHvJ/kiZSzimjENlYMJnRaqoAL6+we/j
bXpy2pRw5QuhpCZMSTPx9aTnhDmfHXlYo2ud3LROk/LCtn/zHWtl++Qgcvk33H9IuG5paV4kCbZU
05B1lLhx9xPV3ClR/r9n0Tu9GIDgvcrpKGuDQxZhE15XZwifLeIY1FnljSKFd3RZwqNoUKMOrLcd
rY0Eo8hcHV7Q/vtwCfkrJmFTIUUnaHm2DxGSgyzQkmW9n5OSK9OrR4OdwCtKUhw5JoiQyJnL/k7n
qUfmFd+03Z4EGsas0GRuxioR96EO6esvA1UQA/LDdhPp8LKwsCHGoTaZM2SU6kYwhVjvkLD4rrOC
SnWf9rtVthEAxjWXubwfxzezz4jRFJp8uMccO64XgPHudX+DykxVZMy3qm1U5PoFUOJNlBw5zIIf
mkQJzJ/heFjha40tPsqeKliZZvqU8I2MkCMQB4ET7gfaeVXkzu5YPt6MXSeNb+iucMP5ED6vC9Bz
splmUaMEtPSqxWl3ok5MELuwf3jsGqfcUljW4pnwhOmmdvp4eBO0iyhTsXkAhohMLhk3yA+ePrN0
6gLOdFwCrR921OkWBgYgc3DcEBOIYJqDpSQ6eUbTOwN4LK+Ix0Ny/AayiFuyeiXfTP4xeDOadSYV
gT2H68KAFC2YAVx0DNgKiOVDaU0UpyMhfmmtIAeJUIpYrQLXy0PfZ1/0x51lk9E4MXkFgu2yVrBP
Wp+6wgqoSSQKUhU+jd6GlSRehbLSuIssMmlzXjZ/J20z9Sb77h88ccYZF1at20eWGVxjOpA5HGSC
xmYhm6tZvKGNvLzTJKFRsxB9i4yJ9LsdT39TlF1vwvWbPy/fLuD/GL8xFQ+kQGKK5/yvyQBejpwW
LC9yVU7/YaDtXQ/toW1JTfSMnGQzKnSdzTAlxll5vRW2eBx8XELAci+/tquS22Kbhz177aWShMB3
EB93Khp8OshMTVl12p31EJk2ihRSfa4TdkRLrZPcDWHcpTFNcsAdaAhnckxyyQh2CAAwaKt6GBz1
Cxvmyo0hPNUOR2snGmHrHUKW8zCPXrANmIvWIAudeh/6vwNydGfQcteQChdj4lglO0/1MMZRMR3v
9tkv3wlnG+IRhm4JPObvmm2tTCeA9GAUwOm13N1e3/zTqea5Mp9qaQLcQTCsBDWOoe3PWb/Wpb/w
VM2GD8vGP0PZCP+luP8nFwOf6WPgU0RUzwxLZtexOFQXWvsl0+SkbIuADGdv/7pigOyKHUtUcJ+N
KHzWYFyjawN9FwlNXR9uCz4YiAp06fCFGfTpeiR3pJYJdt05OtbaS78uQfRsyMN+gxC3+Dp1E22v
SLTo+UknmQ8oXtSHLRWlQT6NyYjI4bya2sOml4IclxkHTqPw7QS6sO4gZxEOKAEpB0Loacpcik2e
dlLOjGDiffJrLhtbzXs/Jmq8EIEFAZtqkRJQZkM9Josy9S1HzRdCppljUCZtdoVco/dOUcZVrZCT
SWZ/ljDTXshBlWkkZ7BoEdHISpMN0swtRF06SG1Lunw2DyUqIYA1/l0Bkg5YaF0WvA5q7tz8Ep32
wY3COYoerJTWg1XbORViIPa+BtPMKlBsmnY+CkUTvNHhVwAvZE0ZCAY/USFQnKc5z5z08evtqE1+
++7D4rApYBPZoKFihNGDL4+We9nD5jxpBi3uLowxzXFik2SZ7LsQocbtjcbCgFjwrnx6sG5Zb8c0
6U4SGZ0B2UA+6Q30SANXSKwAKR5rxya0g/aRkQNiPQ2RecdbB/C5rk9XlNPtu3ewbV/Hpxitb97W
9BZcQpInC3J0cxmKK6bEdFC17lvLjUqcmpBs5MbDECAnXUjIhSMZZx2ZJhlYPt47U7WKfEBfSgu7
WiidKysDLfw/QSrxxQBtf2QEEy+TXMidQQck5uiStC0msFeKclUroAHxKsJOusKBJMEPt77nwepZ
FB2qkDO0kbcNdRXRP4wvx1PFPvingvenlwmEpVKd5Ok7mpzLseQMchg+ZHbIeEkERBKZjQI5/+E2
HjPYoYKlmMfJ7ebjX5uN285MP45zsfsZqi94hAoC8vCox9Koz76a6G252Qh2pTnV2QKDdwCbOOoo
kztUZxyS03kEIsm5lEfelIBNXLrt9rJZjis9bNiBhB0iYcLUqkwxdxajvBWVYBLj3t/xoHcFLGVn
xrddJH1avFH2NtWvDJFoliiuQ1OOHpkAFROKov4flmHxuQaSf8B4CI9irPvSsgN6LE8PsXycfXYz
ZVbs65dZKpOD2zn91OfIr+r39PbaUmo131RKjug7y7yRiIMEt17Z0mHLzrYeU2sRthb365SkOEXe
wXJG/IjlUYOmJe2sgmMQAhXfa6fzBQqrCP9CdNexppyT+3eWlLFxFfmNr9ZRssX88VuFpfaYrPPT
ae9PXyDOPErfp2QRNX62VUew2uck8o8uQSzxx2dDrVts3eNBX3xoayW0uO0HPixgZhPoxyd7q2fX
wiKGA6QwjK4byXbsVnqtOCZ0z6JjRFaTA96hYb+XPVUaptTwi3RmOS6Vt6w6TH9OtXabzj+jc3HU
/Jo1D+ZIQf1NA15RqzInIKJzqhbj+OrRGbI87eeBXu6WPM24S8khJQdDMfY5AyFA257t5KbDQMxz
37914ihhUPK1gAkTCnA3SqLxNwCyarQu84AB2HqT/T7P+W0x1HxBffqyPCxsni6DoqUB250xDocZ
dGKFX5cmJl46JgH5K/+YSAa4pasM2y6DZ7l+xBBKj7YdeC7tJGs1aI8t+XUr9IGp1oXc6BPBtRLb
BHVp4AhbLNoezMU1k+N8y1qBgcB+baui+iUHxYrM5EfJgZfLIdU5oa2i0G/Vvkx9hOHjNwRdJ0VM
bB+B8ZjCNIDihG7cm3HxkAsRBERMC7XGMbA6a/EeGQOqHdrlQ8p8ngxrIw7vwNZ8+lw/Gxqg+V9C
5TJds5R8oi4feNPRBtD56JX9QvK3TG5JuvEjb38deeHTMQueEaYjl89bihm09AFjVl5gb8zoFBeJ
RgApse5E1eNUJoyn7JAMtcednJrEzqLCvaq3wyw+bTkaKRLGdEVbyvaxjH4fd4s5pTCyK7nTAkPF
wjgE+x3DDvfq/Tiz8ySnl+MFFwsMyqpONFYm+gmcUoxAAI9s4No1Ch0NXgQO1v6CNdye9vEg04Wv
SeOe2KFYqJ3gaWkzZ/okSjHKaoViZgc9LgTKdPSkYK+q8HGSZ71SjJSr8MKu7AMskbb5RoD+H83e
QeEz7zKoHCsHtZt5xJmGyCXjfihbCiCHqekzEiC+O9SRRYvbAHErl71lhm0CSsNjjrVo6L0nQvzf
EPxUbua7olxFbdXthD69a6F2SxuTT7SJ5ItKVPKACnzoqAZa+dQDRAZRtQ6VcgOgKTSgSTfAzIHR
ngbuBdSroknzRjgrrPEhTMIS05AAV76kvh056OAARyytYgwv/+UvzzjaSUhJt2SNxuNa0ABTvjzY
x3QdnT1GSBlm6Nl/U83yBcn4NDb8TqZi7oskMTiVxfFBLsvqfXiY8XoqK8qS7oTFrdylEqxFOwUE
F752G7ogeT4lLob2XadnR/q1NQVnYhdCyz+2q2fyCwacisbtnP77FPuCmliIYuSjPFK+b+PHwUP7
hIWFFeNPJqdarJUTmPtC+uhCcU7CNm717c2RQYwAD34JZDbn6FamAq9taFPPm+aZ7WzjAErFjwuL
Ppq7QvhZyPwFxWs0PSqpstf7KLazEzPXnabkZ2LN0ELJ8JHG3huEyWsODFB2IpIhwpffEZbXTrTh
ZkSLmfSi0XjySyWWMvbL/yHXbtnGiBiPVM8WX+5BxMiheA26LGPI2I2w/bkps4Ocpp1yplKbqU+F
4bCFGn5nCXQuhRJkOOrRj1H2BcUBFu3NtxN184Td8iKIVcId6g/IhqMWwbrnRvE5N4AZJPChsnbT
3usw85Jo4oLNMFPCxpIC6hQNMVB3o5KtaxJTitrlQWCHmr3Ff5FrcHHVy38i5dR3Exh8yDqeVZCR
8UvVDAPcaLhGKIe/d+qInvM05vfzW4rw2/KjePKIgCttlKFtp0SMfhZs7+U4WPCE7IbSZ2qxgIl7
APhzlWrLAcjUlpZHeTq3GSO4SXpUWAUwd+n85L2Ef3zEWlLs7BinLKNp42UH5zqhoS0T8Wfhb3f3
JYd6YC4yQgiz/XOPABLhHejRF4+2nt8IpNDmum+0YwCtmdTdhK0Ftg5ZNvlZ96H4MIaphCIzswwT
DCuZbcNKi465S+KUWjqeM40VhEkLYqeZBnIwZZaKgEg/c1LonA66RfTaUQIok+bQErLE6TatlWFC
k47m+pJEb2TdRGJ6J61HANFgvO5iWzMArWe6t1gO4JNViBdREUKk8/+gIeja7IGTYtW6L7lV70IZ
QaWgmjbgqC1uaq9PL2tIpmLiz6iZ+qCNRpsKqSmRUIPuU35OHSDJU58eTdlPfXlhfU+Xil6uV+PZ
I56uPyPEVDnv+ulxhHJXO1BfT1GxvBnyj9v/pbFWcyLodgEgC7tfWoZlydJ09Ic0kxCSotu8TEqB
C9SUdoLEwgl4krSyhBHUdqSSNOhHPWU0mlxQLn5QlKetSVmroN4ktIoxVQfR9pgeEd8aO1kgNYWW
jXi1KO+irzoygjU1D17u6dA9NP2pWngDVsyBZo7ehAb5VBaouK6C8BMB9HhIRF8BBvn5kh+AgGzd
XNAKzi2gQNl+nyQ/3gAaOO2eEmwVv8LXPnsX2LVNQXtDq7S857aY2gr9dEl+eew7aj+cgY23WEYJ
1tNw2tMnXmuIgDZaUxS1c8IyZFmK66eYJxa/z2JARCYZ9amM6oSTLQToh9AMK0x6StiS8vI7FNv8
KCw0vfYsYj7Xqs4pOAl7p2nmFLvg+NQtX7Oo1UQPtl2+gQJwK0Oux5dbZc2tShbDf3RdEU4VINzx
2r9WvFhgyUsrLiwvd6aCHNLuG2S0qiODfEOcNK+yF+Gf2+BwVpjVYleK4uEVowTgIwfCglF0ghuq
OIdo9zT9wuhroPhFUxzI2qo8gbcC8WauAJqMiAjkQaUUWygGWGs4eKWZtsN8Hpj0pX7OCnYGnRT9
MzPyP5zeybQNcAsU6pzr92Igw4yHDs2zjALR5rS07r6liNHNmldXarOP7jF7NQYLUNRx/H6cOFZ3
bQAK44Pg1owmfBH1pJxbYTETn/PBiH5PeJL7lBU4n/YcZcC0YzI9kmpTiPbD2xUka4hNn965e3tu
1SP4N0h+JZF1I72zvBWFDK3ufrkna6VzT+z7Rveqg0jRKfoJvQqpc3NKw8zunXI4MmebFBx9EyL9
hPx2Bmmqe9iKo18I8oHymZh053KKxSIgbWkqRDgi8+PVSiBRzA2xVKcIH64JWUrSWOoGqMDc+q40
u+qoTVaDrwjWRQNgGl8J/Ibf+zectbt33f86Dc98wX7ykH1qI3nlQApmdim2qYRWsW/Kn4fUdAbd
DsyEvO83KCpY8/3xhZTLfkvRWmFOX2DT3Wf3ZBULx8pDbN2bzEJx9TNDsPedOytKtGFP/xORcdyy
5mPzu5TNPfivuAKesBehZy4J/6Tt2hajVOkpCbZ1uQU14W+QSvpB60w1tlrmQcYBAr27jjGO41ej
cUVzIe9Kbw+r5wcYH3ohQp5DDXMEXXtTYfscG3sS0yOdr23k60T3bQDivXZdMWV4jwPa0ykNR1rc
Wg5BpU//EpkQ++PXXd2GQbaS0VVqj7nHGqlQ3BGVRtRH2VdxiBmq4LKQzN+fDTNUO09TPmL//GHI
95vjXEcHSuK1E5bqac2MDvztJvb4828H9hG3FGCBlFXZ9eZVYfazURWP+rbF83wMcTY5krq9/yzb
uKKYPv14KoHAM/11OUFJXhPREYEIPQQDkmQIBTnci9vkWUjBoxdmsBR9C7/wi4Y0EQV19DQ5V6HN
aoJral/d3JCBZQqUwQIs+ahYN5xYuIp6ds/ck4Dsx0F0kewY3zAntbaf7qH+HeUmA2h1G1UkCdEc
YbKFzDiltN59u0jQ1TpyDnGerJadepd2MW+b3zG9aRkG6QiwJ2BCEXri9CL9CnlyP50RJ3vfQ92T
Yeky3/DPDWG/CQ9tEPlC/WoMEO484ocmUAE3swd47ajD/0KpE63joZYmELKelDM9NOrQog+grH/C
DrphVey9JUmZdEOcS0j3tMMckZi98K8gapzGDRedhYg4z1Bkg5QY+t3LotsV+Mtp7SoLZUdLmju4
zSnvk3l+MKdfIsxWwK2cjBVxhfBF4G4hUrA6L9yYYu2nYcLpg5b8LS9a+K/hI4EQdI8RQT2u9tRJ
lXPaAz7iMHqFF2IChUjYCOULKsQV79pJRmQ1DW8dDBRpwgiiJg8MPnPGJE+gLPkbKmuAoLVGgc7i
I607dVbpyfjTnRkRCp79LwYBp2RnAhoq6/ydwYi4OZ08csDdh+F2r1bT/Nu79ALzqSTSJqxJxBC1
iInx0YE47O/hlyRdSaVndgI5Tx/mo696rxr7X4Qf0Bdpjgj1AXWgOaNzE0VTWSZ0mXAdEg2HnMPj
NsFAbQnUcSqblFznbV2gu7CXSIvTCwEgvMYxg4SmRgFtuPbR/yIiPLQx0rwyLWBHEEjOQwPSqUxn
NIZMu4ncOAo+xEdXpdydarfTAq9+u8SanYGQUkctA9sjToCs2dvkCSWsOkrL1FIR7TSryNBV9YxA
4OZ2h5an1Dk+CEfnkyL+PnjISEEoN3conpEqtM8CrA52RO+a4/oafzU7XwZenamsNr7UfZDqP4JX
SaZEW/0kc2VJ21NmFeR0oBWgY+KQjuTVCjFYcRjimCqVRUZJSgk30W3Ky709s/IT/syyFe3PFz61
1/4upSL3uNZK+6HAbmg99giZeeFSWPOi30mUCk6cr3coVhaqwudh8reM+XQixpkK4GjEe8gWPvlc
51SEecjECJGXLwCa+ixcNkmhBlytv41sV1OYNxmninSE70Q4CtrdMZkYc7reVyzpTvSYCK8V8IrV
9HfWIAJ9X4GVCzlOg3yYXiZX5AaVmyrpRdJi4/HumfFZnwpDeDV1ch37kD8YgB5TjqWLo/C+OjDm
06fhZRPH9MPqyW6WMSMhAKcnt+XCZJg1BChdfgWPNzylLG4kek9iT7g+Zzj9evahf6bK2eku3Wyf
RGyhxCLOeWY06k8G0e5BB/zpz54Pa5dxKt5Fm8vam37TawA61iHXQMXlSH7qAe7XKoj3eWmPKh06
fUt4fFfoZkrSpbixTWMTDHOsUqba0w7uVfExs81J9gxpJOerUYUfxaLyMnXPR+DvQb8KdcnLFGJ5
zlkrc3KdTPds/3MipiXyx5h5jvp1xSkDpmhX2rAcrTmZL10iAKoj66NXMwjBpdJmjfmVmy+qMl9f
DyMHxoFVGaI2Myej2N4NYioxUrddlsekTc7ukNX6bC7Jz2qkKIWqPVL3z1pevNI/Dv263hcb6MGh
dMzLpi6aWzLTQaBW0RZUj7m5d9mz0Q9hnNdsFqSJcizzsBLPHRiU0ZtCSd4rgscr5UUsarfgteBB
O/jQzGBrdNsNT6xBAEbvP+0vayJ1vV/Bf8W4GBmQs3pAiNqqVRLM86ax6+sVGa+TC9mXDhm6i9HU
b06DIWodS5OfOWA/AC+fj6ImOy4FD4ovaWSuU4SoLnZtF0yEoaMAFSeSGg2t99rjyyzkvchJbWVz
7k2jQdcauBv03Uq7rrpk/Vs1LgMuNSGtR9oUdRVWLaYQTikvlqc5TEK42WBvj5K9DY04d33uJq+a
PUhu2wyIcqEhSudqLPkJBeEs5JiNW6L3xgyixYS5Jw9NBFAG4YmV7X5UcoKwpYtQBjXFx3vmxsGQ
GAY8AFe+GRCMX155sRAUpdyh1uvV4gnITO6ccb/hoZR8zKAlqwnGVguIbo9gXL0uIrETIXQX0X0T
qJsKVxa7supMe4cyxhct6diItqZjl7U4eHrlcbpSQI7VPY6mVS8AXta9pwbuiQRHcoQHC3Xr7Gem
78mD4xNivRv/AzaXaffOnLYe0vOt1K2tduULkfzZF8uaV7RrIpDQkHf7zK12ocqX3bii1GL0lz9s
2dZSBg7gCFLOKuMx6P4jSOGiDatdasRBpK4S50X9D5TsGxYQjzeS6Ft+m/KfrSF5kl3wrn9z9ofQ
U3mWFa1TJTiqRAMDUoJfgaJ8xmoMh4xV7MKYM/kgnEG/RDgm2ZI4G88iFGuMgtoOLmGVVB+WRNqP
iP2bNuBQ7Orc9r5VO+EEWZzswSc08xU4obhlcP4VZoM5awUvLpaJjHzFf62nVXybfWdReJnhidxv
J2Ek1q6fIthG5Ba1HatbRg8V3FNHpMV4QYbBiZPwsoaj3VeL3o8MiXL9lt16ZunnUheXa0hCcIRL
Rx++wgxj8nvlfko7dLOqrNmKMub8qWNOA3ZhuKQ8mM4T9RfnBbpU5PpJqc/BL2A7tFZn68RI/lHM
q9V7d0kYolfmDl8Uew5gtbhTXSe++lKz7ywkVEq5jF0jgCvGAoC97/pHOUTO02eu/sDPYqWSdWtC
6UhdTbHiZVdJjNi8V7CMrHzbBciGcOaCp/aS84KUO+vrDFpFXqfGeT7RF7NZ9MFyiIVCvR+0A87B
MdB1nHD7cN74RohmP34+3ExQSk5UaI08wMB2ov0jMWR3fZW+Ptw2r0vJqDAL8c+DSw/IGLGizyhm
0hXbiR4Yk8/5rBUCCtqBfPIdgZzTcxf5OMxh2YLVZwyPIYg+Qr0HqCBI6U/FAO/7TfGnD9SJVjyd
/FWI2yfheWRWjjUNPM77v9Mk5MV6HPWJ3ae0++O4f8pW35mueGY5kjc9MdkeNO8t8l5XNAIJkcPa
GOGU6l1Y8Sw3ni75DrrQCie4Cc/vRRGjsh+JSnYCksSRUzrAZMsa/dOahXGyG4cxSsJSlcO/xeJG
EpuZkrUEZyabEsymjMXUnrTopuPCHt2qooSKwQInC9mncLzKZ67OYl2VcmYpqWxbC+lsfp7l9IAv
Z+VYF3ObtWMDTowgpjjfKcP+YqhqBWfFrYLgmOSQ8W2go+omdCUxM/Oqs+ZAKLULUyMaYIbLRn1Q
srCVCYPA5OghBYSZRyv8UVsy96o/kNERB8PPP0+EweKSmN2Qs4MJ8cUxSPqKQd07cnsNqrygd4au
V79f5lfW5t16ps+88L6tZuloKfQzn0AUpoI8l7sefCsrN3eOTESw5xznzUHUm1nTy8bcP0LT2gd6
8kiSEjBQxclnA2GLu2KM8mxi3YFZt2XlBvHv6wbKcbl/D8yuVIrEva09ahNEvH3xeLRbtzcqpRg4
4cvTEI+3ABQtT0QnCHsowsxuimQPnwo2VseM82NoStUTbOG8GpG8hfQ2MiGtURkG9tMfcdFQcQKG
tyDhWN2IX493zYvsfo9vnxGo9k5aufWvrQq/74dMfx+8df5FIvZOfiGIU+ytz2tYIAc9Y4sHw+Cg
eIk7na1IoZ9klTdl+SLAa1HRbpUb1DT1/ckvSW2vmHyD4NdLcSwvzV7ikw4nwgTE0UHbinqWJ+Om
/hax21cZD1b2uCsJhiFqwtclIaqEzLhpYBcGoASpISrNgVZ+VU1hPtsFU2IpAnka59tygIN0GfEC
m858WV/wgxcCJ3RBjqubTU1UKBIrIM+VT201FwumBzrl1nBUEqzPxyWUtE4XZ4rlmM0btsKEyhzd
vX4L+IqbbVzmo01ViCFNGSWDMfBqsEjW1KA6dPGUDRdIhiFzCeXgLNe0v5Yuo34eE5WPxeMJTdW2
t7lhDmPTQtfDTZESrcOkuzg4YVlRNX8Z7MqQY89ewUXVORhaanDi4OS9RLeSFslEQR+MWAUVFB9k
/csSdnj1TjXwSiMtIwufq2ol26c18c0Mw6dG2JTJ+jZzWtsW3pSOlKxLrtUsLNvgpCibmqPn6aIY
2ozJ0ENsd9rqxZyt0d1rLDCgAIrPCJA6CsdQIGFDCKOhw2CLbLxiUiObeA4awaYezX/G99UyExPp
Sk4G8RL6zyWqgBgWI4uAHzURXjgZptePhrFhl8uw7e77S6JT9/UMrqnEVbjFK1nRNb+Flx/mdh+1
2gcC2+6Be6bUxMuW7u6bLCCN85IcyOwsRUBjqqDGp1w50sOIoZnI0v5rJtifr4SBcXlSWjm+qZ6o
sJj4xkai7A9slOMm2/4ASpmguNZhWz334SSB5I4vUm/LR0wO1HYgB1XECuBtTTy3rB0Ld7p3JkO0
IrBlg/7tf/ONSiaRLgLjmwy7KZUpZDDyyI0IvUC3d6wwXHcTxqubJshrvzoaEftkPEKwGpdxF5z7
0IDBYPUW8hBXqO+PvOR/2KU7l6vUvu3sPxAf8Lj9BoEFYHjKwsAtGEd1KruRvFHcBoqOEJHq+Aq4
jx2PiVla05rwqPmBXZjStQqnQkXrfHe4IKEp21rpz7nIR+ZVOeT9fJnkZNd7VYS2WR/ZuU4Ckatr
tug4koJcTw5qWXnTaDROMpvJ/BRsYfQgrz+By9kJnt06X50cuRMhQzjkVPgtPwx1Cm11MIYZZPJ0
cGaQLaoxrYBRqI0BQ3RhEgVJriQHQfHLggd6LtsfxddMoVDb60M2em7JFj+um7mBcxe034xwkVOb
akd+/Y2XjheRBdLSQtosWa+wKzRzBz7N9dTyN8Z7K3xJod6sCIOxv3YdbVr4uu7Nm1to3Es4yoCY
kHaS/5IISfDz8/4zNi1XxoylonJJ/j080i2Ss7bpQuu1oP5v/GY4KyursWaeSxWJLt0ubedJ86ki
r6GJq85vLk3GChBHb7GyMKAt2BzjoSYUh8nffY/knlZnjK51Z/WrOPzDPFwHvJbA1KciPRcxXl9+
AauoXvU/U7ix+hq5LgS0pL7lDCDy4kcOL9rSCdnPlnk6KPl8AU0F4BiJiGAaoF57swXTSFoVz2ZE
ztrZW+NkERp9wfLoFQdWqXHgI7FZ1nkz906xnBWypT9B8UO1ZQNLqwMXxU0AVG5vE250EO2KEKo3
/wftOTMkFv0EXqSQYUEEzdh6L0lqHnOjBOuWbTvPilx5ZmFBuvwyNCwXjR+tFF9m/gX/jEO8+eq1
9Z4w+DQjSrRO2Wo4hYSIwfqKxMJL7ExdPZZp4Y5obgLYSX34mZPh4TpJuNeHk5qect1nTEt/fpzw
Dzw1A79lxCVl4kTm5LPuHhGvfGWWR+EynJoaU/DmJMkm3mfu/nj2fHNwIWBhJeAbrmZoDpfPlAhZ
lddwTNlQqMIJKEmShl59nTAEaZqIH3Is7AD/T6YRh0bHi0GjMeRKmYcJIU6aZgig0KymKwXG3aiY
SXOSS4fndLWm8NkTzT/02raq6powwfKWZnR3uc2W+aFSm4MBgn07fMB4NFbvXN5C3Pm4vmq5fwu5
OhT3oLeoiUC/YERzmiBPyeo8/OVTc0Bi1vSikkA3mSAl5RMjlfwRYQwt/c7MA5mO28z9m9sDDNP7
60wKWBXfhHrLZ5PkVRfL7riEu5VkmPMilAUfIDx/U/a7a8Z05u++ovq3p634I86fDW1Vv/aHMV/R
pBudfjDdNoEnYPsCwZRT82CjBV+5q7lO5QOpxZDGMHQsl1G16G77d/9RQ1nysziH2ynUXfv/VAd9
0jZuJPLjyyA+Z5n5uwyGWdnehyA4L2M9+RkMcgEBcQNWGjh7LmO+K2/8jmOy01Q/ijFwmuKCCfRM
wniKgoa+hJFqeNTzoy9GCqMxmtWLpIg91XNSIku8mPifUrJEbYHg53lO96kixIAIJlsRS28AixCb
njfYbVjPvaSzgRmc52iVVBORmljqTq/qPgmmD+vN3vWWaLG2yNeIjnmV4wt4t2tpt8z7UrG3lEzt
gLuNfZ5Kp7TRFeF1nyUKg5Y9/w9YrKt4RbhW9yLUTc3mQYZU32ocICpDKDEpXgCncq+L1AyNwj6A
Q2Ux/GzxxcZHlLjgpScljMbksLfL2bIvoJYDXRSSOolkShAbm2uH3wAHhZGvyKgeNtqEhTRMWv/Z
HcN/C66JFp7CD313nAWk9qgD414LniXvxewoovAJUw+6IzEx5ag1+kGttPpyTPB90RbjqlSYap5v
AwLie3oObF/l74jGEZNMw09iSfszrh43gp3EZoQbrXSJYyvdS8t45icI5mwSane8RN2W5rWP6WrU
qNpwd1dagQE0W0TWFPUv337F0gxXFzngLPd86mpqwMSHyHCE9vnYS2TrMZlddZlXP9D3/jIpMSKH
4jRMFACUch7Spte3kGZTGrC8PqXFgwqmaHRXTTZ19j8yoONkHYmANgGu2S8dXcWDSnMZnqzx3hGX
jH6xQSQh9HqIT+IDQ7/Ah8RS4FNuMmTtZMzqKEaGvhbW56UI2AZ/Y096I+fk+QGyDizvBICk8mqM
p2pYvmjAaSLcNn7azIqLhWO/fP/5Vfi5sKWisMBipL7R/2wh/INFQzDZykFe0P35A7X9PpsS0/XE
lfcpvIA93acySZUjGIPemqrIIX2kBSY7ORAt0eO8xhWLpIbwy+BOEM4hk7sEvxc5T6zHZwmq1KdE
MgCKGfLA8XHcFBCJ1TyyvH5xolYYsvzsRRCUTngm0EKoLxPK3PyLOLzO4b0hmj83HITsHv51NDrF
JAFwKFcX7Ya5YEK0rB4iqVsx1eYOn0DO5ERsecywvfmTCxtGApEpowUZt7aMHMNpp+75heACYF9Q
VC/naUv+aKsHzHWAci1UvCRd91NMmqurvezi1gJ0sUo8dI25LhxPPfOJLTirkKP+I+pSBtF28mS1
GD4s7iLVJUABxPwOyb9Olyq7zlyLFSno4WUoWFILyRtf5UARu9lxcAFDcAvMdGj3AhiyuJL0o+T2
8SOCgO2teYQGb0ogkQ/ryzGGTvIXtFSLNhKgnJ/S5JqXBPIZQCNouUEfJ0kc/tQhxFDWtXrYkPUu
kcVxqOtcrGUXo9Stq4ps3nm+lmR0OfK/Yh0W7bPlmUFguuu9ZjVWjqt/axDX7BYdWucZ4ZoFCKDb
vC038je+nb4TEtmE9+EA24f5k2pUxubwGOOyt/SYh8DtMeRk9u1KfIQt/VDGxo9haMc/t6uETHkZ
LPKQOABMQB6h+1y29oXaAkJBlBrozDnFOxUTK+1EtC5/TSomN02249aYPaYfswzKS/i5XSJLj8/k
E4UnIga/J0v2493ORmCcxzPbwN20v3FuQo3Dn20z/aS7CPAeAhG9fgjXzn8Nq07Bv01UEwcFfDNn
rYgRv1IFQF67c7L5IovMUEZ4w1PezzP0tN83/0MxsdrgCVWjiOwQOvsYYM1rxrVgC+nG1nIta5IJ
Q/hJAUJlUDVXhYmwW5Ep6o0MIm4eS0utWiLdkEZGnIU/nlcFHACYxIaJuvARRcQwq9B8IqthfHaR
l9hUDUFe8tlX5leTemft7XhEmKbHXdyKXQJ7MWQ4BeLM7u+tvwtXcv0Dnic0zL/dGpZNeJQpqG7P
TGlNnmdHs1IHLUeZeZWOjQa656AqfIfbdcqs47kr+HSQTYIUUAaqPjmaY//GTye/kYGGp57cWvDD
ODHhSxfFFJNfhDojL4VyuzEdFMpmTgJFsXuI6tl+4RFK53OMg8kV9KYAYGQVgpyZUGsOyV+I1490
+O+4wM+CobBAW/0S1F+DK7mpl6KMXq+/f1TD773PQVRE85r5f/VOl7XQY/kE90F82nf8jy9zMFgy
+eZvGK+GsvduhPYssD40XY6zZ4Odouqw1sW63pzdGPFXyjnx2agkNF8w9PBgW2tzvoF8OseJnA4a
0U3cZ1I4Y9VmIHhRvyvK2FwKHGkVU7V68l+x2TkJWmyRNdiXatqlALKfzGZ4GhtROfhmEi93BRxa
iFFttYMN3XJyHKHrAlzbakm/SqlruQmGygEyRB5PI6MqnEXzdLjAGabG0xzyBT0AT7EiYckMhIYn
P7RbhsKshylKN9rEj7xx7dS6E+binCAT20Tpl2KAOGRwyiUYl77tmaHaN8UMLkTNXvSYKiGiNXNn
kWnW8W8saImb1gvgcJVl8d2hwnFq9OCzW23bWr84oG5DVJcjvWRhxFMbsmXm3BO9c46TTYpZAe2M
dnO9QskAnXRq7BjD0+x1MAf9qZZFFbYno+7s/T7CK+jR9cnZ1n3Wwf2rP05C56SRHS95NVo+XACe
+VduGaZTq5XNRz6c7kH9WUjcf8alTRuvMLfkoh2xRhSp6m1TNMKgwnPZy2Ri94ckTNj3SbORvSxE
8gqZzdf1s1D62xPvSUxRUHb+qmBNfytkegQAmTS5sMmYS+hprv7VJcvmLs/Ns858agQu/RCQD5ML
6DVUdVt2keOnLhKDqd8lAJolXRqYnWyU6v2Tna4kAvwcDE4dQ1QPzQELg3NBNT4VRpHtpoScXq0e
YwB3KZo9pkZZdtLMr4/aSyZIZPb4wrjl6AVGyxO+I5VEYo67Wb3btpzuKazW6qDyp2ha03O1l03E
gSkh17eW3NXnwvE5kMfBZFwwzeyeFZTQnGmbdP2RGcWAsJ/Ao9cUtEUxCqWSBFGOJC6tKFWbWuyt
6lavU+AWeEv2sSjbkaBEKg6tNjrHGzqYLt4Ukl0bcLzEAnJ2FoVtpVd3blCwlkHPqw3tuC93+OAc
4YhMNy8UZ+HeQdKH5wXKGFV5F6vyxJkepfdNKw+rPjIoFdJi4Hds9VO5sfZndfar3OT+Qc4T7cDd
/hG9KowGvzKaMBPIP+223b+phNgZYTirMaLr5Gz3T2RzAuwtXqTUH0loOlg0ViCFhc6UoquTKcQi
Jkb/Pt0C6/D5oCagFjjATGZ/ezOWW+xpfB1bvucVQKEKu9yBqI86RGjrXtlgJRbTBohZ9T6C/rfK
AVMsJk86f+ZqzckwfAg4WZa1wJaoiaQlQx0VB6i6upnikGq40sQLoaWyW7ktjivptP8pCT66LTh9
t81z7CAJjpJIrAqgeq/bLteDrJrbSCc9Jk4/DUPVM/vJH9Iqp+0rMuCbXwATa9wp1S7PCDcRcyXr
KR8SveOPKyc6c7YhtN5K6uQK621jXOdxabX4CubuqfwYCtdpKW2Afgyzgi9A+vjsjTbyH/32cvo2
3b91uwKRbUIVztJ+BlQelwNVo2gJj7zLgdQrQZIvQpTVbnlaeNTNtoCX5EMF3b68j57HqVg9wZI+
Y9t7U9VownFjTTIt+JsH/2jMnBJPp5eWCMTsiA9Iisc0KGwPoigwNQ2epfa/wpgVpxRBudmnX8wP
cSkmfDnbd1p6e8oJD83miNrVQz5BAVzH1xp+fhHe4pQ7kmT7vPeOQKUF6wq6ilpKV4Z4yS+tUwdy
1h5icCvPqyDSS0U6aKxQNTujqb1v1Y3G49N0gb+evdbTXm7u540HwAPmEjuzdg/KZ27kqszSUD3M
S9YIpoIozy3DB2EVJTkqiTntXPzsd0/6kBsqjjHrdtOTXLm3ZZR15J3MPIlMKWPxJKMZcovkpp/q
SS3eFg2nhFFSOIS+AXZfedtOmx1OrYd2Kc0ExeGaNmdq1rZQlEqRu/SEm0/nFu9NQVwD9QMyS7Wx
fNsSzsFIPXtCnWe9Vn2s+cs18k7KxQEBrelKf5r2h6aWKBYxtMhsQq1PB0tb05nKgpMVrcJtpsQ+
Cxpk6EgVn/COg5vjwEUcvNiZXduXraqSOxq/p3VjKkR96cgvvtpkIDTZ+VmGMupiouZo0NsAPt7N
fPER4YrSb3AFq3khnXlI6my1ZWlpCMNpDedqbE3HQm6aC3GbQHS6IcBv6pbA7bpFUSzoz1TaMyhO
IxvW96FFzLZ+KyTT0+TRJO6WEjj1cAriKDLLG8K69Zlexa0AWU1N8BDRbo9M8RJclvmKQaJSzjY2
ICWqeSJ/BVbd63iGha7SK0wDl55limNz02v2gp9A92sN8Vf8ZnYfQ95zN75Hs6IQDJompzFRNVmU
FHLmG1hvhK69EgL+iBaO3OTrnrA4kaPsQhSqcRWpxAKX58n/LTbYCpkjYepWbwwVE3LeVjJQwmR8
1xIZHjyjh1rwrwia269ZhZb5Ov67VYygOM4lJ/SweOFWvQlWRuxnJ/0F319A06IFQJwzEYNllXtO
hnzUO/1788QqPBEA4KiH3MHBTp4xL/LiRkzUKVZLAb+62X6CcKnCQOzpPCJTkXA3Q1Q137DIe0ST
VN7qq44H+b/7JvkLP1JAI8XMNITeqrqfj5ij9df88upxxaWoXLDGcQ6bCuaxWGBfENuQ/KSKc8w3
E6/yRhQBYzKi2WEWOSDK33Qu1cyznfjyXd/ktGZbuTmD15A60WgvreIrpTdKxfJ4cc5o2cYf6BKK
JLPJc5fvnI9TqmPAGetlWhgLPX49tJ0t/XyTtuCNsyfp7+lO/fkQ8I7iI+pueE1cDtYOcAVhrPaq
ZBwv+u818pLcyVGc6nvTe3nP+ZfgjfIShnrS1fJaq47mebQnz4OGNnqKRc00+gj9QMIQOPgZsMm4
vyJCoAz3VruiSV9E3GI/egoV/q5bYWeagtroAY1B79iHU+LpNVwqWOyKIAXTHkJU28tLK2HfuGmh
vTUBJNENfSfVufdqGZ3Es6Zp6XN6MdcFWYO+tTyUbFzhC/DQs5+EkZ9s/BWxeYwpcD5ODXwRzrTF
HmZvloKezpH03CoQSuwZjdsXTsxFKqeSndBjr2UkiJbrDhFu5yXrF0UX2RHUkP2w6fUlivTXtxq7
QfQpQ5Wyl7F9yWbxWVThgFZIDIQwOmRuEl9mLwPBkSn+2A5yOKt8DjDZ6eQ8JulXmwfstEE3uo7P
xmJj4bpoCRBux8hu7r+eElZ/imYs404TUdSt8+GgpIgzASqcf4DZ62ytcy1QmYuKq1yJTyXH8wEp
LbQe026TuyKVWst98EjzsWFWR9PxwCGz/GHK9i4XsCF06U4LnjQEKfE58oJ8wlkkLozxNLJAQ00a
qjk2MAZLXqwCaCUAcxGcSDtWiaT42SknHihiKY/H7luwnbZwI7BOYbC0YTUd7yKybZiOBp5ygXwC
uhCC6OL6ZrBjREpwQ8dtKvsMRjUi2vPVF6kscPLH24R0ZHA665onujqWzd3nHfiizi6B3C2fZb6V
cEaz4aB5jF0IytPCEsJQk7H8hakevrAymU2cCn0KywXSP935drwxCcR604IhgMGx6FaH88MYCML6
a1t04G9EhoLt9bn+KESkYd/qcIXmzQ65zclsdygd66gzvhO51DkXBZFoGPXUtsdMDTM9DW+UlTOa
gpVWX01KnfCjkR2L2RY7W3ZS9fe2tVpZYDleOShiVY5M23iNRbHx+ZWQ2XnhICSpzRdzoaWwq46A
43ajdPSXX+EwdQSgs3tIa69ChRdaqiubH7BoKM5fZW1e5z18ukNujYsYT2f/hW7+yu1gKskT3ck1
JpmZoiDraUk0L2lqlZDbnmSXRxpdNScWZeYlZ+APbc2VtsTnMQARhtjIaJTa+2oZsD0Nw12gYIhT
j/ZCfRzWXgv6RisvghHGWPtTtx0CPtdrWFuLuWJfn96CEIZXuNwTl8nZRgP/6qdYHDT8G/fGPCzr
Jzz7ASS/064CwMIClSGNSXNUQfA9phODnVL9okRkkXJGYFG8GebTK4CbgytSYy+NqWjtDeAsJDp5
M2DhDyZ1UOtCOTkDLE8QDtEVVAO3Ap7Tz5MHO/WQ6t1pQnTOWJ50g9VtryT0aQ32nGsQTifGRUhI
5CBmKB2+GSYXlkY6bsQ/7UGfSAt4QQ7df82lPpcdF/yj54/UPKMoLZWdR5TsS0EA1Kt0WFTYHW/7
aQiv/Ga3NNoIWOazTA/MRIxoD0zsxBM8ejCd6Ajy5005ONgmC2yxZFdWBu4Tie+QsKOcrJuvyJJC
LtgQu9D4yOEUA5+GO2y5USLRJT3cWUQUE4F0ILUwu82bhu5qgoS+RysNv/TVlbpgpjtun5o/HVP2
shd6ZTeq/9lr1FSgocr/XAT4McBZiRdBpXZpuhUAmRrEd/agMoTdEALTRTE5cdsqaSGakUhvLeyj
kbwj5r39wvdKfsl7LK33MmGD2fiKKaC16S6a20mtrW6jxUKMSq3Hp7T81/3XmetzliptM6Ob5S9N
CaZJpMeKOBTN2AlBvrF/AdkbFusWhiYFyJvl9C+PAiIOPifoLHpowrqIr0vJPZrx3TpNsHmEXYaP
ZNADiAxSQziRhXrb55Whm9g3632Hi++d5TwlxiZAJsHMGbLpnyCmvh7uhkXDQ+69pI2pHC6dIRRA
y9AbBehbhmo44ZTgs21IracMoI84rsfHHwt+rkf5VdhTfRErxen9dVzMkymnHf6XCTZwAhVgL0yc
yPJlmMEFuC6sFgOcDvJiXu05ihM5TWbNAgX5rHTojgMrSJei4J5wDXQncrUuOjwMXUNaKd09veoI
8uA5HuAy1ISolj5zjWFm+U/1ctqUVy6SrqV69dQC0tUzYzIY5l7aAtbCoO9AG3XrpKTxUwZKzEBK
Xl0k3zujnde5YJ+WRTWFqjYXd6GjlJ+/Kc9LQ9P1LdMPSbXmrQClhy72hWZzntmD9L3aV3WR+SeK
AoQezUygqJ2WvAT8ke+TeyTyok56K6ZdEfBuoFYR8liQk6xje4hL4W7YMXWgMm7RB19mnUCM7tLd
mPO5j0ObAg8udzxpqezfLHLNpA2vAxrvdIgrjdPeYQO21A3mFef70wMrngUsf/PKjPzjxrkQUrH7
4j8fkXnSN5tYSFHTouDIe9rwxA1eWWjiWYSlDKPmM2H3fqgPoKF3FE7C1eju/I3NWxQI+CgMdRHq
ORxB1m+sGde+SYn4JXqow5YA32F8dOOkqCdul61y/rYCl+ERZGBjORG4I/0tthXRO36RbHRhMAIe
M3wBkcwcY4j7wtWwmUnX7EvaEPAuHPx5z+ZhNYWkPB3aGsv+ixQupa67FDC0/89gEzBhgnuzHcGj
pxD3QWsVrfaAhVUCGUDGv9f2AKMDO1r0LmQCGUu5GcGE+Ae2739Yz63kumpdXBPxp9a18BYZ+lcy
BGVOQXWdluYPTOXCPUFj8iynMxASh8wGnYEgz1UBWPGi4BSGd04IMEb4P7XSeJwPp3LPhtQmS7rU
Ip5AfDXne9FQZJZP7RE+OzDER4XhBDYPG8QX+8s2pnqq1HMGcFqcY4lPOiT+vMMzJdDlKEx1oJCw
ZXDjcSU3IsoB3QXyLS9LA4RWQ+Ow17GYLpF4oxOLLj4XHcwArSIStCBG9awzSA5fAHyk93xwQbgH
TDhnT4IAD+Cro+P71gqyCG9viyA5xq9/b2Zc7mbZDYrcDvqTkdx40+mfZWEVdMaddHwqfWlBCZ15
sa4u/D7XkrEMDDrKE+Q/FeobU/p/ojruO0jcffvyFoe2iO32VRD+TVstr1lAvcl1ohyrRpDHwipY
136IRxyvZChiJVjcHPXzGjxTb/uXUSpZaT9jFf3Yck7DcvF+bsp74rRbv9udCnMWK9ApQFPnbo6L
jbXS0Y9gftYkqCptIVsYoZJQw3IhTOMTJOTzqHDsE8plac/Bj9myn0xzCFw/W421dD6mZ0+5qO1g
PqatjWZLDg2c10LdMcOn+r7o01TojJZjHJQaaAv0S0mB5KrGKHX+p0oseUUvaskdX+KIfLkL+8QJ
feG2udhsRCQ1qtXosDLbuvPL0fkffLAfB/OkPRBJCiKyA4dOp2zLhD29cAmTNa686RA9Kik2qW4B
9JvCqGVWdXdIFO5YgMb88fHishXSxzZRIZJXxVBKabsZ+2/lm5h80JkSAbsW7lYWp2e0QHJFtiLo
ULV9YpXfpvjCihZDTA0AJuutdQloKmOgdBkAqkPeUk3FiYKSLjMfaW5C7B4GfkJdogm7z6G7xBcn
F2/r3SJWN1s9jSGuX0Zrn6Z4USJAdeTxpEmOC1L/XpeSLbY6OND6lQ/D8e5lSCR4SDRAMy2/p0Zj
UYBLbnZdWtudAR5D/2pGJ8oHV1b147lqBOqOW9ppABNlNt+3DLaJ6QjCtbpBOwXJjJSBNsg+XjUU
mxgmrbGCZy+TDsanDHu/xvZXy+UHY9hKDL0PsHDPMVeGQbI7j5eYK5k+LIrto1pj64dM/OpUwVUL
L6SDHo2Rei6hrvG/YIOtMgW2HAnQMaiP9A0EPO1MVcpfrfKgq5v66VB0DpwvBJHEF5mcYLAPANI9
n3qJbG6OIjaGvNjJRFeiFNqgEfkurBBvs790/KAFwi6L1p6vXzPXU/kwFrv12wQuHQEEk37XBiAz
vP87/qhA3BGhjGtbkgpsshIYYpFOHZr7zha6bNEYPiuY5Q0EetzNZdctU+PcEsgoxHsDydMqE2HS
nMKPjiNcOPf7VyrVluUnWZrKSqptu8YjQWpINfvYJpmmPTQs4VrhSFMU2vdqus8jl4lVzNRfZbKc
Yc4IsRz0uF7G8/6jx+US/uMiY1+6kNNnbwrlGQJr2rxRkx/HbHii3LQ6hxHdyRWAIkzFXRR/DvLI
xN0CQDEiDaucTILKS8CNXJ0+92PY2kzLzDrQNdxjQ0zT3jLtLMJjtDLH97fy9UcW8pJKeZWGU9Oh
CJexAPVTPdH8P8sAn+s28Dl4Rm+PwsoI+Y1twL0fy0kX/ehCpe3ZAXedFPaxXtSwZRVUZl8bw8Tz
eW1Aj2/r+ABRjj3XbJv91kix1euJszsxGq+tfBmCD1oQLevhYgj5idtHzHGt00vQ5l97ys6bFrUn
Dh+JbTRuSf4HJVmv71hASoEukRObnEYv0KJndXdESL7jzwozoI4L/+sCNrqTLQQnD6GiR3KQg2N6
Rtw9lrw82Na+oi/cJ51JVieoSXyK7OxC/Aq7suSECuXWMLP6cGdYga6fSLt6/qAEG3SPHZyLwWwI
IiIWcTAH5icsRJJYWERe9TdVFNO9aXvKU0d6wyYrUH448Xc668MXs+NDe2XnXwmiIVRWlS+X51lF
Yfgzljh1vwFhxWZjuLXgAhL5U1nj+zJbe/rkmuSvu1ezLzdkpBCMQKeajE4R+aFUMHLgKCVaJHIx
ETWqZJQxwkP1OCQBPM+BK5uk/L/W2/tApuzbQ4gc8r+lSiqFLwbrABSFMA+CYrWQhvukAfBM2jR2
aPl/787/8Z1Sb8YiQlPwvK2IYTiuHmmWvAR24qAZyN4ADCf9r4dM+M9pT5Ce9I+TQyEf7CPvWYt1
ZOOwQ1wB+pGl7cqDTCf6grVWjsGSHAHMdFw8L9Wsa6G0pRMPMq2ZRc/yECZNSLfFcXidurPpGd7T
2RM4peooeX5Fv9G+w0u0nnUcJDojSmAdxyyYY5slvy3sV/gZUn3SNCO+Eu7YZHkC95NKf3Y2HshT
p0lxrkrp/cwVXir3smZHF+r3hB2apjBBjvQ9psqvkxfXMweqJoCmfz6qu8caLFeeW0a0Qy/7NCLw
FPiuq9siEu7pjuCvCXIQmGDBQ8D6O7B5a/ifMj9k290oQkaM3RmMykTUNU6LBDjRRrpO4vFFAGtj
v5I6jyfIFxGML1v3uBmRHKirXZXXt8rcuNQo9Z+FVUlQzi4s4kXrnxdQ/IyPee8MmPdLtR1rauLM
Uy7gOmanYTtPtDYTfjh1FzvEcAHj26x344OK72pgXOTprKEjngw1Ya6w1132PSh8ltwhk/RV7pgs
rmG05X4HpnWX0sKw5onmmPBtFAXS0ZTsMlfHzswdVyeIJr1DxnG/PBQ9YsX9xii8lw/uxqAlocsb
qsrU0nlsxlqTvHxHibr6+OdhiOnD7+Tx2ZlDfN3NqFrfkTjrqI3cQjWmikj74N4EN+KB/v4g+cD8
nqU7F+7Otsunv/mW04Ykgl7d6RdW0blUnLN8xBVLQ6BOEA05EqeiUHYK/67lhVqeDbwsJiy769LX
gBwSq4RiY/Uy1sV5AiAosVfHZWCoqQvFfPrpMlMGGP5bbacWTRHqN+NzdJqIe9bsDeBPS1V/b7DJ
1m+Q+VSHwitsRiInGaTt48ymvW9rp70CZ6nbKGiSfCC3MThECHj90XxRRkpLOQuAujNBqdyhrhj1
fZHx0jrSdPdonrzqULde7cFrf/S9PWqRcQZe5LZjWnMUQyAwexLRe2NOlfogukBb2pV0DSjUGmwb
DYrn937LykgJziB9qg5vk8+z9D+HMxpRSzxGw4ydj34Jr/mBDDS4kImDO5jgt4uyUIcS8BYu15Ik
svPTRrc4Ii2+q14QsSv1lWhYzUT5IY25XsUvV1kA+AI6GjPHzRikGy+weDzU/Y5LrfWTvfqMZThH
0g7GxpWkbvEB8pfxkOzx9MEVrHsyA3dfScEVl8aceadp653EYl0MgxkOLPLYubUJ1s0wWCX3T/26
5xV6WjH71Vs0ivUlXlxgNImaVerI651N9btVgzxdGbuf29sz/oc3PN8yYYBr24649abRZ8UTvw08
mdey43TrMWJb/rILDIKo4H86LzM0Yrb7hH8E+fcyb8L0SO9v71UwNRtk/4k2ZyrLhJYJp35m7r6h
3dwfwatvPV/QpCP4cEE/KGYEhGSMldvtxkVbUd5dJ6scJGkDFP+bjPCIX6r6T8PpJCy665j5HBfO
jYZ+Wwj7T3K2YXVrcySztOFl8siRGVOrVMv42Z6Gatn7nrMHqhpwTz5eoy2YOHGgv9UUk6EW1pKg
vE61cQ0xeJMlYSOCjfuT+XeLiwA/RtmNUX92mSl5Lh2DSZ/pZWpmCKQgeDJmtGiIpkLoUeJm7vw+
XwGz6VBzXaMNiApVm4XyU5o9pjLCvVsPCb7LHJB+E2CYtbTgmJsaEuOaLWJXgELF4P20CC8/qjWn
7OfEhemrYjicW1gBE4D0Fr2/LvmAQ36N7lcSYaVPwPQDtW1xy0kU4632LEE+BEc7mc4f9IQdazI1
zfIu9BqaeHVB5kuruIT4hQ4a64tDT7MnfMB9ucl5qDn+HGOWMWsc/HgJHOrakf9uzQgRtLAvVmDW
fxdAtS0Ay5o3QWSodCPYpQStgGCP7gdofESpQKUcvegMkS3aLYmDV+/GXMO/fIn4e5i4X/nPQoqv
Z2qRaO9beLtwCixEqW0RhfXqo071D1oaS5on+d3onUvN91hEBu2SgX7TtorlMkbqM4OC30MzkLcw
Uuncrt/4o58ZthM4OEPicN3SerEcWS92nKaCXCDnVDqVQV0iJ68FL8uoPlQXy/tVbBwrW+FHGIJE
r2w24eOa8D8MBomNjqTsBYhT4EqEwchRl/igiIpRTDcGFI0VTFk6InmRuRV2DpLaZbcuseLvttVB
fQXd9Ju/uhrSU2QsagCxCdEErB/dxE1hBY86/BIb+pF5ahDYF/ta1/tDrHCPIx6frFkoVikd0K94
UDl9MUImxmfOKancurrFxDuqIBbN6MaM2oW7C4+uC8+GeQRRkMzvh7Mikt0I4RE9MfO4pMIsjZun
7Kog6fp7h5qM1IXIDnw7hdNGNKzXd3IWGry2ZHPr1b6BLvSw9Q/l74n/NSKJhFdZuz+QlUUyq7+Q
2BqjbGYmy7zB20VGK/FEPP8vcEPZ1UjDi1aFdP+eBx//3XnacrmXCmL9cakvGyKJAtS8Tam1Srff
Vhzphilnpx9OFKIcFbyZrbHb+mJ5i0CZHB2+LNnA0qaJpY+oQUadrWsVl32QR7441lXQhqg/jEk1
VgtDd6ZHn+cXxDQNdzEb0sKlGe2T+bJ2UxWeiyjhRNn6IOcZaRcXPbyzDYfz7cpOk/uZIcXOsAlZ
7U1vnWvuElKNRPsI8PnldNSL0RYg1AfMCbxAhvwdVgxdTCRU3YeT/TwPYaLCggu9m5tGBqVpI/S4
j1BxfOa9za1D2vWj72MGXmSS7W3SXygmn1k6sViqUzt7PAy1IbNpNfZCMlzcTdjsJh25jSEU3LQU
gSygAhJXmWPG+kfV8DQIak63MbjiKyPrAR4cV6gNMAfmZekgK12PMSUWoEPAmEYrZRU5yipUDW22
991OFA/2l0GAkUd2mjnHUgAUqDjXB1PF9i4T2zGAVR6NdPKCriVY7CkFDQJqgibu16tHawEtiwOh
H5kSwuQm8wWFIbRKOvA67X8T6BUXKFgiNHOvAqP8Bo8yLkaLT9WeBNLfcJX5569TgZh/vr7wc+Y7
upqc86tCRmCBXkJpFhK/DL999BMcbRx0AHzxBhS0t0y3CWE5PzxIAK0LIDjneuFApLNkjFgYJ3fw
ZchdeZ7jLn7H1UVYxYEcHzKE3H3g63myIt/TKMeeJCj6vOHu2Db2MHNg0EmeXVM2GlN+dxVpHHKe
ebgV1hEnm6p07m/hh7XbwpC7mXpjgrHrrNosCOMyIvpvpPlrCd/S4tHSSseUudGVj1oM7zmDvah6
EoGpVHC6RD6pB9ysFTmPc8vhfTfBqeiQvNet/ercgnyefNwHTTiMAnjL0hNLSLMvrhK6aBkVyg9n
Vg8QvVdDmJCtogwsHtDn4uJiwmdl9JDZ299Kk82VQtqBRtP3fFLmM/Fyfgc/kRLPmyXIEBS1f3aC
wcEF3I96sZZo9eD0up8T/uImiZvKJY4dgA4Kv2cLvty+NweaxExFbg9bqvWPWKGgsfTahfHO8KTQ
x8SOkWHkEROT3QRB52DK3zH4c4VjFgOZgRMH498FjJgmut0Y2F8/V4+Be74NTrtcQdhB67ph7/OV
3eWrbMwD2EzjUvGEe/bfDQvKrHb6Dk6WrtfmSKK35Escs8diGQArXKVY+8nvYAbtDLsnh3YTcOvh
RtB3ULxsxW8boKRB/sXaS7SctmEDWEwjcnOP4q2e7JNm7MfaT1StCz2JcpxCA9qEcekyoqKiBAqt
i5r5lPFC445vztr37mNQ2irI2QOyoy56GItxsDF73Ci/Cwu/RGcQFAX0oGA8nS0vwMD/Q9+pq219
CY/kTcmHmqNS7UI97qSW0+7jq2tgUkPCdbPfyBSHp8B57WB3RdOovsekcD9yKRJcI8iqFPbZsmPc
irvZ5NOgcfqwie/zHYhnAwZDrXCd8y7U+p716qGI8w8aoZRfUD+uQJVmUwBvP4skPnzJzqn6cfOz
V7XhM64MKlkAN7iKCw6JCV6myuf6LjFyr/vBU0ObKVu+IfvWyu1POqV/8G3XV+R/R5PJ8fYcH+jl
4YAmKvNL8/+t5HBq33wm9YymPfUVxRh1UuX/BdmxZU5r0OklzCasDh0QOQl+OHxiFs0ZIgLsaR0q
ex1Jc/1TwCIaz/AwKSKfl+h4qrhBKKinMGrS3iB7gtZYSfVyYqeeyWXiNwhJtQoX7Ie+T17AHtTZ
UsbEblLE7uSTEIoW9WEHu4/JMjEM4tavFI0q/zQfRFRaMNDCUztVwAYlFAwCqVO6ZeZc8dCzaAIz
7R2od3ou7ZuJtm+UEUy3xc/Oid7m9UA655B7xNQ9zH8B2vS6qMyC+oaieKouv552zbayCbBn5Wu5
6WBskYIxgXvMKduOfW47UXP7tpIjcl89L6r93NNEymJxOE9yDjZBqS51JETUC3Gw/1+GJw9SGPUO
Uajxzo1a8Pr7ij4p/ezdtz/leUF/rDgVFezvXXNE0c4Yt+pLZ4qCKISrfHEZoS8dnlB2QaWWcbM3
SdMklFujKf5T7M/NMmygYkCY8uf/EyZLsf6qg/wGp3map7gefhU469UZ3IBj/kno+zra3P62UBQ7
0Lx3Jz8Ph/VaC67H2Hcx6J9zfVkAE5FiZEhky5lnXUjz9lZJWU57uKknPBvaNVBbAY/jCjgsvUAt
ftae94sef9SxwvHG+cZSrhjOK7OtwwKaaFDsQSTyZtTln95OgGoPDnM5gwb6rmYnjcGhcx2e+cN/
7O/Fm7ktnT0ZDAX/amZG628pahWUZmy/L+N34ir4gAuV5N3t4mMiLVnPPpAdS1PnLt5tIEQgxtxG
3S8px7w54Ky/++i8h+h1h//7+izFfsC0U2Aabdu05ky/Xqnz8euRkz0KBopAJgfATlGoZjrgxH7x
XVXH6XHYdgqj5L8g90/iO+85PVV0f+DKRuvTdlLI3TFmWT0iChsV+xk1R5ImxUWHqarl83KwrXlm
xV6huoJL+NLGrluHl+mNSm0Hu6YRUWAnZ2Otg32A3ElbvhMcj+xk5oRwBIZx02arBe65x6f1bzmf
Y0eEnoP3ddB6OLcb2FDTdxFEJ3CeXvUBo0BKIwC9In9qtkh5K5jVg/eM7IE8lzX775k/Du1WFdoK
7KDyzBRJ0x28yNO2DmrK4sbKjXK1u5abeBXGFEOzTk6jFvfJs5XDHWnQbmlegiuFPvcjnacBkz//
x0OXZJQqjNqmnPybjJIz13GNfp7YXpvbrElYbk2IMfi95TPPSxhQajJEaUmPVg+hDS7M9I4aex4Q
Ly1EBl7+KuMP5cOM/86LUvGn+UjUahc2a9QvOHQ1jTkUWWJ0DHVACzZc0ca65j989DOTdTS0oBne
Qf+fcI8ERP8AUvrvFWPi6q8IjTJFncVV/FdHPhz6Yet5LACf2gGAFyFHBwjwFVyztPYAXFIkh+SR
39e80NQUBFnpuH95+Hoja157Zg2XOcNwgw3lazWnpURpOn9SGk9G0Qppa8b7dLrmYWN5W8CvVe+E
V4qLBBsuSV3awYExfGYnHShC8aMfvN4ACGk54kFZneOm7YBnhc36x5sqszUhMmEW7U02zKMC+Yez
13p2QA0LkvE2cRicGpPzayN5r/Blv/NV7Fc7cPVSGSPaoSgqC9ZTGLuC1QbaCOo0qt5x9dfnLx7x
CyZZNrJbVdudmI5nga50wSM8hayEddJ7dh5LrrLEhz7K8DXqCmD3zpekJ0Mgx+QPPcCIHXkTi5gZ
B1S8PQU5NsFVHFZGBBR1YP5NwYIMwPImuiyWTEELGekuE0LjT+dcc9iCmfb+q/RMrvhhheyXYwSl
rROqzv9IAPs1iihSOJaTwGbXYhiWIduv7OcX/W+tTt/VyQLvHYzKLsjxYvkHLe+a35qmgavNGN7G
o6ur1aR67IUvn1DJf+6d26qvTyWnJunt4Ex5xmITUE8CrXLSaYNH1BVtYBU4deyVYWlFIx23Z6a4
2iFf7/VtHGdx8/lZ8kD+VEE0NpgXQ0W2oPOJdUBGm6ffOy0VXAFPUKd0qSm2KfEo/HMGkaITvM9E
v6sgzTHE6jeUlxObelXiZgzpXhAbQ7gopYIP5d2hlwolf0ufZSNAHu3TuAlOKHyjwrEOegBNJGhp
9sKIDRpwLu3jYGCFfNSq9J0pcqMEvgksioXsSYMH7sEvOYAykpZ0wXDkVSwgwoP2zqy66LI/lr5M
RV3wJcZ9GgNtD8mOtxUXkl+9Mq69WFNi5Vkdjvyqpt3Ab7eXVUQkcNztX8NoajxmgWhSNjLJvtlp
672B1pq4kB/3wL+JIsyMjImnObJU/aXRpxRpWj9niYWUIsSydINnS7FSs63ftzUxjVOOqw2B1BTO
s0OeJl7im5YDkvtjNyjrUCAsSPncPfaI7/hYQ5fJfyrD8gJp992CFkL48xxrMrb59dLyJT6UvZsH
eAyCFlX2saT5AboLZu0P2bGczKCFVRSJ8M7rVrigCtbhLSQgB6twmb8x/iwXonR4E4nXFaSJLFJ4
Ct8Y90EWFspSPvDJmVizRRVxsg0szRojpESg1mY3KHJJnxtSmEpDjOgZRR5IuvUDvk3Sjm6OSOgv
Fz+K3/Xi58/nN9XFfJHkiQHZXCd16ssJAz2fzOqLySd/igv6O8BhKhXwQr50fEaexU90+E8AiL9h
YRTPKje0rXsrlb378nhb4/Qljv88CArkBOiOK8cUn/9OKAHT/9h3xw/fT7iBOmiVOQFRd3Ekvqzk
wqTFXeKu97YeToBCZapqGAS1B0e6w7ZCd0c5zZ1YIDmrOzPALFbvtZ8oroI8yCS1mHnqhYWWyqRp
KcByCgP1n8nJBMv6W8VfQBueZhcWV9MpMoJcivYMiJWIm2RWDKMiZ6c3ox4GCsLIDfbz7ldkz9zB
m2Wjn6GwgHALAGTzW8JEB34r/rw250A1aQjX7UTG4/MBBxhjna8v9NONAWqJGPEI8GhGJyyxrAgC
FQYfBkjjgUwtJ0yiOiSD2KJ5y/SeRAOgO6RWOOR8LT5FXyj2lHC4B1Gdo/2vQpBJg913SzogjBtY
VeIXMOtnoRxU0iuhDd+c6iHzWrEUsV9HnoxWvwYkAlXBQg4N/42EEGc12V4d22LhxO3LNdtD/9xF
1vONQHAcML+6vYR7Fjmo7IQQHBQ08cPHow9eE6SEUtqrnN0gJV1HuItoxDLzl1r35TI4+MXEgxDg
d7+n1Mn6I2PUNDLUK7euSPu0TPKESnzSYIdX6c+KN79pzyUa7bZga7Y5lD/nqCjQDNj9+LpyE85r
zTMHbRR7xTIwQgXPSMZCM9XhCkObM95XWSHkiH0D4sdGnkCmmKlwUs47ijis+uhD9J/hWH3QU0FB
+19IEx82sdCTA/rN5M81Abmej0mckcDvQmDFfQPhcCJ+bkUv8d7EBgyRtKxLlWxsEkZejsYSDUG4
OIYHetkBBr8PKC9276IcjCjGJns5I9ws/X0mo4yNTTCuvt7TFQERRvfDm789gqmgtKR1SnQNE71w
3PhumbfZlG6XdJcQ0asDuy/NFO5c4DvCslt+ZzNg1xJcZ7Z4/UJWBG8yS4QFdtuc7Ea1ZRQdRQXG
mw8T3ooFOCNKay3VQFSmYIEA9pN3/Jv8a7/Fuu2RxHencOh/cFgd6/mM/vpr1HdQqxeJfP431e7d
T1ynGHlmbRR2Re+T7ItkgMjcqPKDjtFdeaNX+IVhfItFHBMa6wgWYpWAWVrgyCuxOtO9ltbxx9w0
Jri4ffMvxjqhuXKGHlOyt7vnhpoRWvpX/0we+4s/5k97ttT/BFmid5iBcXDa8BAvHfsJugFEP5a7
CcIjkGiUvN8HwiQzLyDKDIU8RCV7/D51JKOam4OwfaWsAx7cp8fbLvKBwu8MjKrKdCihmzLOWrsa
wOqsTL6UCsL4mFUPxtQa8Jmg72sXo3E9utNshjeBvqVZuDV8StsymkzXLSapSTSVKJOGm0IQBLi9
Trd9Rwj39EMq807JIggF4OcpmYBqt312UB9J5byDzq2p2Rse+/oDhrM9FpkMaqJ0SDbs41LApr70
Db5alZLvL4MocJtDjpEnN8QPb4mpJo78720OGxzguy6Dy3h4pc1vINQNzK+GZu33n/JJ/GQcTLUW
nWVJ4VMZd6MQGWJ/JzL8emP2ibiJwcm7s9EwPeIJOyg1xHJLuuA7ZnkwPfuIoVqd/xqWukf+qpTB
ddWfc59J4tlAFDxJvbsz8LwQuoWL2vBn4/84B+cqiXn9o4d+MKA/h7IILdTkeSuhC+g6VBZ23A66
T822gdSQIpK7M0zShXVk001pnzI6SeBw0MvDiThCk0zHhVZSjmS2BbsmypGZfjdd+Z60JSyTyApV
bSUgnh/rcS7QDqAqVy/LiUTBH157bGuXOC/nCXCwMcdIIoYLR4PQstoVNcl6JFZfv0aC76yLL0eu
8SKDtoKl+KI02vuLtc9OrgfNulTUMJxOsycVZH/TyVRa8FukWD+BqTxLEOX9+xc7c8rgeXavut2I
qtnerg0u/f+xVaauza5qVSTauWCBXpP7wJQDvojMJR8g+ZiOQ/go06t0j6/efEV/98q/JlaHN9jt
7j1bUSKgHQJS1NV9e+e3K1X8wWxOqpDAzzAs3eNggk0niG7A+og2J1D0qPm0/lHwjpAtDno48ZVt
I1gVelQR5lUe9BiNR46zK41yLQuwYbODP3Cqpw0pScnf/3XSZgg/s1jxy6EkN0P5HhtvHlI0/J/h
n4RMK4zY2Srh0ljetUvwoMRhhH+IyVZ20/+FV6GqrJMoerA53EjgxtccTY3lUCPyzOkhAF9YQncb
taWqA76dMQCJc39zZsD5KcVATHv3hAGD6RUjClI6nXuIkz+b6O0/BcQ/4M41/XTRKn7MDwdDPRie
TDhPZbxIYCSv5hCWtLXDq8022icWbX92NPpt1kMuzFXkZ5TLsvh2azZ/JHUgLVT7sSrlOYM1B1Z0
VkbRQggQvmVR4fF/GWwinZfSpUxNBb6eDFd2hgJD3iOWjA/67dPRRLRBKMWvdsAya+WxnPMMcCME
Teot2tt5SfD3GkYHzDwnyq5eMVU6OGwQYgN5c2vJaPNImxsanvzMbdYaYXjJeNMJ1YS87OWTiPnG
gTyDdlvP/SL0vQ4Qjplkk9MiKearOqKuX3Rxc0GjhS+ziTVirCOlRRedHtpeXhaKiaQBIJMYNfyN
M93rscPwCpqshrWMZIBEr3TJNgmkIz6vTE0MiBqZ1Oawvtq6YYVdGw3gDkly3c2GD1hyj597B8It
TteYPO8LYhDThU88lfA45tVTUqnh0miSVjezUFKkGJ1eb07Lx+u69utpk/eeacJdo2RH4GQi7wIa
O7PoUcM0/YJCFGmuUPmUf2KsYtd9E8IkR0Hp/COJ4PjFSGYPLJdnbfRB5tQPXzoFL2VYT5qT+q7p
zruZtOfFJdkanttEmCYyVSc7+AsEvdmZRhGSAdpeVDAA6A8f2k9m+yqRiL7a9p1JEVLFp+1s96/z
Bu3sjEBl9A/njivhjj49JYiEOouccq6gkR7XEvvHyxTLEaXjY8spt8LQt+9bLwN5arSf+BrZjYU9
JeMWAO0fC9IQ7UoOT76s9nysEErbO4MMA1M5PBisw1njLGmRIdMGC7zCMhpBNBvz+MfKa21IAEyC
o6AfTcWeuJXvJKs7OsAy74CN+Jq8hZKeFEJdCdK4Yn6yLeZuZrcP6XF7bRy+O0lGGcZFnvKqtA5O
M7cfb1wCeZJKS+7LVJym6JkrjSB/Tnlr3+PJ8BVTPFOGpjzSJem97AzOTKqwvcvolHAcyjA/2cZb
LxvcrBheJqL8TPDfkg27oP1nFkdNQbkKOO77rcipsjjtQpd2eRQ9MVhINE9YHtT3mnjizhSm8c4s
5derUvp/Lgr4O5SiJQ9VfKEOQAr4IxiToWqSEfuJKaJu8c2TBXZ5KSyctIJAUK52HjFByGZbnC1F
z+5I+5/yBOCdaZAyaJ04j5RnhkAZYHllJ5+Vs8GDTG90rIJim8m38rn+d2eL5IrUYyezgvxslLe9
cwxv3nvfORFRSgipCWQM4xvdVAAx9IkHgv2f8UNEgJ5Dy3hSCuDldMVO1vCLccvQ6ZXO/OPmajQs
RWMWClHblbbeE5h0/a6ur9i7j7+hqBgnQ/6dx1jUhBIJOTenulCA3lYixpc+pEsfGOEUl1uZ50CQ
q5SYx9MXkDSPJ0BePRNWkaonJMAjG9jGgYtGinhapuLGFvrfWI+xlqYJMOMmWPA01dnACUkDvj+f
t5F9QcKinQ1RooyR6Q9mNuu8jOayq2EjAFdP7R8J3iDabZJJbgytvwFVE/9H/+Zq+5zRDmF45FrL
wJFQgn3J9/SZDLla5TNZjUKdSFHT+A7sr8I1wvjzepIPSPhF23uRrMZlXB6PUPvDOzWQIK2/UjlM
ikEHPATDmjod0EPVZ2+hQs2JW20kD+kxDCU/Wb/3cJ/j6KqcdmSlKQf1ZxON15hjqm0jb7RRQlo4
sGOlTN6YUrkGY5J9VO5FyYqWlL/lflDNWldknd2XTaDi7jeoeNiOWd+66EOLVuiQp8uqAcVykTkj
GmQK/8/xEz8yebKVrtKrVsLqR2b3uKVsiNrkZSazukBgRfuxcHcTiNVRSgAraRWTGlC8fRPs9Q4+
nXZuzQoHlIk3IrFAX0XmxLq/dpmRdSfNvH1TZN1xSD+24oLu/sRx2XajetW8oM8YbqKUuPYpL2Pr
sty6fjl0ATRd+q9z9NhScBMXNNZwwK3nUjJLdVizszG2b78db4DNoLJl4M+6TH1sm4VayKgFTwDl
vdadoJ6wCgMUo9tiWN97rem8cmQYg0GpHuqBRZ/6DkK2gOBBBi/BXlSlfW25aEDeMzSw/mUiD7dn
W8PrvbbFdlkp0dbjrlhAWk8MN8fr8Uuponzl+ePDQlNlg0UokmfIL/b6uBSgyzhU+YsSX/cihg6z
mF95pRhBBuu6XZ2Jvey63+hMGV9NVgTVF3rTm/sccWIVSzeYGvHQwyTRrucVsg7LyIYJr4I9f018
VJhpCkKpVNVMjuRPlKgiE1ET2tuhh2olkvIoCMeqkXmiKaP9RHXRd+809OH9vj3ICaHPuYWkIGri
Abzn21Rv/R7/ENN0zHmKKOGrH0ks097gpw00dvC/NwnDo4e2uf6HeKhkU9BiGWMGzVG/gLH81dDF
QprGHlVgWjsKpfaSrFYQiIEgWya8b9BrbQxM/u4L9p+xYqtrQy1TA4OwH8vufeAoz3Kz3/9Uy+pS
ldLA/YF0Fo6FPiHTxPGuXr0wlHMtqzoxPQo287OPQBP4ZAqwDKC/hIyULAKFQiWrz+gt4bGHfqrh
sh4KNoAfkD4dw+riOmOqW3s+EfH21M+gvifQbdCitiHuawNhHsuWUYWxvG/ciqogXhgKe4VSmYZ4
xw02+A5dZkShkLByOSPEaoSv8jWrZoKAQrg3mSEXnxHnAHrUlW6Tcd+hy3jUDLFOYLZM1pWRBCR3
Ow3Z5xumEWjv5Zynld0zCSYtAZUhul/ot97RCKE4R64TgRK9aY10Bi8ofRNWWA4PljOqF4Uhugmw
ePrdIJrZQ4cIw622HdfOYYLvfAycliqeAMS4F4gKsmZPTHtp6fl4GIHb0Xb9ncPuEi330rWOvRJU
w13CT+Nxib1+PMFkvs2bhzJCb35E1rxueeWt6VuTXqAQcESP1R+PrISR/ocpTwvgpZ11nOF5X/ln
eAyTEXpX3g+bMqFSDkJp6ZChIexLAXo1dY8PPd32NQMls+RTKYMl4Sc63nna6rkX73S9TnCjk/zg
Mao3YHr/uGqDn0fDToxEOEVLg4IAEgEcAYTWdM33erAqfhZFwbzWb9l5rS5CiRfvrs4ROpP0yj+Y
KqPIufb3PtsSym9riv4FLfs3/u25UjS4xG9+KmtkwFRI2/0iFiB6Wna8Ml6ix3ksnbkxyn1NqKvv
yaeQsmR7ck05BO30trt55okWKvXF4CSV1ftUs1i+9J/PUdVfL6Xn0QdEXD13ns5Kw7yzKnOT4wZI
gT0dDaA7H3sWYSv00mEIquWdTFkRByFhpp7/mICxdMuwQeZOeTYJNRrWXdbwxyJJNox5OS7rJRK7
KRKjA5KQTpejtfjDpe/PpKFDSf4ukEk7l8uaz48vgtDNvyjwne6fV+aI7oZWZ6GH1e77fYQtSnAg
2oL3UJvcl/PCQhuKrYFvvSK78ONdV5Sy4QH0E1glvzFWWGsqyZgxg384THYuVFdVkMuzZlXADND9
WZ89Y2F2/D5d96vSZhPj7i1GW9LV4UkZNbHcmfusKcps0KmOZeiYuCia8fe/WuJa8YLdSRIVI3sM
xy8rYgWWPKLdeAJ6T1/O8OHdY2TGrvWdtjPn4ugAlVu+xcQAz4uoR2TKDD/mEqR6kLWlhL4vFU/d
s7UnMv7PFrVEyBrFHxFZO63Lx//g1ia9SjObfywczWWpzf8GvSOk2YIFz97HQ4cz6MtJiIWmpGYY
66Z1+4BFwu5CHGSZgtPQeq/lzsjAnjx6Jwyctm4SK3ihkxTtgzLeOp2WtQ47DP3lJgmQ1eGZqmY6
BhjLIz38TYRdxXIDKEFcntW8lvvene1dNLOvPx641joSwPJzWNXw71aR8jlvqChC89RZcpSdVW18
TPwuZ8cgjsdC2pvvfEQXmFgr135db8zmq8K4n4JpHEX17rUoRLMfhz8NbpkBoXCGlUf+WH3laclD
O+XNe+wzTpYwoeWr1/rl21lo0v37XvfbFmCe/GnINo/3ntxrXkIhsR3e/ikdNDgnXCZM8FE1fAV9
NOAAIRKF66rgbWIytCuttWKs6AlR1DT9Z71tUlT3CPzog8v+ldo5U5Cy99DnBLCSevDXmmZFcc4c
ymikHbUzYyhikQiks16MM/UGThG3LJTzcrbGURvgop0PbGj61Ty99DNe1SPozqfMiKCrfm+QhuBq
xs2NApTQTk2OD7f1IfYUkfUB8pWoV0Etw2W1iYuxZZGViKZVlsbATklWZE1QvAXrOi0arpWs2CIi
kSVyo2/80rQ52iBZw2yyMbqYtNkmXloUVrAGd1BO/G8rVTZij4XMAt9IBLN9AWbDE7p0nx+NYHt8
PoE0joKov0a1dLjAI5lqhxfXqY0L8Y2pLAyrNFPL/0WZ/INPBXIqFsuzID5oC/Nnsreb5c6T+kSN
OpBE++P7nbbc8XI+M8TXUhCioThG3CJArIRMkSLXFIlg506y7QJxJfOQpYR9vb3hImkb/AM3U/UB
rOFrh+hYDf4L+VmmSxa3A9RDiiz+jV/559rks3q6wZ4BWngeeVoJbHf+NM/TvOOth4I5QjjVdymZ
F5qK9E5uj2UJk3LzY0AVFdIhPd2Lm6gWXJr+q8jc9M+k0K2CKaeXVgEcHO2oozLUSXvL2LIdEw2R
R1r1TGAcEsJ/Nm5FuwyzA4WQnJKumC8X354GrHEP4bhX7jFr6IJGQghrSfB/C6dF5hQu004d31H7
XSXPcLIf58oJFE9oUOHDriHPZBcTAKzDO+/JhBMRAcTLI/4lX7ggs62dLNeFtGEurza92H3SzZ9U
5rse/NqHgM20B33c6EDlx7bPrP1S+5yj7JH09JAk6mcN8+3xBHWsYS0SVmZYzO6YqDukyCJyB087
wAoInOSFR+f/bapNY5H1q9rPiO3yZMvNfbAqAs8s/qFspDWsarxLJGKfEfMHISd6wUkfiXcIECN1
I3/jWnuh9jIUpulbPsoVa/R6UBnw9OGbdHebvsA46BQaZ1+1my4TCMobZtkzQrB1sb6le8j/SB8G
n4+eE/4fGb9g0i0EnrX5mEiM5lsuUQmfS4660VQ0cNe9NYzd4E6ZOahxzcrRbkmRz+2RLUy7sNS4
GbBiYAFLT+ZgKObDeU2NUnGCLecxGLu1LVr4HlWRUrpj1pfP6T6rjAPW4BHNJ/i31sWMz9nEZ2YK
9nmW0Px/rGvOVONvMQ7w2EsCqHdDRXEu3FFy5RTJW28rp44vF5L52ESe122kDqArSosBAjqzJ1Es
BtqI+LMq1m6/ICHG79Y+Py218NYlDjB35V9I5xHxPrVydcKRh0uI/stFLUKKthk6Vp/fmjYLLHHn
wN0WnA9j5Sno8J3KMf8IT9D8Vvggp3twoIZntwCNrC9HwUzRZvD+47kej9w2FpIljbQWYEtqy92P
T23XRYz9H2hi1Of7e2Ox+MaPRVVn5JGzyWGtaw5ZILIO0xD7//CECFHlN9AMZP9yNp3F/rdJ2j0s
B3zU48FnXPNhLTMJtyjeV+SXo7oPpDKJO9mvjmN1e6t2MQOANXmhESpfb0ysDmfH1b6f3+dAahAr
2iuykQMrLu7Yg3f4Xbv5sy2qhvWqwzXuwGp2iNfxdAfRtSDAZBRJoVO4qODkro/9QzhZ3w9Kp6lA
bBlK3RtMVxdasbcSuRzz7Oxy/b3TlcN2jB7XCzmJ3k8KRS5PVJL8SymVMULmQ7xdDc1hV0g72E5o
WgqdCWBQUM8mt3QyAkPu0Ou6ECrFFUW24US3KCSCC003vEA6kJrnnJkDK5DNbHg+77lerMWq5fWF
IVcnU84ahKDMAgePK1p4OqFzG3kUl7y0tFBfS94xIfBPzNp/0VhD7LVpkn7XrkB15Cm6tQl0Djj8
5bdhOMpwSha66Vhpy7aDs6tWu3hTRL5A4dRlMtZC75GWddG7PVos7CriH/N5dAzReCTtyvupt+pM
v+RKPqqTtS7Bzu6AalVbgko5TVVsuJEZ8ZHeICXUH3EIR/mdaCz503A3QKzm+8a/VcNxyd3jA+tY
NQvg517BSro7GLawYkESlx3gsd0bQlsM2Dw+w/TfQCXUCNKmIQGvxoJZxMULR4WFvzpjSI7l7I1i
jw1+bgCaPhsd7Hfnz0MBvtRm8ZfXvLr+W/SgJaqa0bcbZcz8/Y3BriKnNonn25p/RaIvRAnVuzqb
RVqfEiX5uThWVcFtfpDx4WI8ziBdnthm8kscTdvsaK3HBYI+omarOJcjLpw8gI7qWRF3whOazZol
D410v/9mT0s0BjhkGINkbsrUS+spupzg5cO2+PEvNz+WSoTjvs786Xy/pu8ggdy63kqDiNG3ZC1t
OsgOOuIEAVWqxf2i4o3ijSt/i1T8MMfPO85S0FmLUI1YKBAgSyK5x6fP8uR3DUPBE10QRjRQopsW
kIF2GolINaaQEswgiX0Bf6YAz0zhXhJ78XR57yvRZxBl+hq0wfyRSkm5i+n9UmZCZbVlNp/EZFH5
0FhBg6Xd0BPbpkEn5IFsbA7s2cFuUNzTLckFgaKNuJrOxCb8Q0vjTBCw0ap3rXiccthZ+oItnVKC
8X4bMMdBRE+FNgRRYPWx1n5Gk0bH+R2eUw1qgArOjfWxtMPfnNkspDD9sQKcmQUs9h/O+VMc8kpo
rZCMKeAfLxafxd3FuC2X1QLMxt0r5mwwiett31ZN6CrIcikyJAEWc+RpN97dfVbvrxyoZUPoWPZn
DCj1N39RwurbtdhwVZJ9jw0z+bcOCehGOgnoQm5sk3ONJOBOy0EYSm6mciqtcKFter2dM6YJ5us3
XkdpvoW9CGZqK6YHfLsNBh3/SyzoTrvCGFlGJ0+FsgFjQzLII8QoEGtF12aKO5o/oXSlsI1xT7B+
/Y40/edOZUGooHDU5Ph44mxSzAm/Bw/eECS8olRqhlarsGGOt+2YSfgICMzWoJqkPn40jLH9O9Dc
FhB3kDah460NK1Q4DqhHQogfhGmcKoWJTUoBg799hYuMr/IpdlW+bjbN4pt1caT4irKaIP0j03UL
v/DhfkM0QWZQNByH01V3MRirOqZhjqyKJZR1kZ0QHTylSI0qT/gKLni6gy7RunNGR7diHhXMVdPl
u/3dWOoJea9ee27XEYLJwcbNB0b0BOKD3v+f9TLdV7U7SBAAVOAI8r+RXR05YXtTvAqx2HoLZ9P/
ChjdIvWxnjyUguvdfYIcG3RD+dPGJ4SmS/VDlJzF2RP2v7efSqTCPgGHc59DRaaeG7xsBpRiaybB
0vcZ2rBcWe6NL6PrLUmWsnZLLPNI8qPftZILHrS7uzaK3NDJQVhR7S5kNC48MQEAgkOUjh1X56Nd
etk10rYfl75t3q+SXlzxFEqLEhsnrL7Kldf4g53pnCjOorqXvs1o7ZxuSv5VGDxQ0bpbgrRZK6ea
kZ1P14vsuMsItcT+cC+KQfThWojJTIqCTnU2zYteAN7/JL4UrP3xyQH3R3dwhSLEUh0c4TNaaL6c
njveb+uVOaWtyF/trvxOhKZkT7RVqslreYFAuk3OWuJH0xc8zhGy/1zF4RJ3KQHDflJ4Yd8sXQFU
B+a+qhnUPruvOxRNpbNG6cASEIUPjY17xZzj+EY9LLWdcuaoHXC8oLTf7wiRStsRAx6CvMUd0Np5
mu1MviXNnPg6kFMUApmycGzB0jISnzpDNB8A8/XLEHuleWP3cx+ilmxpMnGQtSDSGscPlVe+L7WW
II7Md55Qs2hIS4iMSnhc4G+UgM56SKGVN+PbSPBnW4bJDmIW9DW5qYgf4YctoqySBFgwArhORPM1
MU3tX5d0BNVOUp89W4Jgu34O8rraPKgEX5FX+GkAWuqIRxJroH1VGR56hn9XBLKgiO/T6dNCyWh3
vx6l2JY+WxhsHIH6befsOpB2D/Qerq5kKoobhUV7U4429fnm45xkKbnyMrVTSk6ELpWDrdZlv5/B
36joP3BL3Kc6MzHHg4G//ENvs5ikYi0Eo/L+OGghTq//fqjl993L1v8EpTjCohi5Lj+4ik9NJUEk
aEOFCN0KVR5DEyYiL4drr+aWwToDKpB9aCtM6I69aOX34/dwhcoh7ge6rPhjq4o6YDafeH5+vqgR
JRdeMg8ifNHguThUxvmOZGIOhaIquZMLGr35WV8P5dgeusxu4kuwxWsW0JpsakvHTazxlPO1NjxF
JEzY7G/ylLyI+h7aSzTap58+SKhdPkuNLUoL+s87n4BcAIINxXDti1wp6ACNZDbjTGDwWYRujDQw
5h19zG+VgsDAFydazVS7j77VU0y5LWqJFDtRsIytbvC+ZWf79FaJqk6zmcl3TqzAJGghFlafRAhT
Kx7dPF9BApTD9eff8AGmAojIhYkng+931BtRUNfGnY5qL7LuXx2G319/wG74UMccTldbBRxXJWXY
D4sdv0HNlBuzwdpLxGU21M30vJdjeW/6HtIk+NzovSFbw2x/NqF3yscG+3qL0vHdkm9E4CP42v/s
jhum/0KBGHKpg+JHZ4w0Xrg3Sf8XsR+bfs7toTxDVqEAJyyDTao4QIGDhNhNYRTHItE31yzPFn7q
c7ZaorJyWNEz0ONWq7n2cnY2QXd+S2HaRqEw4n6SYUCHj2EG4wrI+lnNEKEFn8tw43JyRIZBMWEP
eEeu9T8mutd6NSx+hvMW7sNT4G/9wRGX8TYncppqgjq/y6G7/J+0w6rhcxhWmLOzHnn7CUnu3zmT
f5JLZgzdKwRi67s4HXc51zBamBBMvbhti1kKZUgdyoK13AzJkQ2PImBd+kbahF4hFCOHgwFGVMIC
4dnV46lWlzuwZklOFoUnQ6hYSEuP6RHnxlnnUjFa3UnY6vltIUvFI+YX7ofhj+3ice29dA7njWct
dbSbEdLgjBeqx/sCIdJHm0zhWc1tX0/NN2QVvDQkJtzWULEIw0dTN+87YR9DkaWeTRh4Jd+0eN9e
0rBdiqWAYQUk3HVxdhlGzpOcs1MCTdd9glcwnwTnn8tSbd9niGtvEB/xD+bB3GHEsVbUlRo8l7aG
e330cw02d6PLHinaP4z4M8h3sG9taTsjxEeHho21s+uezY2BWJbm4E0KzLDioqbXmAu/E4jg3GDC
cKkf1mExhVIJQSouBRpJdUDxnEWv54qyeUbGqGXptNTP57/FehXQbKGYDa0JJezWn3jD25vj+y4q
q7rhlEzMpqchyGq5phAfFOJq8OsdtPJn82KNZrmiwACvIZRkMrAwDYmTtzEXzrg6O3b4RG/Jx0/q
santPw8LUWbHw9hpo9HkYUnE1dWB/8+9JmPFWG+rPuIw7Z1apvOeB0U+QwK8BmGXAWbAEgnfZM9Y
ZZVVDB9h6nIJWLZIPKwtLDyHwN3UIJklasNeAJ3f2qnLEyvPaz5UfnXhIQU17Mjg6wupo6slm/WE
bSlYV9uEVbz9n0DklPjRVpIh/fXq6k9ypFICKq6Fm6Hsyx4APW/wQ0LbY8U4VWi9mpMlZt6ymy2N
LlkRaV67fI7Q2+e237cuyoUn4wh6kjzzUgrbGo3oFf0plLJa37gbC27UqEb62aNSZ9a7iQaRILj3
sKCB4yp0SEtZ0dDWCckmBN2eVec1+CLTzwHn3CQRgqCro4O4QUxumbVPKhF5YbC5iqCbu2YO2m2S
p530OnlQ6jd2o59W8qkAuPitqO1v+hTXP+IKG8iifwNjKcuXq3xREooOBFz8447Moz5dPn5aDS7o
FaSrHAvgSCmsDk7tkmLyR67B4L0vEUo+32IrRgkqB4zASmIiuN3sYgjapc8au87bmBKDHnrYc1/+
pSHdJtmW3btV1CAXzrTP2cCDRc07MmebVmEXGkhgNQQ58P5lluw0gD4UPGiAs52y86UA3knTFhq1
g2oi4AvWlPLi0J1UPIPJoYWDhg81SaEvrRpa6xW1HNyQDKb6TJ8xzr/veE7q5Oi3ASWauRvuV3Pb
KaKhQHi/qrcoVQy0gj45pwY1iuf6reDL4zYJjhkYPG6KVS8ZFxsB25Hx6SWObg0lGYS47ZzEYBQ9
77rr4dnyoJiYVF1arINcZEeVl/BdfytEKEDvNiuqxWgrBYamL+U1rPZFEB4WoJyqUinUGgEjrkBX
96dZ2tULrDuVdR4p2MQd/KU1puoE5DEI4UIUmZY+TJoT7CSjNRXRsR7EcrU8kwHb/Lwso0fSSvFL
eYmnpOMserZBYPZdhUQ4LfCHxqBrij2XYdmzE7FiFaOQ5OiYPcaxkfAH9ZgMYSYAbSewtkPFzplw
GIWhwqeEmh5d5IK26ANBRwwE6mUYcGmEf9SP0tNp4Bzn94FszVjszJ/pRLofJ7z94QCca2S1Zh04
cAAXZLpKTLZ5qgShtqMM80CPCHyE21PoM+qR+bw1bS5YGAEPOIffpChL+fAuuQD0nYXLERe6KCm4
W/Fg3ljMwTbyGqRrlZtclNqxi/MQd2BlnibYQh1OvJmxkjGK5JxGHv1eqSrF44In4tOvl+rGuMLV
nARmnfB+dVQWyiODQsS5JSyRq7pUzni0V+xYWQ+52su6wdya4D03pOPBzdPNMwU7Wsb8a9wGsYHH
sgsp+ewzx15BlbaxxJITja4II+NEC1mGFA6QEBo9F8JlAGh4CK0xtkZH31V/gfBiw9pGi0mTpAX2
DsogUpWFR7w8nBKYV4brTlc17emRkxx/z34vIgEzSkzK3qIp7OKG9KUf8LCHGYN+SZbb4IxgiT9G
7OI0zohaeTrytVDklgzeMB933N2TyAbLjQY1xZe3bS/vlsXh+RAfO84dckpQRHuwToXX82oB3xNq
/9lG0EjWH/vP+bsXELept6PciWdADr2iyiyl1VtOieUUWo3gNxUwjnTeaEA1WTOqmDgkdiBihujA
xk/qzB1UYLK9oJfXeqdbZg1Gmg3Cf4Acx78/YhcrzZq3Uo7T1mPg4V1BPY8+npzLKDGOo54/3AUS
DfhH2fq35CPElJXsdA4ze2XeMMGl0TexUSGbsyMAQRaW+SEnAoP07WDbUR607GiJrLokIBu8dFf1
Gxi9jmAE44kjTlh9sd4FqEN4B7HZSoAT91hSi0O2EmpKhWZXiEwLfNZOYu4t5D1PCVQrwgDdGc1l
f/+To6bA1SjB4N9Ya6vRsJNhepXY1WYXK/vA2nxbcKGB42E15d0OlgW/3Oi7Uk955MhOhJIu2ROh
0KX0Ak4C0DQ10Nn6W6CSzRZOlXkYXN3hClVr61fHYPwjsis7leie0QTjLCzIKmkPWok5YAl1r2Kn
asAP2wzhOgLg6ecHfXcOt/ErWfxu6+4cg7NURthvXQvo+HHAZXg531ucCVe+KBPwztiqcZqgGL34
bQxgNQMHmvrUF4phGc/V3Yg/yqeuYtbxbP1ifS3DEZ3+9MO4eBfIzGsrlCsfiLtxocjnv4F8Xpz8
s0lanKD5+iexeJs7yahfwzoXEadzgm1kEa2ch3J4gqloVSRBpXkCuDJ5ZBciI1pbzZFyIEBCew71
vVugj5rhtT/AJ/Q7JAhznKKlQlO1bgHGAyVNSc3LECW8WVjuctXq7zzSaOp/mqIxEqNN6elGPykX
qHuySVQqAp3fIERSNoBVWAgt+uwuAiVwX45pyxQgzoWwzSJrJV797f14pwtHgqdnKRw6hta5iIWH
meNbQ7SRsECqzJEloqaEMMYnsm/Ou7ZTcIjlfn9XTjpn6A38VNQgAXnc3pW4Aed2uiKzaUz5uLDk
8p8lbhF9hcBoWr+0MQjUjXJPoERxU3btH8DlqNnS4THnPxMj9y5Y0ueufGvwL+P+UkDyQI/Ekmvd
2Lz6XWkoc7tH2Woc7Hje+5NZw/dLcHDz5h3nNpX4ItPuL1HWQXAeA0YTYBqi3/gsNZsJnq9733xp
13i+8De7Vu8WRQhv3ZkYGiXbBHTIklSVahv1x+ci5ZBiPmchBmTefOVSnIuaLTrYTKN3qJc3YxvN
5XhQ/7yqL2tcUry493hceslPHskhXkxnVIgMePi1TBSZ/KXcIvVFQ8KrBXxJAas/FdOhcOMOkgoi
qI5juLs2DQMdeHSwQ/3P3SWKvbRQMhqrVDSsG0vVNe/SsBEWS6f9DpomOrLK041NX3puEso4A92R
FvOT59q4wXODhDTvU09UrK+xHlVgs6HXhYOeb8ROkBNS39Nzz13vzc/1d6uiFamVQxm3EqNuEKIN
AvF+6Wrnrazqq45vgwnWbPPaiS8bE1wF8wQ6MZfiyBr8UjB+0ENn8O9Mr6DUr5tNiEvjwAHbYYUp
rDjVS50L5N4Hf/q81qHRXcGpzBDSu0gNSGiHPy1cN8z206SzRNXEBg4b41Lzdze5ZCiBhQ1htqFK
ZX+/sZseHnTuWN0vz8bfnqJF3rc4U60LuH2yBxzLdoHS6/xyxEybls5X93B0Q6QT7lwbhDCHi87f
yxlWIcxuV0iHFWjb/zyGssw0DGe4+hkz1a7OueQ3oEKeZS01ER/QuNNk7JKM4JEK+KZ1Yv1gKDMo
WVURea6c4H0CdDii5oueCbcMKamG033i3yRWI8cXCi8OL078GrmJhnwQ9cCESN+tFjysgbiaJrqk
1FI9s7ardQsvop8LEUL8kwVsGy5ELFiSwW68/V6VcWdFj6dCmDGPIpw1Qx/Vy9ZtGPD5iEC6uxKs
EvfUagZj6sxaQHaXBw5HT7syPfFCoNxBpRYcRjIvOz+olnpXZf9BzilQMoHYAjdb91KWwp8ENTlW
1CZMPuzvZIi9fYMU+CYV+iWraxQ5ducCzvALko9edgK+ZOF3hA/laK4g0x5Ppa7ur7rxu1seZPtt
gSRZR/rZSgrUxvHbPMxEMxI1LLKG7Pd0ypodJ297z5JvEm5EMlWW5kOwuojPij5vQE6XdfGEvOSX
v37iHm4qJu/cJZ1qFei+TW/Tq8n5kSeXXeU0PFVScANra1Apr2eADXDbFLL6PGHeLBar/8TCOHd9
SxqpJbJeSk3fbC4F3D6vsjABpbnIAi+RvgRs2V44lRs/llAVaZpbdz3z7scZYZQOG5Lr3iR5dF/E
182MYjQynDXO1SS5HnRa0BitjBoPQctwFfwLb92q8M41Af6TaQmZeJZdMFll0MSNctplxn2CORVU
8QPTYnncmKIpNdNS9mtc698WwUSsWNR+ooiI7LRKWoWrrcrtW7hF7PHqjb6UdB2pXiMv0/mvXkyU
7C5U9b4onWpRix1cWDiML7Pq4edGyyL+K7oDc3z+MDeDiv7NrBtbsv8GeXLGlnrwtsbexHzGRmuv
l+fuplFKoPrBF7tLk5kcIthupETc/Zx7IjG2M0zJUzjpo+U5zHcGTMXDg5xVFYA/lTLCkeyZseq3
rnO4LCXR0OE9bBBlKhpUbs/8PEvYm4OpnZQp9oyz+3KEGXQ9O9K3kPvz/AsS7K0WMC+qIojAYBgM
f/OoniRe3TWVris9R040GUJG/5J5704VLT+XiU+LW8UGXGV+TtJ57nCJ0cMlJTMTxld6O6oIGYDH
254Y41OuEUaAn4nUh7cjqwgGiZdZZQOD4zOdBjyQ014qUAzhztBbzKjRbEhIoyGFU3iYVbuowgxD
Dif3jYO+ZO5c8eX360bquuWwheyzQz1Li0Zmf9Cc3FzIhw9iT+GzpmLlD9doXdr4koeDj8f8OIQs
upe73QiL7gjRakqp3H0Bc3U0yLNY7V9tyrHqv0tojJqeXDgyKsLfl3S+d4Gfz33a92+p9Lr6EIoH
e8NSYhtklAAL1M6fJ6KTSdZ6bZOFYuD/hFaUj0KKJGSlC2pulDsY/+pKgHp+P3YoQvuklWForxhJ
1NOK3PEVJZgalMU5b/mqDvU3iL8cSPPNoA8CD6ejCxEpS6plyuSjoZYI68oo64TJattCUAqrN9JT
ltE5HZXWQ09arK7CZzBFfT3YXoLVrco90z/rFPJCcUNXVVxQfqBh960DM4d4PIOoLutJP3bsozBL
B98ouRgLp/QLJqlmHVAqXq19rX0FHdOryKB/8dL2OMK4ZgQ+uML4WcFL3iJYwIDxuZNoppMK0+qb
GouNIIqE9AAu61VtLm6Ofhzh3RySftxb04oUzPTBpqTSVHqPsu0sxvI+GLDNN71Lvx1KG/JbPTAG
uxwqi94pjVDIofY0TclIk4Zr2ihtxzTJkiRVP5GFkurqSZhz624PELmuwqlmMd/3/VahTjb9IhON
wLti0yTkPhYU/pHcmFEXjOqcXoALRJpSMPzOVrvSI7wXDi3AF5w+wLwfNBBeJQbCyvWAae6BhWXJ
Ue10nt9xmSr+wE4qXtxhlLn/5YzzTT9jbOR3t5IaRzuA5SJt05nloZfzPkpB4JKifwjXCvIe6tpZ
CWJOyrx440ZtYcqkRcXABVTmUwDxlZ9+izsWmBzib2FngevufqGXD05Awn/ptXUcCBBGryXMsJtl
uDzUDNK3IsYqjYKPus/++x/VYATrwIHgTSzJ2rGgcbKjxiNM4LcB6xoIw8QsxR5cRgr/oAseNr1F
qkOqNekpKJiR/aa4BMjvuKB3hwAvLhyq14088M5z1DYA4NlB4Czsw2QG4vUIyngbfR66xycDljOI
kPCzYusmMxaJPIGCu383sRIzf8fjU8AlVZOVV5ojkVQFK5tWFjn66x+wdaI8Ox6fvXR28L3irMav
hAEYAs+pCdJNSpcZ2xRoWX9unIxNc+7+cJBLpEntsrpqBU5HKZu7TU2NXrZxrhrG0fscPpRKLbcu
vhf9LC8SkhF/lUbxPkWTzUnpd0ufSKWbyxTmurupn9vjXLz6G7vjl3YLwKWOpWlb8rBZqf9ll2GI
/tLgxfRtPoTlNEpbA5WmLcnd7KVeRTh7oKBMWWnEEOk/5NMDvnTgBOfcKgMx5RzqlivUChLtQ5wz
Pu3gUo+GECDDoRj5kuvZZR8DldF94zKdXExFbb0M27gZope6i79IVR7x87RFRkIx6ZCd7jmTcbHo
QWyepJVPIl0gvUciG01CR9bkGCNGSs5YSDP3iYcugt1wRLZ4q75epOy+VZv9fNxgBrfLz4iSHNW4
wmpsi4qYbz8CxPbqSX+f0lssWRisYtAvOdTK8kAU2hkYibR4bwsIDrPPJmucPRKBoobKMVY5n/9P
IVKQuyKh/0YbpGiq8JI+m6+oZBJEN0l8Y8EYdQRExxMjFkeMw0PJgla/CFEsnAAZBZVg/pshhXT0
Mvvt8gga+rQwHUMVQrPCIBrZgpJJc3n4M7FqeDopiHNfjjMfCWQwCMcFNFzmZvQzCrfU5fHLqJLB
UVhJULHt1ebG++JpD9ch+Rc+GZy7Oo48GxusayHDDDtjdRo5wENmIH0YHvGa3C5aZqK7sDtdKg+j
3bbxOShk4DfR92Xtdv81+U8bBOStA6FdMUVWs5Xy8rH4P8mr3ArCKc3u1/hwd2bt6ATcoYVSWn8/
cZomD+kIqmU2uys4BERMdLuCKKub2elJQ0wHKvDhRs2VDTMNTZd6W5wl/h/asYZvvZgRN7p4Xjp/
RPAi+q76BKyf9bdd3HDz/rO3uiq4O3+bHcakiWOnoanYWmMlmSTrPGfkE28e2hdrAwpVq1rQyLkO
mLCHXaHgkKeSFZyb2S8PPiwRwdZNzGMeNi/ifF2XTHF2q30JCXvpr1W7BdR/skd7P2mWS7vEFpOc
lGHbjRo1jti2g1p3VWcOyiWqoVB8p/T6mD86gyxIM54NZkdCsk2V/GNbrpN1Syue+TnkMTMqYVJj
3h/cTJ4/GD3VGL+lUKYsRbftYvk03/mtSpTfOIzwADd37YWfaokVQMwxAMLgvp9fb798FrplUFmP
Ax3VZZuhCpperRg2hkX0mAN9T+QJMrQMkMpILhVkvppvHMqsC31hCT5ThRYnZ4OXOMe6GKxnVh9r
7mMJfi2ODBhR/B1FZn0seIoqnDfWAoY45RYIDA5XxoDkSlpcsF8r7RA5zj78mt83uRFAWUfG2Co9
ih+AvXlwY9vTczlKwL0UP3bDr4ht8CNud5CxBP+NR0Riv2mTiz+pT+cR49huWaEX1zwZH3vFq4d9
CnlDEQNULeNdBePoIBp9U+gmvNMgFvcrywJJEUftobfwLYrzlg1oeov/pBUIxT842QwkZSzr6dbY
dZzY3fAYgRe7WR1VwXvWWA8Z02cECjz4QDktwgOwXrW/0g8ZxrVHOpySZlle+h2FflOvqz4yaANs
Y60EilvwOazOWAyPqBUW279kxBImF6jLv9khUe+KqVkuxRsb/z2GdtM8jKYcf0CADECDzGvcpjPl
Z17H3hbKhnhO+gh+0LNttPP3rw6tCwiZUO4zce40H2cuynEz/xKGO6bg/F3HLI4t3p2sxFcUXxJU
MVF6wgHcqtFK2/4GO0frTyewlnP7k5xjwWLfXywQJeVQ7Bq03ZGVBQF1fg1Xm82zUTv2lKALt6XM
aVuM/o4PpTeXPBIuF0xjCfr8zAXpQAbZx8D5b6GW4w662ivYT70ODxe0oihwIhL3aPsc8OzqwNPP
6IIYaUnyhbTKHhCxHpQQtScnW47ZAELA0ic0zjFat+7HtUH3bkKjQw5okYz1bbWxfqPndF/g9v7I
MJ6FUO6qX2oOcDgzDilSX70ntWadaL9nkF4MwpB7bv1Jaw+0MU6z8FFhzP3jK7NCpUsZg8XZ0nrI
HKXxsPmb/DDA3sGlD84W6140NUveJaBJXYEYIxhMqpGAhc8b5Uq1r3p7BiVGkjR+X23GbmidcT0r
urUYAo9B0FVaIMjJ+8UTpgwygilfvRmXXW9jcVGeFnV8g9eSHXneGeQNLScaRZk9vYw6uRB7oeAW
yV/SlKgldfntnY82i3PBAeiMxcknPLccC0bD9n845h6JHiOndhVFO8kU1kx3ChnQjJ1aHXNK3KPU
CXPImKFZdrFyjZQSUS/4I83EehRXqx3MQrvhWSbczE97LbQo4tWOqXt4r0NTTMtmdgF9sTZsSsmI
aLojG4JOiGSQDqkqNeGttIlDMbk3b47jPDQgctkNmFrJNfJUpFmWqiRO+acWv1J7HHNARqvMDhBw
hpnduFnndEU9sf4nte9WGTEsIv5gb7umLkUUk2lJrQd0l8+nGMYC/gU4FQc+MB3xhOJI1USFuMo/
TJjMUJVZJkAQmtDtIoXaWcvuI/CuBaH0v41Ev2OQPEtHRWHaCHvPj/0m3ti5JX0SAmvW7s2mCGel
kpW3EioVWdK3R2v6mrsYZvciJaoUamaPjzYGDYvOQ9TUL3jPRXRI3zeuAn5NiCpfGms/wtikoIz9
SEcCY+H0piZ5d8Rg/R57dOpeFNgE30ZpMu5mzjZUMchs4ZB1C8frw5jZZ8OSvra4jhmmLcj0OC6F
41Wlc00NCglWhigrmRMjFZ84KkHwwRWHIuYXrPJJhMkyfjp4OMaga242sk51ld0BDqfXhSW+lQw/
VAf9aEpjkGq8RPeJEAvdl85AosHefCZtcEwov9Qgz8AMpTLObkgjEKhd8ZMlNyJNLJa+bknX752c
Rr5mAuKvybszdT/WCNcjSwv/ZQ6Z5cpeOkOl6TOFZq/yJr12K8BaQFWl6M1LQUX76T7Cm+hIKogq
Vudsd5KFl5KwaKDdoLgI3hVrViUX3cE1yQ1PkXEJx+dvELkAsYu+h1gqjE2s8+87oULeAnGgDGJZ
Boa4Q5ofZ2aWnP/XDRXoY/jyQu1NhM0oY7J+FkLZz5cZwFHU5OCzThh8E6kBu5TxtQ8E2agSoBnZ
+X4tlBh1l9BUM3KMXnL2PJOUR/v75cauuAayCUG96Zfcn3skPzQ78KHf9b2eaXiUoNDZfBfNSHgS
AIx/ITcaqs8/gT99U+jNCBhOCBnClX+5h0j5sTX/kaJk9Iz+vxE9pYC7CjWSNxpzGsBWUEN9Bqcj
PuT84feuQlguF2JK9KAaRKTnpY2VsSDMWJLsvx2u+VU617uiI9OX6os0NL26KMHi205XZe6GAl53
8FxNmgWkgY10enTv15Yc70lLDG0HED15yk5S2TpGI9i8tq5hycW42Zs3QO8RrqoRxoIk2I61E8IN
+9AQdjuFaaQKnbc3Qrh1NAv9wQtP8HH2sx6Eo2ijHRq33k4q9IqVr1CR6M5OM5jQ0t7R4zODgtqa
v6SPnXUNV2EDXdEW0tlNbx6XgrIqevQz4OtGC76Gcqy+PJJcgAqcwHShCtyxZrJO1J181Tv+QnbX
wGGDXw8667wB3RkUAQmMIk+03cb/zj5IAXXjbbzkIUULPYDOylLyFzXalKxxfNRuKIR6g0bJtpUA
mLk+IYeNOaQrKi2BRxoOVuhFPLGWM9fZriQO98ebgnaAiGjoFXmw4bXIG4dpFCO4JRMW0niP5gFD
l09Hjy6FMW+uWItM62gc3T9otgfsFWfGM+oX7bp1YOQfPsS6XgvXRxFMzTwUTZkkBqdVicqT0H6D
ioGGd7nBzCDNFG7SqOcOo5AqejFPAPN0fRCBEs8XvOMwBTaWelyqfc8KFauIroEHixJD9GJhRNU+
DQB858wk9f1EwMsHBwMUFGEYSLnEYUn0Poxv6ruygZVTwQV047H8N0X/zjH2vqmFcQ25fAqHrMjd
GCnIyYXzIV8nv9qL4kXP+srijC4u+MUODwByIMKulaqL1HXGl7Yl3f9ePLrcQjscLpQ7q7I58KgX
OTCbs063bnCnqveOqONL9kjixjdz9lM0psq7TIMj0wlQnfQWQKaKxYn30PSxtR55ketqg2B4WRkl
gTvouS/PqrH6Cy8zQw7ky6954DY3FGG/8i3JdnTMTL70gqFybGlsdW2lmHqNeOo3srXJrXLgQb4y
0FBFafCkWgpRWdeDuO9gxqcCRhdReDif1vim+cOjnTyEReJa11RovXP0SJEcQWlyhDjze+wgXn5T
53lywhScRf3M5TyU9GQSjbycfAVGBnPvUCS56ha+hyU2CLR9UTY2Zg+CU9ykk5eBhm3lsMd46dL2
0x7jtligM/gbve8SVyTVYitSzVB1Vbxqn9X+TcsuNJLicQMBr83sPtZLNy9ZO0LzKlb4iZdQkMMo
4bO+h3MvWdox9JoFgyd3qmzkmh4ViQgWeVmbS06X55uzVMhXZZDN9ZEuqv6D2uVpgCCvPp7Y7ZLv
Rkhmzwo1H34mjXWrEwdGWo+O3crb9XzLjt+wqmOIW5gqJpo5CweZpc9H66BhQTTxKtOINTEkVflx
jxGWK+GpIr+P0zSBDz1v1HKSUbGRTIrXbWro+TIXPApvDhM0lVuBETW5meFkg1xg6LHFSk2cOu+e
MGAb5jNwAYvXIk54fIS4XioOsWMOQ8/y8l2bL5/arponHM5Cmn2TfVOytiOC8GIDFmJBE9S8hcSi
eGcMawa4TfmtJL3ehTILz8Ao7zQqt9DMDt2U32LSHYVa+OFQjM9rmYhK9x3dGjeatYG8BF80xxpJ
rrYyPVHHLGN+6z1Ht95/Riz49ezQftmM2FZ9C7KMXYDxT8BkCn1aDR93gWzOkqtB7NoI/nzILuNg
7HYhufWCdRv6WW1nr5/NTUtkVv3I/9cQlgApZ3UVJFYPgL4+HEi9dpIJvc+n0P1XZ+/j04lOlWVM
EGCXAej/Jkw6/s2o/ePHsIiII8CPILzZY7Q0rDbgS0EfeKsobkNgLagxc7SWNq1XMSbpAFmdee4j
8PgjSE9JdMy++Y+5klNCbPy6fcYjJwbbC9eggI3l9H2LNFQQDVL4OydNIceDrEn0ccRH48t/vIDb
968EV8mNjiFRyqSPMTDS2LMKaGgkGBXcsHeqfLZI1VdeXj/CCX+wQcdRwACRbUvQU9IWjsSf5LPG
PxVdakHJpKpMtz7WwECz9fudufQkFDYbN8JSLDZTgcJsEHKv6xMpo07prTqlWj4/7Gtwi2p1M6N0
7Tq3KSBYlkQj4EUat3kDJtvckexPcDKd0MJa7soEMku3xHGOQ+Pq3H6kG3+1GPK9KZL2ONLuGTuN
ue648orYK0NNgcAEcUCs45Kr8Onz6CEm/M+UzBjv3TyK11FFwbHGVglkFZ67TkQHDiSaTNv1THkW
DitGNU5DcYwrwngBF2z0FO4UC0puK+2IVsBf6C2Z61hLM8xH53bfBePSA3Qxa1DmftHFetTvE3uG
vjycYSgAyNejPDRG6g5y0VDk4AiHGQoKntSsvnxL9YXASnuqSIw+U3guU2GLev0dy+M9p6n3MM4y
aG5TCgilX4bdkRcfXV3j3rLJ4rABER2TSzIJ+ay0Y5kwXTXqzH+8D6qY4S+CrAMDZCjpPiPoDcay
H0VFoOgcwY2FRbQav2t3CMOUMwNRytDz80SUOFvPBXOl24Yfn2xWoGKx0dvuPg9yCxoBu/sCi7KT
y4Up6TDXe54+begEe/ssDB18Fyfzq0LhJ21iuCY7soVcraiaraRwIyYKFhvx/t8W06FtaRjUZh8e
zrg3qgvJiHX2J16I5Ojhty89+DZ46OFDAMGVG2MiJGSmhn0sht14MeUp36hMKexiJF/+rGLIaEZo
X3gZBO61AOCLR6SJs9Y0fJ8fiO8tNtiVX0Im1yH8e4qc+Bj8dqdA8iIu/nZDjprwqdUiH2y7aDZB
JJZgvV8EGZqgTzMc7UKR8CaLKHMiL9LST1an0dWR918+0W3uvKE+b+TNyiOgV35MtTjSkLHZu+Id
lp2fMHqAm8KdF2qClIUPlGHvmz26uGq4AQ2f80a1xv4NG4wQKCPjrYMppEHE7ItiKESyOlaojfT1
bmu3FwC3a3ISunbIzLJ3INvN1FirpBpEc9cNobBnaaijRaPBSWtXurDNYQ/VDsfBt0ieKp3qLnWJ
Br7EHb2wetJ5w6PJ8j0qaL20TlA7YZ7Rlpqm6vLgsIw/YOf/HHPzYJUTxBwKQVLn6SIk5ZPHo4AI
78CaJXFhDT4K/8Bit7GCJ6c6mbVqIZ4x9YdTzxKnZ6Z+O8EqDTRgDoHfkxeteV3803rirS8w3wfy
matRylgXbIp00KVM7yFFpLLlaqDeNCxOE0dzbw5lfKOP0+Xz9s1gaDh9J7GTLG2J+S5458B9Dzo0
TKeJeSRkxP22ilUhbxTj4hK0sjxjT6hVdDjpHh8PjfBWMY+MEh8Q6WSnLPCZQcmXv4OESKNTOyMd
Cb2sOVLV40qA/11y1HaFxYKN/bONpShy5UENrR6cjxq+ppOTFMMpyzgS5gDbM30jbeUSFRgURU+4
PwoBHAUunxdO8Sx1/S2O8pW+mybc1AUjBan58LpEVOjTL88vbrtrp/3Vaj/AqgJHGf9jjzhse5+E
nLALoPdepfp40wW7tCOM8FzRwPnBog2V8xANXHQXuOcOHPSj+5H97uhQZwTSGtsa85blCL20Z/q6
FSl6pebCif1vaawLVgLA7LcOcveUczfkh3dFvO2l/cvw5nuKiy034ly9Qu1My6SrYoMz3a1wtimw
/BqrQM24PtnH1hIUxoodZrPa9x6Jhl8NAHhGJEDOmvb5zlQtNMX6hxsVa3cEbxd8qlCzzM+dH43j
aBBRImh0KT6/VBwLIBfaiVpLdgiIcxKn6KX38hUrocwQ6R+0Zzf0H+XUJI06cdXlyWv50PTZKRXt
XRUweK8amylkvcDeo1rxOfW0YJp2WE4I3j/j+Hvu5vWdbQu+Se7HS+dVOCbSgM8/dBazMll0C8DI
YyU11/NrtSUj1ZjHhsyxzTkVWTxbWcvGwa/C9qwk1GZv6TqH6FyoOurs/4zZOrZLqT2xdazB+d5/
nv+hdF7Tdn0UzI+Dxi+cAPavGP/co1/X7NhW4dr66NAa7cVZrY6KBx07eg1hjrJKb+nkkC/WJF/J
dd7aF9JrcyXFy92wB08cfm8cZmEFpAgGhH4ZtDU/7SGJSXQXoHXw2xOHOmoskdPcXWgDR9H/KyDk
s4gPg+6nwa1cB96FNx29BEeLd0NxkuQpUrPIfFlfzqz6bhfPn84RAzKFbgJQVKdJltEmNsO5IiXl
8AJ7uLqy9rZYygl0f+xesdD3NqC9p5WFoQ/jjLORy2IXY/wudoepymjZeA32DjaYesXKmznB4jxj
GSMsDFl9g+N+Q+yPUSAfF79MroHKxAXzJQf/eXolojE9d+VQ1UYmn3BZysN3avZ/X8qILsJytZ0y
6UaWsuRse8w/yOM9UQc/ub7blcsL+mevwkGzNXYbTmD/uqeThS++2dzDSw6r+sra8fcTgvKr0883
meo9mzY7q8kXTyglXsRSleR9rG+2W6mK71kFcQtP9v3tgiXHnUZ+ru8xXpA141HMbKMqDHv8ZSCe
XXDCps2eZT1mA2XAa3o80HR69d6Ka52Fg69CWmxui6nK4Ghx9caCLzE0ZNjXtnTeAXjAsDBaCrBw
qyYDDb3MekuZ8TebzPk5hH+tndzm2ovmLky6v+uffSlJFdWxW4wMxjfw5yw1hFfJkSrMBJhcEELh
rEc+JsBpTo+XjC20mvHDMzZvO7KZ8H4ijVc2g0mT+nX8XPvS/Fsrv5cFYMNEjSLag5bJ3tbLtQRO
qoAO48Ie5UHHJOcw0d4UAIwZEDMG98prZXu9YWN41cXptidbEF1A43hwekiR3URS6OCia7LKSY9L
E7KiXOfOIksFyaTAXyzVdoCypnVYmOWbkRMONF0e5zL4GSf0fVaaWAlDTDpmy2vRLiTVwso9G3zB
oqwksuE477I9XKLd6mmks29kJkWICwwxf/uolnFxRWkj2b4IsVB+PK+5dT9dANeKjLMID5NJ1jfI
LNdHACIUC+FLlNI9S7Q7S/ba1MhS4S9NhzjGLX47PWLlCJXh3a8jwvXAB9A9AYytOLWAX6AkXz8T
MFnFgVeW23vkYRd02eoL7e9SIHkrwe/kJ3hwjVgEOyfW5rInfL1S5hwyaoBVMYHSW+PMra6sMcF4
Yp9Zvw4iaA13C84XJANL6FDKeBBQaE8rJ12JE9NHjGogulA+DaK7cNt3xGNipolcK9nOjaQJuMIo
BSL07VqHSp1gUf+0i6GV2WeETw/wxcRMAfuhPZ8PUE78gjL5zUTtl78/8fJ7SIF7g3yTttiZb2Wh
DatsOInnxqAuUkp0qh1aNZdhgEXT8sGBQENk2wzwmLTPQ6nwiAddmBSUh02ZrL+dx2W64ynFWS5R
kpPGm3HaZNUDCvGR5QNNKMED9Rs5ML8BH8cfQEEk/MsKVdGdF+lQ5KFcyJ2Eoqg0Yvck0yawqqEb
1zCzjCNA/scZckVxIFQ2bVz6GguJx58vgxJ3Qmbm/YElbzjH/aLozxFVQNE8haD2fLigqrrYpulk
W489moBj/6RzlHeCsJSR9vYffVdHOUoZB52zheqanuW2V0eFzKtQFoCWElnDcYESO7rdYop6FCUV
24MrJPoPaCOLU9oYfT0DQnHLL5hTqojvN8lJWzgxCRI6yAqw6Fves3ay0oXajINjH7DYrw83W5/6
cAz734j5xaBdYVntf4bLLOLxf8B+//gxz5neoe5kF1NuX8wm9E+sbnI5EWWF7ZMJDlilUl5fsE8y
uM6iqoeO4p50ybcKGU+PBwXfGUNQd8GvpbTHBMw/SLiTw/Ks6BhGkXIyJcpq9YRzeu54gMvLzsNI
O4DrjdhBwKLr54t+yKLOpnpcWit6cH1AfE06vP6+4XF9Wu7Sq52HG19AgsNZyxYzfhD1qp0e3lW8
RdRqtx+Mm99cT9US7YfgAg4QatcSkVnEj09Al+rnO7Ni3L7EclyaTTCofUihWmua7UKsoZKl3HnS
aGkzmuKrEBOBve66N50goSRiR1/xQCM7vMoPwuBDJZFWj1a2f+TBwBE6Ch8KUZW+qGHXOVy2XsjR
Fw9f4pC5IoNzMHCCXql101UdPvhE9KyhlQVq4y01Xp7PAyYhvQ+9sBXM4nEVW1DQVTC2KxiXotBD
qza1NlgVIMpOz1KgIgMaRBqu6MhJaLwgvg0k2k4MbEuLHuHdYaRMCuUT6MAo+arxHBt45FDC5M9c
nUUzJGWjjpbqG6MH/fvrun9SlF5Wx3X9bxiotMgPsuobaV5b7+7Wgka/Vt77L3vuOeV7dyXoV0lY
ssjks2cbBDFZ5x/DqSYRvsq610itbASRX2vuTAmp2qAH4HKPNQJzFDUDCNU+Sbvikbz8d1LinreC
dp1YN/888xzJB23ZaUFMiTbKfocpVamI5t7xvcrjFghEqFleDkssOhQtv3sUzOs/6MBbgJ1Arg1u
7zHqe0d3lRdyYnm9FvCsTyTVay9DuH4cfdAiKhyVUBh8dGr3yJPDHsTzcgfypzgUAgfPFLfhhto3
taz6yhZ4LN3YE1aqhPAd8Sg3/bvZvuEvzG1ulbY7gAMv16dGYuz5K2XWlo7tsKUaM3uLS8kAcm1r
JjBBTSXAZg4OfOwxSHy51Sqv7P8aogEZRH+kB3VglZjnQxEqFl5WYnOg17fKrjbb43YSxIzxqx2T
HoYHnnRozKHUOE/i8D5HRimSRd2Cwac4D/iCzEw2bDL/+cHmRI9CgyPsz26Q3oJ0bVAbm6vznhJL
/OuwLshRMIHtyp4XsLdnnglM7dobIfhJvllyHL99HyCXdkpJeOs056efIXINCBcvX5LRe0HijI6e
bOFKVocefTFIr5VEdqvTSlHp4ZSH6H0QSsPfp6TKdSPS2/ORFPJQcgP9y5fam4oEgQ2SshKqYGgb
e+65Q4lNl+Ovf4J28PEd0z3iGD6ZUPSmwzSCybLvHpLnmC8KzghPC85Ik4ftCelZmU0DIYAjSWZ9
bE7IWNFRT/VYY8Lb8HnTkSVk+ma5C72xRnYYV4azVWhhcTsRtfonntE5CwLYu6L5xLRwoY+KmiTT
ifSCySkpr/+axdVDU4WR0u8HpSjdjd4q+ddKdlVzOtpC261jLuz3P0bos6mwqvM1Oh+lSpqPT8a1
vtZGUbQP3TD8oGzruXbGEVxOffXTv2IehnrbrDHc/j/m9DPdCaQRQOO2bRsuHb9D+QPMDsRMLjoM
MyPZeJQBw7Unpsl4gX7ZL3zBIELnSSE8Mt/QR6smMsBycdQ3YFCGBn1uP6vc9lg+gmRc5hFhw2am
0ANVMegndw3PExqKzfL+JeXi7gLlob7PMsrdS8RW5VhLLgZ8hn4+q8+1zznkpES/a3gRfq7ANJMV
z/KTOzS9Dh/ckukoPkVNRwsRCs0F7fzmur9ypik6jDoHEkW9RTYHCmFhl2QrhC9zV5DYSWIBjbQf
kqcCuN6QASRex3qmhWHgm0fgWr38GiNbVcONlgoXLZgmxWJ7qh0f9vfw345IFmz3w6YmsfrRL697
w2qPEKZep00Av9wH/yVleDVJZexl13ZZrO4lOKLGM69AnHGGW3Zha+0xfvdD24uLHldb2iFglsi1
6YEfqoxzwKdCbrmGKZSQzPVx+5pi/RpWz0Z3L8MUdylR24LD6zBdelcroiY84mZV/0US2rlY5sVX
M1wTmD28Lo5/sS90IKmGyXwtLhHemQUbnFQvaDAC2R/18jMrUFrm+zqZV7WgMbN1pJsEvfG9138b
yInwDlCMfbQwwBfN6ikmFmCbkHyIu470JfRrmEBMrENGHnCmuwdBwv2QauwN/AmmxzTAMvX+h6lm
r6AZIO5NOwlKkcHKjTfMmssqbHGH8vD8I166SVLK3CzOSqfjxSocRyX8OPn7HibmRAi+9aJU1ft3
2xHKrJ3TSi9+9bVhG7z+RzRJpQZvN+rhdI7er+h0ELEnudyZoNph916rwpHJb+3QsRk5rdVNgiLO
hy1a35xMGDdVaKbRsQzDiMvpBoiJ2L1Yk9OmhQJwEltvQMOBkUHZ6N021zkoneUkFKp8lwRYt07c
rVF7fGNdFYjrkhS+WT69GeZB4DnvacaKd7D+X+w0R2UDtWdGIpUlIMUyB33iwKoW52dDeJZ8iVDV
wSgdXgoT8EwXW7XP0a2ZZNJDdnJSAU1pg7UjZ3fYVjh6UjwlMzqBP94V2A53Bjl2raK4iPyAvqWe
7JwZPBYdTj4G1i/On8GHBkVYsJqbuMbLBoEToPeAOFaYvbUryqLsKOB6ckmZNkG0dg3hXKH2vQj8
TDpGYmm7Byl678qyLfE6RzqA6MozS21IxP98LTqTwq8guq1cCUPLNMtUTF7BrYBX9+/RXagem/hi
bug285ES1w1/h/vdmini0mfVv5pgoG9O1qAMkvRT191GkYwF2tD57gQbYK7GmkhB8dZiYO0C7lLn
c41R5RExry/kvui8o3LGSebgKtDF+wclEiUdLiJsDz1EZKRcZ5gIH3DQYTChJVjCNV2w3jr5kciG
tRCeKoxKhAD4st+o5q3BPzm2jFusVmjBiK4gbWrBXvDOvh9Ig1YwgCMhHxTbIK1QawFSahpFBz2N
sJVzWNAqeTFIH3Q6Mn0reZ4Ql43FuDtJpdWvnkeHjlH1MDW5C9xlyAuLM7lle5FxHmUJddMrUCo6
8dalM82i6jKj5VmxWT+j4e4aPmLn9V65FL8X7vyhzPYYF+iVIUGbLrO15DThSc3vNJUDAeVQbmNS
gDrBkqfyrBoBGmgIK/6VAoiEszal4IiOTEoMBo8rAOFzAfYp9tSmWlS7IS2CnqqJzTi/ocZ/UQYG
4cKe32/RStskGbVuqDMwVyA1L33b5VF26Cb5B5PLd7VdFfDPKtAk1j4dh4J/4MnH9y1eZ6U6Zhss
B2hnEl9xtQUxCgnE4BVuVWa6/yJ1cR/Sk3oZqoCkp4syQq+ZD8bVVpAt4JJZjiZLKdRQBcVKgGf6
edipP32a+gUy9vomTYJPcafjfrLNttnQhs/24AEpC/YutJWntaQLoE20CWrr1P7UC7/39ZkBJ3BT
3l+uk+uc1EhxdQERxhe8g1KE71TCCSRj/DrgD9OTrfKao+2lfTn7ACNESUJX1mO/2Z4RScRO/+UE
+eWYA4w6PrOThYLRyuh1oMsmuvGCP8u0SR/JuVPdJBjVi0m/mL6kHwrOZnwq8Z4qTgBVOOpQ5XoU
2GfgKO8+KYwjxclO3/Ttg6jID/NcC24m5kxOM8H64Wa7kCfnNYbDfowkI1tj2jgXUCL9NiHK9Bgz
88UMDpnuQj2lyS+zYBDguZnQ7dM9Sou/U8qa94WEikJ+2clPgo9rr8cfT/Ccj9fGn0S2Q17B6rjz
skzVoyqnhSs9h170J2UcYr+jSKZJIbApf967CqIKJWHSSeUhXv2MBVSLhj8BkHz2q3yxwHWK3ktW
rI9JBrwGMaN8rSf9lXPGHoLUTqhKAvvLYy8ntJEvE6m/HrY0ChkKjQ5bXj07qH8bsGeXMpwRkMmH
3B4YBsBiz/iAOLu8wnr760hrbIc13l6EO2MEueS3HtesaJkN7xcNISfZ1J4w9qWJYZuBvc+EfDd0
ZzXGaCC9KEeoalBJI9eOGrckM1Scbej+EV6mKwEzgSUfrmW9jYWkSVoXsHKnjAetLdBRLluqfUsZ
l7EexnXQ7t8sXnjzZS+brRy4Io4vT+RvtE/SmqEuNxNGB9kkjK/z8Vf0vxBQHTvwhROXOnBAYEKL
7oOEBuQ2Vqr5usrqpXU5yKg5HC8Oj8K0Pgx+7e2+B0uGS5FS18yztSiybhorJ4GBeKuf1G//d/9z
4XTjzYZ9ga8kFbkC1DWCoyH1HLYaJExj32hsMRtpsZkLpJ7lIlvgscZBER2QV434IMVOnm9wyqeJ
ecpVx9a2h+Da+IMAlegYW4ylIhc227A8ilneqMukSFcaFc87WFM33U2dZ4tNKIL8aOlg9FzMYk+d
BtDzHpOWc4De9p9U5XJGZ6f1VcFmFw8V0insC6clIN9UNjHaIsJyK0JMEJf9ny3kKWMbQmjsQLEt
RRvSY193FhLqrcpYLHtmRKA8ItfRPoSuvA3Aetr98Gie3wo/FeTT6wp0giR6vOTPvEyLm7TcFJAB
DIlzFdRE067+Hj8yjfE9xowO8GtIuIjb7U2K5s4z3akEJVy6GQRCtBU2moGbSgbePQPxQfIOkces
gDBJI3VJGlOFVkekEVb/oFeIsaSkpeokDAhKK3/O5l4ClEKjQ4+KVT7wCn/5mZS+OsaHBAZvuS35
ipDER0QUVr6Ui/aEgeeiW+/AINp47foDdrUWRUCMLAryGqkf+A9Szvr++FyzbbVXtnYR0VJWWVgq
EZp2DM4jODcQ14X6dVkDtcUz9bAh31mXC/GOEBYNRjRxjyXTMdY1BUnOVWrrlQecZq8H7/TT+3Xv
nsbzCevX7HuJm734iWRL8MeTp7/z5jC3ebLF3GFU+xJs4v0kuWHLqnEb0syjd67y2UgXe2bC5ugB
vnovwJw4QpUmHd9AC84Jjw4eYfAJ2dCmnl27QTIEq/PcCxR2YFCHHq5mG65S1WC4Hb/CdeZ7GW4S
EL6nGnVXVirTGSSB7of3v86f4YxCypKyc5KsiZEm6A14l3twDlwfr6Nh7sqt8HSUc8+dH1d2XGi8
Ogl+XDBnPW5K4gn/f5cu9u/w+g5eV6a9bwVO0VinwK7VH+7pkECiFlUQE1SOCekgkCI/bsKB9s74
sbrakcOzoTTtGb5p5QOX/34qiqJo/hpsX2p5ZNduGq8LaJuy8og9xYrHChwA/35rgLdQeQVp6duK
kq2C1XV3RLAtGEPExUm897NY11U8Y7VVmUDQ8MZvhpo1mDV04ZzMAgBwrvMDg/7NgkfeUSSdT1HU
6qnt1kpw7vwJthvytek3AR3uXxr8EHNfljSP05UkSkKNHXdzyL9c6u5k+XAe6hBRfQ5YsWKFr7FG
3YxKBLL92LmydCYSNCYYJUJjecp7CDuNtsx2kcxfQ0DzGCaAHU0vbh5872aNYGcoP7nJBVuZWmuW
EbeZ+VbSPaGHDc5HdBOXzskelGPFfA9DTDqFRrek9ikwMLKot6eIfUwHWKUyiO5oECQak7wr86TF
+DMlb6uVgQd+1hIy2BN97O7voXXw58Nul0NDUmYgwPiSXuTbWTlgS2C5Z8KQuL9/Y7bGAvmLb3bn
YT9Qjt/xYTQjB4Smqakpf16UhP9o5bobftbca+DVaCXMM+r2qtM9gSzniHQ3AFV7nX8AgNoSv2ND
EpRUwV+Vn9MHwEbZeB9qCgUrnv6INA6ztGBfINbrKaOA0MgLBGEWQs7elEDdX4tHjOUufjxB42z1
lA7LXM7RIQ643sVlKlx0I3SmdyzajzurvlZiyppJm4UnDGpF3al0rmBF7OiyB3Sfp8EKbyMeBUrc
e8MjARNHWC4Any8wzEa5WN+2un8Fmfm1Zhm4qZVXzhX7/CwF7ldfQ/COReT+Y1ssKsO8LpPIuFPV
kere7qCqLmA7/gnhE51KQYgkGypgACE7HVBE4iOZ3QGDPhJasHq78+mRLUjjcYn+9W72HGMb+A6j
1nLsC1bZVlyBvdFWWwQgZqoVVh7elua3Y4asRXPN1gHbrnE5UDeaY77kdo4hNGyQfsPHJtZaV2/f
xOd92zEaEmQIElmHZqIp4E/RDs+BXbRVdjndG21xhRb25aCcGIKLwQPkcD5o2US4NcSjb61QF+0t
t5oeC7C0O0ml9T0CoYK0JDapdZ8u3ZLeaN39T/WfCgVZXz99vMlVY6fk2jrTuWmkKjn+NGmpvk/H
OxeXjG5DRfdaMCsrJQ/AyTxBE40BtM+7Btmd1x+keH62NB1O1Q6zr2Hk3FcNi4hfH+vyH/usBurh
5NtTZSF77F23WZb6k7edi3QMT032ATzEP+MiVqr0JDGLJ+ESOpx+Xu28bsQrxYG9JmRAD/VI6mFw
c1VEyY1y+LzQO+y7n9x8w6zHzidKPECqMPpzeb5IHcOn2Xcam1Ftjxl/H6FIF1gBo3CHFxDZPRHO
Kt+6WKhyTIL5O77lKmHLBON0upTmQQ42Z+J2lMoiUvrZdn2hvPNj2TRJ0NNN5X0UZxIq6F4p//ky
dKjkePfgOqaYPl3FnQ6zukXplC+p1MwefWZXfOTHThG/FTASFN1kuWLig+FzayK1bSU1b0BujKto
OHXIKDc6DbabJMye3Sob8ZT9QzQT8v3VB4FQSBF7BbA3rrHOZHMKnVONBT7hH9qX+S0V4pC2OYpC
XYrTsWQefyabQK85biSsmTV249AOgVdH/VS1dX8RplTrfzGjo5noGYCgZIdp+12RGcdqxAlBRxwu
zv8bbA4kjhuhuvEMY4ms5JbUbCHF2XjvzM7fjAgKoHuZw8QPceR/fc1G7ee2zmymcwmzhRlJS7Nr
+W9fWrtpdq3fgTC3yftVaIpwoza8jNsv4J4AhygxL89jCBluWXtCcId5UBcncS/KUNGWllCWk2Tc
QB18rGJcslD+xzIVXKxORQ3A/WqoYt96VFTCfElsJpq9ovwdUDfEA0PMF6C1JiFYEXuAkIXTvmpC
HNTP8hI1HuqYC4zWzVXkmt8sbfA2l9neeJwmVrcoH+FDwAezhs/d9uRtdyIq/xhN6l74X/UBnyrJ
zgQITN6wxC4TyUk7pChG6waQWKE63GvB7sVZgkfiWE+NL0tXN+lg11RByYzZklUnjfM8WByH6XxT
a6tjSuFMGmOW26gQggZp5nC1GOPMsE479SdGeFymjjSParryjlysd6BmYoJ2uq1KsRQtTj2f2itK
ifRId7i17fBvOeODKZQnXnD/LY458KaDBG/ALeQcN3+natXdhKJt3dAxrRy+ReRI8PFvcVrPIjgk
up1q4YYTZA0XrPaWQYIt3UsowDUfNn8RVN0IC4KI4wFGo2+qyygihuLg025BC0eMY6vzDhESfG5/
U3Du+bsNPbFLE9+pZtTR1JNZHAyz2rvh+DxbNSP+9pUidnOkMRoXPNeA73WtZEx+MwLEBACljwGW
ggu6hycBPsw1jYg+VCNAQfFewTMdA6a0OJo0gDMoO08lyw4b+vB6GMI3CWNqd6b1WOKSUKuXKwal
YbyUJKiFXvaid741A5Dt3vISLqZjBB5yioyKLuJpgZiXNvcm+jm4YR+rtMCJYuH1dwhkd5AP7y1o
xwHwdGXLsrAoXP1uQUj2OdHynRQquuKq2Me4uFlDGF4a6n0M7xcIQ2R5GA+uGoP7UfDyleHiTUou
wYLIgHrJJiNct5qstsxzTo2I3l9VRvAUujw4dV62g1ZgYHyeTXZY60A3WTtZWbM7HAUlrFPBXvTY
gkHXQ5o47qvM7BkmGywKF0FDGJfryb0tQMVbBbhgjTehaeeh7brZatfznhVjwCniuZ7EYZb7P72M
szKdcLP0eokwI3qvi22UlOSIbFlHzCwtZWKIaPXPJJCaCEqxH4OmpDPgkRZ8lcwXydtActjnBR9m
/rKaZPvoJxJqH03Z/Sb9M1woXudfpM7fmgT50t9Wty4Yn6vxX5l/ni1sWHpbfYDDa7DJvaLDJagh
cQRALEy7IY+4bhiPRhFxxrsbCUfg8QvF/sQsQ0qET2YC2+m8JxHzjhxGfxHDhp1AyCkYSQDPrp6x
GL/pC+5qOA1t18mycQtZrGH0x7hPxwau6BUeQ/L+Iz/iT9lJ3ic3uY/rw7q8qAhP+Bg6gHPwyz+A
2lIdNOPUWouXBZpXujvDQulGUeDL0hT1jLXB/ngMhN096+uTQ/ThNZFmjsZId/uTetO1gobEKytI
4BWcka+8d2DUsUVj5IILlAfR8anzVlEdt+VcL9FZA3a2+PD4vVFUj7gnZBAirUVKs0/dmm3TtT6u
5KkTDxjHriWBFuFH3ZqaRPwdYVZ22YSDCKSjY4sf+JmGGmuN9yZCfqUVgNHp3f+ShDi4cFvEhDH9
n9YuN8/oE8Aq3LOiIpzzeP+J1WSqy4YjEGPcP1/COQrJPXTAbVTvpOzeXzJL6e1DwQamm24V8CiH
jIqRFPHiO4wVIylb4rr49N2Jw0XQkk/ydXVvp2P/YK1L8iTbej38+YyOfO5zyF3LLiOfOc99/5Y6
U8H0WdSTTxYNfzd1u/ngC/iNoc4az2QQTD88SbtiGKYvbjCwHEFtsgjtCRAmEsMil9froRDGYMdc
6n6qY6xpoVUOmRaY3Py3u0ulDhSpnZfYKmS4YPixDi4Vm5lnVuaQw8uffbpprRrZ7PLvEHWfR8Hf
KFHT9x49hvZxjQF4lWWf+d54yDh0egf+vDsQhw60Keg8s+oP926iZDrysRx+MFEEc4K63uIOlKl9
+VCDmexwvAlTKdXnU7EtnBlmQmNXcUFdKjaa0Rus/ecngfW8+amLm/xCiuryYkTidC5nMDJ7uxBh
jHQYlGJq7e3ea7ECBeIlJaWIaIW2Cn0Lh/xoLLCPfFqsPa8SIYu6AdpXwam+ck+a3urUYd/JAiuk
HLSoW7S3chJilJp6V5wjaiFPiyGiLlTxGX2HAwwtEJ5pbY9nB2ec5FyXriW+nbwTJMyla8ICQcef
fNAPyNtJWgL5H/GJGA2XbIbv28mvLeTZAWGNhHzZuqsROrRfG7U+GguhXykmFIGNUUOTOzzdDyDu
JkpFGOm0DgoWlruggNRAqcI0tt1wXPSxwoPxfmRKHKwW0lUoUA3Dd/GZlsbNu/Ek4cXMg9mNvWGS
u/jSimTYm5iV0KQh38BR303jTootA4KVtP4SS54JZPa0NHBlH/gNPSASWRzqO5h0ootZNtJ8z1dk
fp2SA/F6SvRSZZBilXaCdftdYbh30TGJLn+wW3F7uK61bdRbIbNeKQ0k5rswMAO+iaeRoioQsgx3
LETkT/Pd4gh6M2LDDM8vGoCnLo9rYPsJDhXKqQOPJuf/PK9+XfUlxtJJtURkk6CIdHTujSFRBT6x
+3Iisn/a0/FS6WhoIF06mglnF9NT2OlFfH+6MZTfP1Ic3RGeTgjJGG41uygjZwadQzGXj4k4HoFs
jtAvxIPbGe5BFoqkjD6Er5K8Xaas0agBdIkRt9QmxINapBsPOfvRZaCXRWm6PmXIwbiv+GGaCXbc
HqeVv5X57bw4miJqECV3fzsY0rPYyfI7LoXmcX9IgVgTWMWGOQaNmIN9IJxT9rV7QhIWLy6b5dZQ
CI5K4v2diqmUtP8/MlIbaSlMAGdt/AZVAiI0aMyhUOy7svmrPQz580z6MAZRVVPW+p98ucrVhAIw
iPhChngDtLCNSsvr8hE9WVh41gEHILb/GiS7ehz0DKHmlfIcuXP5YprXV61GphTTj7V6ykwjAhYV
MzpPMXs6CNBmKvoYIR54NYlcVC2FpVipEJx+ZJZXKDOlR7LRGY79r3vm3/5oS3I2ckBURI2s5rJT
QcEAPcEcUPP9g8gcyP+F7r0PkRzteWxAhr8v+zof4U0yDIy34UhAMutPx+fF0XRcea9CGkDddUyk
xC3Cwiy0ZE2HHywTKULJqwwSIvV2V7UO0qVsLLfPKRVZ4cSi8aJlUec5MzVKHID6WXAMGn4D55WY
9gVSRmQMNxd/BJ77mw9pOoDhPuOrup+kppJtZbaElbzGvxLOkj2hTynUyfMTZY2UMj2o7S4i+iGf
QisRQ0XCPNxhI+MM3MzrwFILHLA5Ol/eyhefmuuiyNP3ek//H8bDKfLu5nAr1urICFfShl1nEgL3
ChoN5+BGfAcEJLGvphujM2GcH8s7Owe6DUpk3b4gTBLnAQvm8bP6PbWYFztfzBO3pPPrtgXpFzbI
UjiVtMhRByo1kzahuxUR6ZXUttNqnhfwAnJQavJZlXIjsYthKuvvwD7iZr1zc7ZnH6TNxIewK8pQ
A29HsbdAYDh/+rOz5RE8RWwo5Z4ziOdV2tBuXsFhxdVbwyKXuh7XjeAg5NBDyzbIYEYUZPmEM6EC
18MBlCkZwzSbiHifNz2oyfCrjWKIezsZhZzB1qovL042X+oHs+s036dmFGX5vf1wLlbhVvGZGvNJ
w3HWs9JPT30gzKWJRQ6xaB0PJ4yKmS8vwU2a1GBCOko6XrRKzl91fgcrlbVlYdzczhZbohUhnfr+
AOQZatmkQ+ayYaLnMpXSlaxjSY2XQwBbcCvnopqpQeNR8l2AXeDLS1IWAGxDBNNdYRHW0Np5kMF9
3JQ7/mq/ZJEFqurSwlPLzj9BgXrGa+5UCL+mTPA6Pnu03LlCA2BBUxIPMuVV4Az8h+sKg2zQefCl
z7yJmhvaQI6D5td+359zMhmQ1uUeGUzWortQwYqpH1SGhbhSALNTBXxRQGN+3PJ+NprGOtQjLfO1
Gp53oqLIW5YLHouxmuM0XutJR36vd/RQq49AeYMh49wX00DOaLUljdpbEEAja+Hfk828wvBKNC5j
Bia0Vi9ecztSb+aDZcwJ96CG2+DNR0aSjKz1CiLaGtxYGuZyYTBZP6XqIxIe0d2gtNFmDs1yJ8PJ
ZEu/NDyPp/zsRiqCvXbOQ+zg0j4DtRCLhDtbTS33ZH04qLHb1m9Zn2S3ltg8hG9aevf1sFV8vdZ0
ICB64m0y6xQrbO2cUtaUFircINJBT97dSWdcMguLAc37nHGs+QEWVcpNwYAce7J6J1vlwt3/UpAO
vcbvSfVDdaGHnQKvObqC8MPO551YSF9gi2OSP+AQPCXgm46y177jvS7f0K36sleJfGHQmWcbitSY
EQT+PYJ3TELe0Zu5AFnQiSfpStrwndDQRyBBr65Vs7GB4mjZvcgpKaVeL0GIxeuJH8Fb0Q7CB4Zk
0o2VxTK9j/zHd8PniFZHmLlXoCa2sV5HKNyqYV5D/OweCD5UoZ6nMcsrgZvr5zj/Op7fey1t57hf
L8TJLrU+i6yic0JYkVRY/RNtEjL6n+WBOQxBBfKfHqyyFwRv/bJcVOcQ5NsdeYEo8yozkgx/+Q6t
FLig5qe6HvyzkQwspCHaMLbh26anC9NCLtcHp6utXzyEjmnAqr0WtqDIeGl+Tsan+/yThKdwDwEE
9PdebC/A3r5zGrFC+AhVndL4orqaAIUZ2JgN8yjjOQ/Ga08Nfrr3c7ZuGTrcT6FM/IUaz6WAJRVi
MY0WmP7Xy/4d3VXVoYZZMLuFn6pGl9LAQLhsYcxnLHYoYr7GqMe6tlyn9p0RBBcHv4yDIguQOtex
g8UmfLLOeq2ARr6pIwGXEbDs8VigdTYlcuQRf+ApvQI3jt0BB/Lsdv4+yBjzVFoehuXfqPrXYPO9
poUEaa/DfbDWVi06nzHh3vQJcoZeKHrAGUaDoQ2NWtf/bsmZhid0mMvLTCjxy+8h/aI3/YSb/fen
n4EkiIVN1ggMfNvrNK/Dc3VB8DG+VDViJqAtCjY8oQlWJ+HzC93sFuKe6FuSHJ7XMKbxJ6C1RvrF
3UdRAxvuQNNuPMW1klem8X+0OfhfcOgKWz2XPqbEz0PSh0DTRPHYVOudtNY3PHtMhDBV5HEP6JWH
d9bXp0xWiFOfBpB6F9fWo7EmyqU+QxXCfMg/I+DlEEEl8T8KMzY31sT5fW5ZgJZvAIZwnpbE2rDJ
VVoWB/NsM242cWtNCY0W/NzHzPDwU9t06CQptj33nZPM0AyPXc1sgTlw2CGT5T3dhiWz6LUqHwDV
w+55JKCTq2YF8E7htWqK9OGWWadWVJm+jwg17xjuATbKohpkcQa2uUyOJz/kBnUarNCek1XhZp3J
1bSW/eHD4v8Mt0uO/0vEkEDfsMENGl1XUTiohBkFaKL+6VZRvPcuMZUEmhk+jUkl5sumXX8e787i
jQvHSOKdKsopADCGBTCryi46EC9pJmJMS5KfnNH7XDhrSejxgdzXaNf2bxtSRkYRPyOKwHnM9UM6
SAw1IoecFV7M012fBdv4ShvIoYmAo0C2bPNnmPZhw84Gtrm+t/pOni8jLn0Wzf4SGs7DBLe1BpXQ
AiiceCOVp7L9/rjLEuxNXwAoINioOA7P/syrfdLkNQlMJWSA5uOvkyMsbkLw9EIPxG9LMD98Jrd8
vk8uDt0/INueDth1n50ZFuEsf7LBLN/D16vBcjj07HorL6LAghFCWvEtDKsHEc9f8UrBufTpzngZ
gDT7YP/JzfCrfyOybuAFBwuZSWuclyMNLs79QH7GS2Zpks8/t9FMtw6bo1vbiHq1jR9f0Bwz93Rk
1qVp+5DalbAT7sttn7qutbcRXfYV/hkwYlZDGfPkND9tZvQiHxqMVe4/Y2WSY6/YvsYStyIgA8DT
RiDrzD5QjMdfzfWgAVj4WD7GDgKJI4yAYhO6ASjpozZVBmzxvDwS3/KiXFE5hR3XGqTSpf729oiF
poc2TRHKLgRZ0jO00ZivWJ7i7nNAw4/dYyqu5FXFPt+1hv5bb0Snsb08kPrA1+qm/FQr6S1OwIPP
TCHo24DwmWcFVNmkNUJGB05IK2Z7IB3lszBip67nUXeH8ADtyUNTBy7s5c3/NTgTVAqAiU1yR4lq
Exvc/a+Le0rzBpRu7lO3c43Tw6+1VfXDhn9IzQ1TWuoD9lLDTXeUHbJGWPCPWp5ygndwJigWZHwp
+shDvcvAKTKrDMsRUDrE22sfJQQANcA/m8GyTQFN5ZjuVfNHbg428nqftvpJR/slmuztH9UoFoNF
/YIf0NuNkllBG5aUFrd3+/iNWsVvBTvPsYNcQ70yg5Y92kQYxmZfyJ4tpGzi+hykOMu7TDD7zg3/
ifVkjTE3KY7PYX1cXL2ZdHlyYSFpiWbOI7xcCeSEI2Zo6okjbSTdgIbkzklMBBQw9JPOV1IettpW
eze514/MsIXXXk3h48dy7k+WxjYrLa2ozZxjCQV7x4e9c5prlY3R1xq9ij5y2lf8R5KRCbKwOc6U
s5+8yxpzg47eMAqFC5iqDM7rL6I5yV/MsJFsh1uKJS9rw5GRHuBTrVWBzrTO2u236KvFaiqlTFtG
2IrNWsQCA4SkH0lICqTpM9AraAmsfb3CH/bzT/4g6GvkLlRLtVYqirHDfByjVm/r5M44huhVhYqe
/64NrAV/Ac4s+hY0ewoMnVWz/sUd51GCLxWG6RAvvUzVGwRwR//vdODTcVe68sr3rhfpZfxPD4p6
ix4OAUlN56g+MrTK7wRt+AOu3Gj4asB/wjJLM6Vwz5BhfDt/cYOKzXU6aSneFV6t7egNaIilL6p3
JSHHehnDZ8Cpuctm2HkyyWp+WyFQraV4c6fIuiL5QSvTFka3Tpd0c1kx3oZ2rCn99Us2nh34yUOG
/1iINmnV0X+VISQDvzFuvua4ObtdepIgcevex6SKq/RoUYROR7+xFs3rNm8d74OjZbg45adDRmdg
4Qt4X23qjC6iFNu1uuTmXx4AgrL7OomAnLQr7XWvDJjEmdjeNwvavEL0XMQdCk3AllMzy+C0TauS
2sjfravgpBUTPht2rizEo1isXQjcJ9JQ0/MfTxKMU961LGrTNGynpP8yrQHvpZEjtjfTiTomW60Y
O6/XE9l9Ln8seQ2uCUH3Q4IKnFGh269XLjMVfSVQ6sVGE/exbq508O7t4MFfQGFqoMC7/9Ep5NKv
FhzJgE+G86IJssVtQD4TtNMcD0zvU2gPLe0q7CM036k8TtWnvvpW3enyd+RYcf0px9e/R6MZjRds
nZ5ud2pvSu1ZIiUvr8AcNA5+R/wveVb/wtGnAs0F6AR+RMvIvAqiCUCXrrp3WVPmVItJH0Dgc3EZ
VmG7ThziymAqCZ6E0NjH+Bqdb7FbApBezIAY9zaZ/JyN6gyJ5ze4SqLDrJr50cs49thfMIAQghZx
iuTo+OU6WaIG4cJzYdF1mkMNXlDD9D6a+cxWiP4VA1UTw+eZ7YjhuYmNqglWNgWc/70d3rsXP7Xu
R/Xk1Gk61VDYR7OMmG0mD5G5gFcX/kSEQGcDgmZrQGLtTXZ1d5AV/Xkpn583KzAVog5uThcA6p1s
ARGsAOt+2iiBTnqAxh472AwtUBONOiWPE0F49pnM2sEeaIJdB1Z4C/EKXoujf4jl7YgPSq9G1JJI
SC5nK5Yyk+mS+BNffQwNsJkRJUfTiUo9CWJFzV6x1VDnnKkfvjYcRuNM+0eR8THaXVJvChLnKS+G
Pj1d7fiLc+cCI+udrVcD9zcHUAZS4mRJpQCLA2d0EmGJOGzQOCQuMPifvTUM/fEULiJfaY9UF6hE
mr7BSEeTjYqCRKG5p3hgjZHBTjM60NNopqij+Se9SdXK4b1QIC/fTyCSzlZ4KnZH4AbCboQXZOfl
WyJ/rqXJ1XeRLj+8RUFag+Py1wuK9UKwmxesniSX6TDGJw0L90FIa+zPB58gu3JWcT04lJBiw0OB
2XkXSljgtcSGD8fcaZhM+nRU8oHQ+lwsJ/RXglo/UxHSPSasUYhQ2dqu2GUTybqki33F53HdnIIe
FanMO0zL/3xZ2MawjDEF5+0N0c2puKL/zlDgpnTJWSVH5Sc1C7/Sp3Uhs6+9kSyXUGpXwPXEcNYw
r7IrtKHf3iqokuLLonijEu1A7DLZNf7pPm/c9XDZlWqcswM1LYZF0AzLZPiLLii+muE02DX/k0F7
VQGtWfndNw5ZXEKUGoT0aXrNXNPk+AjmDCh3cSnevxz7hmHyxAyY82dvru1o+EUCCQPQalzXR0Yb
JGE7i31aNXvawOYD17h5SvBPKMc1hbIM6srdYl3VR60pIHJHR8zD0fVsdisp56+mqfUBecuhS1jG
kn2Ib3bYWXI/Pt4wvrSP2E9/WiaQJB2YwnzqrtC6rxybDgJFzV6pFjLFZayqB7WovffsaoHPbc6S
XO1R7OJ+5z4ySj/7+0/tUbMY9ih8rbWmRaxT5jenV6OMK86a5ti1jEN2iyRMd7Itw8iUg6Iz4CUI
N9lOak3H/cYlEQAB3IqGi4YJROfwbRrNHH4s7pTYMkoeJnkalN8x1TXIpbg7JskO/B6F15lnoYl+
V2/d9mcyO8xewsmqszi4L8rMcMdFCsAz1OJ2nSAEbpo4F0tC2XCRAa8VzURWqCMfY8cgYdAIp1bS
RnTNYvmFpMxtGtnsHE6jerWCkvUsG2l35QhoCLYFJOKvHaxIfPf7aGl5/NxPn1cNLxYWJAKlOSAt
j5gwWmM4qraMNtbZdVrfwcGR9SZfJM+sJX5o3cMIVbycfZYf/gQiCwIUfVLJT5d35Kf2OaFM5lss
Q9FLQq5Hur6nF8JB74eJpoWS0YHtQqDplWg6mTfYWf1FJHUL5Iu5zsPv5WrDrMYeX6VGlD3P6ATg
9v5qFE4enG4CO3pn4qUxThx4B4+dqg/Q/6yNKJn4XM4jcJnAoFTavZIPReHoFs0lVsSTzA9YaZRG
Ylt4q0o0giQXmL8UkPXq0EEcO5+7AhKa10Fcw46PgkKYZbFfMTTENCK3cYvxSxXoikLdOg2hLOhN
K7jM+givzmzkyydCG3SNoBeNLr3tIq5lI5hUozxH0OOnqK/+Fox5Fw+zrMfz/EmkZbFc709+5D3E
Ke0GrvXIHrt6N3spCC++mvzIqlDGN9c3Hwar3LqjUJCbVUAi3synmS6mXrXWnOaAsERtOGkciRM2
MQrid3FcEuIpuuiHfzcCViE5gCbUGS8eYYBtHuc92dnjoIr8XPvXB2bWF5nop4X+X+SXMK1aWoeM
4zQ4evNMrt0nFJfNZpvhPn/0Fj5wmZsahx7HMmkuC1Y4HYizoQyCGouyLu2EL3zd25t8y+4GmPoj
ptCHgM2bcH7JXcTXMMoPVRWxCcjxKCYi6RyGdrIwxid+T1jlSOi4RstAx906oGnLpKfAEmiIKsys
oN9Bl/bUPjWNQEkX9OtOwuCTiKWl2IUW4ZKxXSrgGAVW0naHXa7Sv6neKaWtXdenl6L0LMAlkQ9m
66N6jz8wcuTOqDD5hKiqXG/YAe3HraKbZ9syyTkwsbZb/XA7YaRpLfvB0zW3YUuNrdaD2yKItuvY
0wweFed57cJuU264G+UBl4XViN7e6N3iIfy2V4vO3MXfEwpvzPv5ICX+mf1+NfFHWVg8iMvjmTYa
60W0qBAM2+K3+pxXbQtKUVpV2dACPU0uagwmRmma+/3xylSTJ8X4icA/SgzZOV4NWs78rLVt9joM
/eRmgwnurgjFhRYDqCVeqOMMAXqaRhazQL4o+sRhL7esXzzv7GROdRAGznCOjMVWh4ssW08NdC/i
aVtHL1FZKBQnyT28w/raw/j1U6ASXz86oHmA/R0L8VGk28KfAYBgrpafpPS7B4LfolimlBn6zj1D
E4TOBSgzsGhUwCK0lydFmz/TI9EqeRFbcIwnpu/YmDtARtVOnEmCxLnyoR1a3zpEyJ+/mhjgRqBH
NRxCdV9ZmBdv7FPNXaW1ypthuwZ9p1wD20RSM1xuvNn/9gdiZR7JeZ+LZQ5JJUKqKmt+g/HNSF6I
AtovK5Uz/qsRckIbkIOetR8zEtS4ymOYimfY49k9TKXX/ckgEHf8DdMJB/WxuRQN45j/zjpsp76Y
nUSSqmN1fdUa37WM/WNLUdPY6Wm5+ebhN35T1gIAOyH0OFf1j+tZ7Fdotyd9rs1CHTwp5rYQh3jl
Uzfx6fMZLjB+IlHiqODXc833DsiBkE8J2/s3mXPdqHe+OdQYdQkx5fnvflf6fq8Oj8SD67RuqN8T
oi9GMbxlETZo/yq6tdSk6ncJcvZhBpTGdExYCe4XKv0bIDzWMQGoE/naJ6qvE/Cbgkf/kjkYtagP
DPyMVXpir6pOJXWnDrC4cMjj0lywh9d8znG6QPITHoIxjv0elTgD20+AcD9VzseoE9SaFD8dRtoA
uZOBujihfcn4xVSxuDv7usdGcJimL4OmgfEGYAmr7HdmIrEEVHKVFkj3ObaX48WJvdikbf5hou9O
vXIhNXvx5hX+dCz7eSrsYarOC0RUf6anqABemF2EKL5ZJDQgllqMU1mdBhb79HEr6J1DLXeExVPf
xPghIb3WQzptscXlLmjJeNZ5dr7e2RMU53r++kx9D7mUNPcA6iRsQgL+XGJMEhKE8lIOCjZxBsLw
BWG/+jL8HL4G5ErhVHmMOS88PCpQsRPqrVDQIsMxcJqonjMtcBC7/RcnE91ap8Fkx5S6VVuYjacp
GOcKpX3uDTVv75NhheqQnwAWV4cHOd1bQ+phv7innNKij94vneb6+P80rXj0m6u+J0xUdATRzP1t
HcrST7ORYXm9dT9WbfpA86qBWLchcQ5YudggJtuJSnk6ihXg8mvLRGjrdX2gqIIxARDWFDdeKvJE
i1BAS5vZ3GTc2R7McIz46r+LgHO1alaVCud1s5XGahzC9lVOSwc0HVVBd7FwpaXonONQJ6IJY3eg
0YBtxg9hyk9k5jE26gs7BywfqZ6D62dUCBoUbsKk4QajXfAHCX0koeTFJjNkvJIrPVAzbFy7MV8A
+Gq5RmSBPhxQXmdA9PynIiTliNg5ot10SKTOj/IA0WlG0ebyY9NFXKsAz6P7u+sOiuCxzOEGLP93
zEeHkGlp+D68me5L2C8T2fUShijpWVVii3oE7AgzpkXq/g8or67ELJf6kAHoo0CNKD7eCtjyKGXa
cEBrxFsgDW1xad2CGY1njwoTE5xXBWKXRBRoGXXsehsPcPqclQj3gYAsPyAB8PAtPxNe5pllSP7I
vPDxLbOrLm5IQTEkJqUw1a6QY8jKFAPOZQB96Z+Jm9m7HaIjB9PY2G6/s1GhFc1jdzlC5q07VaqR
e5bQDPRla89jGBvhftPdBjNHt5A/KGRzsQMcPIEk2yIFmV0HqL6jJJ6zq411M15W8DrvGIOWpNHg
9POUrxP1Ux0Kq610jGxRhErMRF39MXcIN30ap9tIkrR0HKs5yIRkxv0xc+EyFnq8vIAfPmmB156n
lh61DwAZ41kI28Xxw+3FN1KJd+PCJS+aQV3rpC7bwCWMfsHCXGn8CLiDakTRbRUrAgVVwTc+vVHL
zjL9uOprFnAxtu37ppkjUCCOMY9n5yybFlcbKUCHvpx0MeS8clZ/E0l847MOhgJgJR43avgDK8Aw
CTqI0PCYDVjfyRqyC/rAPuGdMhoma7sEhxMTqTGGFMeEstQ9T7V+m84ZqBKOp+XZzFwHUCkjhl3x
ENIN8lRyfF/NkMszUoT8q14qD4uYDvLQlsifGVy3M5zfoTjxTzskMafNmYB0Kx1llKkGIPXecMZj
iNhDg7pn7SDec0aTCEPKDIb/2O3qVPxkYR2CriHMSMil4C4LYrZ+7L/Q/G4EbFu7NIBshfZ71LiY
trJLdevYHTS1OhzqQvoKvW9H6MplIMwTfP5jw9r8Jj2WM9tVowBGX739cAVeqFTKyuNFFotO+rWV
gH1s0k1SzTvx/DNTlsp3t1Jdg1ZoHrJC8GnfAzBiy/RsgMzLg7dPMxZ03IU+VnzsOYKlmyf+aSiA
BOVMjuCQ81MIbCkmqzUMhsvf/fv7JOSzoqhzym4/kM+tThXZzADbqs+1f29ANIw7CP35pD7MJx9q
ACZMtFWNG0Da0m26pSWFjm0Fz3zD4n3IgsdOtDUZGHLJ/cYm0S/VkMHrmdzdEHR8sXRBRK8+B8AJ
6Tys2KuQ2MPVBdYp7CRTJAflMhn55TzUoNhmlf63n0+g35aT9vVxNs1E30IraSPBQT1ddeaNCCAv
y9aqctV5T1L2cC1SV+2emiwBodbOwrxbwOBIeFFbyaL9+MZbUnX9P0BqW3OOU5WwYqMiL7YURm5+
PdYUWktPG8VBlZfkUsU4d8AAunAg8yOll+PrSa7ig/g2MbbvaNZRTZ83t0MVCWMMOoaDi7C/9Lup
b+/uGivWbage4K5/he3/tWaClT57EtVJakqC/5jlun1JaEH8497QK3bbJPO4PbnLvR/otnnMUpbj
bJlqd7F25tMXufiql/WKOauRz7zMZENlOGsDoPncdeN1BABGMbZ07ek2xPsgcdSXBZgT7Spz0g4o
HstVawdmfUBY+tUM6mAHczgXAVD+gy80nrXF15zGihgUFXhIvPf1yxz6Vk3nB3VS0Zh/2y2Gne1m
tZxh5/RF+6lIpp4b7sFvfWT1jGn6MwCbZaOPnjJdP2nwkkFhpUAaB2dVBCUdtiSyBV2cXOboqZH7
HwzePVsWoSO5DUFFN2GlwM8hulNXTVI7uc4bPvGfJEKRN41oZxngptbCt+u4KbpknwuJedJCvqoZ
eEPRXsn9wbIJpuFufnlWEqjNdbt5yr0myp5p03FDXZ2AqdVFMguFfPAgkzDghQ9e30MganILQcuY
FU9gr42yr1czr+uYYol672JTgfWcgtv30WmrOqSppWhnfksywogP5EvrxxF7bIuMLuZrOGkvpX0A
8B0TjGBimVar7EvyFAcCI0z4yA+roEGiG7RIKeu7Y0ove340io/9dgWBxnrQ+DB5gXOdXcTZeCuL
9gz5wqwnJ1USsh9btzUzBErO4Q3sR2qwzMH6jhquY/S2cb23srgs8JGeNSCs8Ii3SEXRuphzTmTe
YfUIiqzvpfOxbKpMqzZn5r5VJWySze4BAXcjPG6pNWdewVf5EzoIQWdWxkDfRqR1dA2g5CQNsQRe
CCR1EZdGcO/JZE2WCCBh6FUY1ridj408wIiMDGSKbe/UkBeTCjFB7WsQj5DDW023L6rQIlimQ7FU
nGG7/noh1CizPAsuKwlcsgnwOmkny1qPJTuXkgwA7BAfuDCXItreINzoQE2EirVG9cBjGav+RV4h
3AIO7hzBPrjmq6Af0QnPCZ92SLjLWqR0u5xh2oCfzRYAlP4fiJaUPAXUeCER1oTXnsk7ZaMvr8Qc
hglzx75motniEt5IeNrtNTodfX6in0cn8NfhCEOp9jGfTZS67knm9HaZqqEwZFwn960DzfPXGVCc
irCBcj9HMPZzQEP8f1HSGdoGQIcrvkgE8ttNiMthTTDbQaZhqztKFYGjV7LbywYKFZBZzxrV6JVw
/+603NTcDDSFZ4OLQO8zKSwO8Y+P6kVAU/aRFMan/v1IvpJ2k651ZknI/V6uhb718ph10kvfn07o
rpv2pMEx3k71SO4ZOkL7o5XoSiYo5WsTSQgwQlRor/QycsYOyf7zNVAtQl5Sy/M0rron8ZtJjdp/
gqulLdvR14JjftNHHpjlZvOWI8M2J3i6v66F/K6+3rARhfUb84OvsS2EhOcILOAfKaVyLMn1rmDJ
HHpfNLAlmQZSX3D+Iui4JyyNGFlfa+gI3mTrqwk9fPKngWawZ6OrAUjRi/tb+Z16M4cEb/S5223o
Cr79myZWldx5tYWA62VK2hUqJf9nxjKRkYopIwEnF7hng6R+puWf58V5g1Cfg+SPhUWZ0xw5hH08
sREDcDbvTtMo3m6e7B7VA1hEDPhQUHpnAFkaRtlzHhN8GRiKEjOyiv+1KHc98TIMb7zX4aniI6ia
5GQjfNKXlLw6CDzIyrEoJGYQpkFonuMEtejM3xPsXzL5XVtyT/Cs7vQFcb3UAJOSSGujFzq31Y6I
OayPxaE1b+zXnbh5khAzmAIZucHHDQrehwQ2zGevNB46RmhWSmajLwFSff6vHCpDIQ167+UuXdzh
mOgds/Qr8fo84kl1Z4c7ax5WiSZxCqRkUhy495PqAgvQ6aBasJ04bQ0ZDOqF/NxYql1ghvkfiYXm
CB6XKomtH+v7RJK7B4V1hgsIjKsB/69fC5YdFvSvMz/8BtvVXFuNe5t8L9hr4zyavQKZZBqugjaj
0RjDV1VY6lyxrPaeqhVUS4o8xt6XtNsSATQUP4AM5fWFR6aXapEmdG0BthO/adePi0BwTXzAWl1D
CHOoscXmxAErHq9f8io6/n+9CrUee0FFNFF9yF+rft4wcjt5yt7Xpj7e2pg2sVTsInS/e+WnHXCs
irrTfpahkwbtkiTAR8JAidCsIWBbM05+00TB7KvBVzNKgN0k2w/9VtGzBjBBRVqOdjXvkNvGzrdN
Tbag+38mLr4bY69cmyBhks32M3DDC2/j7/SA9vrsGENYoIR6zx5f0k4BrhUb4ABVZNJGyNJYBvFU
+7sR+ZlIeNxuRzT6iElTy0sO7jk7jyKk+wBSY81G5BAioIKZAhcUlgIFtXPoh7WUjET9SuUzRfKj
OevCI/7glV85CpqP9eEbyJz28VmYdVeH+osg4mcNjbkSbZiyB0dGCWlY5I+58v3vagB29VAya27M
z9M+T61r4niN6/Al4m75o8Nykg0VMx9EPTTTyaJKi1h+4w9yEkvSmfAsVP23HmgLgfu1w224iczr
uosh8mv4lzqc32ClaXiXV1ee8vYGYj7sMNloVAP40BVDIwK0TEkqbqByBrkdg0xEQi80t+Yj8AsX
MlgLlEslH6pxoHxkdBn02xUvmk9+Njk9hq2wt3SBWDvmPJFItrJJTa/Gm5N7uhnxpH++LBOzR55/
v/e4fJBCurh/juE2/QMb7bLb6MhLlMU10gAVUtCi9Sm8Q/VmWv7bom30NT2qmDMDZHuJAFk+RjoZ
g6sMvF+hoH97WYZfjoYMcksi7n1e9zYRw+/+19xavKGbgm80S8KEbKYOHfwk/IrRGXa2Xiq1c8BP
RZ480SeZ8X+S9gKUWn5TQvjin1YU18jYprBenymCwzc7mtCbvnv080KMISLThViqA3f8auVeD5Ab
CSA1k9pPHtY5b2GFWJKr23zr4SCOzod54gCaEl667BXeegSb5WRK/+ZDsB+bf2tCCAWRMXsoIUgX
5Gl8e+0lJl1NEzEp3suSx365C2b2BWBjqK2xk3fbYc6lJPtj2UA+WzRjWWVfhrIVzgbJhWFM07VP
7QAeuTlNXBYfbd1qq0anQctkHa2ghSE7UcG/mBc8R8wzbd5P42J83aoBq6siD/x+hokFnjF/fSQn
oqzE90o77bQ9ESTW8mDaX8/cgMGW92PdrTnLuk/5/EVy+/5Em/ho8DgyCJPhTqVmbCSvr4DRMRZz
WanPsM81n2eAQpw+6ttlcQAnskzJESKz1H1eTUpys/mZ5fr391fSml/VWKSX9UT8+C7P7vkb+G9l
fE6SnJOG0uO8hAAdYHIlJvMZX2T0pPyWl25cFbH2Ef/NG4j0o81QTm6gQDsuLMHtxnmjLEIoSAJX
ynJENmre6/ss8bW2k1TlqS3dnzPvwU6mmwv//WLTy8llpYgNtLw3Gvam8r2Kx9u37xi6ykkJUToE
PO0gQIihyizvjyFB/hk+lry0E1Ahr4Kt+RcOlMiY+e+RDSwVxrYSpiH9gxrVq3wut5ao9QKk0meE
vPfcht9kEZ8yoZ0azEom+4MVgPCVAA+rFhiWGB8UCyY36ndNATDwSCN8ErXb+tGUJh+NASSlbOxX
y89019gLUZRuvLvvPccJ44d+IKDPozp5cYCU9EI2C3pQcmx2Rn9w161vAR46/da8FdFotMTkVR4J
xUg478TiCH9pVre5b09w1zHVeNlgV66tQGWJF30J03W3KyV1XkZ8C4AIAMzqsvFHKMy5MesxPug0
+aRhn0RZOcHixmCmNqN5l4b7is15VJNWB1iDxPJ8tPow7wLJgyHnNYR1P3RUkXd7C93E2N+Kia2t
Z4M/z7GTn67pCcld0buSc2AKm2XHv0x6p7zj9Qi3yTFFDLJMVJ3Auzx2UNGgm+wMURETUXNXTMGK
8RNmV9Mn3HEw0nzfLMT1HhyyjfwxKGdaDipn1BdSTqvYcBr6gIbKCfQftjreNyiHV/ffExxj3KbH
pjgAWKpNpEXkBgiVB7Bw0uxqcBD87URUoQdyDFGvDpT2zx1kGVX3QjmND+kssNzE/E/paK5MakWp
/xFbdD8kNBSa7txLhAgvfVtyBEm6eAhaiJj5SRRhySTfq1iu7IDgfBrqqPPXqbr1925b/EejdZ50
I8bzSv2kSaiuvZHsQT9TpQvpjbICPENLkWApj6AB8+4fityV3B9YCQzf1IdCydikIwAEfmmKJ2dV
lzT4TBJDdYV7GoTYLD2XSLVA1ii+UvrTJI05I3W3PFJurQmwsOF4BW7pARRqBjff6yfKUgG/CD2y
Me69W5MFlhcjynYl910pdXq4fZQy3Nz1tD2TVbM5uWlMmCCcVCGxFDVCX+w+b9lcPR2LPRvg1S58
0q3KeC538BW1I+Fib4YYhrjGMaK+SjjxQ5YPrqdClD/W0jCgbqZMaUriqCNYqcqS70ijApo/8wlS
37kzezoGZJB7nWeO8QDBXfC3Nmbsph6h35o2vcUl8O7nB3XUMtvav5tsRZzAZFwqB701cG7U/dfI
i9kGTjcqIfdETI5/jOuZMSUwzLQwGyEfxLbhOevIiwHycQtMUYcUcrW52HY1dAVR2sNtsYdWwutA
l1PkpTZviTSlF79JefU6nvtP0vS/2f7/Phm338v61ducBdPGOp1q6zsRKAqFLyVgnA4DQASXVciI
AI6w6d6BZL1iU+EiD12mqgHNT34bZRi6n6XMqg4qZv4yO3A2YHzye3NhfH54WO7gruqJ7Wa/rDgX
cNqwKD3FMjw+m5SJ39NpMxI2dF4PGvMcp1i6nlhGq4U/KUDOjSiGVWkJ+ZWc7wtmhzAILb3EMRhv
DBKbLSfAW3BQDvRyioUClDbNLMZkPTwtYPT2SvnOXr5m+BFmU+bTv5U9If5iTRbmJjLbP0Ysm3Kx
h5nc2ycze9YSb7Pb5wIHmtv0mKVtbHr+y9UFxeeMceYirIriBBu8wOT7b3q4wMX10ajbwSNYY6Fs
ahbGTFA746Nl1zsnOh3E6H1wMF2xLx+ayyrKnWmirR9hzjfg8SPJMpM8fPCORS0Gzs7RkYlICBCf
TVjFChhXU3/jQuChv48oc58yY16iSSaqJkVrMk21FhPTEvW7E9b1QXrZ7zgdbkysm2sWdwQMw37o
9N+XQ1BIWW0KyaT1dYgKnoz5de5WZcqaP8KdelhYp7tvDzaBBL6+itS1umSIcBJC0Bpt1/LKq2PU
N+tKxt36RxU5YXCrLp1rzUbcX2hxapZvh+P90FmW+mRsvMnVNa/LDXrmzKVh7JFPpzfeidXjlkYd
PTEuUsbfia2k8BWvK46JM+P/9JR8lb04HulZQGM7O3f7afJ/9wyWAJEeGouKi712MYeneNKgQzE8
4Mh8gLo9YUMw+JmK6IWtjZHdYYoFRix5za+3aObEXHTcTLwnweIRFDpG18WLIsNbAbba+g+wl1wa
w8yxgTHghnnZH+ExBZOYpsIU1oU/jSHZirlEiO/nb9TYqY4D2iU8RL8XtJqb8Tqgpdq+d+gqyWPV
Ph5lxlI/nGCMCzver/skh/wt+IdL2zx+/KqiBjrBWkIobbdJcHh6CYHET51tFfQ+KK6pbEJnsT8V
uPVxSfGU3YJt8KzLPlX+2lvT2rrIvp22WeIITzqD8u25H+A7F7jZRI/FNG5CEaWDN0U1qOjyYUob
cllvgHCMFiSXj5Dxvgq4vVtm2ar2Lz4rUI8/Br2MKRkxSKgg0QGiLSPGJnkBaJbK0adwoqthGQVl
lg8Lhl16dvtlP5JRnDIzdF5YuEW5rh8CzBUmsF876RaHoOlw9UKh0/HHciTW3t/UqTIdNaOGBxbz
XqrgZpqOSNmh+Yv3zVUVFOPw7cBucoV+WheEQvOsD/sFREn9yq0YSBsD9Tb69VHCA66nmEcaRkNH
9Pf3uWrF7041z460h9+qD4jMIy1xY5euGnpd9JK+R0o3b7ZYF+6sBD2pcHro+HKC6I3hs1SMoGwb
L1mPlP8nwGj6AYzJFvZkY3VE1T0S89UV9SnEWZaEwLN9/lRxzS+tQFFD4pO0PMUexySEqDotnpQw
msRFf5WaFd9A85hlZG1/y0ZFsZr4WXA33H8/JFDnzGV0rm44zSO7Dj1hrag7v5LwHRuvp+Wlf0aF
ZgT7DmkwoOWozrLeEvY0mRnYdIz3tipTNJ5cbYyB/u0BmaakdtrRol8PuHIjEp2Xihm7k/Y1t0Nr
3Vh+CgbAlMSOctqgfR9EZegB9S0+5+1zjOSfuiNNbT1S0PsFSrtpUPIBs4Q+mY3kIKe/hVb80LUe
YweW9Ue55BJR96Y3MCkvoydaGHJQCKNQMl2gRbdPDM0hnlspI/crRk+3t4inJZeErOb46QDYmsJp
wWPiiLT2+OvNTUHxdyiI3FSD8QQTgVMo6BtB3YpaB2yvDvJYiKL0K8nK9flPeoJ9T/WVkEsJwPbg
LkChnxlGF2e/tBsXUU2jwxSitm4Tmcq/d56nJbIssz3bH52xypwzLiwseRUR/eoI7aabjwsJLhGP
67xD7DlL9toJVmp2ospWgcDQsZXSmHDTwV/wm3WKWwDEB2yvOizCO64Fm0nR8CCblYngBlVLhXcR
h3IKiYmy+Ca+VXDIaOn4rxPFzYivpRynKdWH8zXnF5ILPCQvQKVt60bzyIRsoSW5tzJeNjh/Cy6A
2KPFmNyT+IFbbOjFXWg9ogE1a8NAoaCRQVuli1pDwvQAldz9JbPtioxld3PW5tPnKihkPsHhHxyq
Oc+ueqiJIQmqySnY5oORQH8txt6QOqV+P6HvCMdOxtHLDZoyjx830KRUs6ffBXwbY8G1VcemLA7I
Z9YqR8oV8TPo7rr8FhQZH8r4qZ3BFMe5mq5XnPf3gIBwGr9PPW51aiBHmXUY0zJluS4Xgd9GETDa
qZzPdABUYydvS/0b0WB5CvjBw0B5+A4QH2HbvTT7UufRuk+a1IYV+wCQG0eN/cICpxCK0PHA/yEG
T6sYPSkPrtH64twWnqg0N5TmB/pWfxh78QLraWa1CCEIrz71qLS6bBA17Un0Aj+xXZwJXRfrnL32
UZLWSduEgRg6CJBNPehEMcv222MgeuFsOtrMYmW76LwfeTNMKZLX1PfD9GakfgxNhYC1meVRY8WR
6HeZhDH0VReH8FfoZ/cLTJUiv0fQGklwVWS1eBqJSyUkAxjtBr6oGPC6RKrCm2ET5Th/2RnEZXr4
O74Gt/AwGtwlqmP8Cb0Z3DGge1Y4RUQyyIhS2gn5orOGJqtbHFZjp0welz0dfXknxUbtzDgrFc0i
GLVTZv74tH5bs036Xe03pcJOTMb6IlN26iRW4f7yNMJkjXPmoTpiPvAc8yNA7TQB3hBOEBskcNJ4
0FlIa4WLHEUXVMZ7IvH25Z0dPRADTY363VQu0YRTXF6N8GC2E8bwCzKfp7loxRcPN4djYZlVUR1v
9U+MpHpIORlj/q3keuv9Zddwhsr6qlqBL6jPDE33Wlp+16GXHNwOpx9OncchnIlLgN/NHMAj/Flo
oxQiTEJY+iJgjvmUVXk+1VrbpXiGS6jvYX8tBumjOMmttuqFDrL9jY2zLPfOwDVTBEidXykebWNM
Dk7/PirHBwwm2w0A64wTUB5vJVNSrbrJzzIAyuQyaIA2KmwA/KY2Ifm77Zdm2B9tXy0Dgsec+WtH
+vESJjIX4RJ8vrR54aw+lF2ALez0vWd0oHaDEk3ytdGBMgcX5EnPv92GoxP3vgpcH+HCHn0azxo1
xcIVx+G+l7SZoaugn59gaESlnWbWE2CWcCcGTa2ZPS8KEvknXguMukmh7GcNP5xjTAicnGhuLAKi
KfP5+eiByE4Sm6UnJSbvKJShWb5kUVbvDPG29+ql/0CTEjd42sAtqcxzIQkKxkbpUS4dMgXF3biP
G19aecwCZajElmScXBqwMP4U4rr1SXNM5HGbKcZXghkdIqR8KzBiF2qERcSojMeS60r4UK42SJRh
5nc7Tin1FJdSbDaLh5U9Q7YeQanxx731jxSIn37srb7bQOxthnAsvvdrUIM6GcUUFtf8xkW2FUwO
IuDs1ZADjzswlV4AVI+QDdAN/0+RyrLuprWX7tlTznw69yGu/7HhEtYw9IyGxzxPZlDuvr2yPipC
yGkl91dYyFyW94SMSJj74PJnngjQSTgAlfD8O38fbtb7r//cZmfe67O8XHa1dmoNl7DgC2KVbs2l
bqa1EWBpLq08gb3eTDnMP9FiahFa6Dv3X35PmvKYC2LCO3gHVcOAHEUzl6SU/1qLQ/qliu6NzVDx
PkkWy5/vDaxgU+Llm94bygGsdIvBfJ3fXoIIuyC8sIBC6+uQtyaD39OcnNms8QxS/vbX/Nc42IBF
KCV6MRgQ0qwS+OfKUs8aSj8Upuf0H6Fvmmpg+kgsecQR8+yYt5JMYLW/sHtFzatQZqkVELk7lhhd
tO1Qh8WcCzfLDMAw0GZxeGJHGyZu4vANdaOT5E9c+hv24dXO1UKixLYprJbUKJiWu+7FMMqodJRT
bTKKimM2jbH0FxMJ8B3/RpWbY4AUlYuz5VdkNTLrCLfkT4isenUzh43JqekLVokt+FibKUZmuUGr
vQdIx8cxFbxkPTjLVc+ZkKCsDKfrT/lTlhpjtZCGNX66XkQbUxVrc5xmVO+N7Ny0t0Yr/9NsPm1Z
eHOIYOWTmtkugb8kw0dMV6JIcccVzIBGe9JkwThgoK5GaUpoo2ZuKLvKR/Rknh5nkwgYRf/Xo4fE
SXMBAUAMH3GSWM/tx+HWyZJeAzyK3FeAf4SiY/huzu6G4ZkEQJj177tQGzl1sk4Vh1ARmSbI3UgL
JG3KsYKaRE7BpK0HIpFdppHQxpisag03FKnV1WvDuwu1h4ZhdzF/iZ33pAEqo7H6TGH7CllmgpMk
uMEqnC70poZ70NNGzegt/Aqxq/C68SGojXqUv+MwxK/CokLStZeDRTLJkQixTs6WTGJREy5F3PJd
CPJG4jwyOeqg71JqpFZqaKXKb71bte9ubwYYUQZEAUhYlbQtKP68fHR/YFlCLUFwFSvJ/brPO4fm
3s5VxCmK66IsPgccjVJufA23Aq/mQvhvE21SeTidxLEA+uMH844J1M3sagbOAgwxSdEIMJrbPf/I
J0RFL0q+b8YDjjDm3H5Fb2JZlg0F89n80vdrXf9Ivfvwn8TTXHR7XdSkZMpgCeuxpQEvu+/c7lav
GQoFSz/s81NcDltt9e25eKQxEod7Wg==
`pragma protect end_protected
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
