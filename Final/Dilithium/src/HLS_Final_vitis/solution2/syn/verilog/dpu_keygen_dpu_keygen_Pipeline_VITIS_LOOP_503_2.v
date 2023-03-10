// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dpu_keygen_dpu_keygen_Pipeline_VITIS_LOOP_503_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ctr,
        buf_r_address0,
        buf_r_ce0,
        buf_r_q0,
        buf_r_address1,
        buf_r_ce1,
        buf_r_q1,
        tmp1_address0,
        tmp1_ce0,
        tmp1_we0,
        tmp1_d0,
        ctr_1_out,
        ctr_1_out_ap_vld,
        ap_return
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] ctr;
output  [7:0] buf_r_address0;
output   buf_r_ce0;
input  [7:0] buf_r_q0;
output  [7:0] buf_r_address1;
output   buf_r_ce1;
input  [7:0] buf_r_q1;
output  [7:0] tmp1_address0;
output   tmp1_ce0;
output   tmp1_we0;
output  [22:0] tmp1_d0;
output  [31:0] ctr_1_out;
output   ctr_1_out_ap_vld;
output  [0:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] buf_r_address0;
reg buf_r_ce0;
reg buf_r_ce1;
reg tmp1_ce0;
reg tmp1_we0;
reg ctr_1_out_ap_vld;
reg[0:0] ap_return;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] i_reg_264;
wire    ap_CS_fsm_state2;
reg   [31:0] grp_load_fu_139_p1;
reg   [31:0] ctr_9_reg_269;
wire   [7:0] add_ln503_fu_159_p2;
reg   [7:0] add_ln503_reg_276;
wire   [0:0] icmp_ln503_fu_165_p2;
reg   [0:0] icmp_ln503_reg_281;
reg   [7:0] buf_load_reg_295;
wire    ap_CS_fsm_state3;
reg   [7:0] buf_load_1_reg_300;
reg   [0:0] ap_phi_mux_UnifiedRetVal_phi_fu_131_p4;
reg   [0:0] UnifiedRetVal_reg_127;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state5;
wire   [63:0] i_18_cast_fu_171_p1;
wire   [63:0] zext_ln507_fu_182_p1;
wire   [63:0] zext_ln508_fu_192_p1;
wire   [63:0] zext_ln511_fu_216_p1;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln510_fu_210_p2;
reg   [7:0] i_17_fu_60;
wire   [0:0] icmp_ln514_fu_240_p2;
reg   [31:0] ctr_1_fu_64;
wire   [31:0] ctr_10_fu_220_p2;
wire   [31:0] ctr_cast_fu_142_p1;
reg   [31:0] ap_sig_allocacmp_ctr_11;
wire   [22:0] t_fu_201_p4;
wire   [7:0] add_ln507_fu_176_p2;
wire   [7:0] add_ln508_fu_187_p2;
wire   [6:0] trunc_ln509_fu_197_p1;
wire   [23:0] tmp_fu_230_p4;
reg   [0:0] ap_return_preg;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_return_preg = 1'd0;
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
        ap_return_preg <= 1'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            ap_return_preg <= ap_phi_mux_UnifiedRetVal_phi_fu_131_p4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln503_reg_281 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        UnifiedRetVal_reg_127 <= 1'd0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        UnifiedRetVal_reg_127 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        ctr_1_fu_64 <= ctr_cast_fu_142_p1;
    end else if (((icmp_ln503_reg_281 == 1'd1) & (1'b1 == ap_CS_fsm_state4) & (icmp_ln510_fu_210_p2 == 1'd1))) begin
        ctr_1_fu_64 <= ctr_10_fu_220_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_17_fu_60 <= 8'd0;
    end else if (((icmp_ln503_reg_281 == 1'd1) & (1'b1 == ap_CS_fsm_state4) & (icmp_ln514_fu_240_p2 == 1'd1))) begin
        i_17_fu_60 <= add_ln503_reg_276;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln503_reg_276 <= add_ln503_fu_159_p2;
        ctr_9_reg_269 <= grp_load_fu_139_p1;
        i_reg_264 <= i_17_fu_60;
        icmp_ln503_reg_281 <= icmp_ln503_fu_165_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln503_reg_281 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buf_load_1_reg_300 <= buf_r_q0;
        buf_load_reg_295 <= buf_r_q1;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln503_reg_281 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_phi_mux_UnifiedRetVal_phi_fu_131_p4 = 1'd0;
    end else begin
        ap_phi_mux_UnifiedRetVal_phi_fu_131_p4 = UnifiedRetVal_reg_127;
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
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_return = ap_phi_mux_UnifiedRetVal_phi_fu_131_p4;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if (((icmp_ln503_reg_281 == 1'd1) & (1'b1 == ap_CS_fsm_state4) & (icmp_ln510_fu_210_p2 == 1'd1))) begin
        ap_sig_allocacmp_ctr_11 = ctr_10_fu_220_p2;
    end else begin
        ap_sig_allocacmp_ctr_11 = ctr_1_fu_64;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_r_address0 = zext_ln508_fu_192_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_r_address0 = zext_ln507_fu_182_p1;
    end else begin
        buf_r_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        buf_r_ce0 = 1'b1;
    end else begin
        buf_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_r_ce1 = 1'b1;
    end else begin
        buf_r_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | ((icmp_ln503_reg_281 == 1'd1) & (1'b1 == ap_CS_fsm_state5)))) begin
        ctr_1_out_ap_vld = 1'b1;
    end else begin
        ctr_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln503_reg_281 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        grp_load_fu_139_p1 = ap_sig_allocacmp_ctr_11;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_load_fu_139_p1 = ctr_1_fu_64;
    end else begin
        grp_load_fu_139_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp1_ce0 = 1'b1;
    end else begin
        tmp1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln503_reg_281 == 1'd1) & (1'b1 == ap_CS_fsm_state4) & (icmp_ln510_fu_210_p2 == 1'd1))) begin
        tmp1_we0 = 1'b1;
    end else begin
        tmp1_we0 = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln503_reg_281 == 1'd1) & (1'b1 == ap_CS_fsm_state4) & (icmp_ln514_fu_240_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if (((icmp_ln503_reg_281 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln503_fu_159_p2 = (i_17_fu_60 + 8'd3);

assign add_ln507_fu_176_p2 = (i_17_fu_60 + 8'd1);

assign add_ln508_fu_187_p2 = (i_reg_264 + 8'd2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign buf_r_address1 = i_18_cast_fu_171_p1;

assign ctr_10_fu_220_p2 = (ctr_9_reg_269 + 32'd1);

assign ctr_1_out = ctr_9_reg_269;

assign ctr_cast_fu_142_p1 = ctr;

assign i_18_cast_fu_171_p1 = i_17_fu_60;

assign icmp_ln503_fu_165_p2 = ((add_ln503_fu_159_p2 < 8'd169) ? 1'b1 : 1'b0);

assign icmp_ln510_fu_210_p2 = ((t_fu_201_p4 < 23'd8380417) ? 1'b1 : 1'b0);

assign icmp_ln514_fu_240_p2 = ((tmp_fu_230_p4 == 24'd0) ? 1'b1 : 1'b0);

assign t_fu_201_p4 = {{{trunc_ln509_fu_197_p1}, {buf_load_1_reg_300}}, {buf_load_reg_295}};

assign tmp1_address0 = zext_ln511_fu_216_p1;

assign tmp1_d0 = t_fu_201_p4;

assign tmp_fu_230_p4 = {{grp_load_fu_139_p1[31:8]}};

assign trunc_ln509_fu_197_p1 = buf_r_q0[6:0];

assign zext_ln507_fu_182_p1 = add_ln507_fu_176_p2;

assign zext_ln508_fu_192_p1 = add_ln508_fu_187_p2;

assign zext_ln511_fu_216_p1 = ctr_9_reg_269;

endmodule //dpu_keygen_dpu_keygen_Pipeline_VITIS_LOOP_503_2
