// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="blockmatmul,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=8.510000,HLS_SYN_LAT=107,HLS_SYN_TPT=108,HLS_SYN_MEM=10,HLS_SYN_DSP=12,HLS_SYN_FF=745,HLS_SYN_LUT=2446,HLS_VERSION=2020_1}" *)

module blockmatmul (
        ap_clk,
        ap_rst,
        Arows_V_a_0_dout,
        Arows_V_a_0_empty_n,
        Arows_V_a_0_read,
        Arows_V_a_1_dout,
        Arows_V_a_1_empty_n,
        Arows_V_a_1_read,
        Arows_V_a_2_dout,
        Arows_V_a_2_empty_n,
        Arows_V_a_2_read,
        Arows_V_a_3_dout,
        Arows_V_a_3_empty_n,
        Arows_V_a_3_read,
        Bcols_V_a_0_dout,
        Bcols_V_a_0_empty_n,
        Bcols_V_a_0_read,
        Bcols_V_a_1_dout,
        Bcols_V_a_1_empty_n,
        Bcols_V_a_1_read,
        Bcols_V_a_2_dout,
        Bcols_V_a_2_empty_n,
        Bcols_V_a_2_read,
        Bcols_V_a_3_dout,
        Bcols_V_a_3_empty_n,
        Bcols_V_a_3_read,
        ABpartial_out_address0,
        ABpartial_out_ce0,
        ABpartial_out_d0,
        ABpartial_out_q0,
        ABpartial_out_we0,
        ABpartial_out_address1,
        ABpartial_out_ce1,
        ABpartial_out_d1,
        ABpartial_out_q1,
        ABpartial_out_we1,
        it,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle
);


input   ap_clk;
input   ap_rst;
input  [31:0] Arows_V_a_0_dout;
input   Arows_V_a_0_empty_n;
output   Arows_V_a_0_read;
input  [31:0] Arows_V_a_1_dout;
input   Arows_V_a_1_empty_n;
output   Arows_V_a_1_read;
input  [31:0] Arows_V_a_2_dout;
input   Arows_V_a_2_empty_n;
output   Arows_V_a_2_read;
input  [31:0] Arows_V_a_3_dout;
input   Arows_V_a_3_empty_n;
output   Arows_V_a_3_read;
input  [31:0] Bcols_V_a_0_dout;
input   Bcols_V_a_0_empty_n;
output   Bcols_V_a_0_read;
input  [31:0] Bcols_V_a_1_dout;
input   Bcols_V_a_1_empty_n;
output   Bcols_V_a_1_read;
input  [31:0] Bcols_V_a_2_dout;
input   Bcols_V_a_2_empty_n;
output   Bcols_V_a_2_read;
input  [31:0] Bcols_V_a_3_dout;
input   Bcols_V_a_3_empty_n;
output   Bcols_V_a_3_read;
output  [3:0] ABpartial_out_address0;
output   ABpartial_out_ce0;
output  [31:0] ABpartial_out_d0;
input  [31:0] ABpartial_out_q0;
output   ABpartial_out_we0;
output  [3:0] ABpartial_out_address1;
output   ABpartial_out_ce1;
output  [31:0] ABpartial_out_d1;
input  [31:0] ABpartial_out_q1;
output   ABpartial_out_we1;
input  [31:0] it;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;

wire   [127:0] AB_i_q0;
wire   [127:0] AB_t_q0;
wire    Loop_memset_AB_proc1_U0_ap_start;
wire    Loop_memset_AB_proc1_U0_ap_done;
wire    Loop_memset_AB_proc1_U0_ap_continue;
wire    Loop_memset_AB_proc1_U0_ap_idle;
wire    Loop_memset_AB_proc1_U0_ap_ready;
wire   [1:0] Loop_memset_AB_proc1_U0_AB_address0;
wire    Loop_memset_AB_proc1_U0_AB_ce0;
wire    Loop_memset_AB_proc1_U0_AB_we0;
wire   [127:0] Loop_memset_AB_proc1_U0_AB_d0;
wire   [1:0] Loop_memset_AB_proc1_U0_AB_address1;
wire    Loop_memset_AB_proc1_U0_AB_ce1;
wire    Loop_memset_AB_proc1_U0_AB_we1;
wire   [127:0] Loop_memset_AB_proc1_U0_AB_d1;
wire    Loop_memset_AB_proc1_U0_Arows_V_a_0_read;
wire    Loop_memset_AB_proc1_U0_Arows_V_a_1_read;
wire    Loop_memset_AB_proc1_U0_Arows_V_a_2_read;
wire    Loop_memset_AB_proc1_U0_Arows_V_a_3_read;
wire    Loop_memset_AB_proc1_U0_Bcols_V_a_0_read;
wire    Loop_memset_AB_proc1_U0_Bcols_V_a_1_read;
wire    Loop_memset_AB_proc1_U0_Bcols_V_a_2_read;
wire    Loop_memset_AB_proc1_U0_Bcols_V_a_3_read;
wire    ap_channel_done_AB;
wire    Loop_memset_AB_proc1_U0_AB_full_n;
wire    Loop_writeoutput_pro_U0_ap_start;
wire    Loop_writeoutput_pro_U0_ap_done;
wire    Loop_writeoutput_pro_U0_ap_continue;
wire    Loop_writeoutput_pro_U0_ap_idle;
wire    Loop_writeoutput_pro_U0_ap_ready;
wire   [1:0] Loop_writeoutput_pro_U0_AB_address0;
wire    Loop_writeoutput_pro_U0_AB_ce0;
wire   [3:0] Loop_writeoutput_pro_U0_ABpartial_out_address0;
wire    Loop_writeoutput_pro_U0_ABpartial_out_ce0;
wire    Loop_writeoutput_pro_U0_ABpartial_out_we0;
wire   [31:0] Loop_writeoutput_pro_U0_ABpartial_out_d0;
wire   [3:0] Loop_writeoutput_pro_U0_ABpartial_out_address1;
wire    Loop_writeoutput_pro_U0_ABpartial_out_ce1;
wire    Loop_writeoutput_pro_U0_ABpartial_out_we1;
wire   [31:0] Loop_writeoutput_pro_U0_ABpartial_out_d1;
wire    ap_sync_continue;
wire    AB_i_full_n;
wire    AB_t_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
wire    Loop_memset_AB_proc1_U0_start_full_n;
wire    Loop_memset_AB_proc1_U0_start_write;
wire    Loop_writeoutput_pro_U0_start_full_n;
wire    Loop_writeoutput_pro_U0_start_write;

blockmatmul_AB #(
    .DataWidth( 128 ),
    .AddressRange( 4 ),
    .AddressWidth( 2 ))
AB_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(Loop_memset_AB_proc1_U0_AB_address0),
    .i_ce0(Loop_memset_AB_proc1_U0_AB_ce0),
    .i_we0(Loop_memset_AB_proc1_U0_AB_we0),
    .i_d0(Loop_memset_AB_proc1_U0_AB_d0),
    .i_q0(AB_i_q0),
    .i_address1(Loop_memset_AB_proc1_U0_AB_address1),
    .i_ce1(Loop_memset_AB_proc1_U0_AB_ce1),
    .i_we1(Loop_memset_AB_proc1_U0_AB_we1),
    .i_d1(Loop_memset_AB_proc1_U0_AB_d1),
    .t_address0(Loop_writeoutput_pro_U0_AB_address0),
    .t_ce0(Loop_writeoutput_pro_U0_AB_ce0),
    .t_we0(1'b0),
    .t_d0(128'd0),
    .t_q0(AB_t_q0),
    .t_address1(2'd0),
    .t_ce1(1'b0),
    .t_we1(1'b0),
    .t_d1(128'd0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(AB_i_full_n),
    .i_write(Loop_memset_AB_proc1_U0_ap_done),
    .t_empty_n(AB_t_empty_n),
    .t_read(Loop_writeoutput_pro_U0_ap_ready)
);

Loop_memset_AB_proc1 Loop_memset_AB_proc1_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Loop_memset_AB_proc1_U0_ap_start),
    .ap_done(Loop_memset_AB_proc1_U0_ap_done),
    .ap_continue(Loop_memset_AB_proc1_U0_ap_continue),
    .ap_idle(Loop_memset_AB_proc1_U0_ap_idle),
    .ap_ready(Loop_memset_AB_proc1_U0_ap_ready),
    .AB_address0(Loop_memset_AB_proc1_U0_AB_address0),
    .AB_ce0(Loop_memset_AB_proc1_U0_AB_ce0),
    .AB_we0(Loop_memset_AB_proc1_U0_AB_we0),
    .AB_d0(Loop_memset_AB_proc1_U0_AB_d0),
    .AB_q0(AB_i_q0),
    .AB_address1(Loop_memset_AB_proc1_U0_AB_address1),
    .AB_ce1(Loop_memset_AB_proc1_U0_AB_ce1),
    .AB_we1(Loop_memset_AB_proc1_U0_AB_we1),
    .AB_d1(Loop_memset_AB_proc1_U0_AB_d1),
    .it(it),
    .Arows_V_a_0_dout(Arows_V_a_0_dout),
    .Arows_V_a_0_empty_n(Arows_V_a_0_empty_n),
    .Arows_V_a_0_read(Loop_memset_AB_proc1_U0_Arows_V_a_0_read),
    .Arows_V_a_1_dout(Arows_V_a_1_dout),
    .Arows_V_a_1_empty_n(Arows_V_a_1_empty_n),
    .Arows_V_a_1_read(Loop_memset_AB_proc1_U0_Arows_V_a_1_read),
    .Arows_V_a_2_dout(Arows_V_a_2_dout),
    .Arows_V_a_2_empty_n(Arows_V_a_2_empty_n),
    .Arows_V_a_2_read(Loop_memset_AB_proc1_U0_Arows_V_a_2_read),
    .Arows_V_a_3_dout(Arows_V_a_3_dout),
    .Arows_V_a_3_empty_n(Arows_V_a_3_empty_n),
    .Arows_V_a_3_read(Loop_memset_AB_proc1_U0_Arows_V_a_3_read),
    .Bcols_V_a_0_dout(Bcols_V_a_0_dout),
    .Bcols_V_a_0_empty_n(Bcols_V_a_0_empty_n),
    .Bcols_V_a_0_read(Loop_memset_AB_proc1_U0_Bcols_V_a_0_read),
    .Bcols_V_a_1_dout(Bcols_V_a_1_dout),
    .Bcols_V_a_1_empty_n(Bcols_V_a_1_empty_n),
    .Bcols_V_a_1_read(Loop_memset_AB_proc1_U0_Bcols_V_a_1_read),
    .Bcols_V_a_2_dout(Bcols_V_a_2_dout),
    .Bcols_V_a_2_empty_n(Bcols_V_a_2_empty_n),
    .Bcols_V_a_2_read(Loop_memset_AB_proc1_U0_Bcols_V_a_2_read),
    .Bcols_V_a_3_dout(Bcols_V_a_3_dout),
    .Bcols_V_a_3_empty_n(Bcols_V_a_3_empty_n),
    .Bcols_V_a_3_read(Loop_memset_AB_proc1_U0_Bcols_V_a_3_read)
);

Loop_writeoutput_pro Loop_writeoutput_pro_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Loop_writeoutput_pro_U0_ap_start),
    .ap_done(Loop_writeoutput_pro_U0_ap_done),
    .ap_continue(Loop_writeoutput_pro_U0_ap_continue),
    .ap_idle(Loop_writeoutput_pro_U0_ap_idle),
    .ap_ready(Loop_writeoutput_pro_U0_ap_ready),
    .AB_address0(Loop_writeoutput_pro_U0_AB_address0),
    .AB_ce0(Loop_writeoutput_pro_U0_AB_ce0),
    .AB_q0(AB_t_q0),
    .ABpartial_out_address0(Loop_writeoutput_pro_U0_ABpartial_out_address0),
    .ABpartial_out_ce0(Loop_writeoutput_pro_U0_ABpartial_out_ce0),
    .ABpartial_out_we0(Loop_writeoutput_pro_U0_ABpartial_out_we0),
    .ABpartial_out_d0(Loop_writeoutput_pro_U0_ABpartial_out_d0),
    .ABpartial_out_address1(Loop_writeoutput_pro_U0_ABpartial_out_address1),
    .ABpartial_out_ce1(Loop_writeoutput_pro_U0_ABpartial_out_ce1),
    .ABpartial_out_we1(Loop_writeoutput_pro_U0_ABpartial_out_we1),
    .ABpartial_out_d1(Loop_writeoutput_pro_U0_ABpartial_out_d1)
);

assign ABpartial_out_address0 = Loop_writeoutput_pro_U0_ABpartial_out_address0;

assign ABpartial_out_address1 = Loop_writeoutput_pro_U0_ABpartial_out_address1;

assign ABpartial_out_ce0 = Loop_writeoutput_pro_U0_ABpartial_out_ce0;

assign ABpartial_out_ce1 = Loop_writeoutput_pro_U0_ABpartial_out_ce1;

assign ABpartial_out_d0 = Loop_writeoutput_pro_U0_ABpartial_out_d0;

assign ABpartial_out_d1 = Loop_writeoutput_pro_U0_ABpartial_out_d1;

assign ABpartial_out_we0 = Loop_writeoutput_pro_U0_ABpartial_out_we0;

assign ABpartial_out_we1 = Loop_writeoutput_pro_U0_ABpartial_out_we1;

assign Arows_V_a_0_read = Loop_memset_AB_proc1_U0_Arows_V_a_0_read;

assign Arows_V_a_1_read = Loop_memset_AB_proc1_U0_Arows_V_a_1_read;

assign Arows_V_a_2_read = Loop_memset_AB_proc1_U0_Arows_V_a_2_read;

assign Arows_V_a_3_read = Loop_memset_AB_proc1_U0_Arows_V_a_3_read;

assign Bcols_V_a_0_read = Loop_memset_AB_proc1_U0_Bcols_V_a_0_read;

assign Bcols_V_a_1_read = Loop_memset_AB_proc1_U0_Bcols_V_a_1_read;

assign Bcols_V_a_2_read = Loop_memset_AB_proc1_U0_Bcols_V_a_2_read;

assign Bcols_V_a_3_read = Loop_memset_AB_proc1_U0_Bcols_V_a_3_read;

assign Loop_memset_AB_proc1_U0_AB_full_n = AB_i_full_n;

assign Loop_memset_AB_proc1_U0_ap_continue = AB_i_full_n;

assign Loop_memset_AB_proc1_U0_ap_start = ap_start;

assign Loop_memset_AB_proc1_U0_start_full_n = 1'b1;

assign Loop_memset_AB_proc1_U0_start_write = 1'b0;

assign Loop_writeoutput_pro_U0_ap_continue = 1'b1;

assign Loop_writeoutput_pro_U0_ap_start = AB_t_empty_n;

assign Loop_writeoutput_pro_U0_start_full_n = 1'b1;

assign Loop_writeoutput_pro_U0_start_write = 1'b0;

assign ap_channel_done_AB = Loop_memset_AB_proc1_U0_ap_done;

assign ap_done = Loop_writeoutput_pro_U0_ap_done;

assign ap_idle = ((1'b1 ^ AB_t_empty_n) & Loop_writeoutput_pro_U0_ap_idle & Loop_memset_AB_proc1_U0_ap_idle);

assign ap_ready = Loop_memset_AB_proc1_U0_ap_ready;

assign ap_sync_continue = 1'b1;

assign ap_sync_done = Loop_writeoutput_pro_U0_ap_done;

assign ap_sync_ready = Loop_memset_AB_proc1_U0_ap_ready;

endmodule //blockmatmul
