// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_OUT_test_label_out_TDATA "../tv/rtldatafile/rtl.hdc_maxi.autotvout_test_label_out_V_data_V.dat"
`define EGRESS_STATUS_test_label_out_TDATA "../tv/stream_size/stream_egress_status_test_label_out_V_data_V.dat"
`define TV_OUT_test_label_out_TKEEP "../tv/rtldatafile/rtl.hdc_maxi.autotvout_test_label_out_V_keep_V.dat"
`define EGRESS_STATUS_test_label_out_TKEEP "../tv/stream_size/stream_egress_status_test_label_out_V_keep_V.dat"
`define TV_OUT_test_label_out_TSTRB "../tv/rtldatafile/rtl.hdc_maxi.autotvout_test_label_out_V_strb_V.dat"
`define EGRESS_STATUS_test_label_out_TSTRB "../tv/stream_size/stream_egress_status_test_label_out_V_strb_V.dat"
`define TV_OUT_test_label_out_TUSER "../tv/rtldatafile/rtl.hdc_maxi.autotvout_test_label_out_V_user_V.dat"
`define EGRESS_STATUS_test_label_out_TUSER "../tv/stream_size/stream_egress_status_test_label_out_V_user_V.dat"
`define TV_OUT_test_label_out_TLAST "../tv/rtldatafile/rtl.hdc_maxi.autotvout_test_label_out_V_last_V.dat"
`define EGRESS_STATUS_test_label_out_TLAST "../tv/stream_size/stream_egress_status_test_label_out_V_last_V.dat"
`define TV_OUT_test_label_out_TID "../tv/rtldatafile/rtl.hdc_maxi.autotvout_test_label_out_V_id_V.dat"
`define EGRESS_STATUS_test_label_out_TID "../tv/stream_size/stream_egress_status_test_label_out_V_id_V.dat"
`define TV_OUT_test_label_out_TDEST "../tv/rtldatafile/rtl.hdc_maxi.autotvout_test_label_out_V_dest_V.dat"
`define EGRESS_STATUS_test_label_out_TDEST "../tv/stream_size/stream_egress_status_test_label_out_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_test_label_out (
    input clk,
    input reset,
    input [32 - 1:0] TRAN_test_label_out_TDATA,
    input [4 - 1:0] TRAN_test_label_out_TKEEP,
    input [4 - 1:0] TRAN_test_label_out_TSTRB,
    input TRAN_test_label_out_TUSER,
    input TRAN_test_label_out_TLAST,
    input TRAN_test_label_out_TID,
    input TRAN_test_label_out_TDEST,
    input TRAN_test_label_out_TVALID,
    output TRAN_test_label_out_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_test_label_out_TVALID_temp;
    wire test_label_out_TDATA_full;
    wire test_label_out_TDATA_empty;
    reg test_label_out_TDATA_write_en;
    reg [32 - 1:0] test_label_out_TDATA_write_data;
    reg test_label_out_TDATA_read_en;
    wire [32 - 1:0] test_label_out_TDATA_read_data;
    
    fifo #(2, 32) fifo_test_label_out_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(test_label_out_TDATA_write_en),
        .write_data(test_label_out_TDATA_write_data),
        .read_clock(clk),
        .read_en(test_label_out_TDATA_read_en),
        .read_data(test_label_out_TDATA_read_data),
        .full(test_label_out_TDATA_full),
        .empty(test_label_out_TDATA_empty));
    
    always @ (*) begin
        test_label_out_TDATA_write_en <= TRAN_test_label_out_TVALID;
        test_label_out_TDATA_write_data <= TRAN_test_label_out_TDATA;
        test_label_out_TDATA_read_en <= 0;
    end
    wire test_label_out_TKEEP_full;
    wire test_label_out_TKEEP_empty;
    reg test_label_out_TKEEP_write_en;
    reg [4 - 1:0] test_label_out_TKEEP_write_data;
    reg test_label_out_TKEEP_read_en;
    wire [4 - 1:0] test_label_out_TKEEP_read_data;
    
    fifo #(2, 4) fifo_test_label_out_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(test_label_out_TKEEP_write_en),
        .write_data(test_label_out_TKEEP_write_data),
        .read_clock(clk),
        .read_en(test_label_out_TKEEP_read_en),
        .read_data(test_label_out_TKEEP_read_data),
        .full(test_label_out_TKEEP_full),
        .empty(test_label_out_TKEEP_empty));
    
    always @ (*) begin
        test_label_out_TKEEP_write_en <= TRAN_test_label_out_TVALID;
        test_label_out_TKEEP_write_data <= TRAN_test_label_out_TKEEP;
        test_label_out_TKEEP_read_en <= 0;
    end
    wire test_label_out_TSTRB_full;
    wire test_label_out_TSTRB_empty;
    reg test_label_out_TSTRB_write_en;
    reg [4 - 1:0] test_label_out_TSTRB_write_data;
    reg test_label_out_TSTRB_read_en;
    wire [4 - 1:0] test_label_out_TSTRB_read_data;
    
    fifo #(2, 4) fifo_test_label_out_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(test_label_out_TSTRB_write_en),
        .write_data(test_label_out_TSTRB_write_data),
        .read_clock(clk),
        .read_en(test_label_out_TSTRB_read_en),
        .read_data(test_label_out_TSTRB_read_data),
        .full(test_label_out_TSTRB_full),
        .empty(test_label_out_TSTRB_empty));
    
    always @ (*) begin
        test_label_out_TSTRB_write_en <= TRAN_test_label_out_TVALID;
        test_label_out_TSTRB_write_data <= TRAN_test_label_out_TSTRB;
        test_label_out_TSTRB_read_en <= 0;
    end
    wire test_label_out_TUSER_full;
    wire test_label_out_TUSER_empty;
    reg test_label_out_TUSER_write_en;
    reg [1 - 1:0] test_label_out_TUSER_write_data;
    reg test_label_out_TUSER_read_en;
    wire [1 - 1:0] test_label_out_TUSER_read_data;
    
    fifo #(2, 1) fifo_test_label_out_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(test_label_out_TUSER_write_en),
        .write_data(test_label_out_TUSER_write_data),
        .read_clock(clk),
        .read_en(test_label_out_TUSER_read_en),
        .read_data(test_label_out_TUSER_read_data),
        .full(test_label_out_TUSER_full),
        .empty(test_label_out_TUSER_empty));
    
    always @ (*) begin
        test_label_out_TUSER_write_en <= TRAN_test_label_out_TVALID;
        test_label_out_TUSER_write_data <= TRAN_test_label_out_TUSER;
        test_label_out_TUSER_read_en <= 0;
    end
    wire test_label_out_TLAST_full;
    wire test_label_out_TLAST_empty;
    reg test_label_out_TLAST_write_en;
    reg [1 - 1:0] test_label_out_TLAST_write_data;
    reg test_label_out_TLAST_read_en;
    wire [1 - 1:0] test_label_out_TLAST_read_data;
    
    fifo #(2, 1) fifo_test_label_out_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(test_label_out_TLAST_write_en),
        .write_data(test_label_out_TLAST_write_data),
        .read_clock(clk),
        .read_en(test_label_out_TLAST_read_en),
        .read_data(test_label_out_TLAST_read_data),
        .full(test_label_out_TLAST_full),
        .empty(test_label_out_TLAST_empty));
    
    always @ (*) begin
        test_label_out_TLAST_write_en <= TRAN_test_label_out_TVALID;
        test_label_out_TLAST_write_data <= TRAN_test_label_out_TLAST;
        test_label_out_TLAST_read_en <= 0;
    end
    wire test_label_out_TID_full;
    wire test_label_out_TID_empty;
    reg test_label_out_TID_write_en;
    reg [1 - 1:0] test_label_out_TID_write_data;
    reg test_label_out_TID_read_en;
    wire [1 - 1:0] test_label_out_TID_read_data;
    
    fifo #(2, 1) fifo_test_label_out_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(test_label_out_TID_write_en),
        .write_data(test_label_out_TID_write_data),
        .read_clock(clk),
        .read_en(test_label_out_TID_read_en),
        .read_data(test_label_out_TID_read_data),
        .full(test_label_out_TID_full),
        .empty(test_label_out_TID_empty));
    
    always @ (*) begin
        test_label_out_TID_write_en <= TRAN_test_label_out_TVALID;
        test_label_out_TID_write_data <= TRAN_test_label_out_TID;
        test_label_out_TID_read_en <= 0;
    end
    wire test_label_out_TDEST_full;
    wire test_label_out_TDEST_empty;
    reg test_label_out_TDEST_write_en;
    reg [1 - 1:0] test_label_out_TDEST_write_data;
    reg test_label_out_TDEST_read_en;
    wire [1 - 1:0] test_label_out_TDEST_read_data;
    
    fifo #(2, 1) fifo_test_label_out_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(test_label_out_TDEST_write_en),
        .write_data(test_label_out_TDEST_write_data),
        .read_clock(clk),
        .read_en(test_label_out_TDEST_read_en),
        .read_data(test_label_out_TDEST_read_data),
        .full(test_label_out_TDEST_full),
        .empty(test_label_out_TDEST_empty));
    
    always @ (*) begin
        test_label_out_TDEST_write_en <= TRAN_test_label_out_TVALID;
        test_label_out_TDEST_write_data <= TRAN_test_label_out_TDEST;
        test_label_out_TDEST_read_en <= 0;
    end
    assign TRAN_test_label_out_TVALID = TRAN_test_label_out_TVALID_temp;

    
    assign TRAN_test_label_out_TREADY = ~(test_label_out_TDATA_full || test_label_out_TKEEP_full || test_label_out_TSTRB_full || test_label_out_TUSER_full || test_label_out_TLAST_full || test_label_out_TID_full || test_label_out_TDEST_full);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [191:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [191:0] rm_0x(input [191:0] token);
        reg [191:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg done_1;
    
    always @ (posedge clk or reset) begin
        if (~reset) begin
            done_1 <= 0;
        end else begin
            done_1 <= done;
        end
    end
    
    reg [31:0] transaction_save_test_label_out_TDATA;
    
    assign transaction = transaction_save_test_label_out_TDATA;
    
    initial begin : AXI_stream_receiver_test_label_out_TDATA
        integer fp;
        reg [32 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_test_label_out_TDATA = 0;
        fifo_test_label_out_TDATA.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_test_label_out_TDATA, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_test_label_out_TDATA);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_test_label_out_TDATA);
                while (~fifo_test_label_out_TDATA.empty) begin
                    fifo_test_label_out_TDATA.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_test_label_out_TDATA = transaction_save_test_label_out_TDATA + 1;
                fifo_test_label_out_TDATA.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_test_label_out_TKEEP;
    
    initial begin : AXI_stream_receiver_test_label_out_TKEEP
        integer fp;
        reg [4 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_test_label_out_TKEEP = 0;
        fifo_test_label_out_TKEEP.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_test_label_out_TKEEP, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_test_label_out_TKEEP);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_test_label_out_TKEEP);
                while (~fifo_test_label_out_TKEEP.empty) begin
                    fifo_test_label_out_TKEEP.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_test_label_out_TKEEP = transaction_save_test_label_out_TKEEP + 1;
                fifo_test_label_out_TKEEP.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_test_label_out_TSTRB;
    
    initial begin : AXI_stream_receiver_test_label_out_TSTRB
        integer fp;
        reg [4 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_test_label_out_TSTRB = 0;
        fifo_test_label_out_TSTRB.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_test_label_out_TSTRB, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_test_label_out_TSTRB);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_test_label_out_TSTRB);
                while (~fifo_test_label_out_TSTRB.empty) begin
                    fifo_test_label_out_TSTRB.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_test_label_out_TSTRB = transaction_save_test_label_out_TSTRB + 1;
                fifo_test_label_out_TSTRB.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_test_label_out_TUSER;
    
    initial begin : AXI_stream_receiver_test_label_out_TUSER
        integer fp;
        reg [1 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_test_label_out_TUSER = 0;
        fifo_test_label_out_TUSER.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_test_label_out_TUSER, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_test_label_out_TUSER);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_test_label_out_TUSER);
                while (~fifo_test_label_out_TUSER.empty) begin
                    fifo_test_label_out_TUSER.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_test_label_out_TUSER = transaction_save_test_label_out_TUSER + 1;
                fifo_test_label_out_TUSER.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_test_label_out_TLAST;
    
    initial begin : AXI_stream_receiver_test_label_out_TLAST
        integer fp;
        reg [1 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_test_label_out_TLAST = 0;
        fifo_test_label_out_TLAST.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_test_label_out_TLAST, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_test_label_out_TLAST);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_test_label_out_TLAST);
                while (~fifo_test_label_out_TLAST.empty) begin
                    fifo_test_label_out_TLAST.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_test_label_out_TLAST = transaction_save_test_label_out_TLAST + 1;
                fifo_test_label_out_TLAST.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_test_label_out_TID;
    
    initial begin : AXI_stream_receiver_test_label_out_TID
        integer fp;
        reg [1 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_test_label_out_TID = 0;
        fifo_test_label_out_TID.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_test_label_out_TID, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_test_label_out_TID);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_test_label_out_TID);
                while (~fifo_test_label_out_TID.empty) begin
                    fifo_test_label_out_TID.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_test_label_out_TID = transaction_save_test_label_out_TID + 1;
                fifo_test_label_out_TID.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_test_label_out_TDEST;
    
    initial begin : AXI_stream_receiver_test_label_out_TDEST
        integer fp;
        reg [1 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_test_label_out_TDEST = 0;
        fifo_test_label_out_TDEST.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_test_label_out_TDEST, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_test_label_out_TDEST);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_test_label_out_TDEST);
                while (~fifo_test_label_out_TDEST.empty) begin
                    fifo_test_label_out_TDEST.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_test_label_out_TDEST = transaction_save_test_label_out_TDEST + 1;
                fifo_test_label_out_TDEST.clear();
                $fclose(fp);
            end
        end
    end

endmodule
