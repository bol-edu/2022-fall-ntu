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
        this_p1_9,
        this_p3_9,
        this_p4_9,
        itr_cast,
        this_pMem_address0,
        this_pMem_ce0,
        this_pMem_we0,
        this_pMem_d0,
        this_pMem_q0,
        this_pMem_address1,
        this_pMem_ce1,
        this_pMem_we1,
        this_pMem_d1,
        this_pMem_q1,
        addr1,
        zext_ln223_2,
        addr2_cast_cast,
        this_p1_10_out,
        this_p1_10_out_ap_vld,
        this_p3_10_out,
        this_p3_10_out_ap_vld,
        this_p4_10_out,
        this_p4_10_out_ap_vld,
        grp_dpu_unit_fu_2995_p_din1,
        grp_dpu_unit_fu_2995_p_din2,
        grp_dpu_unit_fu_2995_p_din3,
        grp_dpu_unit_fu_2995_p_din4,
        grp_dpu_unit_fu_2995_p_din5,
        grp_dpu_unit_fu_2995_p_dout0_0,
        grp_dpu_unit_fu_2995_p_dout0_1,
        grp_dpu_unit_fu_2995_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8191:0] this_p1_9;
input  [8191:0] this_p3_9;
input  [8191:0] this_p4_9;
input  [2:0] itr_cast;
output  [7:0] this_pMem_address0;
output   this_pMem_ce0;
output  [1023:0] this_pMem_we0;
output  [8191:0] this_pMem_d0;
input  [8191:0] this_pMem_q0;
output  [7:0] this_pMem_address1;
output   this_pMem_ce1;
output  [1023:0] this_pMem_we1;
output  [8191:0] this_pMem_d1;
input  [8191:0] this_pMem_q1;
input  [7:0] addr1;
input  [4:0] zext_ln223_2;
input  [5:0] addr2_cast_cast;
output  [8191:0] this_p1_10_out;
output   this_p1_10_out_ap_vld;
output  [8191:0] this_p3_10_out;
output   this_p3_10_out_ap_vld;
output  [8191:0] this_p4_10_out;
output   this_p4_10_out_ap_vld;
output  [8191:0] grp_dpu_unit_fu_2995_p_din1;
output  [8191:0] grp_dpu_unit_fu_2995_p_din2;
output  [8191:0] grp_dpu_unit_fu_2995_p_din3;
output  [8191:0] grp_dpu_unit_fu_2995_p_din4;
output  [7:0] grp_dpu_unit_fu_2995_p_din5;
input  [8191:0] grp_dpu_unit_fu_2995_p_dout0_0;
input  [8191:0] grp_dpu_unit_fu_2995_p_dout0_1;
output   grp_dpu_unit_fu_2995_p_ce;

reg ap_idle;
reg[7:0] this_pMem_address0;
reg this_pMem_ce0;
reg[1023:0] this_pMem_we0;
reg[7:0] this_pMem_address1;
reg this_pMem_ce1;
reg[1023:0] this_pMem_we1;
reg this_p1_10_out_ap_vld;
reg this_p3_10_out_ap_vld;
reg this_p4_10_out_ap_vld;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state4_pp0_stage1_iter1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln221_reg_387;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln221_fu_243_p2;
wire   [6:0] zext_ln223_1_fu_259_p1;
reg   [6:0] zext_ln223_1_reg_391;
reg   [6:0] zext_ln223_1_reg_391_pp0_iter1_reg;
reg   [8191:0] this_p3_ret_reg_407;
reg   [8191:0] this_p4_ret_reg_413;
reg    ap_enable_reg_pp0_iter0_reg;
reg    grp_dpu_unit_fu_200_ap_ce;
wire    ap_block_state1_pp0_stage0_iter0_ignore_call14;
wire    ap_block_state3_pp0_stage0_iter1_ignore_call14;
wire    ap_block_pp0_stage0_11001_ignoreCallOp51;
wire    ap_block_state2_pp0_stage1_iter0_ignore_call14;
wire    ap_block_state4_pp0_stage1_iter1_ignore_call14;
wire    ap_block_pp0_stage1_11001_ignoreCallOp49;
wire    ap_block_pp0_stage1;
wire   [63:0] idxprom_i744_fu_275_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] idxprom_i733_fu_286_p1;
wire   [63:0] idxprom2_i714_fu_322_p1;
wire   [63:0] idxprom2_i703_fu_332_p1;
reg   [2:0] i_48_fu_82;
wire   [2:0] i_63_fu_249_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_i;
reg   [8191:0] this_p4_10_fu_86;
wire    ap_block_pp0_stage1_11001;
reg   [8191:0] ap_sig_allocacmp_this_p4_10_load_1;
reg   [8191:0] this_p3_10_fu_90;
reg   [8191:0] ap_sig_allocacmp_this_p3_10_load_1;
reg   [8191:0] this_p1_10_fu_94;
wire    ap_block_pp0_stage1_01001;
wire   [7:0] zext_ln223_2_cast_fu_216_p1;
wire   [7:0] add_ln223_fu_263_p2;
wire   [7:0] zext_ln223_fu_255_p1;
wire   [7:0] add_ln223_1_fu_269_p2;
wire   [6:0] addr2_cast_cast_cast_fu_212_p1;
wire   [6:0] add_ln224_fu_280_p2;
wire   [6:0] add_ln226_fu_317_p2;
wire   [6:0] add_ln227_fu_327_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
reg    ap_block_pp0;
reg    ap_enable_operation_39;
reg    ap_enable_state1_pp0_iter0_stage0;
reg    ap_enable_operation_47;
reg    ap_enable_state2_pp0_iter0_stage1;
wire    ap_enable_operation_58;
reg    ap_enable_state4_pp0_iter1_stage1;
wire    ap_enable_operation_62;
reg    ap_enable_operation_43;
reg    ap_enable_operation_48;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

dpu_keygen_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln221_fu_243_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_48_fu_82 <= i_63_fu_249_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_48_fu_82 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        this_p1_10_fu_94 <= this_p1_9;
    end else if (((icmp_ln221_reg_387 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        this_p1_10_fu_94 <= this_pMem_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        this_p3_10_fu_90 <= this_p3_9;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        this_p3_10_fu_90 <= this_p3_ret_reg_407;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        this_p4_10_fu_86 <= this_p4_9;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        this_p4_10_fu_86 <= this_p4_ret_reg_413;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln221_reg_387 <= icmp_ln221_fu_243_p2;
        this_p3_ret_reg_407 <= grp_dpu_unit_fu_2995_p_dout0_0;
        this_p4_ret_reg_413 <= grp_dpu_unit_fu_2995_p_dout0_1;
        zext_ln223_1_reg_391_pp0_iter1_reg[2 : 0] <= zext_ln223_1_reg_391[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln221_fu_243_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        zext_ln223_1_reg_391[2 : 0] <= zext_ln223_1_fu_259_p1[2 : 0];
    end
end

always @ (*) begin
    if (((icmp_ln221_reg_387 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i = 3'd0;
    end else begin
        ap_sig_allocacmp_i = i_48_fu_82;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_sig_allocacmp_this_p3_10_load_1 = this_p3_ret_reg_407;
    end else begin
        ap_sig_allocacmp_this_p3_10_load_1 = this_p3_10_fu_90;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_sig_allocacmp_this_p4_10_load_1 = this_p4_ret_reg_413;
    end else begin
        ap_sig_allocacmp_this_p4_10_load_1 = this_p4_10_fu_86;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp51) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp49) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_dpu_unit_fu_200_ap_ce = 1'b1;
    end else begin
        grp_dpu_unit_fu_200_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln221_reg_387 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        this_p1_10_out_ap_vld = 1'b1;
    end else begin
        this_p1_10_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln221_reg_387 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        this_p3_10_out_ap_vld = 1'b1;
    end else begin
        this_p3_10_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln221_reg_387 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        this_p4_10_out_ap_vld = 1'b1;
    end else begin
        this_p4_10_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        this_pMem_address0 = idxprom2_i703_fu_332_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        this_pMem_address0 = idxprom_i733_fu_286_p1;
    end else begin
        this_pMem_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        this_pMem_address1 = idxprom2_i714_fu_322_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        this_pMem_address1 = idxprom_i744_fu_275_p1;
    end else begin
        this_pMem_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        this_pMem_ce0 = 1'b1;
    end else begin
        this_pMem_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        this_pMem_ce1 = 1'b1;
    end else begin
        this_pMem_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        this_pMem_we0 = 1024'd179769313486231590772930519078902473361797697894230657273430081157732675805500963132708477322407536021120113879871393357658789768814416622492847430639474124377767893424865485276302219601246094119453082952085005768838150682342462881473913110540827237163350510684586298239947245938479716304835356329624224137215;
    end else begin
        this_pMem_we0 = 1024'd0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        this_pMem_we1 = 1024'd179769313486231590772930519078902473361797697894230657273430081157732675805500963132708477322407536021120113879871393357658789768814416622492847430639474124377767893424865485276302219601246094119453082952085005768838150682342462881473913110540827237163350510684586298239947245938479716304835356329624224137215;
    end else begin
        this_pMem_we1 = 1024'd0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln223_1_fu_269_p2 = (add_ln223_fu_263_p2 + zext_ln223_fu_255_p1);

assign add_ln223_fu_263_p2 = (zext_ln223_2_cast_fu_216_p1 + addr1);

assign add_ln224_fu_280_p2 = (zext_ln223_1_fu_259_p1 + addr2_cast_cast_cast_fu_212_p1);

assign add_ln226_fu_317_p2 = ($signed(zext_ln223_1_reg_391_pp0_iter1_reg) + $signed(7'd76));

assign add_ln227_fu_327_p2 = ($signed(zext_ln223_1_reg_391_pp0_iter1_reg) + $signed(7'd82));

assign addr2_cast_cast_cast_fu_212_p1 = addr2_cast_cast;

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_pp0 = (((ap_ST_fsm_pp0_stage1 == ap_CS_fsm) & (1'b1 == ap_block_pp0_stage1_subdone)) | ((ap_ST_fsm_pp0_stage0 == ap_CS_fsm) & (1'b1 == ap_block_pp0_stage0_subdone)));
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001_ignoreCallOp51 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001_ignoreCallOp49 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0_ignore_call14 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0_ignore_call14 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1_ignore_call14 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1_ignore_call14 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_enable_operation_39 = (icmp_ln221_fu_243_p2 == 1'd0);
end

always @ (*) begin
    ap_enable_operation_43 = (icmp_ln221_fu_243_p2 == 1'd0);
end

always @ (*) begin
    ap_enable_operation_47 = (icmp_ln221_reg_387 == 1'd0);
end

always @ (*) begin
    ap_enable_operation_48 = (icmp_ln221_reg_387 == 1'd0);
end

assign ap_enable_operation_58 = (1'b1 == 1'b1);

assign ap_enable_operation_62 = (1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_enable_state1_pp0_iter0_stage0 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_enable_state2_pp0_iter0_stage1 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end

always @ (*) begin
    ap_enable_state4_pp0_iter1_stage1 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

assign grp_dpu_unit_fu_2995_p_ce = grp_dpu_unit_fu_200_ap_ce;

assign grp_dpu_unit_fu_2995_p_din1 = this_pMem_q1;

assign grp_dpu_unit_fu_2995_p_din2 = this_pMem_q0;

assign grp_dpu_unit_fu_2995_p_din3 = ap_sig_allocacmp_this_p3_10_load_1;

assign grp_dpu_unit_fu_2995_p_din4 = ap_sig_allocacmp_this_p4_10_load_1;

assign grp_dpu_unit_fu_2995_p_din5 = 8'd2;

assign i_63_fu_249_p2 = (ap_sig_allocacmp_i + 3'd1);

assign icmp_ln221_fu_243_p2 = ((ap_sig_allocacmp_i == itr_cast) ? 1'b1 : 1'b0);

assign idxprom2_i703_fu_332_p1 = add_ln227_fu_327_p2;

assign idxprom2_i714_fu_322_p1 = add_ln226_fu_317_p2;

assign idxprom_i733_fu_286_p1 = add_ln224_fu_280_p2;

assign idxprom_i744_fu_275_p1 = add_ln223_1_fu_269_p2;

assign this_p1_10_out = this_p1_10_fu_94;

assign this_p3_10_out = this_p3_10_fu_90;

assign this_p4_10_out = this_p4_10_fu_86;

assign this_pMem_d0 = this_p4_ret_reg_413;

assign this_pMem_d1 = this_p3_ret_reg_407;

assign zext_ln223_1_fu_259_p1 = ap_sig_allocacmp_i;

assign zext_ln223_2_cast_fu_216_p1 = zext_ln223_2;

assign zext_ln223_fu_255_p1 = ap_sig_allocacmp_i;

always @ (posedge ap_clk) begin
    zext_ln223_1_reg_391[6:3] <= 4'b0000;
    zext_ln223_1_reg_391_pp0_iter1_reg[6:3] <= 4'b0000;
end

endmodule //dpu_keygen_dpu_func_Pipeline_FUNC_MATMUL_LOOP1
