// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.591000,HLS_SYN_LAT=3075,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=68,HLS_SYN_LUT=191,HLS_VERSION=2022_1}" *)

module StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0 (
        ap_clk,
        ap_rst_n,
        in0_V_TVALID,
        out_V_TREADY,
        in0_V_TDATA,
        in0_V_TREADY,
        out_V_TDATA,
        out_V_TVALID
);

parameter    ap_ST_iter0_fsm_state1 = 1'd1;
parameter    ap_ST_iter1_fsm_state2 = 2'd2;
parameter    ap_ST_iter2_fsm_state3 = 2'd2;
parameter    ap_ST_iter1_fsm_state0 = 2'd1;
parameter    ap_ST_iter2_fsm_state0 = 2'd1;

input   ap_clk;
input   ap_rst_n;
input   in0_V_TVALID;
input   out_V_TREADY;
input  [7:0] in0_V_TDATA;
output   in0_V_TREADY;
output  [15:0] out_V_TDATA;
output   out_V_TVALID;

 reg    ap_rst_n_inv;
reg   [0:0] ap_CS_iter0_fsm;
wire    ap_CS_iter0_fsm_state1;
wire   [0:0] icmp_ln508_fu_105_p2;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [1:0] ap_CS_iter1_fsm;
reg   [0:0] icmp_ln508_reg_214;
reg   [0:0] icmp_ln517_reg_224;
reg    ap_predicate_op39_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_state2_io;
wire    ap_CS_iter1_fsm_state2;
reg   [1:0] ap_CS_iter2_fsm;
reg   [0:0] icmp_ln508_reg_214_pp0_iter1_reg;
reg   [0:0] icmp_ln517_reg_224_pp0_iter1_reg;
reg    ap_predicate_op45_write_state3;
wire    regslice_both_out_V_U_apdone_blk;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_state3_io;
wire    ap_CS_iter2_fsm_state3;
reg    ap_condition_exit_pp0_iter0_stage0;
reg    ap_ready_int;
reg    in0_V_TDATA_blk_n;
reg    out_V_TDATA_blk_n;
wire   [4:0] ei_V_fu_120_p1;
reg   [4:0] ei_V_reg_218;
wire   [0:0] icmp_ln517_fu_130_p2;
reg   [9:0] p_Val2_s_fu_62;
wire   [9:0] trunc_ln_fu_179_p3;
wire    ap_loop_init;
reg   [31:0] i_fu_66;
wire   [31:0] i_1_fu_124_p2;
reg   [31:0] ap_sig_allocacmp_i_load;
reg   [11:0] t_fu_70;
wire   [11:0] t_2_fu_111_p2;
reg   [11:0] ap_sig_allocacmp_t_1;
wire   [14:0] p_Result_s_fu_154_p3;
wire   [4:0] tmp_fu_169_p4;
reg   [0:0] ap_NS_iter0_fsm;
reg   [1:0] ap_NS_iter1_fsm;
reg   [1:0] ap_NS_iter2_fsm;
reg    ap_ST_iter0_fsm_state1_blk;
reg    ap_ST_iter1_fsm_state2_blk;
reg    ap_ST_iter2_fsm_state3_blk;
wire    ap_start_int;
wire    ap_ready;
wire    ap_done;
wire    ap_continue_int;
wire    regslice_both_in0_V_U_apdone_blk;
wire   [7:0] in0_V_TDATA_int_regslice;
wire    in0_V_TVALID_int_regslice;
reg    in0_V_TREADY_int_regslice;
wire    regslice_both_in0_V_U_ack_in;
wire   [15:0] out_V_TDATA_int_regslice;
reg    out_V_TVALID_int_regslice;
wire    out_V_TREADY_int_regslice;
wire    regslice_both_out_V_U_vld_out;
reg    ap_condition_274;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_iter0_fsm = 1'd1;
#0 ap_CS_iter1_fsm = 2'd1;
#0 ap_CS_iter2_fsm = 2'd1;
end

StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0_flow_control_loop_pipe_no_ap_cont flow_control_loop_pipe_no_ap_cont_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(1'b1),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(1'b0),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(1'b0)
);

StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0_regslice_both #(
    .DataWidth( 8 ))
regslice_both_in0_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(in0_V_TDATA),
    .vld_in(in0_V_TVALID),
    .ack_in(regslice_both_in0_V_U_ack_in),
    .data_out(in0_V_TDATA_int_regslice),
    .vld_out(in0_V_TVALID_int_regslice),
    .ack_out(in0_V_TREADY_int_regslice),
    .apdone_blk(regslice_both_in0_V_U_apdone_blk)
);

StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0_regslice_both #(
    .DataWidth( 16 ))
regslice_both_out_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(out_V_TDATA_int_regslice),
    .vld_in(out_V_TVALID_int_regslice),
    .ack_in(out_V_TREADY_int_regslice),
    .data_out(out_V_TDATA),
    .vld_out(regslice_both_out_V_U_vld_out),
    .ack_out(out_V_TREADY),
    .apdone_blk(regslice_both_out_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_iter0_fsm <= ap_ST_iter0_fsm_state1;
    end else begin
        ap_CS_iter0_fsm <= ap_NS_iter0_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_iter1_fsm <= ap_ST_iter1_fsm_state0;
    end else begin
        ap_CS_iter1_fsm <= ap_NS_iter1_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_iter2_fsm <= ap_ST_iter2_fsm_state0;
    end else begin
        ap_CS_iter2_fsm <= ap_NS_iter2_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_274)) begin
        if (((icmp_ln508_fu_105_p2 == 1'd0) & (icmp_ln517_fu_130_p2 == 1'd1))) begin
            i_fu_66 <= 32'd0;
        end else if (((icmp_ln508_fu_105_p2 == 1'd0) & (icmp_ln517_fu_130_p2 == 1'd0))) begin
            i_fu_66 <= i_1_fu_124_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_66 <= 32'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~(((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((ap_predicate_op45_write_state3 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((ap_predicate_op39_write_state2 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((icmp_ln508_fu_105_p2 == 1'd0) & (in0_V_TVALID_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1) & (ap_loop_init == 1'b1))) begin
        p_Val2_s_fu_62 <= 10'd0;
    end else if ((~((1'b1 == ap_block_state2_io) | ((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((ap_predicate_op45_write_state3 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_predicate_op39_write_state2 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter1_fsm_state2) & (icmp_ln508_reg_214 == 1'd0))) begin
        p_Val2_s_fu_62 <= trunc_ln_fu_179_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_274)) begin
        if ((icmp_ln508_fu_105_p2 == 1'd0)) begin
            t_fu_70 <= t_2_fu_111_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            t_fu_70 <= 12'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~(((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((ap_predicate_op45_write_state3 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((ap_predicate_op39_write_state2 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((icmp_ln508_fu_105_p2 == 1'd0) & (in0_V_TVALID_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1) & (icmp_ln508_fu_105_p2 == 1'd0))) begin
        ei_V_reg_218 <= ei_V_fu_120_p1;
        icmp_ln517_reg_224 <= icmp_ln517_fu_130_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((ap_predicate_op45_write_state3 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((ap_predicate_op39_write_state2 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((icmp_ln508_fu_105_p2 == 1'd0) & (in0_V_TVALID_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        icmp_ln508_reg_214 <= icmp_ln508_fu_105_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((1'b1 == ap_block_state2_io) | ((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((ap_predicate_op45_write_state3 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_predicate_op39_write_state2 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        icmp_ln508_reg_214_pp0_iter1_reg <= icmp_ln508_reg_214;
        icmp_ln517_reg_224_pp0_iter1_reg <= icmp_ln517_reg_224;
    end
end

always @ (*) begin
    if (((icmp_ln508_fu_105_p2 == 1'd0) & (in0_V_TVALID_int_regslice == 1'b0))) begin
        ap_ST_iter0_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_iter0_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_block_state2_io) | ((ap_predicate_op39_write_state2 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)))) begin
        ap_ST_iter1_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_iter1_fsm_state2_blk = 1'b0;
    end
end

always @ (*) begin
    if (((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((ap_predicate_op45_write_state3 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)))) begin
        ap_ST_iter2_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_iter2_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if ((~(((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((ap_predicate_op45_write_state3 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((ap_predicate_op39_write_state2 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((icmp_ln508_fu_105_p2 == 1'd0) & (in0_V_TVALID_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1) & (icmp_ln508_fu_105_p2 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if ((~(((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((ap_predicate_op45_write_state3 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((ap_predicate_op39_write_state2 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((icmp_ln508_fu_105_p2 == 1'd0) & (in0_V_TVALID_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_iter0_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_load = 32'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_66;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_iter0_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_t_1 = 12'd0;
    end else begin
        ap_sig_allocacmp_t_1 = t_fu_70;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_iter0_fsm_state1) & (icmp_ln508_fu_105_p2 == 1'd0))) begin
        in0_V_TDATA_blk_n = in0_V_TVALID_int_regslice;
    end else begin
        in0_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((ap_predicate_op45_write_state3 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((ap_predicate_op39_write_state2 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((icmp_ln508_fu_105_p2 == 1'd0) & (in0_V_TVALID_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1) & (icmp_ln508_fu_105_p2 == 1'd0))) begin
        in0_V_TREADY_int_regslice = 1'b1;
    end else begin
        in0_V_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_predicate_op45_write_state3 == 1'b1) & (1'b1 == ap_CS_iter2_fsm_state3)) | ((ap_predicate_op39_write_state2 == 1'b1) & (1'b1 == ap_CS_iter1_fsm_state2)))) begin
        out_V_TDATA_blk_n = out_V_TREADY_int_regslice;
    end else begin
        out_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_block_state2_io) | ((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((ap_predicate_op45_write_state3 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_predicate_op39_write_state2 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0))) & (ap_predicate_op39_write_state2 == 1'b1) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        out_V_TVALID_int_regslice = 1'b1;
    end else begin
        out_V_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_iter0_fsm)
        ap_ST_iter0_fsm_state1 : begin
            ap_NS_iter0_fsm = ap_ST_iter0_fsm_state1;
        end
        default : begin
            ap_NS_iter0_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    case (ap_CS_iter1_fsm)
        ap_ST_iter1_fsm_state2 : begin
            if ((~((1'b1 == ap_block_state2_io) | ((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((ap_predicate_op45_write_state3 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_predicate_op39_write_state2 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0))) & ~((icmp_ln508_fu_105_p2 == 1'd0) & (in0_V_TVALID_int_regslice == 1'b0)) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            end else if ((~((1'b1 == ap_block_state2_io) | ((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((ap_predicate_op45_write_state3 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_predicate_op39_write_state2 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0))) & ((1'b0 == ap_CS_iter0_fsm_state1) | ((1'b1 == ap_CS_iter0_fsm_state1) & (icmp_ln508_fu_105_p2 == 1'd0) & (in0_V_TVALID_int_regslice == 1'b0))))) begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state0;
            end else begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            end
        end
        ap_ST_iter1_fsm_state0 : begin
            if ((~(((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((ap_predicate_op45_write_state3 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((ap_predicate_op39_write_state2 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((icmp_ln508_fu_105_p2 == 1'd0) & (in0_V_TVALID_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            end else begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state0;
            end
        end
        default : begin
            ap_NS_iter1_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    case (ap_CS_iter2_fsm)
        ap_ST_iter2_fsm_state3 : begin
            if ((~((1'b1 == ap_block_state2_io) | ((ap_predicate_op39_write_state2 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0))) & ~((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((ap_predicate_op45_write_state3 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
                ap_NS_iter2_fsm = ap_ST_iter2_fsm_state3;
            end else if ((~((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((ap_predicate_op45_write_state3 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0))) & ((1'b0 == ap_CS_iter1_fsm_state2) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((ap_predicate_op39_write_state2 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0))))))) begin
                ap_NS_iter2_fsm = ap_ST_iter2_fsm_state0;
            end else if ((~((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((ap_predicate_op45_write_state3 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0))) & (icmp_ln508_reg_214_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_iter2_fsm_state3))) begin
                ap_NS_iter2_fsm = ap_ST_iter0_fsm_state1;
            end else begin
                ap_NS_iter2_fsm = ap_ST_iter2_fsm_state3;
            end
        end
        ap_ST_iter2_fsm_state0 : begin
            if ((~((1'b1 == ap_block_state2_io) | ((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((ap_predicate_op45_write_state3 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_predicate_op39_write_state2 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
                ap_NS_iter2_fsm = ap_ST_iter2_fsm_state3;
            end else begin
                ap_NS_iter2_fsm = ap_ST_iter2_fsm_state0;
            end
        end
        default : begin
            ap_NS_iter2_fsm = 'bx;
        end
    endcase
end

assign ap_CS_iter0_fsm_state1 = ap_CS_iter0_fsm[32'd0];

assign ap_CS_iter1_fsm_state2 = ap_CS_iter1_fsm[32'd1];

assign ap_CS_iter2_fsm_state3 = ap_CS_iter2_fsm[32'd1];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((icmp_ln508_fu_105_p2 == 1'd0) & (in0_V_TVALID_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state2_io = ((ap_predicate_op39_write_state2 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((ap_predicate_op39_write_state2 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state3_io = ((ap_predicate_op45_write_state3 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = ((regslice_both_out_V_U_apdone_blk == 1'b1) | ((ap_predicate_op45_write_state3 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_condition_274 = (~(((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((ap_predicate_op45_write_state3 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((ap_predicate_op39_write_state2 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((icmp_ln508_fu_105_p2 == 1'd0) & (in0_V_TVALID_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1));
end

always @ (*) begin
    ap_predicate_op39_write_state2 = ((icmp_ln517_reg_224 == 1'd1) & (icmp_ln508_reg_214 == 1'd0));
end

always @ (*) begin
    ap_predicate_op45_write_state3 = ((icmp_ln517_reg_224_pp0_iter1_reg == 1'd1) & (icmp_ln508_reg_214_pp0_iter1_reg == 1'd0));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ei_V_fu_120_p1 = in0_V_TDATA_int_regslice[4:0];

assign i_1_fu_124_p2 = (ap_sig_allocacmp_i_load + 32'd1);

assign icmp_ln508_fu_105_p2 = ((ap_sig_allocacmp_t_1 == 12'd3072) ? 1'b1 : 1'b0);

assign icmp_ln517_fu_130_p2 = ((i_1_fu_124_p2 == 32'd3) ? 1'b1 : 1'b0);

assign in0_V_TREADY = regslice_both_in0_V_U_ack_in;

assign out_V_TDATA_int_regslice = p_Result_s_fu_154_p3;

assign out_V_TVALID = regslice_both_out_V_U_vld_out;

assign p_Result_s_fu_154_p3 = {{ei_V_reg_218}, {p_Val2_s_fu_62}};

assign t_2_fu_111_p2 = (ap_sig_allocacmp_t_1 + 12'd1);

assign tmp_fu_169_p4 = {{p_Val2_s_fu_62[9:5]}};

assign trunc_ln_fu_179_p3 = {{ei_V_reg_218}, {tmp_fu_169_p4}};

endmodule //StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0
