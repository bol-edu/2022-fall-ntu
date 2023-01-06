// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Loop_writeoutput_pro (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        AB_address0,
        AB_ce0,
        AB_q0,
        AB_address1,
        AB_ce1,
        AB_q1,
        ABpartial_out_address0,
        ABpartial_out_ce0,
        ABpartial_out_we0,
        ABpartial_out_d0,
        ABpartial_out_address1,
        ABpartial_out_ce1,
        ABpartial_out_we1,
        ABpartial_out_d1
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_pp0_stage0 = 4'd2;
parameter    ap_ST_fsm_pp0_stage1 = 4'd4;
parameter    ap_ST_fsm_state5 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [3:0] AB_address0;
output   AB_ce0;
input  [31:0] AB_q0;
output  [3:0] AB_address1;
output   AB_ce1;
input  [31:0] AB_q1;
output  [3:0] ABpartial_out_address0;
output   ABpartial_out_ce0;
output   ABpartial_out_we0;
output  [31:0] ABpartial_out_d0;
output  [3:0] ABpartial_out_address1;
output   ABpartial_out_ce1;
output   ABpartial_out_we1;
output  [31:0] ABpartial_out_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] AB_address0;
reg AB_ce0;
reg[3:0] AB_address1;
reg AB_ce1;
reg[3:0] ABpartial_out_address0;
reg ABpartial_out_ce0;
reg ABpartial_out_we0;
reg[3:0] ABpartial_out_address1;
reg ABpartial_out_ce1;
reg ABpartial_out_we1;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [2:0] i3_0_reg_132;
wire   [0:0] icmp_ln33_fu_143_p2;
reg   [0:0] icmp_ln33_reg_211;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] i_fu_149_p2;
reg   [2:0] i_reg_215;
reg    ap_enable_reg_pp0_iter0;
wire   [4:0] tmp_fu_155_p3;
reg   [4:0] tmp_reg_220;
wire   [63:0] zext_ln35_fu_163_p1;
reg   [63:0] zext_ln35_reg_226;
wire   [63:0] tmp_1_fu_174_p3;
reg   [63:0] tmp_1_reg_236;
wire   [63:0] tmp_3_fu_188_p3;
reg   [63:0] tmp_3_reg_246;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state3_pp0_stage1_iter0;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_4_fu_202_p3;
reg   [63:0] tmp_4_reg_256;
reg    ap_block_state1;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage1_subdone;
reg   [2:0] ap_phi_mux_i3_0_phi_fu_136_p4;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire   [4:0] or_ln35_fu_168_p2;
wire   [4:0] or_ln35_1_fu_183_p2;
wire   [4:0] or_ln35_2_fu_197_p2;
wire    ap_CS_fsm_state5;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state5)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i3_0_reg_132 <= 3'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln33_reg_211 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        i3_0_reg_132 <= i_reg_215;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_215 <= i_fu_149_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln33_reg_211 <= icmp_ln33_fu_143_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln33_fu_143_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_1_reg_236[4 : 2] <= tmp_1_fu_174_p3[4 : 2];
        tmp_reg_220[4 : 2] <= tmp_fu_155_p3[4 : 2];
        zext_ln35_reg_226[4 : 2] <= zext_ln35_fu_163_p1[4 : 2];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln33_reg_211 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_3_reg_246[4 : 2] <= tmp_3_fu_188_p3[4 : 2];
        tmp_4_reg_256[4 : 2] <= tmp_4_fu_202_p3[4 : 2];
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            AB_address0 = tmp_3_fu_188_p3;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            AB_address0 = zext_ln35_fu_163_p1;
        end else begin
            AB_address0 = 'bx;
        end
    end else begin
        AB_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            AB_address1 = tmp_4_fu_202_p3;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            AB_address1 = tmp_1_fu_174_p3;
        end else begin
            AB_address1 = 'bx;
        end
    end else begin
        AB_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        AB_ce0 = 1'b1;
    end else begin
        AB_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        AB_ce1 = 1'b1;
    end else begin
        AB_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ABpartial_out_address0 = tmp_3_reg_246;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1))) begin
        ABpartial_out_address0 = zext_ln35_reg_226;
    end else begin
        ABpartial_out_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ABpartial_out_address1 = tmp_4_reg_256;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1))) begin
        ABpartial_out_address1 = tmp_1_reg_236;
    end else begin
        ABpartial_out_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1)))) begin
        ABpartial_out_ce0 = 1'b1;
    end else begin
        ABpartial_out_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1)))) begin
        ABpartial_out_ce1 = 1'b1;
    end else begin
        ABpartial_out_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln33_reg_211 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln33_reg_211 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1)))) begin
        ABpartial_out_we0 = 1'b1;
    end else begin
        ABpartial_out_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln33_reg_211 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln33_reg_211 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1)))) begin
        ABpartial_out_we1 = 1'b1;
    end else begin
        ABpartial_out_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln33_fu_143_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if (((icmp_ln33_reg_211 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_i3_0_phi_fu_136_p4 = i_reg_215;
    end else begin
        ap_phi_mux_i3_0_phi_fu_136_p4 = i3_0_reg_132;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln33_fu_143_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((icmp_ln33_fu_143_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
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
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ABpartial_out_d0 = AB_q0;

assign ABpartial_out_d1 = AB_q1;

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign i_fu_149_p2 = (ap_phi_mux_i3_0_phi_fu_136_p4 + 3'd1);

assign icmp_ln33_fu_143_p2 = ((ap_phi_mux_i3_0_phi_fu_136_p4 == 3'd4) ? 1'b1 : 1'b0);

assign or_ln35_1_fu_183_p2 = (tmp_reg_220 | 5'd2);

assign or_ln35_2_fu_197_p2 = (tmp_reg_220 | 5'd3);

assign or_ln35_fu_168_p2 = (tmp_fu_155_p3 | 5'd1);

assign tmp_1_fu_174_p3 = {{59'd0}, {or_ln35_fu_168_p2}};

assign tmp_3_fu_188_p3 = {{59'd0}, {or_ln35_1_fu_183_p2}};

assign tmp_4_fu_202_p3 = {{59'd0}, {or_ln35_2_fu_197_p2}};

assign tmp_fu_155_p3 = {{ap_phi_mux_i3_0_phi_fu_136_p4}, {2'd0}};

assign zext_ln35_fu_163_p1 = tmp_fu_155_p3;

always @ (posedge ap_clk) begin
    tmp_reg_220[1:0] <= 2'b00;
    zext_ln35_reg_226[1:0] <= 2'b00;
    zext_ln35_reg_226[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    tmp_1_reg_236[1:0] <= 2'b01;
    tmp_1_reg_236[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    tmp_3_reg_246[1:0] <= 2'b10;
    tmp_3_reg_246[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    tmp_4_reg_256[1:0] <= 2'b11;
    tmp_4_reg_256[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end

endmodule //Loop_writeoutput_pro
