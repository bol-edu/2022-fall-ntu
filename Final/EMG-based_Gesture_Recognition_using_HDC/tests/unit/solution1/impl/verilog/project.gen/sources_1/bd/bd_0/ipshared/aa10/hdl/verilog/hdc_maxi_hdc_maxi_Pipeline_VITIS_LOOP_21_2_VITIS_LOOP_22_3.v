// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module hdc_maxi_hdc_maxi_Pipeline_VITIS_LOOP_21_2_VITIS_LOOP_22_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        AM_out_TVALID,
        AM_out_TDATA,
        AM_out_TREADY,
        AM_out_TKEEP,
        AM_out_TSTRB,
        AM_out_TUSER,
        AM_out_TLAST,
        AM_out_TID,
        AM_out_TDEST,
        AM_address0,
        AM_ce0,
        AM_we0,
        AM_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   AM_out_TVALID;
input  [31:0] AM_out_TDATA;
output   AM_out_TREADY;
input  [3:0] AM_out_TKEEP;
input  [3:0] AM_out_TSTRB;
input  [0:0] AM_out_TUSER;
input  [0:0] AM_out_TLAST;
input  [0:0] AM_out_TID;
input  [0:0] AM_out_TDEST;
output  [10:0] AM_address0;
output   AM_ce0;
output  [15:0] AM_we0;
output  [127:0] AM_d0;

reg ap_idle;
reg AM_out_TREADY;
reg AM_ce0;
reg[15:0] AM_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire   [0:0] icmp_ln21_fu_146_p2;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    AM_out_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
wire   [1:0] trunc_ln24_fu_200_p1;
reg   [1:0] trunc_ln24_reg_321;
reg   [1:0] trunc_ln24_reg_321_pp0_iter1_reg;
reg   [1:0] trunc_ln24_reg_321_pp0_iter2_reg;
reg   [7:0] lshr_ln_reg_326;
reg   [7:0] lshr_ln_reg_326_pp0_iter1_reg;
wire   [127:0] shl_ln24_fu_230_p2;
reg   [127:0] shl_ln24_reg_331;
reg   [127:0] shl_ln24_reg_331_pp0_iter1_reg;
reg   [127:0] shl_ln24_reg_331_pp0_iter2_reg;
wire   [63:0] zext_ln24_2_fu_260_p1;
reg   [9:0] j_fu_86;
wire   [9:0] add_ln22_fu_236_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_j_load;
reg   [2:0] i_1_fu_90;
wire   [2:0] select_ln21_1_fu_184_p3;
reg   [2:0] ap_sig_allocacmp_i_1_load;
reg   [12:0] indvar_flatten_fu_94;
wire   [12:0] add_ln21_1_fu_152_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [15:0] shl_ln24_1_fu_275_p2;
wire   [0:0] icmp_ln22_fu_170_p2;
wire   [2:0] add_ln21_fu_164_p2;
wire   [9:0] select_ln21_fu_176_p3;
wire   [6:0] shl_ln1_fu_204_p3;
wire   [127:0] zext_ln24_4_fu_226_p1;
wire   [127:0] zext_ln24_3_fu_222_p1;
wire   [10:0] grp_fu_282_p3;
wire   [3:0] udiv_fu_264_p3;
wire   [15:0] zext_ln24_5_fu_271_p1;
wire   [2:0] grp_fu_282_p0;
wire   [7:0] grp_fu_282_p1;
wire   [7:0] grp_fu_282_p2;
reg    grp_fu_282_ce;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire   [10:0] grp_fu_282_p00;
wire   [10:0] grp_fu_282_p20;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
end

hdc_maxi_mac_muladd_3ns_8ns_8ns_11_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 3 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .dout_WIDTH( 11 ))
mac_muladd_3ns_8ns_8ns_11_4_1_U12(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_282_p0),
    .din1(grp_fu_282_p1),
    .din2(grp_fu_282_p2),
    .ce(grp_fu_282_ce),
    .dout(grp_fu_282_p3)
);

hdc_maxi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln21_fu_146_p2 == 1'd0) & (ap_start_int == 1'b1))) begin
            i_1_fu_90 <= select_ln21_1_fu_184_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_90 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln21_fu_146_p2 == 1'd0) & (ap_start_int == 1'b1))) begin
            indvar_flatten_fu_94 <= add_ln21_1_fu_152_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_94 <= 13'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln21_fu_146_p2 == 1'd0) & (ap_start_int == 1'b1))) begin
            j_fu_86 <= add_ln22_fu_236_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_86 <= 10'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln_reg_326_pp0_iter1_reg <= lshr_ln_reg_326;
        shl_ln24_reg_331_pp0_iter1_reg <= shl_ln24_reg_331;
        trunc_ln24_reg_321_pp0_iter1_reg <= trunc_ln24_reg_321;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln21_fu_146_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln_reg_326 <= {{select_ln21_fu_176_p3[9:2]}};
        shl_ln24_reg_331 <= shl_ln24_fu_230_p2;
        trunc_ln24_reg_321 <= trunc_ln24_fu_200_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        shl_ln24_reg_331_pp0_iter2_reg <= shl_ln24_reg_331_pp0_iter1_reg;
        trunc_ln24_reg_321_pp0_iter2_reg <= trunc_ln24_reg_321_pp0_iter1_reg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        AM_ce0 = 1'b1;
    end else begin
        AM_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln21_fu_146_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        AM_out_TDATA_blk_n = AM_out_TVALID;
    end else begin
        AM_out_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln21_fu_146_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        AM_out_TREADY = 1'b1;
    end else begin
        AM_out_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        AM_we0 = shl_ln24_1_fu_275_p2;
    end else begin
        AM_we0 = 16'd0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln21_fu_146_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_1_load = 3'd0;
    end else begin
        ap_sig_allocacmp_i_1_load = i_1_fu_90;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_94;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_load = 10'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_86;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_282_ce = 1'b1;
    end else begin
        grp_fu_282_ce = 1'b0;
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

assign AM_address0 = zext_ln24_2_fu_260_p1;

assign AM_d0 = shl_ln24_reg_331_pp0_iter2_reg;

assign add_ln21_1_fu_152_p2 = (ap_sig_allocacmp_indvar_flatten_load + 13'd1);

assign add_ln21_fu_164_p2 = (ap_sig_allocacmp_i_1_load + 3'd1);

assign add_ln22_fu_236_p2 = (select_ln21_fu_176_p3 + 10'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((icmp_ln21_fu_146_p2 == 1'd0) & (1'b0 == AM_out_TVALID) & (ap_start_int == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((icmp_ln21_fu_146_p2 == 1'd0) & (1'b0 == AM_out_TVALID) & (ap_start_int == 1'b1));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((icmp_ln21_fu_146_p2 == 1'd0) & (1'b0 == AM_out_TVALID));
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign grp_fu_282_p0 = grp_fu_282_p00;

assign grp_fu_282_p00 = select_ln21_1_fu_184_p3;

assign grp_fu_282_p1 = 11'd250;

assign grp_fu_282_p2 = grp_fu_282_p20;

assign grp_fu_282_p20 = lshr_ln_reg_326_pp0_iter1_reg;

assign icmp_ln21_fu_146_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 13'd5000) ? 1'b1 : 1'b0);

assign icmp_ln22_fu_170_p2 = ((ap_sig_allocacmp_j_load == 10'd1000) ? 1'b1 : 1'b0);

assign select_ln21_1_fu_184_p3 = ((icmp_ln22_fu_170_p2[0:0] == 1'b1) ? add_ln21_fu_164_p2 : ap_sig_allocacmp_i_1_load);

assign select_ln21_fu_176_p3 = ((icmp_ln22_fu_170_p2[0:0] == 1'b1) ? 10'd0 : ap_sig_allocacmp_j_load);

assign shl_ln1_fu_204_p3 = {{trunc_ln24_fu_200_p1}, {5'd0}};

assign shl_ln24_1_fu_275_p2 = 16'd15 << zext_ln24_5_fu_271_p1;

assign shl_ln24_fu_230_p2 = zext_ln24_4_fu_226_p1 << zext_ln24_3_fu_222_p1;

assign trunc_ln24_fu_200_p1 = select_ln21_fu_176_p3[1:0];

assign udiv_fu_264_p3 = {{trunc_ln24_reg_321_pp0_iter2_reg}, {2'd0}};

assign zext_ln24_2_fu_260_p1 = grp_fu_282_p3;

assign zext_ln24_3_fu_222_p1 = shl_ln1_fu_204_p3;

assign zext_ln24_4_fu_226_p1 = AM_out_TDATA;

assign zext_ln24_5_fu_271_p1 = udiv_fu_264_p3;

endmodule //hdc_maxi_hdc_maxi_Pipeline_VITIS_LOOP_21_2_VITIS_LOOP_22_3
