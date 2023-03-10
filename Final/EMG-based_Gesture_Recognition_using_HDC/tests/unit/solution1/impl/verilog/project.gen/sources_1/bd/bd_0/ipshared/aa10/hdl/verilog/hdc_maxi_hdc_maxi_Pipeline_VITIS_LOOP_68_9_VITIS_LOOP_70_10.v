// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module hdc_maxi_hdc_maxi_Pipeline_VITIS_LOOP_68_9_VITIS_LOOP_70_10 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        AM_address0,
        AM_ce0,
        AM_q0,
        ngram_address0,
        ngram_ce0,
        ngram_q0,
        label_1_out,
        label_1_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] AM_address0;
output   AM_ce0;
input  [127:0] AM_q0;
output  [6:0] ngram_address0;
output   ngram_ce0;
input  [127:0] ngram_q0;
output  [31:0] label_1_out;
output   label_1_out_ap_vld;

reg ap_idle;
reg AM_ce0;
reg ngram_ce0;
reg label_1_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln68_fu_153_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [2:0] c_1_reg_424;
reg   [2:0] c_1_reg_424_pp0_iter1_reg;
reg   [2:0] c_1_reg_424_pp0_iter2_reg;
reg   [2:0] c_1_reg_424_pp0_iter3_reg;
reg   [2:0] c_1_reg_424_pp0_iter4_reg;
reg   [0:0] icmp_ln68_reg_429;
reg   [0:0] icmp_ln68_reg_429_pp0_iter1_reg;
reg   [0:0] icmp_ln68_reg_429_pp0_iter2_reg;
reg   [0:0] icmp_ln68_reg_429_pp0_iter3_reg;
reg   [0:0] icmp_ln68_reg_429_pp0_iter4_reg;
wire   [0:0] icmp_ln70_fu_174_p2;
reg   [0:0] icmp_ln70_reg_433;
reg   [0:0] icmp_ln70_reg_433_pp0_iter1_reg;
reg   [0:0] icmp_ln70_reg_433_pp0_iter2_reg;
reg   [0:0] icmp_ln70_reg_433_pp0_iter3_reg;
reg   [0:0] icmp_ln70_reg_433_pp0_iter4_reg;
wire   [1:0] trunc_ln74_fu_200_p1;
reg   [1:0] trunc_ln74_reg_445;
reg   [1:0] trunc_ln74_reg_445_pp0_iter1_reg;
reg   [1:0] trunc_ln74_reg_445_pp0_iter2_reg;
reg   [1:0] trunc_ln74_reg_445_pp0_iter3_reg;
reg   [6:0] lshr_ln2_reg_450;
reg   [6:0] lshr_ln2_reg_450_pp0_iter1_reg;
reg   [127:0] ngram_load_reg_471;
wire   [6:0] shl_ln3_fu_246_p3;
reg   [6:0] shl_ln3_reg_476;
reg   [127:0] AM_load_reg_481;
wire   [31:0] trunc_ln75_fu_262_p1;
reg   [31:0] trunc_ln75_reg_486;
wire   [63:0] zext_ln74_1_fu_235_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln74_3_fu_242_p1;
reg   [31:0] dot_product_fu_60;
wire   [31:0] dot_product_7_fu_350_p3;
wire    ap_loop_init;
reg   [8:0] i_fu_64;
wire   [8:0] add_ln70_fu_214_p2;
reg   [8:0] ap_sig_allocacmp_i_load;
reg   [31:0] maxSim_fu_68;
wire   [31:0] select_ln68_4_fu_315_p3;
reg   [31:0] label_fu_72;
wire   [31:0] select_ln68_3_fu_308_p3;
reg   [2:0] c_fu_76;
wire   [2:0] select_ln68_2_fu_188_p3;
reg   [2:0] ap_sig_allocacmp_c_1;
reg   [10:0] indvar_flatten13_fu_80;
wire   [10:0] add_ln68_1_fu_159_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten13_load;
wire   [31:0] label_3_fu_284_p3;
wire    ap_block_pp0_stage0_01001;
wire   [2:0] add_ln68_fu_168_p2;
wire   [8:0] select_ln68_fu_180_p3;
wire   [10:0] grp_fu_373_p3;
wire   [127:0] zext_ln75_fu_253_p1;
wire   [127:0] lshr_ln75_fu_257_p2;
wire   [0:0] icmp_ln77_fu_275_p2;
wire   [31:0] zext_ln77_fu_281_p1;
wire   [31:0] maxSim_3_fu_293_p3;
wire   [127:0] zext_ln74_4_fu_322_p1;
wire   [127:0] lshr_ln74_fu_325_p2;
wire   [31:0] trunc_ln74_1_fu_330_p1;
wire   [31:0] select_ln68_1_fu_301_p3;
wire   [0:0] icmp_ln74_fu_334_p2;
wire   [31:0] dot_product_5_fu_340_p2;
wire   [31:0] dot_product_6_fu_345_p2;
wire   [2:0] grp_fu_373_p0;
wire   [7:0] grp_fu_373_p1;
wire   [6:0] grp_fu_373_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire   [10:0] grp_fu_373_p00;
wire   [10:0] grp_fu_373_p20;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_done_reg = 1'b0;
end

hdc_maxi_mac_muladd_3ns_8ns_7ns_11_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 3 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 7 ),
    .dout_WIDTH( 11 ))
mac_muladd_3ns_8ns_7ns_11_4_1_U42(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_373_p0),
    .din1(grp_fu_373_p1),
    .din2(grp_fu_373_p2),
    .ce(1'b1),
    .dout(grp_fu_373_p3)
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln68_fu_153_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            c_fu_76 <= select_ln68_2_fu_188_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            c_fu_76 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            dot_product_fu_60 <= 32'd0;
        end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln68_reg_429_pp0_iter4_reg == 1'd0))) begin
            dot_product_fu_60 <= dot_product_7_fu_350_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln68_fu_153_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_64 <= add_ln70_fu_214_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_64 <= 9'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln68_fu_153_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten13_fu_80 <= add_ln68_1_fu_159_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten13_fu_80 <= 11'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            label_fu_72 <= 32'd4294967295;
        end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln68_reg_429_pp0_iter4_reg == 1'd0))) begin
            label_fu_72 <= select_ln68_3_fu_308_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            maxSim_fu_68 <= 32'd4294967295;
        end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln68_reg_429_pp0_iter4_reg == 1'd0))) begin
            maxSim_fu_68 <= select_ln68_4_fu_315_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln68_reg_429_pp0_iter3_reg == 1'd0))) begin
        AM_load_reg_481 <= AM_q0;
        shl_ln3_reg_476[6 : 5] <= shl_ln3_fu_246_p3[6 : 5];
        trunc_ln75_reg_486 <= trunc_ln75_fu_262_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        c_1_reg_424 <= ap_sig_allocacmp_c_1;
        c_1_reg_424_pp0_iter1_reg <= c_1_reg_424;
        icmp_ln68_reg_429 <= icmp_ln68_fu_153_p2;
        icmp_ln68_reg_429_pp0_iter1_reg <= icmp_ln68_reg_429;
        icmp_ln70_reg_433_pp0_iter1_reg <= icmp_ln70_reg_433;
        lshr_ln2_reg_450_pp0_iter1_reg <= lshr_ln2_reg_450;
        trunc_ln74_reg_445_pp0_iter1_reg <= trunc_ln74_reg_445;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        c_1_reg_424_pp0_iter2_reg <= c_1_reg_424_pp0_iter1_reg;
        c_1_reg_424_pp0_iter3_reg <= c_1_reg_424_pp0_iter2_reg;
        c_1_reg_424_pp0_iter4_reg <= c_1_reg_424_pp0_iter3_reg;
        icmp_ln68_reg_429_pp0_iter2_reg <= icmp_ln68_reg_429_pp0_iter1_reg;
        icmp_ln68_reg_429_pp0_iter3_reg <= icmp_ln68_reg_429_pp0_iter2_reg;
        icmp_ln68_reg_429_pp0_iter4_reg <= icmp_ln68_reg_429_pp0_iter3_reg;
        icmp_ln70_reg_433_pp0_iter2_reg <= icmp_ln70_reg_433_pp0_iter1_reg;
        icmp_ln70_reg_433_pp0_iter3_reg <= icmp_ln70_reg_433_pp0_iter2_reg;
        icmp_ln70_reg_433_pp0_iter4_reg <= icmp_ln70_reg_433_pp0_iter3_reg;
        trunc_ln74_reg_445_pp0_iter2_reg <= trunc_ln74_reg_445_pp0_iter1_reg;
        trunc_ln74_reg_445_pp0_iter3_reg <= trunc_ln74_reg_445_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln68_fu_153_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln70_reg_433 <= icmp_ln70_fu_174_p2;
        lshr_ln2_reg_450 <= {{select_ln68_fu_180_p3[8:2]}};
        trunc_ln74_reg_445 <= trunc_ln74_fu_200_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln68_reg_429_pp0_iter2_reg == 1'd0))) begin
        ngram_load_reg_471 <= ngram_q0;
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
    if (((icmp_ln68_fu_153_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_c_1 = 3'd0;
    end else begin
        ap_sig_allocacmp_c_1 = c_fu_76;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_load = 9'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_64;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten13_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten13_load = indvar_flatten13_fu_80;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln68_reg_429_pp0_iter4_reg == 1'd1))) begin
        label_1_out_ap_vld = 1'b1;
    end else begin
        label_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ngram_ce0 = 1'b1;
    end else begin
        ngram_ce0 = 1'b0;
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

assign AM_address0 = zext_ln74_3_fu_242_p1;

assign add_ln68_1_fu_159_p2 = (ap_sig_allocacmp_indvar_flatten13_load + 11'd1);

assign add_ln68_fu_168_p2 = (ap_sig_allocacmp_c_1 + 3'd1);

assign add_ln70_fu_214_p2 = (select_ln68_fu_180_p3 + 9'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign dot_product_5_fu_340_p2 = (trunc_ln75_reg_486 + select_ln68_1_fu_301_p3);

assign dot_product_6_fu_345_p2 = (select_ln68_1_fu_301_p3 - trunc_ln75_reg_486);

assign dot_product_7_fu_350_p3 = ((icmp_ln74_fu_334_p2[0:0] == 1'b1) ? dot_product_5_fu_340_p2 : dot_product_6_fu_345_p2);

assign grp_fu_373_p0 = grp_fu_373_p00;

assign grp_fu_373_p00 = select_ln68_2_fu_188_p3;

assign grp_fu_373_p1 = 11'd250;

assign grp_fu_373_p2 = grp_fu_373_p20;

assign grp_fu_373_p20 = lshr_ln2_reg_450_pp0_iter1_reg;

assign icmp_ln68_fu_153_p2 = ((ap_sig_allocacmp_indvar_flatten13_load == 11'd1900) ? 1'b1 : 1'b0);

assign icmp_ln70_fu_174_p2 = ((ap_sig_allocacmp_i_load == 9'd380) ? 1'b1 : 1'b0);

assign icmp_ln74_fu_334_p2 = ((trunc_ln74_1_fu_330_p1 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln77_fu_275_p2 = (($signed(dot_product_fu_60) > $signed(maxSim_fu_68)) ? 1'b1 : 1'b0);

assign label_1_out = label_3_fu_284_p3;

assign label_3_fu_284_p3 = ((icmp_ln77_fu_275_p2[0:0] == 1'b1) ? zext_ln77_fu_281_p1 : label_fu_72);

assign lshr_ln74_fu_325_p2 = AM_load_reg_481 >> zext_ln74_4_fu_322_p1;

assign lshr_ln75_fu_257_p2 = ngram_load_reg_471 >> zext_ln75_fu_253_p1;

assign maxSim_3_fu_293_p3 = ((icmp_ln77_fu_275_p2[0:0] == 1'b1) ? dot_product_fu_60 : maxSim_fu_68);

assign ngram_address0 = zext_ln74_1_fu_235_p1;

assign select_ln68_1_fu_301_p3 = ((icmp_ln70_reg_433_pp0_iter4_reg[0:0] == 1'b1) ? 32'd0 : dot_product_fu_60);

assign select_ln68_2_fu_188_p3 = ((icmp_ln70_fu_174_p2[0:0] == 1'b1) ? add_ln68_fu_168_p2 : ap_sig_allocacmp_c_1);

assign select_ln68_3_fu_308_p3 = ((icmp_ln70_reg_433_pp0_iter4_reg[0:0] == 1'b1) ? label_3_fu_284_p3 : label_fu_72);

assign select_ln68_4_fu_315_p3 = ((icmp_ln70_reg_433_pp0_iter4_reg[0:0] == 1'b1) ? maxSim_3_fu_293_p3 : maxSim_fu_68);

assign select_ln68_fu_180_p3 = ((icmp_ln70_fu_174_p2[0:0] == 1'b1) ? 9'd0 : ap_sig_allocacmp_i_load);

assign shl_ln3_fu_246_p3 = {{trunc_ln74_reg_445_pp0_iter3_reg}, {5'd0}};

assign trunc_ln74_1_fu_330_p1 = lshr_ln74_fu_325_p2[31:0];

assign trunc_ln74_fu_200_p1 = select_ln68_fu_180_p3[1:0];

assign trunc_ln75_fu_262_p1 = lshr_ln75_fu_257_p2[31:0];

assign zext_ln74_1_fu_235_p1 = lshr_ln2_reg_450_pp0_iter1_reg;

assign zext_ln74_3_fu_242_p1 = grp_fu_373_p3;

assign zext_ln74_4_fu_322_p1 = shl_ln3_reg_476;

assign zext_ln75_fu_253_p1 = shl_ln3_fu_246_p3;

assign zext_ln77_fu_281_p1 = c_1_reg_424_pp0_iter4_reg;

always @ (posedge ap_clk) begin
    shl_ln3_reg_476[4:0] <= 5'b00000;
end

endmodule //hdc_maxi_hdc_maxi_Pipeline_VITIS_LOOP_68_9_VITIS_LOOP_70_10
