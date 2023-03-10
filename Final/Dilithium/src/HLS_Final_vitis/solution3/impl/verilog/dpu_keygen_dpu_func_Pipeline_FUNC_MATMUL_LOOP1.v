// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dpu_keygen_dpu_func_Pipeline_FUNC_MATMUL_LOOP1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        this_3_9,
        this_4_9,
        this_1_9,
        itr_cast,
        this_0_address0,
        this_0_ce0,
        this_0_we0,
        this_0_d0,
        this_0_q0,
        addr1,
        zext_ln217_2,
        addr2_cast_cast,
        this_3_10_out,
        this_3_10_out_ap_vld,
        this_4_10_out,
        this_4_10_out_ap_vld,
        this_1_10_out,
        this_1_10_out_ap_vld,
        grp_dpu_unit_fu_2908_p_din1,
        grp_dpu_unit_fu_2908_p_din2,
        grp_dpu_unit_fu_2908_p_din3,
        grp_dpu_unit_fu_2908_p_din4,
        grp_dpu_unit_fu_2908_p_din5,
        grp_dpu_unit_fu_2908_p_dout0_0,
        grp_dpu_unit_fu_2908_p_dout0_1,
        grp_dpu_unit_fu_2908_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8191:0] this_3_9;
input  [8191:0] this_4_9;
input  [8191:0] this_1_9;
input  [2:0] itr_cast;
output  [7:0] this_0_address0;
output   this_0_ce0;
output  [1023:0] this_0_we0;
output  [8191:0] this_0_d0;
input  [8191:0] this_0_q0;
input  [7:0] addr1;
input  [4:0] zext_ln217_2;
input  [5:0] addr2_cast_cast;
output  [8191:0] this_3_10_out;
output   this_3_10_out_ap_vld;
output  [8191:0] this_4_10_out;
output   this_4_10_out_ap_vld;
output  [8191:0] this_1_10_out;
output   this_1_10_out_ap_vld;
output  [8191:0] grp_dpu_unit_fu_2908_p_din1;
output  [8191:0] grp_dpu_unit_fu_2908_p_din2;
output  [8191:0] grp_dpu_unit_fu_2908_p_din3;
output  [8191:0] grp_dpu_unit_fu_2908_p_din4;
output  [7:0] grp_dpu_unit_fu_2908_p_din5;
input  [8191:0] grp_dpu_unit_fu_2908_p_dout0_0;
input  [8191:0] grp_dpu_unit_fu_2908_p_dout0_1;
output   grp_dpu_unit_fu_2908_p_ce;

reg ap_idle;
reg[7:0] this_0_address0;
reg this_0_ce0;
reg[1023:0] this_0_we0;
reg[8191:0] this_0_d0;
reg this_3_10_out_ap_vld;
reg this_4_10_out_ap_vld;
reg this_1_10_out_ap_vld;

(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state8_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln215_fu_237_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_state7_pp0_stage6_iter0;
wire    ap_block_pp0_stage6_subdone;
wire   [6:0] addr2_cast_cast_cast_fu_206_p1;
reg   [6:0] addr2_cast_cast_cast_reg_373;
wire    ap_block_pp0_stage0_11001;
reg   [2:0] i_reg_378;
reg   [0:0] icmp_ln215_reg_383;
wire   [7:0] add_ln217_1_fu_259_p2;
reg   [7:0] add_ln217_1_reg_387;
wire   [8191:0] grp_read_p1_fu_165_ap_return;
reg   [8191:0] call_ret_reg_392;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state3_pp0_stage2_iter0;
wire    ap_block_pp0_stage2_11001;
wire   [6:0] zext_ln217_1_fu_270_p1;
reg   [6:0] zext_ln217_1_reg_398;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_state4_pp0_stage3_iter0;
wire    ap_block_pp0_stage3_11001;
reg   [8191:0] this_3_ret9_reg_404;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_state6_pp0_stage5_iter0;
wire    ap_block_pp0_stage5_11001;
reg   [8191:0] this_4_ret9_reg_410;
reg    ap_enable_reg_pp0_iter0_reg;
wire    grp_read_p1_fu_165_ap_start;
wire    grp_read_p1_fu_165_ap_done;
wire    grp_read_p1_fu_165_ap_idle;
wire    grp_read_p1_fu_165_ap_ready;
wire   [7:0] grp_read_p1_fu_165_this_pMem_address0;
wire    grp_read_p1_fu_165_this_pMem_ce0;
wire    grp_read_p2_fu_172_ap_start;
wire    grp_read_p2_fu_172_ap_done;
wire    grp_read_p2_fu_172_ap_idle;
wire    grp_read_p2_fu_172_ap_ready;
wire   [7:0] grp_read_p2_fu_172_this_pMem_address0;
wire    grp_read_p2_fu_172_this_pMem_ce0;
wire   [7:0] grp_read_p2_fu_172_addr;
wire   [8191:0] grp_read_p2_fu_172_ap_return;
reg    grp_dpu_unit_fu_179_ap_ce;
wire    ap_block_state5_pp0_stage4_iter0_ignore_call11;
wire    ap_block_pp0_stage4_11001_ignoreCallOp50;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_state6_pp0_stage5_iter0_ignore_call11;
wire    ap_block_pp0_stage5_11001_ignoreCallOp51;
wire    call_ln220_write_p3_fu_190_ap_start;
wire    call_ln220_write_p3_fu_190_ap_ready;
wire   [7:0] call_ln220_write_p3_fu_190_this_pMem_address0;
wire    call_ln220_write_p3_fu_190_this_pMem_ce0;
wire   [1023:0] call_ln220_write_p3_fu_190_this_pMem_we0;
wire   [8191:0] call_ln220_write_p3_fu_190_this_pMem_d0;
wire   [7:0] call_ln220_write_p3_fu_190_addr;
wire    call_ln221_write_p4_fu_198_ap_start;
wire    call_ln221_write_p4_fu_198_ap_ready;
wire   [7:0] call_ln221_write_p4_fu_198_this_pMem_address0;
wire    call_ln221_write_p4_fu_198_this_pMem_ce0;
wire   [1023:0] call_ln221_write_p4_fu_198_this_pMem_we0;
wire   [8191:0] call_ln221_write_p4_fu_198_this_pMem_d0;
wire   [7:0] call_ln221_write_p4_fu_198_addr;
reg    grp_read_p1_fu_165_ap_start_reg;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
reg    grp_read_p2_fu_172_ap_start_reg;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
reg    call_ln220_write_p3_fu_190_ap_start_reg;
wire    ap_block_pp0_stage6;
reg    call_ln221_write_p4_fu_198_ap_start_reg;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage0;
reg   [2:0] i_48_fu_86;
wire   [2:0] i_63_fu_243_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_i;
reg   [8191:0] this_1_10_fu_90;
reg   [8191:0] this_4_10_fu_94;
reg   [8191:0] this_3_10_fu_98;
wire    ap_block_pp0_stage0_01001;
wire   [7:0] zext_ln217_2_cast_fu_210_p1;
wire   [7:0] add_ln217_fu_253_p2;
wire   [7:0] zext_ln217_fu_249_p1;
wire   [6:0] add_ln218_fu_273_p2;
wire    ap_block_pp0_stage5;
wire   [6:0] add_ln220_fu_299_p2;
wire   [6:0] add_ln221_fu_317_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_state5_pp0_stage4_iter0;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 grp_read_p1_fu_165_ap_start_reg = 1'b0;
#0 grp_read_p2_fu_172_ap_start_reg = 1'b0;
#0 call_ln220_write_p3_fu_190_ap_start_reg = 1'b0;
#0 call_ln221_write_p4_fu_198_ap_start_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

dpu_keygen_read_p1 grp_read_p1_fu_165(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_read_p1_fu_165_ap_start),
    .ap_done(grp_read_p1_fu_165_ap_done),
    .ap_idle(grp_read_p1_fu_165_ap_idle),
    .ap_ready(grp_read_p1_fu_165_ap_ready),
    .this_pMem_address0(grp_read_p1_fu_165_this_pMem_address0),
    .this_pMem_ce0(grp_read_p1_fu_165_this_pMem_ce0),
    .this_pMem_q0(this_0_q0),
    .addr(add_ln217_1_reg_387),
    .ap_return(grp_read_p1_fu_165_ap_return)
);

dpu_keygen_read_p2 grp_read_p2_fu_172(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_read_p2_fu_172_ap_start),
    .ap_done(grp_read_p2_fu_172_ap_done),
    .ap_idle(grp_read_p2_fu_172_ap_idle),
    .ap_ready(grp_read_p2_fu_172_ap_ready),
    .ap_ce(1'b1),
    .this_pMem_address0(grp_read_p2_fu_172_this_pMem_address0),
    .this_pMem_ce0(grp_read_p2_fu_172_this_pMem_ce0),
    .this_pMem_q0(this_0_q0),
    .addr(grp_read_p2_fu_172_addr),
    .ap_return(grp_read_p2_fu_172_ap_return)
);

dpu_keygen_write_p3 call_ln220_write_p3_fu_190(
    .ap_start(call_ln220_write_p3_fu_190_ap_start),
    .ap_ready(call_ln220_write_p3_fu_190_ap_ready),
    .this_pMem_address0(call_ln220_write_p3_fu_190_this_pMem_address0),
    .this_pMem_ce0(call_ln220_write_p3_fu_190_this_pMem_ce0),
    .this_pMem_we0(call_ln220_write_p3_fu_190_this_pMem_we0),
    .this_pMem_d0(call_ln220_write_p3_fu_190_this_pMem_d0),
    .p_read(this_3_ret9_reg_404),
    .addr(call_ln220_write_p3_fu_190_addr)
);

dpu_keygen_write_p4 call_ln221_write_p4_fu_198(
    .ap_start(call_ln221_write_p4_fu_198_ap_start),
    .ap_ready(call_ln221_write_p4_fu_198_ap_ready),
    .this_pMem_address0(call_ln221_write_p4_fu_198_this_pMem_address0),
    .this_pMem_ce0(call_ln221_write_p4_fu_198_this_pMem_ce0),
    .this_pMem_we0(call_ln221_write_p4_fu_198_this_pMem_we0),
    .this_pMem_d0(call_ln221_write_p4_fu_198_this_pMem_d0),
    .p_read(this_4_ret9_reg_410),
    .addr(call_ln221_write_p4_fu_198_addr)
);

dpu_keygen_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        call_ln220_write_p3_fu_190_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln215_reg_383 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            call_ln220_write_p3_fu_190_ap_start_reg <= 1'b1;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (call_ln220_write_p3_fu_190_ap_ready == 1'b1))) begin
            call_ln220_write_p3_fu_190_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        call_ln221_write_p4_fu_198_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            call_ln221_write_p4_fu_198_ap_start_reg <= 1'b1;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (call_ln221_write_p4_fu_198_ap_ready == 1'b1))) begin
            call_ln221_write_p4_fu_198_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_read_p1_fu_165_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln215_fu_237_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_read_p1_fu_165_ap_start_reg <= 1'b1;
        end else if ((grp_read_p1_fu_165_ap_ready == 1'b1)) begin
            grp_read_p1_fu_165_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_read_p2_fu_172_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln215_reg_383 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_read_p2_fu_172_ap_start_reg <= 1'b1;
        end else if ((grp_read_p2_fu_172_ap_ready == 1'b1)) begin
            grp_read_p2_fu_172_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln215_fu_237_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_48_fu_86 <= i_63_fu_243_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_48_fu_86 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            this_1_10_fu_90 <= this_1_9;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            this_1_10_fu_90 <= call_ret_reg_392;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        this_3_10_fu_98 <= this_3_9;
    end else if (((icmp_ln215_reg_383 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        this_3_10_fu_98 <= this_3_ret9_reg_404;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        this_4_10_fu_94 <= this_4_9;
    end else if (((icmp_ln215_reg_383 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        this_4_10_fu_94 <= this_4_ret9_reg_410;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln215_fu_237_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln217_1_reg_387 <= add_ln217_1_fu_259_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        addr2_cast_cast_cast_reg_373[5 : 0] <= addr2_cast_cast_cast_fu_206_p1[5 : 0];
        i_reg_378 <= ap_sig_allocacmp_i;
        icmp_ln215_reg_383 <= icmp_ln215_fu_237_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln215_reg_383 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        call_ret_reg_392 <= grp_read_p1_fu_165_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln215_reg_383 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        this_3_ret9_reg_404 <= grp_dpu_unit_fu_2908_p_dout0_0;
        this_4_ret9_reg_410 <= grp_dpu_unit_fu_2908_p_dout0_1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln215_reg_383 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        zext_ln217_1_reg_398[2 : 0] <= zext_ln217_1_fu_270_p1[2 : 0];
    end
end

always @ (*) begin
    if (((icmp_ln215_fu_237_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 3'd0;
    end else begin
        ap_sig_allocacmp_i = i_48_fu_86;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001_ignoreCallOp51) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001_ignoreCallOp50) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_dpu_unit_fu_179_ap_ce = 1'b1;
    end else begin
        grp_dpu_unit_fu_179_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        this_0_address0 = call_ln221_write_p4_fu_198_this_pMem_address0;
    end else if (((icmp_ln215_reg_383 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        this_0_address0 = call_ln220_write_p3_fu_190_this_pMem_address0;
    end else if ((((icmp_ln215_reg_383 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((icmp_ln215_reg_383 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        this_0_address0 = grp_read_p2_fu_172_this_pMem_address0;
    end else if ((((icmp_ln215_reg_383 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln215_reg_383 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        this_0_address0 = grp_read_p1_fu_165_this_pMem_address0;
    end else begin
        this_0_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        this_0_ce0 = call_ln221_write_p4_fu_198_this_pMem_ce0;
    end else if (((icmp_ln215_reg_383 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        this_0_ce0 = call_ln220_write_p3_fu_190_this_pMem_ce0;
    end else if ((((icmp_ln215_reg_383 == 1'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((icmp_ln215_reg_383 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        this_0_ce0 = grp_read_p2_fu_172_this_pMem_ce0;
    end else if ((((icmp_ln215_reg_383 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln215_reg_383 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        this_0_ce0 = grp_read_p1_fu_165_this_pMem_ce0;
    end else begin
        this_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        this_0_d0 = call_ln221_write_p4_fu_198_this_pMem_d0;
    end else if (((icmp_ln215_reg_383 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        this_0_d0 = call_ln220_write_p3_fu_190_this_pMem_d0;
    end else begin
        this_0_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        this_0_we0 = call_ln221_write_p4_fu_198_this_pMem_we0;
    end else if (((icmp_ln215_reg_383 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        this_0_we0 = call_ln220_write_p3_fu_190_this_pMem_we0;
    end else begin
        this_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln215_fu_237_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        this_1_10_out_ap_vld = 1'b1;
    end else begin
        this_1_10_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln215_fu_237_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        this_3_10_out_ap_vld = 1'b1;
    end else begin
        this_3_10_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln215_fu_237_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        this_4_10_out_ap_vld = 1'b1;
    end else begin
        this_4_10_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln217_1_fu_259_p2 = (add_ln217_fu_253_p2 + zext_ln217_fu_249_p1);

assign add_ln217_fu_253_p2 = (zext_ln217_2_cast_fu_210_p1 + addr1);

assign add_ln218_fu_273_p2 = (zext_ln217_1_fu_270_p1 + addr2_cast_cast_cast_reg_373);

assign add_ln220_fu_299_p2 = ($signed(zext_ln217_1_reg_398) + $signed(7'd76));

assign add_ln221_fu_317_p2 = ($signed(zext_ln217_1_reg_398) + $signed(7'd82));

assign addr2_cast_cast_cast_fu_206_p1 = addr2_cast_cast;

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_11001_ignoreCallOp50 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5_11001_ignoreCallOp51 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage4_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage4_iter0_ignore_call11 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage5_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage5_iter0_ignore_call11 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage6_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign call_ln220_write_p3_fu_190_addr = add_ln220_fu_299_p2;

assign call_ln220_write_p3_fu_190_ap_start = call_ln220_write_p3_fu_190_ap_start_reg;

assign call_ln221_write_p4_fu_198_addr = add_ln221_fu_317_p2;

assign call_ln221_write_p4_fu_198_ap_start = call_ln221_write_p4_fu_198_ap_start_reg;

assign grp_dpu_unit_fu_2908_p_ce = grp_dpu_unit_fu_179_ap_ce;

assign grp_dpu_unit_fu_2908_p_din1 = call_ret_reg_392;

assign grp_dpu_unit_fu_2908_p_din2 = grp_read_p2_fu_172_ap_return;

assign grp_dpu_unit_fu_2908_p_din3 = this_3_10_fu_98;

assign grp_dpu_unit_fu_2908_p_din4 = this_4_10_fu_94;

assign grp_dpu_unit_fu_2908_p_din5 = 8'd2;

assign grp_read_p1_fu_165_ap_start = grp_read_p1_fu_165_ap_start_reg;

assign grp_read_p2_fu_172_addr = add_ln218_fu_273_p2;

assign grp_read_p2_fu_172_ap_start = grp_read_p2_fu_172_ap_start_reg;

assign i_63_fu_243_p2 = (ap_sig_allocacmp_i + 3'd1);

assign icmp_ln215_fu_237_p2 = ((ap_sig_allocacmp_i == itr_cast) ? 1'b1 : 1'b0);

assign this_1_10_out = this_1_10_fu_90;

assign this_3_10_out = this_3_10_fu_98;

assign this_4_10_out = this_4_10_fu_94;

assign zext_ln217_1_fu_270_p1 = i_reg_378;

assign zext_ln217_2_cast_fu_210_p1 = zext_ln217_2;

assign zext_ln217_fu_249_p1 = ap_sig_allocacmp_i;

always @ (posedge ap_clk) begin
    addr2_cast_cast_cast_reg_373[6] <= 1'b0;
    zext_ln217_1_reg_398[6:3] <= 4'b0000;
end

endmodule //dpu_keygen_dpu_func_Pipeline_FUNC_MATMUL_LOOP1
