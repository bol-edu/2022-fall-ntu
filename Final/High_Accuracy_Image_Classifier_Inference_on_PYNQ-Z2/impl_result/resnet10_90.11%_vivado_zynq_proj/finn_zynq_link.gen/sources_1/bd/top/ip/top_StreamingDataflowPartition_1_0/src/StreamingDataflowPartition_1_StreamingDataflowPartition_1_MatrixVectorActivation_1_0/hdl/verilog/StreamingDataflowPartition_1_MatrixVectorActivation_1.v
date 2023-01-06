// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="StreamingDataflowPartition_1_MatrixVectorActivation_1_StreamingDataflowPartition_1_MatrixVectorActivation_1,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.591000,HLS_SYN_LAT=131080,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=879,HLS_SYN_LUT=1706,HLS_VERSION=2022_1}" *)

module StreamingDataflowPartition_1_MatrixVectorActivation_1 (
        ap_clk,
        ap_rst_n,
        in0_V_TDATA,
        in0_V_TVALID,
        in0_V_TREADY,
        weights_V_TDATA,
        weights_V_TVALID,
        weights_V_TREADY,
        out_V_TDATA,
        out_V_TVALID,
        out_V_TREADY
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst_n;
input  [15:0] in0_V_TDATA;
input   in0_V_TVALID;
output   in0_V_TREADY;
input  [31:0] weights_V_TDATA;
input   weights_V_TVALID;
output   weights_V_TREADY;
output  [7:0] out_V_TDATA;
output   out_V_TVALID;
input   out_V_TREADY;

 reg    ap_rst_n_inv;
wire    grp_Matrix_Vector_Activate_Stream_Batch_fu_90_ap_start;
wire    grp_Matrix_Vector_Activate_Stream_Batch_fu_90_ap_done;
wire    grp_Matrix_Vector_Activate_Stream_Batch_fu_90_ap_idle;
wire    grp_Matrix_Vector_Activate_Stream_Batch_fu_90_ap_ready;
wire    grp_Matrix_Vector_Activate_Stream_Batch_fu_90_out_V_TREADY;
wire    grp_Matrix_Vector_Activate_Stream_Batch_fu_90_in0_V_TREADY;
wire   [7:0] grp_Matrix_Vector_Activate_Stream_Batch_fu_90_out_V_TDATA;
wire    grp_Matrix_Vector_Activate_Stream_Batch_fu_90_out_V_TVALID;
wire    grp_Matrix_Vector_Activate_Stream_Batch_fu_90_weights_V_TREADY;
reg    grp_Matrix_Vector_Activate_Stream_Batch_fu_90_ap_start_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
reg   [3:0] ap_NS_fsm;
wire    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    regslice_both_out_V_U_apdone_blk;
wire    ap_CS_fsm_state4;
wire    regslice_both_in0_V_U_apdone_blk;
wire   [15:0] in0_V_TDATA_int_regslice;
wire    in0_V_TVALID_int_regslice;
reg    in0_V_TREADY_int_regslice;
wire    regslice_both_in0_V_U_ack_in;
wire    regslice_both_weights_V_U_apdone_blk;
wire   [31:0] weights_V_TDATA_int_regslice;
wire    weights_V_TVALID_int_regslice;
reg    weights_V_TREADY_int_regslice;
wire    regslice_both_weights_V_U_ack_in;
wire    out_V_TREADY_int_regslice;
wire    regslice_both_out_V_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 grp_Matrix_Vector_Activate_Stream_Batch_fu_90_ap_start_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
end

StreamingDataflowPartition_1_MatrixVectorActivation_1_Matrix_Vector_Activate_Stream_Batch grp_Matrix_Vector_Activate_Stream_Batch_fu_90(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_Matrix_Vector_Activate_Stream_Batch_fu_90_ap_start),
    .ap_done(grp_Matrix_Vector_Activate_Stream_Batch_fu_90_ap_done),
    .ap_idle(grp_Matrix_Vector_Activate_Stream_Batch_fu_90_ap_idle),
    .ap_ready(grp_Matrix_Vector_Activate_Stream_Batch_fu_90_ap_ready),
    .in0_V_TVALID(in0_V_TVALID_int_regslice),
    .weights_V_TVALID(weights_V_TVALID_int_regslice),
    .out_V_TREADY(grp_Matrix_Vector_Activate_Stream_Batch_fu_90_out_V_TREADY),
    .in0_V_TDATA(in0_V_TDATA_int_regslice),
    .in0_V_TREADY(grp_Matrix_Vector_Activate_Stream_Batch_fu_90_in0_V_TREADY),
    .out_V_TDATA(grp_Matrix_Vector_Activate_Stream_Batch_fu_90_out_V_TDATA),
    .out_V_TVALID(grp_Matrix_Vector_Activate_Stream_Batch_fu_90_out_V_TVALID),
    .weights_V_TDATA(weights_V_TDATA_int_regslice),
    .weights_V_TREADY(grp_Matrix_Vector_Activate_Stream_Batch_fu_90_weights_V_TREADY)
);

StreamingDataflowPartition_1_MatrixVectorActivation_1_regslice_both #(
    .DataWidth( 16 ))
regslice_both_in0_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(in0_V_TDATA),
    .vld_in(in0_V_TVALID),
    .ack_in(regslice_both_in0_V_U_ack_in),
    .data_out(in0_V_TDATA_int_regslice),
    .vld_out(in0_V_TVALID_int_regslice),
    .ack_out(in0_V_TREADY_int_regslice),
    .apdone_blk(regslice_both_in0_V_U_apdone_blk)
);

StreamingDataflowPartition_1_MatrixVectorActivation_1_regslice_both #(
    .DataWidth( 32 ))
regslice_both_weights_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(weights_V_TDATA),
    .vld_in(weights_V_TVALID),
    .ack_in(regslice_both_weights_V_U_ack_in),
    .data_out(weights_V_TDATA_int_regslice),
    .vld_out(weights_V_TVALID_int_regslice),
    .ack_out(weights_V_TREADY_int_regslice),
    .apdone_blk(regslice_both_weights_V_U_apdone_blk)
);

StreamingDataflowPartition_1_MatrixVectorActivation_1_regslice_both #(
    .DataWidth( 8 ))
regslice_both_out_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(grp_Matrix_Vector_Activate_Stream_Batch_fu_90_out_V_TDATA),
    .vld_in(grp_Matrix_Vector_Activate_Stream_Batch_fu_90_out_V_TVALID),
    .ack_in(out_V_TREADY_int_regslice),
    .data_out(out_V_TDATA),
    .vld_out(regslice_both_out_V_U_vld_out),
    .ack_out(out_V_TREADY),
    .apdone_blk(regslice_both_out_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_Matrix_Vector_Activate_Stream_Batch_fu_90_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_Matrix_Vector_Activate_Stream_Batch_fu_90_ap_start_reg <= 1'b1;
        end else if ((grp_Matrix_Vector_Activate_Stream_Batch_fu_90_ap_ready == 1'b1)) begin
            grp_Matrix_Vector_Activate_Stream_Batch_fu_90_ap_start_reg <= 1'b0;
        end
    end
end

assign ap_ST_fsm_state1_blk = 1'b0;

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_Matrix_Vector_Activate_Stream_Batch_fu_90_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if ((regslice_both_out_V_U_apdone_blk == 1'b1)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        in0_V_TREADY_int_regslice = grp_Matrix_Vector_Activate_Stream_Batch_fu_90_in0_V_TREADY;
    end else begin
        in0_V_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        weights_V_TREADY_int_regslice = grp_Matrix_Vector_Activate_Stream_Batch_fu_90_weights_V_TREADY;
    end else begin
        weights_V_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_Matrix_Vector_Activate_Stream_Batch_fu_90_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((regslice_both_out_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign grp_Matrix_Vector_Activate_Stream_Batch_fu_90_ap_start = grp_Matrix_Vector_Activate_Stream_Batch_fu_90_ap_start_reg;

assign grp_Matrix_Vector_Activate_Stream_Batch_fu_90_out_V_TREADY = (out_V_TREADY_int_regslice & ap_CS_fsm_state3);

assign in0_V_TREADY = regslice_both_in0_V_U_ack_in;

assign out_V_TVALID = regslice_both_out_V_U_vld_out;

assign weights_V_TREADY = regslice_both_weights_V_U_ack_in;

endmodule //StreamingDataflowPartition_1_MatrixVectorActivation_1
