// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689

`timescale 1ns/1ps

module canny_fifo_w26_d16384_A
#(parameter
    MEM_STYLE   = "auto",
    DATA_WIDTH  = 26,
    ADDR_WIDTH  = 14,
    DEPTH       = 16383)
(
    // system signal
    input  wire                  clk,
    input  wire                  reset,

    // write
    output wire                  if_full_n,
    input  wire                  if_write_ce,
    input  wire                  if_write,
    input  wire [DATA_WIDTH-1:0] if_din,
    
    // read 
    output reg  [ADDR_WIDTH:0]   if_num_data_valid, // for FRP
    output wire [ADDR_WIDTH:0]   if_fifo_cap,       // for FRP
    output wire                  if_empty_n,
    input  wire                  if_read_ce,
    input  wire                  if_read,
    output wire [DATA_WIDTH-1:0] if_dout
);
//------------------------Parameter----------------------

//------------------------Local signal-------------------
    reg  [ADDR_WIDTH-1:0] waddr = 1'b0;
    reg  [ADDR_WIDTH-1:0] raddr = 1'b0;
    wire [ADDR_WIDTH-1:0] wnext;
    wire [ADDR_WIDTH-1:0] rnext;
    wire                  push;
    wire                  pop;
    reg  [ADDR_WIDTH:0]   mOutPtr = 1'b0;
    reg                   empty_n = 1'b0;
    reg                   full_n = 1'b1;
    // has almost full?  no 
    // has output register? 
    reg                   dout_vld = 1'b0;//yes 

//------------------------Instantiation------------------
    canny_fifo_w26_d16384_A_ram 
    #(  .MEM_STYLE  (MEM_STYLE),
        .DATA_WIDTH (DATA_WIDTH),
        .ADDR_WIDTH (ADDR_WIDTH),
        .DEPTH      (DEPTH)
    ) U_canny_fifo_w26_d16384_A_ram (
        .clk        (clk),
        .reset      (reset),
        .we         (push),
        .waddr      (waddr),
        .din        (if_din),
        .raddr      (rnext), 
        .rden       (pop),   
        .dout       (if_dout)
    );

//------------------------Task and function--------------

//------------------------Body---------------------------
    // has num_data_valid ? 
    assign if_fifo_cap = DEPTH + 1; // yes  

    // has almost full ? 
    assign if_full_n  = full_n; //no 

    // has output register? 
    assign if_empty_n = dout_vld;  // yes
    assign pop        = empty_n & if_read_ce & (if_read | ~dout_vld); // yes 
    assign push       = full_n & if_write_ce & if_write;
    assign wnext      = !push                ? waddr :
                        (waddr == DEPTH - 1) ? 1'b0  :
                        waddr + 1'b1;
    assign rnext      = !pop                 ? raddr :
                        (raddr == DEPTH - 1) ? 1'b0  :
                        raddr + 1'b1;

    // waddr
    always @(posedge clk ) begin
        if (reset == 1'b1)
            waddr <= 1'b0;
        else
            waddr <= wnext;
    end

    // raddr
    always @(posedge clk ) begin
        if (reset == 1'b1)
            raddr <= 1'b0;
        else
            raddr <= rnext;
    end

    // mOutPtr
    always @(posedge clk ) begin
        if (reset == 1'b1)
            mOutPtr <= 1'b0;
        else if (push & ~pop)
            mOutPtr <= mOutPtr + 1'b1;
        else if (~push & pop)
            mOutPtr <= mOutPtr - 1'b1;
    end

    // full_n
    always @(posedge clk ) begin
        if (reset == 1'b1)
            full_n <= 1'b1;
        else if (push & ~pop)
            full_n <= (mOutPtr != DEPTH - 1);
        else if (~push & pop)
            full_n <= 1'b1;
    end

    // almost_full_n 

    // empty_n
    always @(posedge clk ) begin
        if (reset == 1'b1)
            empty_n <= 1'b0;
        else if (push & ~pop)
            empty_n <= 1'b1;
        else if (~push & pop)
            empty_n <= (mOutPtr != 1'b1);
    end

    // if_num_data_valid 
    always @(posedge clk ) begin
        if (reset == 1'b1)
            if_num_data_valid <= 'b0;
        else if (pop)
            if_num_data_valid <= mOutPtr + push;
        else if (~(if_read_ce & if_read) & dout_vld)
            if_num_data_valid <= mOutPtr + push + 1;
        else
            if_num_data_valid <= 'b0;
    end // 

    // dout_vld 
    always @(posedge clk ) begin
        if (reset == 1'b1)
            dout_vld <= 1'b0;
        else if (pop)
            dout_vld <= 1'b1;
        else if (if_read_ce & if_read)
            dout_vld <= 1'b0;
    end // 

endmodule


module canny_fifo_w26_d16384_A_ram
#(parameter
    MEM_STYLE   = "auto",
    DATA_WIDTH  = 26,
    ADDR_WIDTH  = 14,
    DEPTH       = 16383)
(
    input  wire                  clk,
    input  wire                  reset,
    input  wire                  we,
    input  wire [ADDR_WIDTH-1:0] waddr,
    input  wire [DATA_WIDTH-1:0] din,
    input  wire [ADDR_WIDTH-1:0] raddr,
    //output register? 
    input  wire                  rden,
    output reg  [DATA_WIDTH-1:0] dout //yes
);

    (* ram_style = MEM_STYLE, rw_addr_collision = "yes" *)
    reg  [DATA_WIDTH-1:0] mem[0:DEPTH-1];
    reg  [ADDR_WIDTH-1:0] raddr_reg;

    //write to ram
    always @(posedge clk) begin
        if (we)
            mem[waddr] <= din;
    end

    //buffer the raddr
    always @(posedge clk) begin
        raddr_reg <= raddr;
    end

    //read from ram, output register? 
    always @(posedge clk ) begin
        if (reset)
            dout <= 0;
        else if (rden)
            dout <= mem[raddr_reg];
    end// yes 

endmodule