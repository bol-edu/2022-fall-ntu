// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_AM_out_TDATA "../tv/cdatafile/c.hdc_maxi.autotvin_AM_out_V_data_V.dat"
`define INGRESS_STATUS_AM_out_TDATA "../tv/stream_size/stream_ingress_status_AM_out_V_data_V.dat"
`define TV_IN_AM_out_TKEEP "../tv/cdatafile/c.hdc_maxi.autotvin_AM_out_V_keep_V.dat"
`define INGRESS_STATUS_AM_out_TKEEP "../tv/stream_size/stream_ingress_status_AM_out_V_keep_V.dat"
`define TV_IN_AM_out_TSTRB "../tv/cdatafile/c.hdc_maxi.autotvin_AM_out_V_strb_V.dat"
`define INGRESS_STATUS_AM_out_TSTRB "../tv/stream_size/stream_ingress_status_AM_out_V_strb_V.dat"
`define TV_IN_AM_out_TUSER "../tv/cdatafile/c.hdc_maxi.autotvin_AM_out_V_user_V.dat"
`define INGRESS_STATUS_AM_out_TUSER "../tv/stream_size/stream_ingress_status_AM_out_V_user_V.dat"
`define TV_IN_AM_out_TLAST "../tv/cdatafile/c.hdc_maxi.autotvin_AM_out_V_last_V.dat"
`define INGRESS_STATUS_AM_out_TLAST "../tv/stream_size/stream_ingress_status_AM_out_V_last_V.dat"
`define TV_IN_AM_out_TID "../tv/cdatafile/c.hdc_maxi.autotvin_AM_out_V_id_V.dat"
`define INGRESS_STATUS_AM_out_TID "../tv/stream_size/stream_ingress_status_AM_out_V_id_V.dat"
`define TV_IN_AM_out_TDEST "../tv/cdatafile/c.hdc_maxi.autotvin_AM_out_V_dest_V.dat"
`define INGRESS_STATUS_AM_out_TDEST "../tv/stream_size/stream_ingress_status_AM_out_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_AM_out (
    input clk,
    input reset,
    output [32 - 1:0] TRAN_AM_out_TDATA,
    output [4 - 1:0] TRAN_AM_out_TKEEP,
    output [4 - 1:0] TRAN_AM_out_TSTRB,
    output TRAN_AM_out_TUSER,
    output TRAN_AM_out_TLAST,
    output TRAN_AM_out_TID,
    output TRAN_AM_out_TDEST,
    output TRAN_AM_out_TVALID,
    input TRAN_AM_out_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_AM_out_TVALID_temp;
    wire AM_out_TDATA_full;
    wire AM_out_TDATA_empty;
    reg AM_out_TDATA_write_en;
    reg [32 - 1:0] AM_out_TDATA_write_data;
    reg AM_out_TDATA_read_en;
    wire [32 - 1:0] AM_out_TDATA_read_data;
    
    fifo #(5000, 32) fifo_AM_out_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(AM_out_TDATA_write_en),
        .write_data(AM_out_TDATA_write_data),
        .read_clock(clk),
        .read_en(AM_out_TDATA_read_en),
        .read_data(AM_out_TDATA_read_data),
        .full(AM_out_TDATA_full),
        .empty(AM_out_TDATA_empty));
    
    always @ (*) begin
        AM_out_TDATA_write_en <= 0;
        AM_out_TDATA_read_en <= TRAN_AM_out_TREADY & TRAN_AM_out_TVALID;
    end
    
    assign TRAN_AM_out_TDATA = AM_out_TDATA_read_data;
    wire AM_out_TKEEP_full;
    wire AM_out_TKEEP_empty;
    reg AM_out_TKEEP_write_en;
    reg [4 - 1:0] AM_out_TKEEP_write_data;
    reg AM_out_TKEEP_read_en;
    wire [4 - 1:0] AM_out_TKEEP_read_data;
    
    fifo #(5000, 4) fifo_AM_out_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(AM_out_TKEEP_write_en),
        .write_data(AM_out_TKEEP_write_data),
        .read_clock(clk),
        .read_en(AM_out_TKEEP_read_en),
        .read_data(AM_out_TKEEP_read_data),
        .full(AM_out_TKEEP_full),
        .empty(AM_out_TKEEP_empty));
    
    always @ (*) begin
        AM_out_TKEEP_write_en <= 0;
        AM_out_TKEEP_read_en <= TRAN_AM_out_TREADY & TRAN_AM_out_TVALID;
    end
    
    assign TRAN_AM_out_TKEEP = AM_out_TKEEP_read_data;
    wire AM_out_TSTRB_full;
    wire AM_out_TSTRB_empty;
    reg AM_out_TSTRB_write_en;
    reg [4 - 1:0] AM_out_TSTRB_write_data;
    reg AM_out_TSTRB_read_en;
    wire [4 - 1:0] AM_out_TSTRB_read_data;
    
    fifo #(5000, 4) fifo_AM_out_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(AM_out_TSTRB_write_en),
        .write_data(AM_out_TSTRB_write_data),
        .read_clock(clk),
        .read_en(AM_out_TSTRB_read_en),
        .read_data(AM_out_TSTRB_read_data),
        .full(AM_out_TSTRB_full),
        .empty(AM_out_TSTRB_empty));
    
    always @ (*) begin
        AM_out_TSTRB_write_en <= 0;
        AM_out_TSTRB_read_en <= TRAN_AM_out_TREADY & TRAN_AM_out_TVALID;
    end
    
    assign TRAN_AM_out_TSTRB = AM_out_TSTRB_read_data;
    wire AM_out_TUSER_full;
    wire AM_out_TUSER_empty;
    reg AM_out_TUSER_write_en;
    reg [1 - 1:0] AM_out_TUSER_write_data;
    reg AM_out_TUSER_read_en;
    wire [1 - 1:0] AM_out_TUSER_read_data;
    
    fifo #(5000, 1) fifo_AM_out_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(AM_out_TUSER_write_en),
        .write_data(AM_out_TUSER_write_data),
        .read_clock(clk),
        .read_en(AM_out_TUSER_read_en),
        .read_data(AM_out_TUSER_read_data),
        .full(AM_out_TUSER_full),
        .empty(AM_out_TUSER_empty));
    
    always @ (*) begin
        AM_out_TUSER_write_en <= 0;
        AM_out_TUSER_read_en <= TRAN_AM_out_TREADY & TRAN_AM_out_TVALID;
    end
    
    assign TRAN_AM_out_TUSER = AM_out_TUSER_read_data;
    wire AM_out_TLAST_full;
    wire AM_out_TLAST_empty;
    reg AM_out_TLAST_write_en;
    reg [1 - 1:0] AM_out_TLAST_write_data;
    reg AM_out_TLAST_read_en;
    wire [1 - 1:0] AM_out_TLAST_read_data;
    
    fifo #(5000, 1) fifo_AM_out_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(AM_out_TLAST_write_en),
        .write_data(AM_out_TLAST_write_data),
        .read_clock(clk),
        .read_en(AM_out_TLAST_read_en),
        .read_data(AM_out_TLAST_read_data),
        .full(AM_out_TLAST_full),
        .empty(AM_out_TLAST_empty));
    
    always @ (*) begin
        AM_out_TLAST_write_en <= 0;
        AM_out_TLAST_read_en <= TRAN_AM_out_TREADY & TRAN_AM_out_TVALID;
    end
    
    assign TRAN_AM_out_TLAST = AM_out_TLAST_read_data;
    wire AM_out_TID_full;
    wire AM_out_TID_empty;
    reg AM_out_TID_write_en;
    reg [1 - 1:0] AM_out_TID_write_data;
    reg AM_out_TID_read_en;
    wire [1 - 1:0] AM_out_TID_read_data;
    
    fifo #(5000, 1) fifo_AM_out_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(AM_out_TID_write_en),
        .write_data(AM_out_TID_write_data),
        .read_clock(clk),
        .read_en(AM_out_TID_read_en),
        .read_data(AM_out_TID_read_data),
        .full(AM_out_TID_full),
        .empty(AM_out_TID_empty));
    
    always @ (*) begin
        AM_out_TID_write_en <= 0;
        AM_out_TID_read_en <= TRAN_AM_out_TREADY & TRAN_AM_out_TVALID;
    end
    
    assign TRAN_AM_out_TID = AM_out_TID_read_data;
    wire AM_out_TDEST_full;
    wire AM_out_TDEST_empty;
    reg AM_out_TDEST_write_en;
    reg [1 - 1:0] AM_out_TDEST_write_data;
    reg AM_out_TDEST_read_en;
    wire [1 - 1:0] AM_out_TDEST_read_data;
    
    fifo #(5000, 1) fifo_AM_out_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(AM_out_TDEST_write_en),
        .write_data(AM_out_TDEST_write_data),
        .read_clock(clk),
        .read_en(AM_out_TDEST_read_en),
        .read_data(AM_out_TDEST_read_data),
        .full(AM_out_TDEST_full),
        .empty(AM_out_TDEST_empty));
    
    always @ (*) begin
        AM_out_TDEST_write_en <= 0;
        AM_out_TDEST_read_en <= TRAN_AM_out_TREADY & TRAN_AM_out_TVALID;
    end
    
    assign TRAN_AM_out_TDEST = AM_out_TDEST_read_data;
    assign TRAN_AM_out_TVALID = TRAN_AM_out_TVALID_temp;

    
    assign TRAN_AM_out_TVALID_temp = ~(AM_out_TDATA_empty || AM_out_TKEEP_empty || AM_out_TSTRB_empty || AM_out_TUSER_empty || AM_out_TLAST_empty || AM_out_TID_empty || AM_out_TDEST_empty);
    
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
    
    reg [31:0] transaction_load_AM_out_TDATA;
    
    assign transaction = transaction_load_AM_out_TDATA;
    
    initial begin : AXI_stream_driver_AM_out_TDATA
        integer fp;
        reg [191:0] token;
        reg [32 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_AM_out_TDATA = 0;
        fifo_AM_out_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_AM_out_TDATA, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_AM_out_TDATA);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_AM_out_TDATA, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_AM_out_TDATA);
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
                    fifo_AM_out_TDATA.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_AM_out_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_AM_out_TDATA.push(data);
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
                transaction_load_AM_out_TDATA = transaction_load_AM_out_TDATA + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_AM_out_TKEEP;
    
    initial begin : AXI_stream_driver_AM_out_TKEEP
        integer fp;
        reg [191:0] token;
        reg [4 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_AM_out_TKEEP = 0;
        fifo_AM_out_TKEEP.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_AM_out_TKEEP, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_AM_out_TKEEP);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_AM_out_TKEEP, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_AM_out_TKEEP);
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
                    fifo_AM_out_TKEEP.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_AM_out_TKEEP.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_AM_out_TKEEP.push(data);
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
                transaction_load_AM_out_TKEEP = transaction_load_AM_out_TKEEP + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_AM_out_TSTRB;
    
    initial begin : AXI_stream_driver_AM_out_TSTRB
        integer fp;
        reg [191:0] token;
        reg [4 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_AM_out_TSTRB = 0;
        fifo_AM_out_TSTRB.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_AM_out_TSTRB, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_AM_out_TSTRB);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_AM_out_TSTRB, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_AM_out_TSTRB);
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
                    fifo_AM_out_TSTRB.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_AM_out_TSTRB.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_AM_out_TSTRB.push(data);
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
                transaction_load_AM_out_TSTRB = transaction_load_AM_out_TSTRB + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_AM_out_TUSER;
    
    initial begin : AXI_stream_driver_AM_out_TUSER
        integer fp;
        reg [191:0] token;
        reg [1 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_AM_out_TUSER = 0;
        fifo_AM_out_TUSER.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_AM_out_TUSER, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_AM_out_TUSER);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_AM_out_TUSER, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_AM_out_TUSER);
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
                    fifo_AM_out_TUSER.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_AM_out_TUSER.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_AM_out_TUSER.push(data);
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
                transaction_load_AM_out_TUSER = transaction_load_AM_out_TUSER + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_AM_out_TLAST;
    
    initial begin : AXI_stream_driver_AM_out_TLAST
        integer fp;
        reg [191:0] token;
        reg [1 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_AM_out_TLAST = 0;
        fifo_AM_out_TLAST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_AM_out_TLAST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_AM_out_TLAST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_AM_out_TLAST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_AM_out_TLAST);
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
                    fifo_AM_out_TLAST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_AM_out_TLAST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_AM_out_TLAST.push(data);
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
                transaction_load_AM_out_TLAST = transaction_load_AM_out_TLAST + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_AM_out_TID;
    
    initial begin : AXI_stream_driver_AM_out_TID
        integer fp;
        reg [191:0] token;
        reg [1 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_AM_out_TID = 0;
        fifo_AM_out_TID.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_AM_out_TID, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_AM_out_TID);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_AM_out_TID, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_AM_out_TID);
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
                    fifo_AM_out_TID.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_AM_out_TID.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_AM_out_TID.push(data);
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
                transaction_load_AM_out_TID = transaction_load_AM_out_TID + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_AM_out_TDEST;
    
    initial begin : AXI_stream_driver_AM_out_TDEST
        integer fp;
        reg [191:0] token;
        reg [1 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_AM_out_TDEST = 0;
        fifo_AM_out_TDEST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_AM_out_TDEST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_AM_out_TDEST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_AM_out_TDEST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_AM_out_TDEST);
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
                    fifo_AM_out_TDEST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_AM_out_TDEST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_AM_out_TDEST.push(data);
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
                transaction_load_AM_out_TDEST = transaction_load_AM_out_TDEST + 1;
            end
        end
    end

endmodule
