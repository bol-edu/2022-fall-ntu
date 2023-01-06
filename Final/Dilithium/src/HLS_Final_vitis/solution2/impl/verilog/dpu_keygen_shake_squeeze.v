// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dpu_keygen_shake_squeeze (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        this_s_address0,
        this_s_ce0,
        this_s_we0,
        this_s_d0,
        this_s_q0,
        this_s_address1,
        this_s_ce1,
        this_s_we1,
        this_s_d1,
        this_s_q1,
        out_r_address0,
        out_r_ce0,
        out_r_we0,
        out_r_d0,
        out_r_address1,
        out_r_ce1,
        out_r_we1,
        out_r_d1
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_pp0_stage0 = 7'd4;
parameter    ap_ST_fsm_pp0_stage1 = 7'd8;
parameter    ap_ST_fsm_pp0_stage2 = 7'd16;
parameter    ap_ST_fsm_pp0_stage3 = 7'd32;
parameter    ap_ST_fsm_state8 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] this_s_address0;
output   this_s_ce0;
output   this_s_we0;
output  [63:0] this_s_d0;
input  [63:0] this_s_q0;
output  [4:0] this_s_address1;
output   this_s_ce1;
output   this_s_we1;
output  [63:0] this_s_d1;
input  [63:0] this_s_q1;
output  [5:0] out_r_address0;
output   out_r_ce0;
output   out_r_we0;
output  [7:0] out_r_d0;
output  [5:0] out_r_address1;
output   out_r_ce1;
output   out_r_we1;
output  [7:0] out_r_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] this_s_address0;
reg this_s_ce0;
reg this_s_we0;
reg this_s_ce1;
reg this_s_we1;
reg[5:0] out_r_address0;
reg out_r_ce0;
reg out_r_we0;
reg[7:0] out_r_d0;
reg[5:0] out_r_address1;
reg out_r_ce1;
reg out_r_we1;
reg[7:0] out_r_d1;

(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [2:0] i_3_reg_374;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state7_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln467_fu_186_p2;
reg   [0:0] icmp_ln467_reg_379;
wire   [5:0] shl_ln_fu_208_p3;
reg   [5:0] shl_ln_reg_388;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state4_pp0_stage1_iter0;
wire    ap_block_pp0_stage1_11001;
reg   [7:0] trunc_ln22_5_reg_398;
reg   [7:0] trunc_ln22_6_reg_403;
reg   [7:0] trunc_ln22_7_reg_408;
reg   [7:0] trunc_ln22_8_reg_413;
reg   [7:0] trunc_ln22_9_reg_418;
reg   [7:0] trunc_ln22_1_reg_423;
reg    ap_enable_reg_pp0_iter0;
wire    ap_CS_fsm_state2;
wire    grp_KeccakF1600_StatePermute_fu_170_ap_done;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_state6_pp0_stage3_iter0;
wire    ap_block_pp0_stage3_subdone;
wire    ap_CS_fsm_pp0_stage3;
wire    grp_KeccakF1600_StatePermute_fu_170_ap_start;
wire    grp_KeccakF1600_StatePermute_fu_170_ap_idle;
wire    grp_KeccakF1600_StatePermute_fu_170_ap_ready;
wire   [4:0] grp_KeccakF1600_StatePermute_fu_170_this_s_address0;
wire    grp_KeccakF1600_StatePermute_fu_170_this_s_ce0;
wire    grp_KeccakF1600_StatePermute_fu_170_this_s_we0;
wire   [63:0] grp_KeccakF1600_StatePermute_fu_170_this_s_d0;
wire   [4:0] grp_KeccakF1600_StatePermute_fu_170_this_s_address1;
wire    grp_KeccakF1600_StatePermute_fu_170_this_s_ce1;
wire    grp_KeccakF1600_StatePermute_fu_170_this_s_we1;
wire   [63:0] grp_KeccakF1600_StatePermute_fu_170_this_s_d1;
reg    grp_KeccakF1600_StatePermute_fu_170_ap_start_reg;
wire   [63:0] zext_ln467_fu_198_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln468_fu_215_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln22_fu_242_p1;
wire   [63:0] zext_ln22_7_fu_312_p1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln22_8_fu_322_p1;
wire   [63:0] zext_ln22_9_fu_332_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln22_10_fu_342_p1;
wire   [63:0] zext_ln22_11_fu_352_p1;
wire   [63:0] zext_ln22_12_fu_362_p1;
reg   [2:0] i_fu_80;
wire   [2:0] i_4_fu_192_p2;
wire   [7:0] trunc_ln22_fu_220_p1;
wire    ap_block_state5_pp0_stage2_iter0;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire   [5:0] or_ln22_fu_236_p2;
wire   [5:0] or_ln22_7_fu_307_p2;
wire   [5:0] or_ln22_8_fu_317_p2;
wire   [5:0] or_ln22_9_fu_327_p2;
wire   [5:0] or_ln22_10_fu_337_p2;
wire   [5:0] or_ln22_11_fu_347_p2;
wire   [5:0] or_ln22_12_fu_357_p2;
wire    ap_CS_fsm_state8;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 grp_KeccakF1600_StatePermute_fu_170_ap_start_reg = 1'b0;
end

dpu_keygen_KeccakF1600_StatePermute grp_KeccakF1600_StatePermute_fu_170(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_KeccakF1600_StatePermute_fu_170_ap_start),
    .ap_done(grp_KeccakF1600_StatePermute_fu_170_ap_done),
    .ap_idle(grp_KeccakF1600_StatePermute_fu_170_ap_idle),
    .ap_ready(grp_KeccakF1600_StatePermute_fu_170_ap_ready),
    .this_s_address0(grp_KeccakF1600_StatePermute_fu_170_this_s_address0),
    .this_s_ce0(grp_KeccakF1600_StatePermute_fu_170_this_s_ce0),
    .this_s_we0(grp_KeccakF1600_StatePermute_fu_170_this_s_we0),
    .this_s_d0(grp_KeccakF1600_StatePermute_fu_170_this_s_d0),
    .this_s_q0(this_s_q0),
    .this_s_address1(grp_KeccakF1600_StatePermute_fu_170_this_s_address1),
    .this_s_ce1(grp_KeccakF1600_StatePermute_fu_170_this_s_ce1),
    .this_s_we1(grp_KeccakF1600_StatePermute_fu_170_this_s_we1),
    .this_s_d1(grp_KeccakF1600_StatePermute_fu_170_this_s_d1),
    .this_s_q1(this_s_q1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (grp_KeccakF1600_StatePermute_fu_170_ap_done == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((((ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (grp_KeccakF1600_StatePermute_fu_170_ap_done == 1'b1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_KeccakF1600_StatePermute_fu_170_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_KeccakF1600_StatePermute_fu_170_ap_start_reg <= 1'b1;
        end else if ((grp_KeccakF1600_StatePermute_fu_170_ap_ready == 1'b1)) begin
            grp_KeccakF1600_StatePermute_fu_170_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_80 <= 3'd0;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln467_fu_186_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_80 <= i_4_fu_192_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_3_reg_374 <= i_fu_80;
        icmp_ln467_reg_379 <= icmp_ln467_fu_186_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln467_reg_379 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        shl_ln_reg_388[5 : 3] <= shl_ln_fu_208_p3[5 : 3];
        trunc_ln22_1_reg_423 <= {{this_s_q0[63:56]}};
        trunc_ln22_5_reg_398 <= {{this_s_q0[23:16]}};
        trunc_ln22_6_reg_403 <= {{this_s_q0[31:24]}};
        trunc_ln22_7_reg_408 <= {{this_s_q0[39:32]}};
        trunc_ln22_8_reg_413 <= {{this_s_q0[47:40]}};
        trunc_ln22_9_reg_418 <= {{this_s_q0[55:48]}};
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((grp_KeccakF1600_StatePermute_fu_170_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state8_blk = 1'b0;

always @ (*) begin
    if ((icmp_ln467_fu_186_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        out_r_address0 = zext_ln22_12_fu_362_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        out_r_address0 = zext_ln22_10_fu_342_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        out_r_address0 = zext_ln22_8_fu_322_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        out_r_address0 = zext_ln22_fu_242_p1;
    end else begin
        out_r_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        out_r_address1 = zext_ln22_11_fu_352_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        out_r_address1 = zext_ln22_9_fu_332_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        out_r_address1 = zext_ln22_7_fu_312_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        out_r_address1 = zext_ln468_fu_215_p1;
    end else begin
        out_r_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        out_r_ce0 = 1'b1;
    end else begin
        out_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        out_r_ce1 = 1'b1;
    end else begin
        out_r_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        out_r_d0 = trunc_ln22_1_reg_423;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        out_r_d0 = trunc_ln22_8_reg_413;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        out_r_d0 = trunc_ln22_6_reg_403;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        out_r_d0 = {{this_s_q0[15:8]}};
    end else begin
        out_r_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        out_r_d1 = trunc_ln22_9_reg_418;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        out_r_d1 = trunc_ln22_7_reg_408;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        out_r_d1 = trunc_ln22_5_reg_398;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        out_r_d1 = trunc_ln22_fu_220_p1;
    end else begin
        out_r_d1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln467_reg_379 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln467_reg_379 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln467_reg_379 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        out_r_we0 = 1'b1;
    end else begin
        out_r_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln467_reg_379 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln467_reg_379 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln467_reg_379 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        out_r_we1 = 1'b1;
    end else begin
        out_r_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        this_s_address0 = zext_ln467_fu_198_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        this_s_address0 = grp_KeccakF1600_StatePermute_fu_170_this_s_address0;
    end else begin
        this_s_address0 = 'bx;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        this_s_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        this_s_ce0 = grp_KeccakF1600_StatePermute_fu_170_this_s_ce0;
    end else begin
        this_s_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        this_s_ce1 = grp_KeccakF1600_StatePermute_fu_170_this_s_ce1;
    end else begin
        this_s_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        this_s_we0 = grp_KeccakF1600_StatePermute_fu_170_this_s_we0;
    end else begin
        this_s_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        this_s_we1 = grp_KeccakF1600_StatePermute_fu_170_this_s_we1;
    end else begin
        this_s_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (grp_KeccakF1600_StatePermute_fu_170_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln467_fu_186_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln467_fu_186_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd6];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign grp_KeccakF1600_StatePermute_fu_170_ap_start = grp_KeccakF1600_StatePermute_fu_170_ap_start_reg;

assign i_4_fu_192_p2 = (i_fu_80 + 3'd1);

assign icmp_ln467_fu_186_p2 = ((i_fu_80 == 3'd6) ? 1'b1 : 1'b0);

assign or_ln22_10_fu_337_p2 = (shl_ln_reg_388 | 6'd5);

assign or_ln22_11_fu_347_p2 = (shl_ln_reg_388 | 6'd6);

assign or_ln22_12_fu_357_p2 = (shl_ln_reg_388 | 6'd7);

assign or_ln22_7_fu_307_p2 = (shl_ln_reg_388 | 6'd2);

assign or_ln22_8_fu_317_p2 = (shl_ln_reg_388 | 6'd3);

assign or_ln22_9_fu_327_p2 = (shl_ln_reg_388 | 6'd4);

assign or_ln22_fu_236_p2 = (shl_ln_fu_208_p3 | 6'd1);

assign shl_ln_fu_208_p3 = {{i_3_reg_374}, {3'd0}};

assign this_s_address1 = grp_KeccakF1600_StatePermute_fu_170_this_s_address1;

assign this_s_d0 = grp_KeccakF1600_StatePermute_fu_170_this_s_d0;

assign this_s_d1 = grp_KeccakF1600_StatePermute_fu_170_this_s_d1;

assign trunc_ln22_fu_220_p1 = this_s_q0[7:0];

assign zext_ln22_10_fu_342_p1 = or_ln22_10_fu_337_p2;

assign zext_ln22_11_fu_352_p1 = or_ln22_11_fu_347_p2;

assign zext_ln22_12_fu_362_p1 = or_ln22_12_fu_357_p2;

assign zext_ln22_7_fu_312_p1 = or_ln22_7_fu_307_p2;

assign zext_ln22_8_fu_322_p1 = or_ln22_8_fu_317_p2;

assign zext_ln22_9_fu_332_p1 = or_ln22_9_fu_327_p2;

assign zext_ln22_fu_242_p1 = or_ln22_fu_236_p2;

assign zext_ln467_fu_198_p1 = i_fu_80;

assign zext_ln468_fu_215_p1 = shl_ln_fu_208_p3;

always @ (posedge ap_clk) begin
    shl_ln_reg_388[2:0] <= 3'b000;
end

endmodule //dpu_keygen_shake_squeeze
