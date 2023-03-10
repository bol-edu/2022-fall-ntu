// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_top_Pipeline_VITIS_LOOP_6_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        polar_encoded_bits_V_address0,
        polar_encoded_bits_V_ce0,
        polar_encoded_bits_V_q0,
        SNR,
        mul_i,
        polar_encoded_LLRs_address0,
        polar_encoded_LLRs_ce0,
        polar_encoded_LLRs_we0,
        polar_encoded_LLRs_d0,
        grp_fu_417_p_din0,
        grp_fu_417_p_din1,
        grp_fu_417_p_dout0,
        grp_fu_417_p_ce,
        grp_fu_448_p_din0,
        grp_fu_448_p_din1,
        grp_fu_448_p_opcode,
        grp_fu_448_p_dout0,
        grp_fu_448_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] polar_encoded_bits_V_address0;
output   polar_encoded_bits_V_ce0;
input  [0:0] polar_encoded_bits_V_q0;
input  [31:0] SNR;
input  [31:0] mul_i;
output  [15:0] polar_encoded_LLRs_address0;
output   polar_encoded_LLRs_ce0;
output   polar_encoded_LLRs_we0;
output  [31:0] polar_encoded_LLRs_d0;
output  [31:0] grp_fu_417_p_din0;
output  [31:0] grp_fu_417_p_din1;
input  [31:0] grp_fu_417_p_dout0;
output   grp_fu_417_p_ce;
output  [31:0] grp_fu_448_p_din0;
output  [31:0] grp_fu_448_p_din1;
output  [1:0] grp_fu_448_p_opcode;
input  [31:0] grp_fu_448_p_dout0;
output   grp_fu_448_p_ce;

reg ap_idle;
reg polar_encoded_bits_V_ce0;
reg polar_encoded_LLRs_ce0;
reg polar_encoded_LLRs_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_state9_pp0_stage0_iter8;
wire    ap_block_state10_pp0_stage0_iter9;
wire    ap_block_state11_pp0_stage0_iter10;
wire    ap_block_state12_pp0_stage0_iter11;
wire    ap_block_state13_pp0_stage0_iter12;
wire    ap_block_state14_pp0_stage0_iter13;
wire    ap_block_state15_pp0_stage0_iter14;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln6_fu_123_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [9:0] gaussian_address0;
reg    gaussian_ce0;
wire   [31:0] gaussian_q0;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] i_cast1_fu_135_p1;
reg   [63:0] i_cast1_reg_192;
reg   [63:0] i_cast1_reg_192_pp0_iter1_reg;
reg   [63:0] i_cast1_reg_192_pp0_iter2_reg;
reg   [63:0] i_cast1_reg_192_pp0_iter3_reg;
reg   [63:0] i_cast1_reg_192_pp0_iter4_reg;
reg   [63:0] i_cast1_reg_192_pp0_iter5_reg;
reg   [63:0] i_cast1_reg_192_pp0_iter6_reg;
reg   [63:0] i_cast1_reg_192_pp0_iter7_reg;
reg   [63:0] i_cast1_reg_192_pp0_iter8_reg;
reg   [63:0] i_cast1_reg_192_pp0_iter9_reg;
reg   [63:0] i_cast1_reg_192_pp0_iter10_reg;
reg   [63:0] i_cast1_reg_192_pp0_iter11_reg;
reg   [63:0] i_cast1_reg_192_pp0_iter12_reg;
reg   [63:0] i_cast1_reg_192_pp0_iter13_reg;
wire   [9:0] empty_fu_140_p1;
reg   [9:0] empty_reg_197;
reg   [9:0] empty_reg_197_pp0_iter1_reg;
reg   [9:0] empty_reg_197_pp0_iter2_reg;
reg   [9:0] empty_reg_197_pp0_iter3_reg;
reg   [9:0] empty_reg_197_pp0_iter4_reg;
reg   [9:0] empty_reg_197_pp0_iter5_reg;
reg   [9:0] empty_reg_197_pp0_iter6_reg;
reg   [0:0] rhs_reg_207;
wire   [31:0] grp_fu_112_p1;
reg   [31:0] conv_i_i_reg_217;
reg   [31:0] mul_i_i_reg_227;
reg   [31:0] add_i_reg_237;
wire   [31:0] grp_fu_108_p2;
reg   [31:0] mul4_i_reg_242;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln7_fu_167_p1;
reg   [15:0] i_fu_44;
wire   [15:0] add_ln6_fu_129_p2;
wire    ap_loop_init;
reg   [15:0] ap_sig_allocacmp_i_1;
wire  signed [31:0] grp_fu_112_p0;
wire   [1:0] ret_V_2_fu_149_p3;
wire   [1:0] ret_V_fu_156_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_block_pp0_stage0_00001;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_done_reg = 1'b0;
end

top_top_Pipeline_VITIS_LOOP_6_1_gaussian_ROM_AUTO_1R #(
    .DataWidth( 32 ),
    .AddressRange( 1024 ),
    .AddressWidth( 10 ))
gaussian_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(gaussian_address0),
    .ce0(gaussian_ce0),
    .q0(gaussian_q0)
);

top_fmul_32ns_32ns_32_2_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_2_max_dsp_1_U156(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(mul_i),
    .din1(add_i_reg_237),
    .ce(1'b1),
    .dout(grp_fu_108_p2)
);

top_sitofp_32s_32_4_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
sitofp_32s_32_4_no_dsp_1_U157(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_112_p0),
    .ce(1'b1),
    .dout(grp_fu_112_p1)
);

top_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln6_fu_123_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_44 <= add_ln6_fu_129_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_44 <= 16'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_i_reg_237 <= grp_fu_448_p_dout0;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        conv_i_i_reg_217 <= grp_fu_112_p1;
        empty_reg_197_pp0_iter2_reg <= empty_reg_197_pp0_iter1_reg;
        empty_reg_197_pp0_iter3_reg <= empty_reg_197_pp0_iter2_reg;
        empty_reg_197_pp0_iter4_reg <= empty_reg_197_pp0_iter3_reg;
        empty_reg_197_pp0_iter5_reg <= empty_reg_197_pp0_iter4_reg;
        empty_reg_197_pp0_iter6_reg <= empty_reg_197_pp0_iter5_reg;
        i_cast1_reg_192_pp0_iter10_reg[15 : 0] <= i_cast1_reg_192_pp0_iter9_reg[15 : 0];
        i_cast1_reg_192_pp0_iter11_reg[15 : 0] <= i_cast1_reg_192_pp0_iter10_reg[15 : 0];
        i_cast1_reg_192_pp0_iter12_reg[15 : 0] <= i_cast1_reg_192_pp0_iter11_reg[15 : 0];
        i_cast1_reg_192_pp0_iter13_reg[15 : 0] <= i_cast1_reg_192_pp0_iter12_reg[15 : 0];
        i_cast1_reg_192_pp0_iter2_reg[15 : 0] <= i_cast1_reg_192_pp0_iter1_reg[15 : 0];
        i_cast1_reg_192_pp0_iter3_reg[15 : 0] <= i_cast1_reg_192_pp0_iter2_reg[15 : 0];
        i_cast1_reg_192_pp0_iter4_reg[15 : 0] <= i_cast1_reg_192_pp0_iter3_reg[15 : 0];
        i_cast1_reg_192_pp0_iter5_reg[15 : 0] <= i_cast1_reg_192_pp0_iter4_reg[15 : 0];
        i_cast1_reg_192_pp0_iter6_reg[15 : 0] <= i_cast1_reg_192_pp0_iter5_reg[15 : 0];
        i_cast1_reg_192_pp0_iter7_reg[15 : 0] <= i_cast1_reg_192_pp0_iter6_reg[15 : 0];
        i_cast1_reg_192_pp0_iter8_reg[15 : 0] <= i_cast1_reg_192_pp0_iter7_reg[15 : 0];
        i_cast1_reg_192_pp0_iter9_reg[15 : 0] <= i_cast1_reg_192_pp0_iter8_reg[15 : 0];
        mul4_i_reg_242 <= grp_fu_108_p2;
        mul_i_i_reg_227 <= grp_fu_417_p_dout0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_197_pp0_iter1_reg <= empty_reg_197;
        i_cast1_reg_192_pp0_iter1_reg[15 : 0] <= i_cast1_reg_192[15 : 0];
        rhs_reg_207 <= polar_encoded_bits_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln6_fu_123_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_197 <= empty_fu_140_p1;
        i_cast1_reg_192[15 : 0] <= i_cast1_fu_135_p1[15 : 0];
    end
end

always @ (*) begin
    if (((icmp_ln6_fu_123_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1 = 16'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_44;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        gaussian_ce0 = 1'b1;
    end else begin
        gaussian_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        polar_encoded_LLRs_ce0 = 1'b1;
    end else begin
        polar_encoded_LLRs_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        polar_encoded_LLRs_we0 = 1'b1;
    end else begin
        polar_encoded_LLRs_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        polar_encoded_bits_V_ce0 = 1'b1;
    end else begin
        polar_encoded_bits_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln6_fu_129_p2 = (ap_sig_allocacmp_i_1 + 16'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter14 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign empty_fu_140_p1 = ap_sig_allocacmp_i_1[9:0];

assign gaussian_address0 = zext_ln7_fu_167_p1;

assign grp_fu_112_p0 = $signed(ret_V_fu_156_p2);

assign grp_fu_417_p_ce = 1'b1;

assign grp_fu_417_p_din0 = conv_i_i_reg_217;

assign grp_fu_417_p_din1 = SNR;

assign grp_fu_448_p_ce = 1'b1;

assign grp_fu_448_p_din0 = mul_i_i_reg_227;

assign grp_fu_448_p_din1 = gaussian_q0;

assign grp_fu_448_p_opcode = 2'd0;

assign i_cast1_fu_135_p1 = ap_sig_allocacmp_i_1;

assign icmp_ln6_fu_123_p2 = ((ap_sig_allocacmp_i_1 == 16'd49152) ? 1'b1 : 1'b0);

assign polar_encoded_LLRs_address0 = i_cast1_reg_192_pp0_iter13_reg;

assign polar_encoded_LLRs_d0 = mul4_i_reg_242;

assign polar_encoded_bits_V_address0 = i_cast1_fu_135_p1;

assign ret_V_2_fu_149_p3 = {{rhs_reg_207}, {1'd0}};

assign ret_V_fu_156_p2 = (2'd1 - ret_V_2_fu_149_p3);

assign zext_ln7_fu_167_p1 = empty_reg_197_pp0_iter6_reg;

always @ (posedge ap_clk) begin
    i_cast1_reg_192[63:16] <= 48'b000000000000000000000000000000000000000000000000;
    i_cast1_reg_192_pp0_iter1_reg[63:16] <= 48'b000000000000000000000000000000000000000000000000;
    i_cast1_reg_192_pp0_iter2_reg[63:16] <= 48'b000000000000000000000000000000000000000000000000;
    i_cast1_reg_192_pp0_iter3_reg[63:16] <= 48'b000000000000000000000000000000000000000000000000;
    i_cast1_reg_192_pp0_iter4_reg[63:16] <= 48'b000000000000000000000000000000000000000000000000;
    i_cast1_reg_192_pp0_iter5_reg[63:16] <= 48'b000000000000000000000000000000000000000000000000;
    i_cast1_reg_192_pp0_iter6_reg[63:16] <= 48'b000000000000000000000000000000000000000000000000;
    i_cast1_reg_192_pp0_iter7_reg[63:16] <= 48'b000000000000000000000000000000000000000000000000;
    i_cast1_reg_192_pp0_iter8_reg[63:16] <= 48'b000000000000000000000000000000000000000000000000;
    i_cast1_reg_192_pp0_iter9_reg[63:16] <= 48'b000000000000000000000000000000000000000000000000;
    i_cast1_reg_192_pp0_iter10_reg[63:16] <= 48'b000000000000000000000000000000000000000000000000;
    i_cast1_reg_192_pp0_iter11_reg[63:16] <= 48'b000000000000000000000000000000000000000000000000;
    i_cast1_reg_192_pp0_iter12_reg[63:16] <= 48'b000000000000000000000000000000000000000000000000;
    i_cast1_reg_192_pp0_iter13_reg[63:16] <= 48'b000000000000000000000000000000000000000000000000;
end

endmodule //top_top_Pipeline_VITIS_LOOP_6_1
