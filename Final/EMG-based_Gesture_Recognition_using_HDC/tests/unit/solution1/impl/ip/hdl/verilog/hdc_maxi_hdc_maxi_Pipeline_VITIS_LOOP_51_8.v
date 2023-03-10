// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module hdc_maxi_hdc_maxi_Pipeline_VITIS_LOOP_51_8 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        add_ln55,
        new_IM_1_02_reload,
        new_IM_0_01_reload,
        select_ln46_1,
        test_data_d_address0,
        test_data_d_ce0,
        test_data_d_q0,
        tmp_out,
        tmp_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8:0] add_ln55;
input  [8191:0] new_IM_1_02_reload;
input  [8191:0] new_IM_0_01_reload;
input  [2:0] select_ln46_1;
output  [4:0] test_data_d_address0;
output   test_data_d_ce0;
input  [511:0] test_data_d_q0;
output  [31:0] tmp_out;
output   tmp_out_ap_vld;

reg ap_idle;
reg test_data_d_ce0;
reg tmp_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_1_fu_137_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_1_reg_419;
reg   [0:0] tmp_1_reg_419_pp0_iter1_reg;
reg   [0:0] tmp_1_reg_419_pp0_iter2_reg;
wire   [8:0] add_ln55_1_fu_153_p2;
reg   [8:0] add_ln55_1_reg_423;
wire   [3:0] trunc_ln56_fu_159_p1;
reg   [3:0] trunc_ln56_reg_429;
reg   [3:0] trunc_ln56_reg_429_pp0_iter1_reg;
wire   [8:0] add_ln55_3_fu_196_p2;
reg   [8:0] add_ln55_3_reg_440;
wire   [0:0] icmp_ln55_fu_251_p2;
reg   [0:0] icmp_ln55_reg_446;
reg   [0:0] icmp_ln55_reg_446_pp0_iter2_reg;
reg   [511:0] test_data_d_load_reg_451;
wire   [0:0] icmp_ln55_1_fu_295_p2;
reg   [0:0] icmp_ln55_1_reg_457;
reg   [0:0] icmp_ln55_1_reg_457_pp0_iter2_reg;
wire   [31:0] trunc_ln56_2_fu_317_p1;
reg   [31:0] trunc_ln56_2_reg_462;
wire   [31:0] trunc_ln56_3_fu_343_p1;
reg   [31:0] trunc_ln56_3_reg_468;
wire   [31:0] tmp_9_fu_377_p3;
reg   [31:0] tmp_9_reg_474;
wire   [63:0] zext_ln56_fu_181_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] tmp_fu_72;
reg   [31:0] ap_sig_allocacmp_tmp_load;
wire    ap_loop_init;
reg   [6:0] e_fu_76;
wire   [6:0] add_ln51_fu_202_p2;
reg   [6:0] ap_sig_allocacmp_e_1;
wire    ap_block_pp0_stage0_01001;
wire   [8:0] e_cast6_fu_149_p1;
wire   [1:0] trunc_ln56_1_fu_163_p4;
wire   [4:0] add_ln_fu_173_p3;
wire   [5:0] empty_31_fu_145_p1;
wire   [5:0] or_ln51_fu_186_p2;
wire   [8:0] zext_ln49_fu_192_p1;
wire   [7:0] trunc_ln55_fu_213_p1;
wire   [0:0] tmp_2_fu_224_p3;
wire   [12:0] shl_ln4_fu_216_p3;
wire   [8191:0] select_ln55_fu_231_p3;
wire   [8191:0] zext_ln55_fu_237_p1;
wire   [8191:0] lshr_ln55_fu_241_p2;
wire   [31:0] trunc_ln55_1_fu_247_p1;
wire   [7:0] trunc_ln55_2_fu_257_p1;
wire   [0:0] tmp_6_fu_268_p3;
wire   [12:0] shl_ln55_1_fu_260_p3;
wire   [8191:0] select_ln55_2_fu_275_p3;
wire   [8191:0] zext_ln55_1_fu_281_p1;
wire   [8191:0] lshr_ln55_1_fu_285_p2;
wire   [31:0] trunc_ln55_3_fu_291_p1;
wire   [8:0] shl_ln5_fu_301_p3;
wire   [511:0] zext_ln56_1_fu_308_p1;
wire   [511:0] lshr_ln56_fu_312_p2;
wire   [3:0] or_ln56_fu_321_p2;
wire   [8:0] shl_ln56_1_fu_326_p3;
wire   [511:0] zext_ln56_2_fu_334_p1;
wire   [511:0] lshr_ln56_1_fu_338_p2;
wire   [31:0] tmp_3_fu_350_p2;
wire   [31:0] tmp_4_fu_355_p2;
wire   [31:0] tmp_5_fu_360_p3;
wire   [31:0] tmp_7_fu_367_p2;
wire   [31:0] tmp_8_fu_372_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_done_reg = 1'b0;
end

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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_1_fu_137_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            e_fu_76 <= add_ln51_fu_202_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            e_fu_76 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            tmp_fu_72 <= 32'd0;
        end else if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
            tmp_fu_72 <= tmp_9_reg_474;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_1_fu_137_p3 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln55_1_reg_423 <= add_ln55_1_fu_153_p2;
        add_ln55_3_reg_440 <= add_ln55_3_fu_196_p2;
        trunc_ln56_reg_429 <= trunc_ln56_fu_159_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln55_1_reg_457 <= icmp_ln55_1_fu_295_p2;
        icmp_ln55_reg_446 <= icmp_ln55_fu_251_p2;
        test_data_d_load_reg_451 <= test_data_d_q0;
        tmp_1_reg_419 <= ap_sig_allocacmp_e_1[32'd6];
        tmp_1_reg_419_pp0_iter1_reg <= tmp_1_reg_419;
        trunc_ln56_reg_429_pp0_iter1_reg <= trunc_ln56_reg_429;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        icmp_ln55_1_reg_457_pp0_iter2_reg <= icmp_ln55_1_reg_457;
        icmp_ln55_reg_446_pp0_iter2_reg <= icmp_ln55_reg_446;
        tmp_1_reg_419_pp0_iter2_reg <= tmp_1_reg_419_pp0_iter1_reg;
        tmp_9_reg_474 <= tmp_9_fu_377_p3;
        trunc_ln56_2_reg_462 <= trunc_ln56_2_fu_317_p1;
        trunc_ln56_3_reg_468 <= trunc_ln56_3_fu_343_p1;
    end
end

always @ (*) begin
    if (((tmp_1_fu_137_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_e_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_e_1 = e_fu_76;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        ap_sig_allocacmp_tmp_load = tmp_9_reg_474;
    end else begin
        ap_sig_allocacmp_tmp_load = tmp_fu_72;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        test_data_d_ce0 = 1'b1;
    end else begin
        test_data_d_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_1_reg_419_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_out_ap_vld = 1'b1;
    end else begin
        tmp_out_ap_vld = 1'b0;
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

assign add_ln51_fu_202_p2 = (ap_sig_allocacmp_e_1 + 7'd2);

assign add_ln55_1_fu_153_p2 = (e_cast6_fu_149_p1 + add_ln55);

assign add_ln55_3_fu_196_p2 = (zext_ln49_fu_192_p1 + add_ln55);

assign add_ln_fu_173_p3 = {{select_ln46_1}, {trunc_ln56_1_fu_163_p4}};

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

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign e_cast6_fu_149_p1 = ap_sig_allocacmp_e_1;

assign empty_31_fu_145_p1 = ap_sig_allocacmp_e_1[5:0];

assign icmp_ln55_1_fu_295_p2 = ((trunc_ln55_3_fu_291_p1 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln55_fu_251_p2 = ((trunc_ln55_1_fu_247_p1 == 32'd0) ? 1'b1 : 1'b0);

assign lshr_ln55_1_fu_285_p2 = select_ln55_2_fu_275_p3 >> zext_ln55_1_fu_281_p1;

assign lshr_ln55_fu_241_p2 = select_ln55_fu_231_p3 >> zext_ln55_fu_237_p1;

assign lshr_ln56_1_fu_338_p2 = test_data_d_load_reg_451 >> zext_ln56_2_fu_334_p1;

assign lshr_ln56_fu_312_p2 = test_data_d_load_reg_451 >> zext_ln56_1_fu_308_p1;

assign or_ln51_fu_186_p2 = (empty_31_fu_145_p1 | 6'd1);

assign or_ln56_fu_321_p2 = (trunc_ln56_reg_429_pp0_iter1_reg | 4'd1);

assign select_ln55_2_fu_275_p3 = ((tmp_6_fu_268_p3[0:0] == 1'b1) ? new_IM_1_02_reload : new_IM_0_01_reload);

assign select_ln55_fu_231_p3 = ((tmp_2_fu_224_p3[0:0] == 1'b1) ? new_IM_1_02_reload : new_IM_0_01_reload);

assign shl_ln4_fu_216_p3 = {{trunc_ln55_fu_213_p1}, {5'd0}};

assign shl_ln55_1_fu_260_p3 = {{trunc_ln55_2_fu_257_p1}, {5'd0}};

assign shl_ln56_1_fu_326_p3 = {{or_ln56_fu_321_p2}, {5'd0}};

assign shl_ln5_fu_301_p3 = {{trunc_ln56_reg_429_pp0_iter1_reg}, {5'd0}};

assign test_data_d_address0 = zext_ln56_fu_181_p1;

assign tmp_1_fu_137_p3 = ap_sig_allocacmp_e_1[32'd6];

assign tmp_2_fu_224_p3 = add_ln55_1_reg_423[32'd8];

assign tmp_3_fu_350_p2 = (trunc_ln56_2_reg_462 + ap_sig_allocacmp_tmp_load);

assign tmp_4_fu_355_p2 = (ap_sig_allocacmp_tmp_load - trunc_ln56_2_reg_462);

assign tmp_5_fu_360_p3 = ((icmp_ln55_reg_446_pp0_iter2_reg[0:0] == 1'b1) ? tmp_3_fu_350_p2 : tmp_4_fu_355_p2);

assign tmp_6_fu_268_p3 = add_ln55_3_reg_440[32'd8];

assign tmp_7_fu_367_p2 = (trunc_ln56_3_reg_468 + tmp_5_fu_360_p3);

assign tmp_8_fu_372_p2 = (tmp_5_fu_360_p3 - trunc_ln56_3_reg_468);

assign tmp_9_fu_377_p3 = ((icmp_ln55_1_reg_457_pp0_iter2_reg[0:0] == 1'b1) ? tmp_7_fu_367_p2 : tmp_8_fu_372_p2);

assign tmp_out = tmp_fu_72;

assign trunc_ln55_1_fu_247_p1 = lshr_ln55_fu_241_p2[31:0];

assign trunc_ln55_2_fu_257_p1 = add_ln55_3_reg_440[7:0];

assign trunc_ln55_3_fu_291_p1 = lshr_ln55_1_fu_285_p2[31:0];

assign trunc_ln55_fu_213_p1 = add_ln55_1_reg_423[7:0];

assign trunc_ln56_1_fu_163_p4 = {{ap_sig_allocacmp_e_1[5:4]}};

assign trunc_ln56_2_fu_317_p1 = lshr_ln56_fu_312_p2[31:0];

assign trunc_ln56_3_fu_343_p1 = lshr_ln56_1_fu_338_p2[31:0];

assign trunc_ln56_fu_159_p1 = ap_sig_allocacmp_e_1[3:0];

assign zext_ln49_fu_192_p1 = or_ln51_fu_186_p2;

assign zext_ln55_1_fu_281_p1 = shl_ln55_1_fu_260_p3;

assign zext_ln55_fu_237_p1 = shl_ln4_fu_216_p3;

assign zext_ln56_1_fu_308_p1 = shl_ln5_fu_301_p3;

assign zext_ln56_2_fu_334_p1 = shl_ln56_1_fu_326_p3;

assign zext_ln56_fu_181_p1 = add_ln_fu_173_p3;

endmodule //hdc_maxi_hdc_maxi_Pipeline_VITIS_LOOP_51_8
