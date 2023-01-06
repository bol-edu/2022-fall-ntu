// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1ns/1ps

module diamond_c2_RAM_AUTO_1R1W
#(parameter
    DataWidth    = 6,
    AddressRange = 32,
    AddressWidth = 7,
    BufferCount  = 2,
    MemLatency   = 1,
    IndexWidth   = 1
) (
    // system signals
    input  wire                    clk,
    input  wire                    reset,
    // initiator
    input  wire                    i_ce,
    input  wire                    i_write,
    output wire                    i_full_n,
    input  wire                    i_ce0,
    input  wire                    i_we0,
    input  wire [AddressWidth-1:0] i_address0,
    input  wire [DataWidth-1:0]    i_d0,
    output wire [DataWidth-1:0]    i_q0,
    input  wire                    i_ce1,
    input  wire                    i_we1,
    input  wire [AddressWidth-1:0] i_address1,
    input  wire [DataWidth-1:0]    i_d1,
    output wire [DataWidth-1:0]    i_q1,
    // target
    input  wire                    t_ce,
    input  wire                    t_read,
    output wire                    t_empty_n,
    input  wire                    t_ce0,
    input  wire                    t_we0,
    input  wire [AddressWidth-1:0] t_address0,
    input  wire [DataWidth-1:0]    t_d0,
    output wire [DataWidth-1:0]    t_q0,
    input  wire                    t_ce1,
    input  wire                    t_we1,
    input  wire [AddressWidth-1:0] t_address1,
    input  wire [DataWidth-1:0]    t_d1,
    output wire [DataWidth-1:0]    t_q1
);
//------------------------Local signal-------------------
// control/status
reg  [IndexWidth-1:0]   iptr    = 1'b0; // initiator index
reg  [IndexWidth-1:0]   tptr    = 1'b0; // target index
reg  [IndexWidth-1:0]   prev_iptr    = 1'b0; // previous initiator index
reg  [IndexWidth-1:0]   prev_tptr    = 1'b0; // previous target index
reg  [DataWidth-1:0]    reg_q0      = 1'b0; // buffer used if reader is stalled
reg                     reg_valid0    = 1'b0; // buffer has valid data
reg  [DataWidth-1:0]    reg_q1      = 1'b0; // buffer used if reader is stalled
reg                     reg_valid1    = 1'b0; // buffer has valid data
reg  [IndexWidth:0]     count   = 1'b0; // count of written buffers
reg                     full_n  = 1'b1; // whether all buffers are written
reg                     empty_n = 1'b0; // whether none of the buffers is written
wire                    push_buf;       // finish writing a buffer
wire                    write_buf;      // write a buffer
wire                    pop_buf;        // finish reading a buffer
// buffer signals
wire                    buf_ce0[0:BufferCount-1];
wire                    buf_we0[0:BufferCount-1];
wire [AddressWidth-1:0] buf_a0[0:BufferCount-1];
wire [DataWidth-1:0]    buf_d0[0:BufferCount-1];
wire [DataWidth-1:0]    buf_q0[0:BufferCount-1];
wire                    buf_ce1[0:BufferCount-1];
wire                    buf_we1[0:BufferCount-1];
wire [AddressWidth-1:0] buf_a1[0:BufferCount-1];
wire [DataWidth-1:0]    buf_d1[0:BufferCount-1];
wire [DataWidth-1:0]    buf_q1[0:BufferCount-1];
//------------------------Instantiation------------------
genvar i;
generate
    for (i = 0; i < BufferCount; i = i + 1) begin : gen_buffer
        diamond_c2_RAM_AUTO_1R1W_memcore diamond_c2_RAM_AUTO_1R1W_memcore_U (
            .clk      ( clk ),
            .reset    ( reset ),
            .ce0      ( buf_ce0[i] ),
            .we0      ( buf_we0[i] ),
            .address0 ( buf_a0[i] ),
            .d0       ( buf_d0[i] ),
            .q0       ( buf_q0[i] ),
            .ce1      ( buf_ce1[i] ),
            .we1      ( buf_we1[i] ),
            .address1 ( buf_a1[i] ),
            .d1       ( buf_d1[i] ),
            .q1       ( buf_q1[i] )
        );
    end
endgenerate

//++++++++++++++++++++++++buffer signals+++++++++++++++++
generate
    for (i = 0; i < BufferCount; i = i + 1) begin : connect_buffer
        assign buf_ce0[i] = (tptr == i && empty_n) ? t_ce0
                             : (iptr == i) ? i_ce0 : 1'b0;
        assign buf_a0[i]  = (tptr == i && empty_n) ?  t_address0 : i_address0;
        assign buf_we0[i] = (tptr == i && empty_n)  ? t_we0
                             : (iptr == i) ? i_we0 : 1'b0;
        assign buf_d0[i]  = (tptr == i && empty_n) ? t_d0       : i_d0;
        assign buf_ce1[i] = (tptr == i && empty_n) ? t_ce1
                             : (iptr == i) ? i_ce1 : 1'b0;
        assign buf_a1[i]  = (tptr == i && empty_n) ?  t_address1 : i_address1;
        assign buf_we1[i] = (tptr == i && empty_n)  ? t_we1
                             : (iptr == i) ? i_we1 : 1'b0;
        assign buf_d1[i]  = (tptr == i && empty_n) ? t_d1       : i_d1;
    end
endgenerate
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++

//------------------------Body---------------------------
assign i_q0      = buf_q0[prev_iptr];
assign t_q0      = reg_valid0 ? reg_q0 : buf_q0[prev_tptr];
assign i_q1      = buf_q1[prev_iptr];
assign t_q1      = reg_valid1 ? reg_q1 : buf_q1[prev_tptr];

//++++++++++++++++++++++++output+++++++++++++++++++++++++
assign i_full_n  = full_n;
assign t_empty_n = empty_n;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++control/status+++++++++++++++++
assign push_buf = i_ce & i_write & full_n;
assign write_buf = i_ce & i_write;
assign pop_buf  = t_ce & t_read & empty_n;

// iptr
always @(posedge clk) begin
    if (reset == 1'b1)
        iptr <= 1'b0;
    else if (push_buf) begin
        if (iptr == BufferCount - 1'b1)
            iptr <= 1'b0;
        else
            iptr <= iptr + 1'b1;
    end
end

// tptr
always @(posedge clk) begin
    if (reset == 1'b1)
        tptr <= 1'b0;
    else if (pop_buf) begin
        if (tptr == BufferCount - 1'b1)
            tptr <= 1'b0;
        else
            tptr <= tptr + 1'b1;
    end
end

// prev_iptr
always @(posedge clk) begin
    if (reset == 1'b1)
        prev_iptr <= 1'b0;
    else begin
        prev_iptr <= iptr;
    end
end

// prev_tptr
always @(posedge clk) begin
    if (reset == 1'b1)
        prev_tptr <= 1'b0;
    else begin
        prev_tptr <= tptr;
    end
end

// reg_q0 and reg_valid0
always @(posedge clk) begin
    if (reset == 1'b1) begin
        reg_q0     <= 1'b0;
        reg_valid0 <= 1'b0;
    end else if (!t_ce0 && !reg_valid0) begin
        reg_q0     <= buf_q0[prev_tptr];
        reg_valid0 <= 1'b1;
    end else if (t_ce0) begin
        reg_valid0 <= 1'b0;
    end
end

// reg_q1 and reg_valid1
always @(posedge clk) begin
    if (reset == 1'b1) begin
        reg_q1     <= 1'b0;
        reg_valid1 <= 1'b0;
    end else if (!t_ce1 && !reg_valid1) begin
        reg_q1     <= buf_q1[prev_tptr];
        reg_valid1 <= 1'b1;
    end else if (t_ce1) begin
        reg_valid1 <= 1'b0;
    end
end

// count
always @(posedge clk) begin
    if (reset == 1'b1)
        count <= 1'b0;
    else if (push_buf && !pop_buf)
        count <= count + 1'b1;
    else if (!push_buf && pop_buf)
        count <= count - 1'b1;
end

// full_n
always @(posedge clk) begin
    if (reset == 1'b1)
        full_n <= 1'b1;
    else if (push_buf && !pop_buf && count == BufferCount - 2'd2)
        full_n <= 1'b0;
    else if (!push_buf && pop_buf)
        full_n <= 1'b1;
end

// empty_n
always @(posedge clk) begin
    if (reset == 1'b1)
        empty_n <= 1'b0;
    else if ((!write_buf && pop_buf && count == 1'b1)
             || (pop_buf && count == 1'b0))
        empty_n <= 1'b0;
    else if (write_buf && !pop_buf)
        empty_n <= 1'b1;
end
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++

endmodule

