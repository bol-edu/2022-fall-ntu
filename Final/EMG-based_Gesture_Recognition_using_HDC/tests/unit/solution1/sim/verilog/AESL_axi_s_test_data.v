// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_test_data_TDATA "../tv/cdatafile/c.hdc_maxi.autotvin_test_data_V_data_V.dat"
`define INGRESS_STATUS_test_data_TDATA "../tv/stream_size/stream_ingress_status_test_data_V_data_V.dat"
`define TV_IN_test_data_TKEEP "../tv/cdatafile/c.hdc_maxi.autotvin_test_data_V_keep_V.dat"
`define INGRESS_STATUS_test_data_TKEEP "../tv/stream_size/stream_ingress_status_test_data_V_keep_V.dat"
`define TV_IN_test_data_TSTRB "../tv/cdatafile/c.hdc_maxi.autotvin_test_data_V_strb_V.dat"
`define INGRESS_STATUS_test_data_TSTRB "../tv/stream_size/stream_ingress_status_test_data_V_strb_V.dat"
`define TV_IN_test_data_TUSER "../tv/cdatafile/c.hdc_maxi.autotvin_test_data_V_user_V.dat"
`define INGRESS_STATUS_test_data_TUSER "../tv/stream_size/stream_ingress_status_test_data_V_user_V.dat"
`define TV_IN_test_data_TLAST "../tv/cdatafile/c.hdc_maxi.autotvin_test_data_V_last_V.dat"
`define INGRESS_STATUS_test_data_TLAST "../tv/stream_size/stream_ingress_status_test_data_V_last_V.dat"
`define TV_IN_test_data_TID "../tv/cdatafile/c.hdc_maxi.autotvin_test_data_V_id_V.dat"
`define INGRESS_STATUS_test_data_TID "../tv/stream_size/stream_ingress_status_test_data_V_id_V.dat"
`define TV_IN_test_data_TDEST "../tv/cdatafile/c.hdc_maxi.autotvin_test_data_V_dest_V.dat"
`define INGRESS_STATUS_test_data_TDEST "../tv/stream_size/stream_ingress_status_test_data_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_test_data (
    input clk,
    input reset,
    output [32 - 1:0] TRAN_test_data_TDATA,
    output [4 - 1:0] TRAN_test_data_TKEEP,
    output [4 - 1:0] TRAN_test_data_TSTRB,
    output TRAN_test_data_TUSER,
    output TRAN_test_data_TLAST,
    output TRAN_test_data_TID,
    output TRAN_test_data_TDEST,
    output TRAN_test_data_TVALID,
    input TRAN_test_data_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_test_data_TVALID_temp;
    wire test_data_TDATA_full;
    wire test_data_TDATA_empty;
    reg test_data_TDATA_write_en;
    reg [32 - 1:0] test_data_TDATA_write_data;
    reg test_data_TDATA_read_en;
    wire [32 - 1:0] test_data_TDATA_read_data;
    
    fifo #(640, 32) fifo_test_data_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(test_data_TDATA_write_en),
        .write_data(test_data_TDATA_write_data),
        .read_clock(clk),
        .read_en(test_data_TDATA_read_en),
        .read_data(test_data_TDATA_read_data),
        .full(test_data_TDATA_full),
        .empty(test_data_TDATA_empty));
    
    always @ (*) begin
        test_data_TDATA_write_en <= 0;
        test_data_TDATA_read_en <= TRAN_test_data_TREADY & TRAN_test_data_TVALID;
    end
    
    assign TRAN_test_data_TDATA = test_data_TDATA_read_data;
    wire test_data_TKEEP_full;
    wire test_data_TKEEP_empty;
    reg test_data_TKEEP_write_en;
    reg [4 - 1:0] test_data_TKEEP_write_data;
    reg test_data_TKEEP_read_en;
    wire [4 - 1:0] test_data_TKEEP_read_data;
    
    fifo #(640, 4) fifo_test_data_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(test_data_TKEEP_write_en),
        .write_data(test_data_TKEEP_write_data),
        .read_clock(clk),
        .read_en(test_data_TKEEP_read_en),
        .read_data(test_data_TKEEP_read_data),
        .full(test_data_TKEEP_full),
        .empty(test_data_TKEEP_empty));
    
    always @ (*) begin
        test_data_TKEEP_write_en <= 0;
        test_data_TKEEP_read_en <= TRAN_test_data_TREADY & TRAN_test_data_TVALID;
    end
    
    assign TRAN_test_data_TKEEP = test_data_TKEEP_read_data;
    wire test_data_TSTRB_full;
    wire test_data_TSTRB_empty;
    reg test_data_TSTRB_write_en;
    reg [4 - 1:0] test_data_TSTRB_write_data;
    reg test_data_TSTRB_read_en;
    wire [4 - 1:0] test_data_TSTRB_read_data;
    
    fifo #(640, 4) fifo_test_data_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(test_data_TSTRB_write_en),
        .write_data(test_data_TSTRB_write_data),
        .read_clock(clk),
        .read_en(test_data_TSTRB_read_en),
        .read_data(test_data_TSTRB_read_data),
        .full(test_data_TSTRB_full),
        .empty(test_data_TSTRB_empty));
    
    always @ (*) begin
        test_data_TSTRB_write_en <= 0;
        test_data_TSTRB_read_en <= TRAN_test_data_TREADY & TRAN_test_data_TVALID;
    end
    
    assign TRAN_test_data_TSTRB = test_data_TSTRB_read_data;
    wire test_data_TUSER_full;
    wire test_data_TUSER_empty;
    reg test_data_TUSER_write_en;
    reg [1 - 1:0] test_data_TUSER_write_data;
    reg test_data_TUSER_read_en;
    wire [1 - 1:0] test_data_TUSER_read_data;
    
    fifo #(640, 1) fifo_test_data_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(test_data_TUSER_write_en),
        .write_data(test_data_TUSER_write_data),
        .read_clock(clk),
        .read_en(test_data_TUSER_read_en),
        .read_data(test_data_TUSER_read_data),
        .full(test_data_TUSER_full),
        .empty(test_data_TUSER_empty));
    
    always @ (*) begin
        test_data_TUSER_write_en <= 0;
        test_data_TUSER_read_en <= TRAN_test_data_TREADY & TRAN_test_data_TVALID;
    end
    
    assign TRAN_test_data_TUSER = test_data_TUSER_read_data;
    wire test_data_TLAST_full;
    wire test_data_TLAST_empty;
    reg test_data_TLAST_write_en;
    reg [1 - 1:0] test_data_TLAST_write_data;
    reg test_data_TLAST_read_en;
    wire [1 - 1:0] test_data_TLAST_read_data;
    
    fifo #(640, 1) fifo_test_data_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(test_data_TLAST_write_en),
        .write_data(test_data_TLAST_write_data),
        .read_clock(clk),
        .read_en(test_data_TLAST_read_en),
        .read_data(test_data_TLAST_read_data),
        .full(test_data_TLAST_full),
        .empty(test_data_TLAST_empty));
    
    always @ (*) begin
        test_data_TLAST_write_en <= 0;
        test_data_TLAST_read_en <= TRAN_test_data_TREADY & TRAN_test_data_TVALID;
    end
    
    assign TRAN_test_data_TLAST = test_data_TLAST_read_data;
    wire test_data_TID_full;
    wire test_data_TID_empty;
    reg test_data_TID_write_en;
    reg [1 - 1:0] test_data_TID_write_data;
    reg test_data_TID_read_en;
    wire [1 - 1:0] test_data_TID_read_data;
    
    fifo #(640, 1) fifo_test_data_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(test_data_TID_write_en),
        .write_data(test_data_TID_write_data),
        .read_clock(clk),
        .read_en(test_data_TID_read_en),
        .read_data(test_data_TID_read_data),
        .full(test_data_TID_full),
        .empty(test_data_TID_empty));
    
    always @ (*) begin
        test_data_TID_write_en <= 0;
        test_data_TID_read_en <= TRAN_test_data_TREADY & TRAN_test_data_TVALID;
    end
    
    assign TRAN_test_data_TID = test_data_TID_read_data;
    wire test_data_TDEST_full;
    wire test_data_TDEST_empty;
    reg test_data_TDEST_write_en;
    reg [1 - 1:0] test_data_TDEST_write_data;
    reg test_data_TDEST_read_en;
    wire [1 - 1:0] test_data_TDEST_read_data;
    
    fifo #(640, 1) fifo_test_data_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(test_data_TDEST_write_en),
        .write_data(test_data_TDEST_write_data),
        .read_clock(clk),
        .read_en(test_data_TDEST_read_en),
        .read_data(test_data_TDEST_read_data),
        .full(test_data_TDEST_full),
        .empty(test_data_TDEST_empty));
    
    always @ (*) begin
        test_data_TDEST_write_en <= 0;
        test_data_TDEST_read_en <= TRAN_test_data_TREADY & TRAN_test_data_TVALID;
    end
    
    assign TRAN_test_data_TDEST = test_data_TDEST_read_data;
    assign TRAN_test_data_TVALID = TRAN_test_data_TVALID_temp;

    
    assign TRAN_test_data_TVALID_temp = ~(test_data_TDATA_empty || test_data_TKEEP_empty || test_data_TSTRB_empty || test_data_TUSER_empty || test_data_TLAST_empty || test_data_TID_empty || test_data_TDEST_empty);
    
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
    
    reg [31:0] transaction_load_test_data_TDATA;
    
    assign transaction = transaction_load_test_data_TDATA;
    
    initial begin : AXI_stream_driver_test_data_TDATA
        integer fp;
        reg [191:0] token;
        reg [32 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_test_data_TDATA = 0;
        fifo_test_data_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_test_data_TDATA, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_test_data_TDATA);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_test_data_TDATA, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_test_data_TDATA);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_test_data_TDATA.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_test_data_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_test_data_TDATA.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_test_data_TDATA = transaction_load_test_data_TDATA + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_test_data_TKEEP;
    
    initial begin : AXI_stream_driver_test_data_TKEEP
        integer fp;
        reg [191:0] token;
        reg [4 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_test_data_TKEEP = 0;
        fifo_test_data_TKEEP.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_test_data_TKEEP, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_test_data_TKEEP);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_test_data_TKEEP, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_test_data_TKEEP);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_test_data_TKEEP.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_test_data_TKEEP.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_test_data_TKEEP.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_test_data_TKEEP = transaction_load_test_data_TKEEP + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_test_data_TSTRB;
    
    initial begin : AXI_stream_driver_test_data_TSTRB
        integer fp;
        reg [191:0] token;
        reg [4 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_test_data_TSTRB = 0;
        fifo_test_data_TSTRB.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_test_data_TSTRB, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_test_data_TSTRB);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_test_data_TSTRB, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_test_data_TSTRB);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_test_data_TSTRB.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_test_data_TSTRB.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_test_data_TSTRB.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_test_data_TSTRB = transaction_load_test_data_TSTRB + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_test_data_TUSER;
    
    initial begin : AXI_stream_driver_test_data_TUSER
        integer fp;
        reg [191:0] token;
        reg [1 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_test_data_TUSER = 0;
        fifo_test_data_TUSER.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_test_data_TUSER, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_test_data_TUSER);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_test_data_TUSER, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_test_data_TUSER);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_test_data_TUSER.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_test_data_TUSER.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_test_data_TUSER.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_test_data_TUSER = transaction_load_test_data_TUSER + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_test_data_TLAST;
    
    initial begin : AXI_stream_driver_test_data_TLAST
        integer fp;
        reg [191:0] token;
        reg [1 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_test_data_TLAST = 0;
        fifo_test_data_TLAST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_test_data_TLAST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_test_data_TLAST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_test_data_TLAST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_test_data_TLAST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_test_data_TLAST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_test_data_TLAST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_test_data_TLAST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_test_data_TLAST = transaction_load_test_data_TLAST + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_test_data_TID;
    
    initial begin : AXI_stream_driver_test_data_TID
        integer fp;
        reg [191:0] token;
        reg [1 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_test_data_TID = 0;
        fifo_test_data_TID.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_test_data_TID, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_test_data_TID);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_test_data_TID, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_test_data_TID);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_test_data_TID.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_test_data_TID.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_test_data_TID.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_test_data_TID = transaction_load_test_data_TID + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_test_data_TDEST;
    
    initial begin : AXI_stream_driver_test_data_TDEST
        integer fp;
        reg [191:0] token;
        reg [1 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_test_data_TDEST = 0;
        fifo_test_data_TDEST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_test_data_TDEST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_test_data_TDEST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_test_data_TDEST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_test_data_TDEST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_test_data_TDEST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_test_data_TDEST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_test_data_TDEST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_test_data_TDEST = transaction_load_test_data_TDEST + 1;
            end
        end
    end

endmodule
