// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dpu_keygen_dpu_pack_4_Pipeline_VITIS_LOOP_693_10 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        this_5_9_reload,
        sk_address0,
        sk_ce0,
        sk_we0,
        sk_d0,
        sk_address1,
        sk_ce1,
        sk_we1,
        sk_d1,
        ptr_i,
        ptr_o,
        ptr_o_ap_vld
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8191:0] this_5_9_reload;
output  [11:0] sk_address0;
output   sk_ce0;
output   sk_we0;
output  [7:0] sk_d0;
output  [11:0] sk_address1;
output   sk_ce1;
output   sk_we1;
output  [7:0] sk_d1;
input  [31:0] ptr_i;
output  [31:0] ptr_o;
output   ptr_o_ap_vld;

reg ap_idle;
reg[11:0] sk_address0;
reg sk_ce0;
reg sk_we0;
reg[7:0] sk_d0;
reg[11:0] sk_address1;
reg sk_ce1;
reg sk_we1;
reg[7:0] sk_d1;
reg[31:0] ptr_o;
reg ptr_o_ap_vld;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln693_fu_151_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state3;
wire    ap_block_state3_pp0_stage2_iter0;
wire   [12:0] shl_ln_fu_167_p3;
reg   [12:0] shl_ln_reg_370;
wire   [11:0] trunc_ln697_1_fu_204_p1;
reg   [11:0] trunc_ln697_1_reg_375;
reg   [7:0] trunc_ln3_reg_382;
reg   [7:0] trunc_ln5_reg_387;
wire    ap_CS_fsm_state2;
wire    ap_block_state2_pp0_stage1_iter0;
wire   [63:0] zext_ln697_fu_208_p1;
wire   [63:0] zext_ln698_fu_230_p1;
wire   [63:0] zext_ln699_fu_291_p1;
wire   [63:0] zext_ln701_fu_330_p1;
wire   [63:0] zext_ln702_fu_350_p1;
wire   [31:0] add_ln703_fu_245_p2;
reg   [7:0] i_fu_84;
wire   [7:0] add_ln693_fu_157_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_i_30;
wire   [7:0] trunc_ln697_fu_195_p1;
wire   [7:0] or_ln700_fu_308_p2;
wire   [6:0] trunc_ln695_fu_163_p1;
wire   [8191:0] zext_ln695_fu_175_p1;
wire   [8191:0] lshr_ln695_fu_179_p2;
wire   [23:0] trunc_ln695_1_fu_185_p1;
wire   [23:0] t_fu_189_p2;
wire   [11:0] add_ln698_fu_224_p2;
wire   [12:0] or_ln696_fu_262_p2;
wire   [8191:0] zext_ln696_fu_267_p1;
wire   [8191:0] lshr_ln696_fu_271_p2;
wire   [19:0] trunc_ln696_fu_276_p1;
wire   [11:0] add_ln699_fu_286_p2;
wire   [19:0] t_2_fu_280_p2;
wire   [3:0] trunc_ln700_fu_296_p1;
wire   [7:0] shl_ln5_fu_300_p3;
wire   [11:0] add_ln701_fu_325_p2;
wire   [11:0] add_ln702_fu_345_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
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
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
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
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln693_fu_151_p2 == 1'd0)) begin
            i_fu_84 <= add_ln693_fu_157_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_84 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln693_fu_151_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        shl_ln_reg_370[12 : 6] <= shl_ln_fu_167_p3[12 : 6];
        trunc_ln3_reg_382 <= {{t_fu_189_p2[23:16]}};
        trunc_ln697_1_reg_375 <= trunc_ln697_1_fu_204_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        trunc_ln5_reg_387 <= {{t_2_fu_280_p2[19:12]}};
    end
end

always @ (*) begin
    if ((ap_start_int == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if (((icmp_ln693_fu_151_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_i_30 = 8'd0;
    end else begin
        ap_sig_allocacmp_i_30 = i_fu_84;
    end
end

always @ (*) begin
    if (((icmp_ln693_fu_151_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        ptr_o = add_ln703_fu_245_p2;
    end else begin
        ptr_o = ptr_i;
    end
end

always @ (*) begin
    if (((icmp_ln693_fu_151_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ptr_o_ap_vld = 1'b1;
    end else begin
        ptr_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        sk_address0 = zext_ln702_fu_350_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sk_address0 = zext_ln701_fu_330_p1;
    end else if (((icmp_ln693_fu_151_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        sk_address0 = zext_ln698_fu_230_p1;
    end else begin
        sk_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        sk_address1 = zext_ln699_fu_291_p1;
    end else if (((icmp_ln693_fu_151_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        sk_address1 = zext_ln697_fu_208_p1;
    end else begin
        sk_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln693_fu_151_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        sk_ce0 = 1'b1;
    end else begin
        sk_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln693_fu_151_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        sk_ce1 = 1'b1;
    end else begin
        sk_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        sk_d0 = trunc_ln5_reg_387;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sk_d0 = {{t_2_fu_280_p2[11:4]}};
    end else if (((icmp_ln693_fu_151_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        sk_d0 = {{t_fu_189_p2[15:8]}};
    end else begin
        sk_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        sk_d1 = or_ln700_fu_308_p2;
    end else if (((icmp_ln693_fu_151_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        sk_d1 = trunc_ln697_fu_195_p1;
    end else begin
        sk_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln693_fu_151_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        sk_we0 = 1'b1;
    end else begin
        sk_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln693_fu_151_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        sk_we1 = 1'b1;
    end else begin
        sk_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln693_fu_151_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln693_fu_157_p2 = (ap_sig_allocacmp_i_30 + 8'd1);

assign add_ln698_fu_224_p2 = (trunc_ln697_1_fu_204_p1 + 12'd1);

assign add_ln699_fu_286_p2 = (trunc_ln697_1_reg_375 + 12'd2);

assign add_ln701_fu_325_p2 = (trunc_ln697_1_reg_375 + 12'd3);

assign add_ln702_fu_345_p2 = (trunc_ln697_1_reg_375 + 12'd4);

assign add_ln703_fu_245_p2 = (ptr_i + 32'd5);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln693_fu_151_p2 = ((ap_sig_allocacmp_i_30 == 8'd128) ? 1'b1 : 1'b0);

assign lshr_ln695_fu_179_p2 = this_5_9_reload >> zext_ln695_fu_175_p1;

assign lshr_ln696_fu_271_p2 = this_5_9_reload >> zext_ln696_fu_267_p1;

assign or_ln696_fu_262_p2 = (shl_ln_reg_370 | 13'd32);

assign or_ln700_fu_308_p2 = (trunc_ln3_reg_382 | shl_ln5_fu_300_p3);

assign shl_ln5_fu_300_p3 = {{trunc_ln700_fu_296_p1}, {4'd0}};

assign shl_ln_fu_167_p3 = {{trunc_ln695_fu_163_p1}, {6'd0}};

assign t_2_fu_280_p2 = ($signed(20'd524288) - $signed(trunc_ln696_fu_276_p1));

assign t_fu_189_p2 = (24'd524288 - trunc_ln695_1_fu_185_p1);

assign trunc_ln695_1_fu_185_p1 = lshr_ln695_fu_179_p2[23:0];

assign trunc_ln695_fu_163_p1 = ap_sig_allocacmp_i_30[6:0];

assign trunc_ln696_fu_276_p1 = lshr_ln696_fu_271_p2[19:0];

assign trunc_ln697_1_fu_204_p1 = ptr_i[11:0];

assign trunc_ln697_fu_195_p1 = t_fu_189_p2[7:0];

assign trunc_ln700_fu_296_p1 = t_2_fu_280_p2[3:0];

assign zext_ln695_fu_175_p1 = shl_ln_fu_167_p3;

assign zext_ln696_fu_267_p1 = or_ln696_fu_262_p2;

assign zext_ln697_fu_208_p1 = ptr_i;

assign zext_ln698_fu_230_p1 = add_ln698_fu_224_p2;

assign zext_ln699_fu_291_p1 = add_ln699_fu_286_p2;

assign zext_ln701_fu_330_p1 = add_ln701_fu_325_p2;

assign zext_ln702_fu_350_p1 = add_ln702_fu_345_p2;

always @ (posedge ap_clk) begin
    shl_ln_reg_370[5:0] <= 6'b000000;
end

endmodule //dpu_keygen_dpu_pack_4_Pipeline_VITIS_LOOP_693_10
