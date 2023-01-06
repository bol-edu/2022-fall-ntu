// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689

`timescale 1 ns / 1 ps

module canny_fifo_w32_d4_S
#(parameter
    MEM_STYLE   = "shiftReg",
    DATA_WIDTH  = 32,
    ADDR_WIDTH  = 2,
    DEPTH       = 4)
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
    output wire [ADDR_WIDTH:0]   if_num_data_valid, // for FRP
    output wire [ADDR_WIDTH:0]   if_fifo_cap,       // for FRP
    output wire                  if_empty_n,
    input  wire                  if_read_ce,
    input  wire                  if_read,
    output wire [DATA_WIDTH-1:0] if_dout
);
//------------------------Parameter----------------------

//------------------------Local signal-------------------
wire [ADDR_WIDTH-1:0] addr;
wire                  push;
wire                  pop;
reg signed [ADDR_WIDTH:0]   mOutPtr;
reg                   empty_n = 1'b0;
reg                   full_n  = 1'b1;
// with almost full?  no 
//------------------------Instantiation------------------
canny_fifo_w32_d4_S_ShiftReg 
#(  .DATA_WIDTH (DATA_WIDTH),
    .ADDR_WIDTH (ADDR_WIDTH),
    .DEPTH      (DEPTH))
U_canny_fifo_w32_d4_S_ShiftReg (
    .clk        (clk),
    .we         (push),
    .addr       (addr),
    .din        (if_din),
    .dout       (if_dout)
);
//------------------------Task and function--------------

//------------------------Body---------------------------
// has num_data_valid ? 
assign if_num_data_valid = mOutPtr + 1'b1; // yes
assign if_fifo_cap = DEPTH; // yes 

// has almost full ? 
assign if_full_n  = full_n; //no 
assign if_empty_n = empty_n;

assign push = (if_write & if_write_ce) & full_n;
assign pop  = (if_read & if_read_ce) & empty_n;
assign addr = mOutPtr[ADDR_WIDTH] == 1'b0 ? mOutPtr[ADDR_WIDTH-1:0]:{ADDR_WIDTH{1'b0}};

// full_n
always @(posedge clk ) begin
    if (reset == 1'b1)
        full_n <= 1'b1;
    else if (push & ~pop) begin
        if (mOutPtr == DEPTH - 2)
            full_n <= 1'b0;
    end
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
    else if (~push & pop) begin
        if (mOutPtr == 0)
            empty_n <= 1'b0;
    end
end

// mOutPtr
always @(posedge clk ) begin
    if (reset == 1'b1)
        mOutPtr <= {ADDR_WIDTH+1{1'b1}};
    else if (push & ~pop)
        mOutPtr <= mOutPtr + 1'b1;
    else if (~push & pop)
        mOutPtr <= mOutPtr - 1'b1;
end

endmodule  


module canny_fifo_w32_d4_S_ShiftReg
#(parameter
    DATA_WIDTH  = 32,
    ADDR_WIDTH  = 2,
    DEPTH       = 4)
(
    input  wire                  clk,
    input  wire                  we,
    input  wire [ADDR_WIDTH-1:0] addr,
    input  wire [DATA_WIDTH-1:0] din,
    output wire [DATA_WIDTH-1:0] dout
);

reg [DATA_WIDTH-1:0] SRL_SIG [0:DEPTH-1];
integer i;

always @ (posedge clk) begin
    if (we) begin
        for (i=0; i<DEPTH-1; i=i+1)
            SRL_SIG[i+1] <= SRL_SIG[i];
        SRL_SIG[0] <= din;
    end
end

assign dout = SRL_SIG[addr];

endmodule
