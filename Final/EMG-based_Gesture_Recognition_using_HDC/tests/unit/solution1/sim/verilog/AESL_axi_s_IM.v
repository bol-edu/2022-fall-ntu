// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_IM_TDATA "../tv/cdatafile/c.hdc_maxi.autotvin_IM_V_data_V.dat"
`define INGRESS_STATUS_IM_TDATA "../tv/stream_size/stream_ingress_status_IM_V_data_V.dat"
`define TV_IN_IM_TKEEP "../tv/cdatafile/c.hdc_maxi.autotvin_IM_V_keep_V.dat"
`define INGRESS_STATUS_IM_TKEEP "../tv/stream_size/stream_ingress_status_IM_V_keep_V.dat"
`define TV_IN_IM_TSTRB "../tv/cdatafile/c.hdc_maxi.autotvin_IM_V_strb_V.dat"
`define INGRESS_STATUS_IM_TSTRB "../tv/stream_size/stream_ingress_status_IM_V_strb_V.dat"
`define TV_IN_IM_TUSER "../tv/cdatafile/c.hdc_maxi.autotvin_IM_V_user_V.dat"
`define INGRESS_STATUS_IM_TUSER "../tv/stream_size/stream_ingress_status_IM_V_user_V.dat"
`define TV_IN_IM_TLAST "../tv/cdatafile/c.hdc_maxi.autotvin_IM_V_last_V.dat"
`define INGRESS_STATUS_IM_TLAST "../tv/stream_size/stream_ingress_status_IM_V_last_V.dat"
`define TV_IN_IM_TID "../tv/cdatafile/c.hdc_maxi.autotvin_IM_V_id_V.dat"
`define INGRESS_STATUS_IM_TID "../tv/stream_size/stream_ingress_status_IM_V_id_V.dat"
`define TV_IN_IM_TDEST "../tv/cdatafile/c.hdc_maxi.autotvin_IM_V_dest_V.dat"
`define INGRESS_STATUS_IM_TDEST "../tv/stream_size/stream_ingress_status_IM_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_IM (
    input clk,
    input reset,
    output [32 - 1:0] TRAN_IM_TDATA,
    output [4 - 1:0] TRAN_IM_TKEEP,
    output [4 - 1:0] TRAN_IM_TSTRB,
    output TRAN_IM_TUSER,
    output TRAN_IM_TLAST,
    output TRAN_IM_TID,
    output TRAN_IM_TDEST,
    output TRAN_IM_TVALID,
    input TRAN_IM_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_IM_TVALID_temp;
    wire IM_TDATA_full;
    wire IM_TDATA_empty;
    reg IM_TDATA_write_en;
    reg [32 - 1:0] IM_TDATA_write_data;
    reg IM_TDATA_read_en;
    wire [32 - 1:0] IM_TDATA_read_data;
    
    fifo #(1000, 32) fifo_IM_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(IM_TDATA_write_en),
        .write_data(IM_TDATA_write_data),
        .read_clock(clk),
        .read_en(IM_TDATA_read_en),
        .read_data(IM_TDATA_read_data),
        .full(IM_TDATA_full),
        .empty(IM_TDATA_empty));
    
    always @ (*) begin
        IM_TDATA_write_en <= 0;
        IM_TDATA_read_en <= TRAN_IM_TREADY & TRAN_IM_TVALID;
    end
    
    assign TRAN_IM_TDATA = IM_TDATA_read_data;
    wire IM_TKEEP_full;
    wire IM_TKEEP_empty;
    reg IM_TKEEP_write_en;
    reg [4 - 1:0] IM_TKEEP_write_data;
    reg IM_TKEEP_read_en;
    wire [4 - 1:0] IM_TKEEP_read_data;
    
    fifo #(1000, 4) fifo_IM_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(IM_TKEEP_write_en),
        .write_data(IM_TKEEP_write_data),
        .read_clock(clk),
        .read_en(IM_TKEEP_read_en),
        .read_data(IM_TKEEP_read_data),
        .full(IM_TKEEP_full),
        .empty(IM_TKEEP_empty));
    
    always @ (*) begin
        IM_TKEEP_write_en <= 0;
        IM_TKEEP_read_en <= TRAN_IM_TREADY & TRAN_IM_TVALID;
    end
    
    assign TRAN_IM_TKEEP = IM_TKEEP_read_data;
    wire IM_TSTRB_full;
    wire IM_TSTRB_empty;
    reg IM_TSTRB_write_en;
    reg [4 - 1:0] IM_TSTRB_write_data;
    reg IM_TSTRB_read_en;
    wire [4 - 1:0] IM_TSTRB_read_data;
    
    fifo #(1000, 4) fifo_IM_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(IM_TSTRB_write_en),
        .write_data(IM_TSTRB_write_data),
        .read_clock(clk),
        .read_en(IM_TSTRB_read_en),
        .read_data(IM_TSTRB_read_data),
        .full(IM_TSTRB_full),
        .empty(IM_TSTRB_empty));
    
    always @ (*) begin
        IM_TSTRB_write_en <= 0;
        IM_TSTRB_read_en <= TRAN_IM_TREADY & TRAN_IM_TVALID;
    end
    
    assign TRAN_IM_TSTRB = IM_TSTRB_read_data;
    wire IM_TUSER_full;
    wire IM_TUSER_empty;
    reg IM_TUSER_write_en;
    reg [1 - 1:0] IM_TUSER_write_data;
    reg IM_TUSER_read_en;
    wire [1 - 1:0] IM_TUSER_read_data;
    
    fifo #(1000, 1) fifo_IM_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(IM_TUSER_write_en),
        .write_data(IM_TUSER_write_data),
        .read_clock(clk),
        .read_en(IM_TUSER_read_en),
        .read_data(IM_TUSER_read_data),
        .full(IM_TUSER_full),
        .empty(IM_TUSER_empty));
    
    always @ (*) begin
        IM_TUSER_write_en <= 0;
        IM_TUSER_read_en <= TRAN_IM_TREADY & TRAN_IM_TVALID;
    end
    
    assign TRAN_IM_TUSER = IM_TUSER_read_data;
    wire IM_TLAST_full;
    wire IM_TLAST_empty;
    reg IM_TLAST_write_en;
    reg [1 - 1:0] IM_TLAST_write_data;
    reg IM_TLAST_read_en;
    wire [1 - 1:0] IM_TLAST_read_data;
    
    fifo #(1000, 1) fifo_IM_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(IM_TLAST_write_en),
        .write_data(IM_TLAST_write_data),
        .read_clock(clk),
        .read_en(IM_TLAST_read_en),
        .read_data(IM_TLAST_read_data),
        .full(IM_TLAST_full),
        .empty(IM_TLAST_empty));
    
    always @ (*) begin
        IM_TLAST_write_en <= 0;
        IM_TLAST_read_en <= TRAN_IM_TREADY & TRAN_IM_TVALID;
    end
    
    assign TRAN_IM_TLAST = IM_TLAST_read_data;
    wire IM_TID_full;
    wire IM_TID_empty;
    reg IM_TID_write_en;
    reg [1 - 1:0] IM_TID_write_data;
    reg IM_TID_read_en;
    wire [1 - 1:0] IM_TID_read_data;
    
    fifo #(1000, 1) fifo_IM_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(IM_TID_write_en),
        .write_data(IM_TID_write_data),
        .read_clock(clk),
        .read_en(IM_TID_read_en),
        .read_data(IM_TID_read_data),
        .full(IM_TID_full),
        .empty(IM_TID_empty));
    
    always @ (*) begin
        IM_TID_write_en <= 0;
        IM_TID_read_en <= TRAN_IM_TREADY & TRAN_IM_TVALID;
    end
    
    assign TRAN_IM_TID = IM_TID_read_data;
    wire IM_TDEST_full;
    wire IM_TDEST_empty;
    reg IM_TDEST_write_en;
    reg [1 - 1:0] IM_TDEST_write_data;
    reg IM_TDEST_read_en;
    wire [1 - 1:0] IM_TDEST_read_data;
    
    fifo #(1000, 1) fifo_IM_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(IM_TDEST_write_en),
        .write_data(IM_TDEST_write_data),
        .read_clock(clk),
        .read_en(IM_TDEST_read_en),
        .read_data(IM_TDEST_read_data),
        .full(IM_TDEST_full),
        .empty(IM_TDEST_empty));
    
    always @ (*) begin
        IM_TDEST_write_en <= 0;
        IM_TDEST_read_en <= TRAN_IM_TREADY & TRAN_IM_TVALID;
    end
    
    assign TRAN_IM_TDEST = IM_TDEST_read_data;
    assign TRAN_IM_TVALID = TRAN_IM_TVALID_temp;

    
    assign TRAN_IM_TVALID_temp = ~(IM_TDATA_empty || IM_TKEEP_empty || IM_TSTRB_empty || IM_TUSER_empty || IM_TLAST_empty || IM_TID_empty || IM_TDEST_empty);
    
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
    
    reg [31:0] transaction_load_IM_TDATA;
    
    assign transaction = transaction_load_IM_TDATA;
    
    initial begin : AXI_stream_driver_IM_TDATA
        integer fp;
        reg [191:0] token;
        reg [32 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_IM_TDATA = 0;
        fifo_IM_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_IM_TDATA, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_IM_TDATA);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_IM_TDATA, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_IM_TDATA);
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
                    fifo_IM_TDATA.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_IM_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_IM_TDATA.push(data);
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
                transaction_load_IM_TDATA = transaction_load_IM_TDATA + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_IM_TKEEP;
    
    initial begin : AXI_stream_driver_IM_TKEEP
        integer fp;
        reg [191:0] token;
        reg [4 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_IM_TKEEP = 0;
        fifo_IM_TKEEP.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_IM_TKEEP, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_IM_TKEEP);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_IM_TKEEP, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_IM_TKEEP);
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
                    fifo_IM_TKEEP.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_IM_TKEEP.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_IM_TKEEP.push(data);
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
                transaction_load_IM_TKEEP = transaction_load_IM_TKEEP + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_IM_TSTRB;
    
    initial begin : AXI_stream_driver_IM_TSTRB
        integer fp;
        reg [191:0] token;
        reg [4 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_IM_TSTRB = 0;
        fifo_IM_TSTRB.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_IM_TSTRB, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_IM_TSTRB);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_IM_TSTRB, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_IM_TSTRB);
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
                    fifo_IM_TSTRB.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_IM_TSTRB.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_IM_TSTRB.push(data);
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
                transaction_load_IM_TSTRB = transaction_load_IM_TSTRB + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_IM_TUSER;
    
    initial begin : AXI_stream_driver_IM_TUSER
        integer fp;
        reg [191:0] token;
        reg [1 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_IM_TUSER = 0;
        fifo_IM_TUSER.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_IM_TUSER, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_IM_TUSER);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_IM_TUSER, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_IM_TUSER);
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
                    fifo_IM_TUSER.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_IM_TUSER.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_IM_TUSER.push(data);
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
                transaction_load_IM_TUSER = transaction_load_IM_TUSER + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_IM_TLAST;
    
    initial begin : AXI_stream_driver_IM_TLAST
        integer fp;
        reg [191:0] token;
        reg [1 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_IM_TLAST = 0;
        fifo_IM_TLAST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_IM_TLAST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_IM_TLAST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_IM_TLAST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_IM_TLAST);
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
                    fifo_IM_TLAST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_IM_TLAST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_IM_TLAST.push(data);
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
                transaction_load_IM_TLAST = transaction_load_IM_TLAST + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_IM_TID;
    
    initial begin : AXI_stream_driver_IM_TID
        integer fp;
        reg [191:0] token;
        reg [1 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_IM_TID = 0;
        fifo_IM_TID.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_IM_TID, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_IM_TID);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_IM_TID, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_IM_TID);
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
                    fifo_IM_TID.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_IM_TID.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_IM_TID.push(data);
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
                transaction_load_IM_TID = transaction_load_IM_TID + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_IM_TDEST;
    
    initial begin : AXI_stream_driver_IM_TDEST
        integer fp;
        reg [191:0] token;
        reg [1 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_IM_TDEST = 0;
        fifo_IM_TDEST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_IM_TDEST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_IM_TDEST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_IM_TDEST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_IM_TDEST);
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
                    fifo_IM_TDEST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_IM_TDEST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_IM_TDEST.push(data);
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
                transaction_load_IM_TDEST = transaction_load_IM_TDEST + 1;
            end
        end
    end

endmodule
