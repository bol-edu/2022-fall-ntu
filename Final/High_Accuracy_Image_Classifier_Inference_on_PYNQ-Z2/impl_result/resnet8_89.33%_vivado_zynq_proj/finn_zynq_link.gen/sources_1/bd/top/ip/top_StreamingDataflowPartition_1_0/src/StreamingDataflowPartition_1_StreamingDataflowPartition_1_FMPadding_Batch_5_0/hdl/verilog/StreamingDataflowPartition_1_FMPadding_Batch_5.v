// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="StreamingDataflowPartition_1_FMPadding_Batch_5_StreamingDataflowPartition_1_FMPadding_Batch_5,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.524500,HLS_SYN_LAT=327,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=346,HLS_SYN_LUT=263,HLS_VERSION=2022_1}" *)

module StreamingDataflowPartition_1_FMPadding_Batch_5 (
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
input  [319:0] in0_V_TDATA;
output   in0_V_TREADY;
output  [319:0] out_V_TDATA;
output   out_V_TVALID;

 reg    ap_rst_n_inv;
reg   [0:0] ap_CS_iter0_fsm;
wire    ap_CS_iter0_fsm_state1;
wire   [0:0] icmp_ln279_fu_138_p2;
wire   [0:0] or_cond_i_i_fu_225_p2;
reg    ap_predicate_op46_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [1:0] ap_CS_iter1_fsm;
reg   [0:0] icmp_ln279_reg_273;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_state2_io;
wire    ap_CS_iter1_fsm_state2;
reg   [1:0] ap_CS_iter2_fsm;
reg   [0:0] icmp_ln279_reg_273_pp0_iter1_reg;
wire    regslice_both_out_V_U_apdone_blk;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_state3_io;
wire    ap_CS_iter2_fsm_state3;
reg    ap_condition_exit_pp0_iter0_stage0;
reg    ap_ready_int;
reg    in0_V_TDATA_blk_n;
reg    out_V_TDATA_blk_n;
wire   [319:0] ap_phi_reg_pp0_iter0_outData_1_reg_85;
reg   [319:0] ap_phi_reg_pp0_iter1_outData_1_reg_85;
reg   [4:0] x_fu_60;
wire   [4:0] x_1_fu_231_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_x_load;
reg   [4:0] y_fu_64;
wire   [4:0] select_ln279_2_fu_199_p3;
reg   [4:0] ap_sig_allocacmp_y_1;
reg   [8:0] indvar_flatten_fu_68;
wire   [8:0] add_ln279_fu_144_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [0:0] cmp9_i_i_fu_120_p2;
wire   [0:0] cmp10_i_i_fu_126_p2;
wire   [0:0] icmp_ln280_fu_153_p2;
wire   [4:0] add_ln279_1_fu_167_p2;
wire   [0:0] cmp9_i_i_mid1_fu_173_p2;
wire   [0:0] cmp10_i_i_mid1_fu_179_p2;
wire   [0:0] tmp1_mid1_fu_185_p2;
wire   [0:0] tmp1_fu_132_p2;
wire   [4:0] select_ln279_fu_159_p3;
wire   [0:0] cmp11_i_i_fu_207_p2;
wire   [0:0] cmp13_i_i_fu_213_p2;
wire   [0:0] tmp2_fu_219_p2;
wire   [0:0] select_ln279_1_fu_191_p3;
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
wire   [319:0] in0_V_TDATA_int_regslice;
wire    in0_V_TVALID_int_regslice;
reg    in0_V_TREADY_int_regslice;
wire    regslice_both_in0_V_U_ack_in;
reg    out_V_TVALID_int_regslice;
wire    out_V_TREADY_int_regslice;
wire    regslice_both_out_V_U_vld_out;
reg    ap_condition_303;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_iter0_fsm = 1'd1;
#0 ap_CS_iter1_fsm = 2'd1;
#0 ap_CS_iter2_fsm = 2'd1;
end

StreamingDataflowPartition_1_FMPadding_Batch_5_flow_control_loop_pipe_no_ap_cont flow_control_loop_pipe_no_ap_cont_U(
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

StreamingDataflowPartition_1_FMPadding_Batch_5_regslice_both #(
    .DataWidth( 320 ))
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

StreamingDataflowPartition_1_FMPadding_Batch_5_regslice_both #(
    .DataWidth( 320 ))
regslice_both_out_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(ap_phi_reg_pp0_iter1_outData_1_reg_85),
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
    if ((1'b1 == ap_condition_303)) begin
        if (((or_cond_i_i_fu_225_p2 == 1'd1) & (icmp_ln279_fu_138_p2 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_outData_1_reg_85 <= 320'd0;
        end else if (((or_cond_i_i_fu_225_p2 == 1'd0) & (icmp_ln279_fu_138_p2 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_outData_1_reg_85 <= in0_V_TDATA_int_regslice;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_outData_1_reg_85 <= ap_phi_reg_pp0_iter0_outData_1_reg_85;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_303)) begin
        if ((icmp_ln279_fu_138_p2 == 1'd0)) begin
            indvar_flatten_fu_68 <= add_ln279_fu_144_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_68 <= 9'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_303)) begin
        if ((icmp_ln279_fu_138_p2 == 1'd0)) begin
            x_fu_60 <= x_1_fu_231_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            x_fu_60 <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_303)) begin
        if ((icmp_ln279_fu_138_p2 == 1'd0)) begin
            y_fu_64 <= select_ln279_2_fu_199_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            y_fu_64 <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~(((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln279_reg_273_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((icmp_ln279_reg_273 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_predicate_op46_read_state1 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        icmp_ln279_reg_273 <= icmp_ln279_fu_138_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((1'b1 == ap_block_state2_io) | ((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln279_reg_273_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((icmp_ln279_reg_273 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        icmp_ln279_reg_273_pp0_iter1_reg <= icmp_ln279_reg_273;
    end
end

always @ (*) begin
    if (((ap_predicate_op46_read_state1 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0))) begin
        ap_ST_iter0_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_iter0_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_block_state2_io) | ((icmp_ln279_reg_273 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) begin
        ap_ST_iter1_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_iter1_fsm_state2_blk = 1'b0;
    end
end

always @ (*) begin
    if (((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln279_reg_273_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) begin
        ap_ST_iter2_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_iter2_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if ((~(((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln279_reg_273_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((icmp_ln279_reg_273 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_predicate_op46_read_state1 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1) & (icmp_ln279_fu_138_p2 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if ((~(((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln279_reg_273_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((icmp_ln279_reg_273 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_predicate_op46_read_state1 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_iter0_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_68;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_iter0_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_x_load = 5'd0;
    end else begin
        ap_sig_allocacmp_x_load = x_fu_60;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_iter0_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_y_1 = 5'd0;
    end else begin
        ap_sig_allocacmp_y_1 = y_fu_64;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_iter0_fsm_state1) & (ap_predicate_op46_read_state1 == 1'b1))) begin
        in0_V_TDATA_blk_n = in0_V_TVALID_int_regslice;
    end else begin
        in0_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln279_reg_273_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((icmp_ln279_reg_273 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_predicate_op46_read_state1 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1) & (ap_predicate_op46_read_state1 == 1'b1))) begin
        in0_V_TREADY_int_regslice = 1'b1;
    end else begin
        in0_V_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln279_reg_273_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_iter2_fsm_state3)) | ((icmp_ln279_reg_273 == 1'd0) & (1'b1 == ap_CS_iter1_fsm_state2)))) begin
        out_V_TDATA_blk_n = out_V_TREADY_int_regslice;
    end else begin
        out_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_block_state2_io) | ((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln279_reg_273_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((icmp_ln279_reg_273 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0))) & (icmp_ln279_reg_273 == 1'd0) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
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
            if ((~((1'b1 == ap_block_state2_io) | ((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln279_reg_273_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((icmp_ln279_reg_273 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0))) & ~((ap_predicate_op46_read_state1 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0)) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            end else if ((~((1'b1 == ap_block_state2_io) | ((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln279_reg_273_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((icmp_ln279_reg_273 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0))) & ((1'b0 == ap_CS_iter0_fsm_state1) | ((1'b1 == ap_CS_iter0_fsm_state1) & (ap_predicate_op46_read_state1 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0))))) begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state0;
            end else begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            end
        end
        ap_ST_iter1_fsm_state0 : begin
            if ((~(((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln279_reg_273_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((icmp_ln279_reg_273 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_predicate_op46_read_state1 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
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
            if ((~((1'b1 == ap_block_state2_io) | ((icmp_ln279_reg_273 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0))) & ~((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln279_reg_273_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
                ap_NS_iter2_fsm = ap_ST_iter2_fsm_state3;
            end else if ((~((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln279_reg_273_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0))) & ((1'b0 == ap_CS_iter1_fsm_state2) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((icmp_ln279_reg_273 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0))))))) begin
                ap_NS_iter2_fsm = ap_ST_iter2_fsm_state0;
            end else if ((~((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln279_reg_273_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0))) & (icmp_ln279_reg_273_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_iter2_fsm_state3))) begin
                ap_NS_iter2_fsm = ap_ST_iter0_fsm_state1;
            end else begin
                ap_NS_iter2_fsm = ap_ST_iter2_fsm_state3;
            end
        end
        ap_ST_iter2_fsm_state0 : begin
            if ((~((1'b1 == ap_block_state2_io) | ((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln279_reg_273_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((icmp_ln279_reg_273 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
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

assign add_ln279_1_fu_167_p2 = (ap_sig_allocacmp_y_1 + 5'd1);

assign add_ln279_fu_144_p2 = (ap_sig_allocacmp_indvar_flatten_load + 9'd1);

assign ap_CS_iter0_fsm_state1 = ap_CS_iter0_fsm[32'd0];

assign ap_CS_iter1_fsm_state2 = ap_CS_iter1_fsm[32'd1];

assign ap_CS_iter2_fsm_state3 = ap_CS_iter2_fsm[32'd1];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_predicate_op46_read_state1 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state2_io = ((icmp_ln279_reg_273 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((icmp_ln279_reg_273 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state3_io = ((icmp_ln279_reg_273_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = ((regslice_both_out_V_U_apdone_blk == 1'b1) | ((icmp_ln279_reg_273_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_condition_303 = (~(((1'b1 == ap_CS_iter2_fsm_state3) & ((regslice_both_out_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((icmp_ln279_reg_273_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((1'b1 == ap_CS_iter1_fsm_state2) & ((1'b1 == ap_block_state2_io) | ((icmp_ln279_reg_273 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_predicate_op46_read_state1 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1));
end

assign ap_phi_reg_pp0_iter0_outData_1_reg_85 = 'bx;

always @ (*) begin
    ap_predicate_op46_read_state1 = ((or_cond_i_i_fu_225_p2 == 1'd0) & (icmp_ln279_fu_138_p2 == 1'd0));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign cmp10_i_i_fu_126_p2 = ((ap_sig_allocacmp_y_1 > 5'd16) ? 1'b1 : 1'b0);

assign cmp10_i_i_mid1_fu_179_p2 = ((add_ln279_1_fu_167_p2 > 5'd16) ? 1'b1 : 1'b0);

assign cmp11_i_i_fu_207_p2 = ((select_ln279_fu_159_p3 == 5'd0) ? 1'b1 : 1'b0);

assign cmp13_i_i_fu_213_p2 = ((select_ln279_fu_159_p3 > 5'd16) ? 1'b1 : 1'b0);

assign cmp9_i_i_fu_120_p2 = ((ap_sig_allocacmp_y_1 == 5'd0) ? 1'b1 : 1'b0);

assign cmp9_i_i_mid1_fu_173_p2 = ((add_ln279_1_fu_167_p2 == 5'd0) ? 1'b1 : 1'b0);

assign icmp_ln279_fu_138_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 9'd324) ? 1'b1 : 1'b0);

assign icmp_ln280_fu_153_p2 = ((ap_sig_allocacmp_x_load == 5'd18) ? 1'b1 : 1'b0);

assign in0_V_TREADY = regslice_both_in0_V_U_ack_in;

assign or_cond_i_i_fu_225_p2 = (tmp2_fu_219_p2 | select_ln279_1_fu_191_p3);

assign out_V_TVALID = regslice_both_out_V_U_vld_out;

assign select_ln279_1_fu_191_p3 = ((icmp_ln280_fu_153_p2[0:0] == 1'b1) ? tmp1_mid1_fu_185_p2 : tmp1_fu_132_p2);

assign select_ln279_2_fu_199_p3 = ((icmp_ln280_fu_153_p2[0:0] == 1'b1) ? add_ln279_1_fu_167_p2 : ap_sig_allocacmp_y_1);

assign select_ln279_fu_159_p3 = ((icmp_ln280_fu_153_p2[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_x_load);

assign tmp1_fu_132_p2 = (cmp9_i_i_fu_120_p2 | cmp10_i_i_fu_126_p2);

assign tmp1_mid1_fu_185_p2 = (cmp9_i_i_mid1_fu_173_p2 | cmp10_i_i_mid1_fu_179_p2);

assign tmp2_fu_219_p2 = (cmp13_i_i_fu_213_p2 | cmp11_i_i_fu_207_p2);

assign x_1_fu_231_p2 = (select_ln279_fu_159_p3 + 5'd1);

endmodule //StreamingDataflowPartition_1_FMPadding_Batch_5
