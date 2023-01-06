// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      blockmatmul
`define AUTOTB_DUT_INST AESL_inst_blockmatmul
`define AUTOTB_TOP      apatb_blockmatmul_top
`define AUTOTB_LAT_RESULT_FILE "blockmatmul.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "blockmatmul.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_blockmatmul_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_FIFO_Arows_V_a_0 AESL_autofifo_Arows_V_a_0
`define AESL_FIFO_INST_Arows_V_a_0 AESL_autofifo_inst_Arows_V_a_0
`define AESL_FIFO_Arows_V_a_1 AESL_autofifo_Arows_V_a_1
`define AESL_FIFO_INST_Arows_V_a_1 AESL_autofifo_inst_Arows_V_a_1
`define AESL_FIFO_Arows_V_a_2 AESL_autofifo_Arows_V_a_2
`define AESL_FIFO_INST_Arows_V_a_2 AESL_autofifo_inst_Arows_V_a_2
`define AESL_FIFO_Arows_V_a_3 AESL_autofifo_Arows_V_a_3
`define AESL_FIFO_INST_Arows_V_a_3 AESL_autofifo_inst_Arows_V_a_3
`define AESL_FIFO_Bcols_V_a_0 AESL_autofifo_Bcols_V_a_0
`define AESL_FIFO_INST_Bcols_V_a_0 AESL_autofifo_inst_Bcols_V_a_0
`define AESL_FIFO_Bcols_V_a_1 AESL_autofifo_Bcols_V_a_1
`define AESL_FIFO_INST_Bcols_V_a_1 AESL_autofifo_inst_Bcols_V_a_1
`define AESL_FIFO_Bcols_V_a_2 AESL_autofifo_Bcols_V_a_2
`define AESL_FIFO_INST_Bcols_V_a_2 AESL_autofifo_inst_Bcols_V_a_2
`define AESL_FIFO_Bcols_V_a_3 AESL_autofifo_Bcols_V_a_3
`define AESL_FIFO_INST_Bcols_V_a_3 AESL_autofifo_inst_Bcols_V_a_3
`define AESL_MEM_ABpartial_out AESL_automem_ABpartial_out
`define AESL_MEM_INST_ABpartial_out mem_inst_ABpartial_out
`define AESL_DEPTH_it 1
`define AUTOTB_TVIN_Arows_V_a_0  "../tv/cdatafile/c.blockmatmul.autotvin_Arows_V_a_0.dat"
`define AUTOTB_TVIN_Arows_V_a_1  "../tv/cdatafile/c.blockmatmul.autotvin_Arows_V_a_1.dat"
`define AUTOTB_TVIN_Arows_V_a_2  "../tv/cdatafile/c.blockmatmul.autotvin_Arows_V_a_2.dat"
`define AUTOTB_TVIN_Arows_V_a_3  "../tv/cdatafile/c.blockmatmul.autotvin_Arows_V_a_3.dat"
`define AUTOTB_TVIN_Bcols_V_a_0  "../tv/cdatafile/c.blockmatmul.autotvin_Bcols_V_a_0.dat"
`define AUTOTB_TVIN_Bcols_V_a_1  "../tv/cdatafile/c.blockmatmul.autotvin_Bcols_V_a_1.dat"
`define AUTOTB_TVIN_Bcols_V_a_2  "../tv/cdatafile/c.blockmatmul.autotvin_Bcols_V_a_2.dat"
`define AUTOTB_TVIN_Bcols_V_a_3  "../tv/cdatafile/c.blockmatmul.autotvin_Bcols_V_a_3.dat"
`define AUTOTB_TVIN_ABpartial_out  "../tv/cdatafile/c.blockmatmul.autotvin_ABpartial_out.dat"
`define AUTOTB_TVIN_it  "../tv/cdatafile/c.blockmatmul.autotvin_it.dat"
`define AUTOTB_TVIN_Arows_V_a_0_out_wrapc  "../tv/rtldatafile/rtl.blockmatmul.autotvin_Arows_V_a_0.dat"
`define AUTOTB_TVIN_Arows_V_a_1_out_wrapc  "../tv/rtldatafile/rtl.blockmatmul.autotvin_Arows_V_a_1.dat"
`define AUTOTB_TVIN_Arows_V_a_2_out_wrapc  "../tv/rtldatafile/rtl.blockmatmul.autotvin_Arows_V_a_2.dat"
`define AUTOTB_TVIN_Arows_V_a_3_out_wrapc  "../tv/rtldatafile/rtl.blockmatmul.autotvin_Arows_V_a_3.dat"
`define AUTOTB_TVIN_Bcols_V_a_0_out_wrapc  "../tv/rtldatafile/rtl.blockmatmul.autotvin_Bcols_V_a_0.dat"
`define AUTOTB_TVIN_Bcols_V_a_1_out_wrapc  "../tv/rtldatafile/rtl.blockmatmul.autotvin_Bcols_V_a_1.dat"
`define AUTOTB_TVIN_Bcols_V_a_2_out_wrapc  "../tv/rtldatafile/rtl.blockmatmul.autotvin_Bcols_V_a_2.dat"
`define AUTOTB_TVIN_Bcols_V_a_3_out_wrapc  "../tv/rtldatafile/rtl.blockmatmul.autotvin_Bcols_V_a_3.dat"
`define AUTOTB_TVIN_ABpartial_out_out_wrapc  "../tv/rtldatafile/rtl.blockmatmul.autotvin_ABpartial_out.dat"
`define AUTOTB_TVIN_it_out_wrapc  "../tv/rtldatafile/rtl.blockmatmul.autotvin_it.dat"
`define AUTOTB_TVOUT_ABpartial_out  "../tv/cdatafile/c.blockmatmul.autotvout_ABpartial_out.dat"
`define AUTOTB_TVOUT_ABpartial_out_out_wrapc  "../tv/rtldatafile/rtl.blockmatmul.autotvout_ABpartial_out.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 4;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 207;
parameter LENGTH_Arows_V_a_0 = 8;
parameter LENGTH_Arows_V_a_1 = 8;
parameter LENGTH_Arows_V_a_2 = 8;
parameter LENGTH_Arows_V_a_3 = 8;
parameter LENGTH_Bcols_V_a_0 = 8;
parameter LENGTH_Bcols_V_a_1 = 8;
parameter LENGTH_Bcols_V_a_2 = 8;
parameter LENGTH_Bcols_V_a_3 = 8;
parameter LENGTH_ABpartial_out = 16;
parameter LENGTH_it = 1;

task read_token;
    input integer fp;
    output reg [199 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [31 : 0] Arows_V_a_0_dout;
wire  Arows_V_a_0_empty_n;
wire  Arows_V_a_0_read;
wire [31 : 0] Arows_V_a_1_dout;
wire  Arows_V_a_1_empty_n;
wire  Arows_V_a_1_read;
wire [31 : 0] Arows_V_a_2_dout;
wire  Arows_V_a_2_empty_n;
wire  Arows_V_a_2_read;
wire [31 : 0] Arows_V_a_3_dout;
wire  Arows_V_a_3_empty_n;
wire  Arows_V_a_3_read;
wire [31 : 0] Bcols_V_a_0_dout;
wire  Bcols_V_a_0_empty_n;
wire  Bcols_V_a_0_read;
wire [31 : 0] Bcols_V_a_1_dout;
wire  Bcols_V_a_1_empty_n;
wire  Bcols_V_a_1_read;
wire [31 : 0] Bcols_V_a_2_dout;
wire  Bcols_V_a_2_empty_n;
wire  Bcols_V_a_2_read;
wire [31 : 0] Bcols_V_a_3_dout;
wire  Bcols_V_a_3_empty_n;
wire  Bcols_V_a_3_read;
wire [3 : 0] ABpartial_out_address0;
wire  ABpartial_out_ce0;
wire [31 : 0] ABpartial_out_d0;
wire [31 : 0] ABpartial_out_q0;
wire  ABpartial_out_we0;
wire [3 : 0] ABpartial_out_address1;
wire  ABpartial_out_ce1;
wire [31 : 0] ABpartial_out_d1;
wire [31 : 0] ABpartial_out_q1;
wire  ABpartial_out_we1;
wire [31 : 0] it;
wire ap_start;
wire ap_done;
wire ap_ready;
wire ap_idle;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;

wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .Arows_V_a_0_dout(Arows_V_a_0_dout),
    .Arows_V_a_0_empty_n(Arows_V_a_0_empty_n),
    .Arows_V_a_0_read(Arows_V_a_0_read),
    .Arows_V_a_1_dout(Arows_V_a_1_dout),
    .Arows_V_a_1_empty_n(Arows_V_a_1_empty_n),
    .Arows_V_a_1_read(Arows_V_a_1_read),
    .Arows_V_a_2_dout(Arows_V_a_2_dout),
    .Arows_V_a_2_empty_n(Arows_V_a_2_empty_n),
    .Arows_V_a_2_read(Arows_V_a_2_read),
    .Arows_V_a_3_dout(Arows_V_a_3_dout),
    .Arows_V_a_3_empty_n(Arows_V_a_3_empty_n),
    .Arows_V_a_3_read(Arows_V_a_3_read),
    .Bcols_V_a_0_dout(Bcols_V_a_0_dout),
    .Bcols_V_a_0_empty_n(Bcols_V_a_0_empty_n),
    .Bcols_V_a_0_read(Bcols_V_a_0_read),
    .Bcols_V_a_1_dout(Bcols_V_a_1_dout),
    .Bcols_V_a_1_empty_n(Bcols_V_a_1_empty_n),
    .Bcols_V_a_1_read(Bcols_V_a_1_read),
    .Bcols_V_a_2_dout(Bcols_V_a_2_dout),
    .Bcols_V_a_2_empty_n(Bcols_V_a_2_empty_n),
    .Bcols_V_a_2_read(Bcols_V_a_2_read),
    .Bcols_V_a_3_dout(Bcols_V_a_3_dout),
    .Bcols_V_a_3_empty_n(Bcols_V_a_3_empty_n),
    .Bcols_V_a_3_read(Bcols_V_a_3_read),
    .ABpartial_out_address0(ABpartial_out_address0),
    .ABpartial_out_ce0(ABpartial_out_ce0),
    .ABpartial_out_d0(ABpartial_out_d0),
    .ABpartial_out_q0(ABpartial_out_q0),
    .ABpartial_out_we0(ABpartial_out_we0),
    .ABpartial_out_address1(ABpartial_out_address1),
    .ABpartial_out_ce1(ABpartial_out_ce1),
    .ABpartial_out_d1(ABpartial_out_d1),
    .ABpartial_out_q1(ABpartial_out_q1),
    .ABpartial_out_we1(ABpartial_out_we1),
    .it(it),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_ready(ap_ready),
    .ap_idle(ap_idle));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = AESL_reset;
assign ap_rst_n = ~AESL_reset;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_ready = ap_ready;
assign AESL_idle = ap_idle;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
// Fifo Instantiation Arows_V_a_0

wire fifoArows_V_a_0_rd;
wire [31 : 0] fifoArows_V_a_0_dout;
wire fifoArows_V_a_0_empty_n;
wire fifoArows_V_a_0_ready;
wire fifoArows_V_a_0_done;
reg [31:0] ap_c_n_tvin_trans_num_Arows_V_a_0;
reg Arows_V_a_0_ready_reg;

`AESL_FIFO_Arows_V_a_0 `AESL_FIFO_INST_Arows_V_a_0 (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifoArows_V_a_0_rd),
    .if_dout      (fifoArows_V_a_0_dout),
    .if_empty_n   (fifoArows_V_a_0_empty_n),
    .ready        (fifoArows_V_a_0_ready),
    .done         (fifoArows_V_a_0_done)
);

// Assignment between dut and fifoArows_V_a_0

// Assign input of fifoArows_V_a_0
assign      fifoArows_V_a_0_rd        =   Arows_V_a_0_read & Arows_V_a_0_empty_n;
assign    fifoArows_V_a_0_ready   =   Arows_V_a_0_ready_reg | ready_initial;
assign    fifoArows_V_a_0_done    =   0;
// Assign input of dut
assign      Arows_V_a_0_dout       =   fifoArows_V_a_0_dout;
reg   reg_fifoArows_V_a_0_empty_n;
initial begin : gen_reg_fifoArows_V_a_0_empty_n_process
    integer proc_rand;
    reg_fifoArows_V_a_0_empty_n = fifoArows_V_a_0_empty_n;
    while (1) begin
        @ (fifoArows_V_a_0_empty_n);
        reg_fifoArows_V_a_0_empty_n = fifoArows_V_a_0_empty_n;
    end
end

assign      Arows_V_a_0_empty_n    =   reg_fifoArows_V_a_0_empty_n;


// Fifo Instantiation Arows_V_a_1

wire fifoArows_V_a_1_rd;
wire [31 : 0] fifoArows_V_a_1_dout;
wire fifoArows_V_a_1_empty_n;
wire fifoArows_V_a_1_ready;
wire fifoArows_V_a_1_done;
reg [31:0] ap_c_n_tvin_trans_num_Arows_V_a_1;
reg Arows_V_a_1_ready_reg;

`AESL_FIFO_Arows_V_a_1 `AESL_FIFO_INST_Arows_V_a_1 (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifoArows_V_a_1_rd),
    .if_dout      (fifoArows_V_a_1_dout),
    .if_empty_n   (fifoArows_V_a_1_empty_n),
    .ready        (fifoArows_V_a_1_ready),
    .done         (fifoArows_V_a_1_done)
);

// Assignment between dut and fifoArows_V_a_1

// Assign input of fifoArows_V_a_1
assign      fifoArows_V_a_1_rd        =   Arows_V_a_1_read & Arows_V_a_1_empty_n;
assign    fifoArows_V_a_1_ready   =   Arows_V_a_1_ready_reg | ready_initial;
assign    fifoArows_V_a_1_done    =   0;
// Assign input of dut
assign      Arows_V_a_1_dout       =   fifoArows_V_a_1_dout;
reg   reg_fifoArows_V_a_1_empty_n;
initial begin : gen_reg_fifoArows_V_a_1_empty_n_process
    integer proc_rand;
    reg_fifoArows_V_a_1_empty_n = fifoArows_V_a_1_empty_n;
    while (1) begin
        @ (fifoArows_V_a_1_empty_n);
        reg_fifoArows_V_a_1_empty_n = fifoArows_V_a_1_empty_n;
    end
end

assign      Arows_V_a_1_empty_n    =   reg_fifoArows_V_a_1_empty_n;


// Fifo Instantiation Arows_V_a_2

wire fifoArows_V_a_2_rd;
wire [31 : 0] fifoArows_V_a_2_dout;
wire fifoArows_V_a_2_empty_n;
wire fifoArows_V_a_2_ready;
wire fifoArows_V_a_2_done;
reg [31:0] ap_c_n_tvin_trans_num_Arows_V_a_2;
reg Arows_V_a_2_ready_reg;

`AESL_FIFO_Arows_V_a_2 `AESL_FIFO_INST_Arows_V_a_2 (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifoArows_V_a_2_rd),
    .if_dout      (fifoArows_V_a_2_dout),
    .if_empty_n   (fifoArows_V_a_2_empty_n),
    .ready        (fifoArows_V_a_2_ready),
    .done         (fifoArows_V_a_2_done)
);

// Assignment between dut and fifoArows_V_a_2

// Assign input of fifoArows_V_a_2
assign      fifoArows_V_a_2_rd        =   Arows_V_a_2_read & Arows_V_a_2_empty_n;
assign    fifoArows_V_a_2_ready   =   Arows_V_a_2_ready_reg | ready_initial;
assign    fifoArows_V_a_2_done    =   0;
// Assign input of dut
assign      Arows_V_a_2_dout       =   fifoArows_V_a_2_dout;
reg   reg_fifoArows_V_a_2_empty_n;
initial begin : gen_reg_fifoArows_V_a_2_empty_n_process
    integer proc_rand;
    reg_fifoArows_V_a_2_empty_n = fifoArows_V_a_2_empty_n;
    while (1) begin
        @ (fifoArows_V_a_2_empty_n);
        reg_fifoArows_V_a_2_empty_n = fifoArows_V_a_2_empty_n;
    end
end

assign      Arows_V_a_2_empty_n    =   reg_fifoArows_V_a_2_empty_n;


// Fifo Instantiation Arows_V_a_3

wire fifoArows_V_a_3_rd;
wire [31 : 0] fifoArows_V_a_3_dout;
wire fifoArows_V_a_3_empty_n;
wire fifoArows_V_a_3_ready;
wire fifoArows_V_a_3_done;
reg [31:0] ap_c_n_tvin_trans_num_Arows_V_a_3;
reg Arows_V_a_3_ready_reg;

`AESL_FIFO_Arows_V_a_3 `AESL_FIFO_INST_Arows_V_a_3 (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifoArows_V_a_3_rd),
    .if_dout      (fifoArows_V_a_3_dout),
    .if_empty_n   (fifoArows_V_a_3_empty_n),
    .ready        (fifoArows_V_a_3_ready),
    .done         (fifoArows_V_a_3_done)
);

// Assignment between dut and fifoArows_V_a_3

// Assign input of fifoArows_V_a_3
assign      fifoArows_V_a_3_rd        =   Arows_V_a_3_read & Arows_V_a_3_empty_n;
assign    fifoArows_V_a_3_ready   =   Arows_V_a_3_ready_reg | ready_initial;
assign    fifoArows_V_a_3_done    =   0;
// Assign input of dut
assign      Arows_V_a_3_dout       =   fifoArows_V_a_3_dout;
reg   reg_fifoArows_V_a_3_empty_n;
initial begin : gen_reg_fifoArows_V_a_3_empty_n_process
    integer proc_rand;
    reg_fifoArows_V_a_3_empty_n = fifoArows_V_a_3_empty_n;
    while (1) begin
        @ (fifoArows_V_a_3_empty_n);
        reg_fifoArows_V_a_3_empty_n = fifoArows_V_a_3_empty_n;
    end
end

assign      Arows_V_a_3_empty_n    =   reg_fifoArows_V_a_3_empty_n;


// Fifo Instantiation Bcols_V_a_0

wire fifoBcols_V_a_0_rd;
wire [31 : 0] fifoBcols_V_a_0_dout;
wire fifoBcols_V_a_0_empty_n;
wire fifoBcols_V_a_0_ready;
wire fifoBcols_V_a_0_done;
reg [31:0] ap_c_n_tvin_trans_num_Bcols_V_a_0;
reg Bcols_V_a_0_ready_reg;

`AESL_FIFO_Bcols_V_a_0 `AESL_FIFO_INST_Bcols_V_a_0 (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifoBcols_V_a_0_rd),
    .if_dout      (fifoBcols_V_a_0_dout),
    .if_empty_n   (fifoBcols_V_a_0_empty_n),
    .ready        (fifoBcols_V_a_0_ready),
    .done         (fifoBcols_V_a_0_done)
);

// Assignment between dut and fifoBcols_V_a_0

// Assign input of fifoBcols_V_a_0
assign      fifoBcols_V_a_0_rd        =   Bcols_V_a_0_read & Bcols_V_a_0_empty_n;
assign    fifoBcols_V_a_0_ready   =   Bcols_V_a_0_ready_reg | ready_initial;
assign    fifoBcols_V_a_0_done    =   0;
// Assign input of dut
assign      Bcols_V_a_0_dout       =   fifoBcols_V_a_0_dout;
reg   reg_fifoBcols_V_a_0_empty_n;
initial begin : gen_reg_fifoBcols_V_a_0_empty_n_process
    integer proc_rand;
    reg_fifoBcols_V_a_0_empty_n = fifoBcols_V_a_0_empty_n;
    while (1) begin
        @ (fifoBcols_V_a_0_empty_n);
        reg_fifoBcols_V_a_0_empty_n = fifoBcols_V_a_0_empty_n;
    end
end

assign      Bcols_V_a_0_empty_n    =   reg_fifoBcols_V_a_0_empty_n;


// Fifo Instantiation Bcols_V_a_1

wire fifoBcols_V_a_1_rd;
wire [31 : 0] fifoBcols_V_a_1_dout;
wire fifoBcols_V_a_1_empty_n;
wire fifoBcols_V_a_1_ready;
wire fifoBcols_V_a_1_done;
reg [31:0] ap_c_n_tvin_trans_num_Bcols_V_a_1;
reg Bcols_V_a_1_ready_reg;

`AESL_FIFO_Bcols_V_a_1 `AESL_FIFO_INST_Bcols_V_a_1 (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifoBcols_V_a_1_rd),
    .if_dout      (fifoBcols_V_a_1_dout),
    .if_empty_n   (fifoBcols_V_a_1_empty_n),
    .ready        (fifoBcols_V_a_1_ready),
    .done         (fifoBcols_V_a_1_done)
);

// Assignment between dut and fifoBcols_V_a_1

// Assign input of fifoBcols_V_a_1
assign      fifoBcols_V_a_1_rd        =   Bcols_V_a_1_read & Bcols_V_a_1_empty_n;
assign    fifoBcols_V_a_1_ready   =   Bcols_V_a_1_ready_reg | ready_initial;
assign    fifoBcols_V_a_1_done    =   0;
// Assign input of dut
assign      Bcols_V_a_1_dout       =   fifoBcols_V_a_1_dout;
reg   reg_fifoBcols_V_a_1_empty_n;
initial begin : gen_reg_fifoBcols_V_a_1_empty_n_process
    integer proc_rand;
    reg_fifoBcols_V_a_1_empty_n = fifoBcols_V_a_1_empty_n;
    while (1) begin
        @ (fifoBcols_V_a_1_empty_n);
        reg_fifoBcols_V_a_1_empty_n = fifoBcols_V_a_1_empty_n;
    end
end

assign      Bcols_V_a_1_empty_n    =   reg_fifoBcols_V_a_1_empty_n;


// Fifo Instantiation Bcols_V_a_2

wire fifoBcols_V_a_2_rd;
wire [31 : 0] fifoBcols_V_a_2_dout;
wire fifoBcols_V_a_2_empty_n;
wire fifoBcols_V_a_2_ready;
wire fifoBcols_V_a_2_done;
reg [31:0] ap_c_n_tvin_trans_num_Bcols_V_a_2;
reg Bcols_V_a_2_ready_reg;

`AESL_FIFO_Bcols_V_a_2 `AESL_FIFO_INST_Bcols_V_a_2 (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifoBcols_V_a_2_rd),
    .if_dout      (fifoBcols_V_a_2_dout),
    .if_empty_n   (fifoBcols_V_a_2_empty_n),
    .ready        (fifoBcols_V_a_2_ready),
    .done         (fifoBcols_V_a_2_done)
);

// Assignment between dut and fifoBcols_V_a_2

// Assign input of fifoBcols_V_a_2
assign      fifoBcols_V_a_2_rd        =   Bcols_V_a_2_read & Bcols_V_a_2_empty_n;
assign    fifoBcols_V_a_2_ready   =   Bcols_V_a_2_ready_reg | ready_initial;
assign    fifoBcols_V_a_2_done    =   0;
// Assign input of dut
assign      Bcols_V_a_2_dout       =   fifoBcols_V_a_2_dout;
reg   reg_fifoBcols_V_a_2_empty_n;
initial begin : gen_reg_fifoBcols_V_a_2_empty_n_process
    integer proc_rand;
    reg_fifoBcols_V_a_2_empty_n = fifoBcols_V_a_2_empty_n;
    while (1) begin
        @ (fifoBcols_V_a_2_empty_n);
        reg_fifoBcols_V_a_2_empty_n = fifoBcols_V_a_2_empty_n;
    end
end

assign      Bcols_V_a_2_empty_n    =   reg_fifoBcols_V_a_2_empty_n;


// Fifo Instantiation Bcols_V_a_3

wire fifoBcols_V_a_3_rd;
wire [31 : 0] fifoBcols_V_a_3_dout;
wire fifoBcols_V_a_3_empty_n;
wire fifoBcols_V_a_3_ready;
wire fifoBcols_V_a_3_done;
reg [31:0] ap_c_n_tvin_trans_num_Bcols_V_a_3;
reg Bcols_V_a_3_ready_reg;

`AESL_FIFO_Bcols_V_a_3 `AESL_FIFO_INST_Bcols_V_a_3 (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifoBcols_V_a_3_rd),
    .if_dout      (fifoBcols_V_a_3_dout),
    .if_empty_n   (fifoBcols_V_a_3_empty_n),
    .ready        (fifoBcols_V_a_3_ready),
    .done         (fifoBcols_V_a_3_done)
);

// Assignment between dut and fifoBcols_V_a_3

// Assign input of fifoBcols_V_a_3
assign      fifoBcols_V_a_3_rd        =   Bcols_V_a_3_read & Bcols_V_a_3_empty_n;
assign    fifoBcols_V_a_3_ready   =   Bcols_V_a_3_ready_reg | ready_initial;
assign    fifoBcols_V_a_3_done    =   0;
// Assign input of dut
assign      Bcols_V_a_3_dout       =   fifoBcols_V_a_3_dout;
reg   reg_fifoBcols_V_a_3_empty_n;
initial begin : gen_reg_fifoBcols_V_a_3_empty_n_process
    integer proc_rand;
    reg_fifoBcols_V_a_3_empty_n = fifoBcols_V_a_3_empty_n;
    while (1) begin
        @ (fifoBcols_V_a_3_empty_n);
        reg_fifoBcols_V_a_3_empty_n = fifoBcols_V_a_3_empty_n;
    end
end

assign      Bcols_V_a_3_empty_n    =   reg_fifoBcols_V_a_3_empty_n;


//------------------------arrayABpartial_out Instantiation--------------

// The input and output of arrayABpartial_out
wire    arrayABpartial_out_ce0, arrayABpartial_out_ce1;
wire    arrayABpartial_out_we0, arrayABpartial_out_we1;
wire    [3 : 0]    arrayABpartial_out_address0, arrayABpartial_out_address1;
wire    [31 : 0]    arrayABpartial_out_din0, arrayABpartial_out_din1;
wire    [31 : 0]    arrayABpartial_out_dout0, arrayABpartial_out_dout1;
wire    arrayABpartial_out_ready;
wire    arrayABpartial_out_done;

`AESL_MEM_ABpartial_out `AESL_MEM_INST_ABpartial_out(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayABpartial_out_ce0),
    .we0        (arrayABpartial_out_we0),
    .address0   (arrayABpartial_out_address0),
    .din0       (arrayABpartial_out_din0),
    .dout0      (arrayABpartial_out_dout0),
    .ce1        (arrayABpartial_out_ce1),
    .we1        (arrayABpartial_out_we1),
    .address1   (arrayABpartial_out_address1),
    .din1       (arrayABpartial_out_din1),
    .dout1      (arrayABpartial_out_dout1),
    .ready      (arrayABpartial_out_ready),
    .done    (arrayABpartial_out_done)
);

// Assignment between dut and arrayABpartial_out
assign arrayABpartial_out_address0 = ABpartial_out_address0;
assign arrayABpartial_out_ce0 = ABpartial_out_ce0;
assign arrayABpartial_out_we0 = ABpartial_out_we0;
assign arrayABpartial_out_din0 = ABpartial_out_d0;
assign arrayABpartial_out_address1 = ABpartial_out_address1;
assign arrayABpartial_out_ce1 = ABpartial_out_ce1;
assign arrayABpartial_out_we1 = ABpartial_out_we1;
assign arrayABpartial_out_din1 = ABpartial_out_d1;
assign arrayABpartial_out_ready= ready_initial | arrayABpartial_out_done;
assign arrayABpartial_out_done =    AESL_done_delay;


// The signal of port it
reg [31: 0] AESL_REG_it = 0;
assign it = AESL_REG_it;
initial begin : read_file_process_it
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [199  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_it,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_it);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_it);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_Arows_V_a_0;
reg [31:0] size_Arows_V_a_0;
reg [31:0] size_Arows_V_a_0_backup;
reg end_Arows_V_a_1;
reg [31:0] size_Arows_V_a_1;
reg [31:0] size_Arows_V_a_1_backup;
reg end_Arows_V_a_2;
reg [31:0] size_Arows_V_a_2;
reg [31:0] size_Arows_V_a_2_backup;
reg end_Arows_V_a_3;
reg [31:0] size_Arows_V_a_3;
reg [31:0] size_Arows_V_a_3_backup;
reg end_Bcols_V_a_0;
reg [31:0] size_Bcols_V_a_0;
reg [31:0] size_Bcols_V_a_0_backup;
reg end_Bcols_V_a_1;
reg [31:0] size_Bcols_V_a_1;
reg [31:0] size_Bcols_V_a_1_backup;
reg end_Bcols_V_a_2;
reg [31:0] size_Bcols_V_a_2;
reg [31:0] size_Bcols_V_a_2_backup;
reg end_Bcols_V_a_3;
reg [31:0] size_Bcols_V_a_3;
reg [31:0] size_Bcols_V_a_3_backup;
reg end_ABpartial_out;
reg [31:0] size_ABpartial_out;
reg [31:0] size_ABpartial_out_backup;
reg end_it;
reg [31:0] size_it;
reg [31:0] size_it_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 0);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
initial begin : proc_gen_Arows_V_a_0_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    Arows_V_a_0_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_Arows_V_a_0 > internal_trans_num) begin
            Arows_V_a_0_ready_reg <= 1;
            @(posedge AESL_clock);
            Arows_V_a_0_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    Arows_V_a_0_ready_reg <= 0;
end
initial begin : proc_gen_Arows_V_a_1_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    Arows_V_a_1_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_Arows_V_a_1 > internal_trans_num) begin
            Arows_V_a_1_ready_reg <= 1;
            @(posedge AESL_clock);
            Arows_V_a_1_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    Arows_V_a_1_ready_reg <= 0;
end
initial begin : proc_gen_Arows_V_a_2_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    Arows_V_a_2_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_Arows_V_a_2 > internal_trans_num) begin
            Arows_V_a_2_ready_reg <= 1;
            @(posedge AESL_clock);
            Arows_V_a_2_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    Arows_V_a_2_ready_reg <= 0;
end
initial begin : proc_gen_Arows_V_a_3_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    Arows_V_a_3_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_Arows_V_a_3 > internal_trans_num) begin
            Arows_V_a_3_ready_reg <= 1;
            @(posedge AESL_clock);
            Arows_V_a_3_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    Arows_V_a_3_ready_reg <= 0;
end
initial begin : proc_gen_Bcols_V_a_0_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    Bcols_V_a_0_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_Bcols_V_a_0 > internal_trans_num) begin
            Bcols_V_a_0_ready_reg <= 1;
            @(posedge AESL_clock);
            Bcols_V_a_0_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    Bcols_V_a_0_ready_reg <= 0;
end
initial begin : proc_gen_Bcols_V_a_1_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    Bcols_V_a_1_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_Bcols_V_a_1 > internal_trans_num) begin
            Bcols_V_a_1_ready_reg <= 1;
            @(posedge AESL_clock);
            Bcols_V_a_1_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    Bcols_V_a_1_ready_reg <= 0;
end
initial begin : proc_gen_Bcols_V_a_2_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    Bcols_V_a_2_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_Bcols_V_a_2 > internal_trans_num) begin
            Bcols_V_a_2_ready_reg <= 1;
            @(posedge AESL_clock);
            Bcols_V_a_2_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    Bcols_V_a_2_ready_reg <= 0;
end
initial begin : proc_gen_Bcols_V_a_3_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    Bcols_V_a_3_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_Bcols_V_a_3 > internal_trans_num) begin
            Bcols_V_a_3_ready_reg <= 1;
            @(posedge AESL_clock);
            Bcols_V_a_3_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    Bcols_V_a_3_ready_reg <= 0;
end
    
    `define STREAM_SIZE_IN_Arows_V_a_0 "../tv/stream_size/stream_size_in_Arows_V_a_0.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_Arows_V_a_0
        integer fp_Arows_V_a_0;
        reg [127:0] token_Arows_V_a_0;
        integer ret;
        
        ap_c_n_tvin_trans_num_Arows_V_a_0 = 0;
        end_Arows_V_a_0 = 0;
        wait (AESL_reset === 0);
        
        fp_Arows_V_a_0 = $fopen(`STREAM_SIZE_IN_Arows_V_a_0, "r");
        if(fp_Arows_V_a_0 == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_Arows_V_a_0);
            $finish;
        end
        read_token(fp_Arows_V_a_0, token_Arows_V_a_0); // should be [[[runtime]]]
        if (token_Arows_V_a_0 != "[[[runtime]]]") begin
            $display("ERROR: token_Arows_V_a_0 != \"[[[runtime]]]\"");
            $finish;
        end
        size_Arows_V_a_0 = 0;
        size_Arows_V_a_0_backup = 0;
        while (size_Arows_V_a_0 == 0 && end_Arows_V_a_0 == 0) begin
            ap_c_n_tvin_trans_num_Arows_V_a_0 = ap_c_n_tvin_trans_num_Arows_V_a_0 + 1;
            read_token(fp_Arows_V_a_0, token_Arows_V_a_0); // should be [[transaction]] or [[[/runtime]]]
            if (token_Arows_V_a_0 == "[[transaction]]") begin
                read_token(fp_Arows_V_a_0, token_Arows_V_a_0); // should be transaction number
                read_token(fp_Arows_V_a_0, token_Arows_V_a_0); // should be size for hls::stream
                ret = $sscanf(token_Arows_V_a_0, "%d", size_Arows_V_a_0);
                if (size_Arows_V_a_0 > 0) begin
                    size_Arows_V_a_0_backup = size_Arows_V_a_0;
                end
                read_token(fp_Arows_V_a_0, token_Arows_V_a_0); // should be [[/transaction]]
            end else if (token_Arows_V_a_0 == "[[[/runtime]]]") begin
                $fclose(fp_Arows_V_a_0);
                end_Arows_V_a_0 = 1;
            end else begin
                $display("ERROR: unknown token_Arows_V_a_0");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_Arows_V_a_0 == 0) begin
                if (Arows_V_a_0_read == 1) begin
                    if (size_Arows_V_a_0 > 0) begin
                        size_Arows_V_a_0 = size_Arows_V_a_0 - 1;
                        while (size_Arows_V_a_0 == 0 && end_Arows_V_a_0 == 0) begin
                            ap_c_n_tvin_trans_num_Arows_V_a_0 = ap_c_n_tvin_trans_num_Arows_V_a_0 + 1;
                            read_token(fp_Arows_V_a_0, token_Arows_V_a_0); // should be [[transaction]] or [[[/runtime]]]
                            if (token_Arows_V_a_0 == "[[transaction]]") begin
                                read_token(fp_Arows_V_a_0, token_Arows_V_a_0); // should be transaction number
                                read_token(fp_Arows_V_a_0, token_Arows_V_a_0); // should be size for hls::stream
                                ret = $sscanf(token_Arows_V_a_0, "%d", size_Arows_V_a_0);
                                if (size_Arows_V_a_0 > 0) begin
                                    size_Arows_V_a_0_backup = size_Arows_V_a_0;
                                end
                                read_token(fp_Arows_V_a_0, token_Arows_V_a_0); // should be [[/transaction]]
                            end else if (token_Arows_V_a_0 == "[[[/runtime]]]") begin
                                size_Arows_V_a_0 = size_Arows_V_a_0_backup;
                                $fclose(fp_Arows_V_a_0);
                                end_Arows_V_a_0 = 1;
                            end else begin
                                $display("ERROR: unknown token_Arows_V_a_0");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (Arows_V_a_0_read == 1) begin
                    if (size_Arows_V_a_0 > 0) begin
                        size_Arows_V_a_0 = size_Arows_V_a_0 - 1;
                        if (size_Arows_V_a_0 == 0) begin
                            ap_c_n_tvin_trans_num_Arows_V_a_0 = ap_c_n_tvin_trans_num_Arows_V_a_0 + 1;
                            size_Arows_V_a_0 = size_Arows_V_a_0_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_Arows_V_a_1 "../tv/stream_size/stream_size_in_Arows_V_a_1.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_Arows_V_a_1
        integer fp_Arows_V_a_1;
        reg [127:0] token_Arows_V_a_1;
        integer ret;
        
        ap_c_n_tvin_trans_num_Arows_V_a_1 = 0;
        end_Arows_V_a_1 = 0;
        wait (AESL_reset === 0);
        
        fp_Arows_V_a_1 = $fopen(`STREAM_SIZE_IN_Arows_V_a_1, "r");
        if(fp_Arows_V_a_1 == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_Arows_V_a_1);
            $finish;
        end
        read_token(fp_Arows_V_a_1, token_Arows_V_a_1); // should be [[[runtime]]]
        if (token_Arows_V_a_1 != "[[[runtime]]]") begin
            $display("ERROR: token_Arows_V_a_1 != \"[[[runtime]]]\"");
            $finish;
        end
        size_Arows_V_a_1 = 0;
        size_Arows_V_a_1_backup = 0;
        while (size_Arows_V_a_1 == 0 && end_Arows_V_a_1 == 0) begin
            ap_c_n_tvin_trans_num_Arows_V_a_1 = ap_c_n_tvin_trans_num_Arows_V_a_1 + 1;
            read_token(fp_Arows_V_a_1, token_Arows_V_a_1); // should be [[transaction]] or [[[/runtime]]]
            if (token_Arows_V_a_1 == "[[transaction]]") begin
                read_token(fp_Arows_V_a_1, token_Arows_V_a_1); // should be transaction number
                read_token(fp_Arows_V_a_1, token_Arows_V_a_1); // should be size for hls::stream
                ret = $sscanf(token_Arows_V_a_1, "%d", size_Arows_V_a_1);
                if (size_Arows_V_a_1 > 0) begin
                    size_Arows_V_a_1_backup = size_Arows_V_a_1;
                end
                read_token(fp_Arows_V_a_1, token_Arows_V_a_1); // should be [[/transaction]]
            end else if (token_Arows_V_a_1 == "[[[/runtime]]]") begin
                $fclose(fp_Arows_V_a_1);
                end_Arows_V_a_1 = 1;
            end else begin
                $display("ERROR: unknown token_Arows_V_a_1");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_Arows_V_a_1 == 0) begin
                if (Arows_V_a_1_read == 1) begin
                    if (size_Arows_V_a_1 > 0) begin
                        size_Arows_V_a_1 = size_Arows_V_a_1 - 1;
                        while (size_Arows_V_a_1 == 0 && end_Arows_V_a_1 == 0) begin
                            ap_c_n_tvin_trans_num_Arows_V_a_1 = ap_c_n_tvin_trans_num_Arows_V_a_1 + 1;
                            read_token(fp_Arows_V_a_1, token_Arows_V_a_1); // should be [[transaction]] or [[[/runtime]]]
                            if (token_Arows_V_a_1 == "[[transaction]]") begin
                                read_token(fp_Arows_V_a_1, token_Arows_V_a_1); // should be transaction number
                                read_token(fp_Arows_V_a_1, token_Arows_V_a_1); // should be size for hls::stream
                                ret = $sscanf(token_Arows_V_a_1, "%d", size_Arows_V_a_1);
                                if (size_Arows_V_a_1 > 0) begin
                                    size_Arows_V_a_1_backup = size_Arows_V_a_1;
                                end
                                read_token(fp_Arows_V_a_1, token_Arows_V_a_1); // should be [[/transaction]]
                            end else if (token_Arows_V_a_1 == "[[[/runtime]]]") begin
                                size_Arows_V_a_1 = size_Arows_V_a_1_backup;
                                $fclose(fp_Arows_V_a_1);
                                end_Arows_V_a_1 = 1;
                            end else begin
                                $display("ERROR: unknown token_Arows_V_a_1");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (Arows_V_a_1_read == 1) begin
                    if (size_Arows_V_a_1 > 0) begin
                        size_Arows_V_a_1 = size_Arows_V_a_1 - 1;
                        if (size_Arows_V_a_1 == 0) begin
                            ap_c_n_tvin_trans_num_Arows_V_a_1 = ap_c_n_tvin_trans_num_Arows_V_a_1 + 1;
                            size_Arows_V_a_1 = size_Arows_V_a_1_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_Arows_V_a_2 "../tv/stream_size/stream_size_in_Arows_V_a_2.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_Arows_V_a_2
        integer fp_Arows_V_a_2;
        reg [127:0] token_Arows_V_a_2;
        integer ret;
        
        ap_c_n_tvin_trans_num_Arows_V_a_2 = 0;
        end_Arows_V_a_2 = 0;
        wait (AESL_reset === 0);
        
        fp_Arows_V_a_2 = $fopen(`STREAM_SIZE_IN_Arows_V_a_2, "r");
        if(fp_Arows_V_a_2 == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_Arows_V_a_2);
            $finish;
        end
        read_token(fp_Arows_V_a_2, token_Arows_V_a_2); // should be [[[runtime]]]
        if (token_Arows_V_a_2 != "[[[runtime]]]") begin
            $display("ERROR: token_Arows_V_a_2 != \"[[[runtime]]]\"");
            $finish;
        end
        size_Arows_V_a_2 = 0;
        size_Arows_V_a_2_backup = 0;
        while (size_Arows_V_a_2 == 0 && end_Arows_V_a_2 == 0) begin
            ap_c_n_tvin_trans_num_Arows_V_a_2 = ap_c_n_tvin_trans_num_Arows_V_a_2 + 1;
            read_token(fp_Arows_V_a_2, token_Arows_V_a_2); // should be [[transaction]] or [[[/runtime]]]
            if (token_Arows_V_a_2 == "[[transaction]]") begin
                read_token(fp_Arows_V_a_2, token_Arows_V_a_2); // should be transaction number
                read_token(fp_Arows_V_a_2, token_Arows_V_a_2); // should be size for hls::stream
                ret = $sscanf(token_Arows_V_a_2, "%d", size_Arows_V_a_2);
                if (size_Arows_V_a_2 > 0) begin
                    size_Arows_V_a_2_backup = size_Arows_V_a_2;
                end
                read_token(fp_Arows_V_a_2, token_Arows_V_a_2); // should be [[/transaction]]
            end else if (token_Arows_V_a_2 == "[[[/runtime]]]") begin
                $fclose(fp_Arows_V_a_2);
                end_Arows_V_a_2 = 1;
            end else begin
                $display("ERROR: unknown token_Arows_V_a_2");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_Arows_V_a_2 == 0) begin
                if (Arows_V_a_2_read == 1) begin
                    if (size_Arows_V_a_2 > 0) begin
                        size_Arows_V_a_2 = size_Arows_V_a_2 - 1;
                        while (size_Arows_V_a_2 == 0 && end_Arows_V_a_2 == 0) begin
                            ap_c_n_tvin_trans_num_Arows_V_a_2 = ap_c_n_tvin_trans_num_Arows_V_a_2 + 1;
                            read_token(fp_Arows_V_a_2, token_Arows_V_a_2); // should be [[transaction]] or [[[/runtime]]]
                            if (token_Arows_V_a_2 == "[[transaction]]") begin
                                read_token(fp_Arows_V_a_2, token_Arows_V_a_2); // should be transaction number
                                read_token(fp_Arows_V_a_2, token_Arows_V_a_2); // should be size for hls::stream
                                ret = $sscanf(token_Arows_V_a_2, "%d", size_Arows_V_a_2);
                                if (size_Arows_V_a_2 > 0) begin
                                    size_Arows_V_a_2_backup = size_Arows_V_a_2;
                                end
                                read_token(fp_Arows_V_a_2, token_Arows_V_a_2); // should be [[/transaction]]
                            end else if (token_Arows_V_a_2 == "[[[/runtime]]]") begin
                                size_Arows_V_a_2 = size_Arows_V_a_2_backup;
                                $fclose(fp_Arows_V_a_2);
                                end_Arows_V_a_2 = 1;
                            end else begin
                                $display("ERROR: unknown token_Arows_V_a_2");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (Arows_V_a_2_read == 1) begin
                    if (size_Arows_V_a_2 > 0) begin
                        size_Arows_V_a_2 = size_Arows_V_a_2 - 1;
                        if (size_Arows_V_a_2 == 0) begin
                            ap_c_n_tvin_trans_num_Arows_V_a_2 = ap_c_n_tvin_trans_num_Arows_V_a_2 + 1;
                            size_Arows_V_a_2 = size_Arows_V_a_2_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_Arows_V_a_3 "../tv/stream_size/stream_size_in_Arows_V_a_3.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_Arows_V_a_3
        integer fp_Arows_V_a_3;
        reg [127:0] token_Arows_V_a_3;
        integer ret;
        
        ap_c_n_tvin_trans_num_Arows_V_a_3 = 0;
        end_Arows_V_a_3 = 0;
        wait (AESL_reset === 0);
        
        fp_Arows_V_a_3 = $fopen(`STREAM_SIZE_IN_Arows_V_a_3, "r");
        if(fp_Arows_V_a_3 == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_Arows_V_a_3);
            $finish;
        end
        read_token(fp_Arows_V_a_3, token_Arows_V_a_3); // should be [[[runtime]]]
        if (token_Arows_V_a_3 != "[[[runtime]]]") begin
            $display("ERROR: token_Arows_V_a_3 != \"[[[runtime]]]\"");
            $finish;
        end
        size_Arows_V_a_3 = 0;
        size_Arows_V_a_3_backup = 0;
        while (size_Arows_V_a_3 == 0 && end_Arows_V_a_3 == 0) begin
            ap_c_n_tvin_trans_num_Arows_V_a_3 = ap_c_n_tvin_trans_num_Arows_V_a_3 + 1;
            read_token(fp_Arows_V_a_3, token_Arows_V_a_3); // should be [[transaction]] or [[[/runtime]]]
            if (token_Arows_V_a_3 == "[[transaction]]") begin
                read_token(fp_Arows_V_a_3, token_Arows_V_a_3); // should be transaction number
                read_token(fp_Arows_V_a_3, token_Arows_V_a_3); // should be size for hls::stream
                ret = $sscanf(token_Arows_V_a_3, "%d", size_Arows_V_a_3);
                if (size_Arows_V_a_3 > 0) begin
                    size_Arows_V_a_3_backup = size_Arows_V_a_3;
                end
                read_token(fp_Arows_V_a_3, token_Arows_V_a_3); // should be [[/transaction]]
            end else if (token_Arows_V_a_3 == "[[[/runtime]]]") begin
                $fclose(fp_Arows_V_a_3);
                end_Arows_V_a_3 = 1;
            end else begin
                $display("ERROR: unknown token_Arows_V_a_3");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_Arows_V_a_3 == 0) begin
                if (Arows_V_a_3_read == 1) begin
                    if (size_Arows_V_a_3 > 0) begin
                        size_Arows_V_a_3 = size_Arows_V_a_3 - 1;
                        while (size_Arows_V_a_3 == 0 && end_Arows_V_a_3 == 0) begin
                            ap_c_n_tvin_trans_num_Arows_V_a_3 = ap_c_n_tvin_trans_num_Arows_V_a_3 + 1;
                            read_token(fp_Arows_V_a_3, token_Arows_V_a_3); // should be [[transaction]] or [[[/runtime]]]
                            if (token_Arows_V_a_3 == "[[transaction]]") begin
                                read_token(fp_Arows_V_a_3, token_Arows_V_a_3); // should be transaction number
                                read_token(fp_Arows_V_a_3, token_Arows_V_a_3); // should be size for hls::stream
                                ret = $sscanf(token_Arows_V_a_3, "%d", size_Arows_V_a_3);
                                if (size_Arows_V_a_3 > 0) begin
                                    size_Arows_V_a_3_backup = size_Arows_V_a_3;
                                end
                                read_token(fp_Arows_V_a_3, token_Arows_V_a_3); // should be [[/transaction]]
                            end else if (token_Arows_V_a_3 == "[[[/runtime]]]") begin
                                size_Arows_V_a_3 = size_Arows_V_a_3_backup;
                                $fclose(fp_Arows_V_a_3);
                                end_Arows_V_a_3 = 1;
                            end else begin
                                $display("ERROR: unknown token_Arows_V_a_3");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (Arows_V_a_3_read == 1) begin
                    if (size_Arows_V_a_3 > 0) begin
                        size_Arows_V_a_3 = size_Arows_V_a_3 - 1;
                        if (size_Arows_V_a_3 == 0) begin
                            ap_c_n_tvin_trans_num_Arows_V_a_3 = ap_c_n_tvin_trans_num_Arows_V_a_3 + 1;
                            size_Arows_V_a_3 = size_Arows_V_a_3_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_Bcols_V_a_0 "../tv/stream_size/stream_size_in_Bcols_V_a_0.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_Bcols_V_a_0
        integer fp_Bcols_V_a_0;
        reg [127:0] token_Bcols_V_a_0;
        integer ret;
        
        ap_c_n_tvin_trans_num_Bcols_V_a_0 = 0;
        end_Bcols_V_a_0 = 0;
        wait (AESL_reset === 0);
        
        fp_Bcols_V_a_0 = $fopen(`STREAM_SIZE_IN_Bcols_V_a_0, "r");
        if(fp_Bcols_V_a_0 == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_Bcols_V_a_0);
            $finish;
        end
        read_token(fp_Bcols_V_a_0, token_Bcols_V_a_0); // should be [[[runtime]]]
        if (token_Bcols_V_a_0 != "[[[runtime]]]") begin
            $display("ERROR: token_Bcols_V_a_0 != \"[[[runtime]]]\"");
            $finish;
        end
        size_Bcols_V_a_0 = 0;
        size_Bcols_V_a_0_backup = 0;
        while (size_Bcols_V_a_0 == 0 && end_Bcols_V_a_0 == 0) begin
            ap_c_n_tvin_trans_num_Bcols_V_a_0 = ap_c_n_tvin_trans_num_Bcols_V_a_0 + 1;
            read_token(fp_Bcols_V_a_0, token_Bcols_V_a_0); // should be [[transaction]] or [[[/runtime]]]
            if (token_Bcols_V_a_0 == "[[transaction]]") begin
                read_token(fp_Bcols_V_a_0, token_Bcols_V_a_0); // should be transaction number
                read_token(fp_Bcols_V_a_0, token_Bcols_V_a_0); // should be size for hls::stream
                ret = $sscanf(token_Bcols_V_a_0, "%d", size_Bcols_V_a_0);
                if (size_Bcols_V_a_0 > 0) begin
                    size_Bcols_V_a_0_backup = size_Bcols_V_a_0;
                end
                read_token(fp_Bcols_V_a_0, token_Bcols_V_a_0); // should be [[/transaction]]
            end else if (token_Bcols_V_a_0 == "[[[/runtime]]]") begin
                $fclose(fp_Bcols_V_a_0);
                end_Bcols_V_a_0 = 1;
            end else begin
                $display("ERROR: unknown token_Bcols_V_a_0");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_Bcols_V_a_0 == 0) begin
                if (Bcols_V_a_0_read == 1) begin
                    if (size_Bcols_V_a_0 > 0) begin
                        size_Bcols_V_a_0 = size_Bcols_V_a_0 - 1;
                        while (size_Bcols_V_a_0 == 0 && end_Bcols_V_a_0 == 0) begin
                            ap_c_n_tvin_trans_num_Bcols_V_a_0 = ap_c_n_tvin_trans_num_Bcols_V_a_0 + 1;
                            read_token(fp_Bcols_V_a_0, token_Bcols_V_a_0); // should be [[transaction]] or [[[/runtime]]]
                            if (token_Bcols_V_a_0 == "[[transaction]]") begin
                                read_token(fp_Bcols_V_a_0, token_Bcols_V_a_0); // should be transaction number
                                read_token(fp_Bcols_V_a_0, token_Bcols_V_a_0); // should be size for hls::stream
                                ret = $sscanf(token_Bcols_V_a_0, "%d", size_Bcols_V_a_0);
                                if (size_Bcols_V_a_0 > 0) begin
                                    size_Bcols_V_a_0_backup = size_Bcols_V_a_0;
                                end
                                read_token(fp_Bcols_V_a_0, token_Bcols_V_a_0); // should be [[/transaction]]
                            end else if (token_Bcols_V_a_0 == "[[[/runtime]]]") begin
                                size_Bcols_V_a_0 = size_Bcols_V_a_0_backup;
                                $fclose(fp_Bcols_V_a_0);
                                end_Bcols_V_a_0 = 1;
                            end else begin
                                $display("ERROR: unknown token_Bcols_V_a_0");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (Bcols_V_a_0_read == 1) begin
                    if (size_Bcols_V_a_0 > 0) begin
                        size_Bcols_V_a_0 = size_Bcols_V_a_0 - 1;
                        if (size_Bcols_V_a_0 == 0) begin
                            ap_c_n_tvin_trans_num_Bcols_V_a_0 = ap_c_n_tvin_trans_num_Bcols_V_a_0 + 1;
                            size_Bcols_V_a_0 = size_Bcols_V_a_0_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_Bcols_V_a_1 "../tv/stream_size/stream_size_in_Bcols_V_a_1.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_Bcols_V_a_1
        integer fp_Bcols_V_a_1;
        reg [127:0] token_Bcols_V_a_1;
        integer ret;
        
        ap_c_n_tvin_trans_num_Bcols_V_a_1 = 0;
        end_Bcols_V_a_1 = 0;
        wait (AESL_reset === 0);
        
        fp_Bcols_V_a_1 = $fopen(`STREAM_SIZE_IN_Bcols_V_a_1, "r");
        if(fp_Bcols_V_a_1 == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_Bcols_V_a_1);
            $finish;
        end
        read_token(fp_Bcols_V_a_1, token_Bcols_V_a_1); // should be [[[runtime]]]
        if (token_Bcols_V_a_1 != "[[[runtime]]]") begin
            $display("ERROR: token_Bcols_V_a_1 != \"[[[runtime]]]\"");
            $finish;
        end
        size_Bcols_V_a_1 = 0;
        size_Bcols_V_a_1_backup = 0;
        while (size_Bcols_V_a_1 == 0 && end_Bcols_V_a_1 == 0) begin
            ap_c_n_tvin_trans_num_Bcols_V_a_1 = ap_c_n_tvin_trans_num_Bcols_V_a_1 + 1;
            read_token(fp_Bcols_V_a_1, token_Bcols_V_a_1); // should be [[transaction]] or [[[/runtime]]]
            if (token_Bcols_V_a_1 == "[[transaction]]") begin
                read_token(fp_Bcols_V_a_1, token_Bcols_V_a_1); // should be transaction number
                read_token(fp_Bcols_V_a_1, token_Bcols_V_a_1); // should be size for hls::stream
                ret = $sscanf(token_Bcols_V_a_1, "%d", size_Bcols_V_a_1);
                if (size_Bcols_V_a_1 > 0) begin
                    size_Bcols_V_a_1_backup = size_Bcols_V_a_1;
                end
                read_token(fp_Bcols_V_a_1, token_Bcols_V_a_1); // should be [[/transaction]]
            end else if (token_Bcols_V_a_1 == "[[[/runtime]]]") begin
                $fclose(fp_Bcols_V_a_1);
                end_Bcols_V_a_1 = 1;
            end else begin
                $display("ERROR: unknown token_Bcols_V_a_1");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_Bcols_V_a_1 == 0) begin
                if (Bcols_V_a_1_read == 1) begin
                    if (size_Bcols_V_a_1 > 0) begin
                        size_Bcols_V_a_1 = size_Bcols_V_a_1 - 1;
                        while (size_Bcols_V_a_1 == 0 && end_Bcols_V_a_1 == 0) begin
                            ap_c_n_tvin_trans_num_Bcols_V_a_1 = ap_c_n_tvin_trans_num_Bcols_V_a_1 + 1;
                            read_token(fp_Bcols_V_a_1, token_Bcols_V_a_1); // should be [[transaction]] or [[[/runtime]]]
                            if (token_Bcols_V_a_1 == "[[transaction]]") begin
                                read_token(fp_Bcols_V_a_1, token_Bcols_V_a_1); // should be transaction number
                                read_token(fp_Bcols_V_a_1, token_Bcols_V_a_1); // should be size for hls::stream
                                ret = $sscanf(token_Bcols_V_a_1, "%d", size_Bcols_V_a_1);
                                if (size_Bcols_V_a_1 > 0) begin
                                    size_Bcols_V_a_1_backup = size_Bcols_V_a_1;
                                end
                                read_token(fp_Bcols_V_a_1, token_Bcols_V_a_1); // should be [[/transaction]]
                            end else if (token_Bcols_V_a_1 == "[[[/runtime]]]") begin
                                size_Bcols_V_a_1 = size_Bcols_V_a_1_backup;
                                $fclose(fp_Bcols_V_a_1);
                                end_Bcols_V_a_1 = 1;
                            end else begin
                                $display("ERROR: unknown token_Bcols_V_a_1");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (Bcols_V_a_1_read == 1) begin
                    if (size_Bcols_V_a_1 > 0) begin
                        size_Bcols_V_a_1 = size_Bcols_V_a_1 - 1;
                        if (size_Bcols_V_a_1 == 0) begin
                            ap_c_n_tvin_trans_num_Bcols_V_a_1 = ap_c_n_tvin_trans_num_Bcols_V_a_1 + 1;
                            size_Bcols_V_a_1 = size_Bcols_V_a_1_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_Bcols_V_a_2 "../tv/stream_size/stream_size_in_Bcols_V_a_2.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_Bcols_V_a_2
        integer fp_Bcols_V_a_2;
        reg [127:0] token_Bcols_V_a_2;
        integer ret;
        
        ap_c_n_tvin_trans_num_Bcols_V_a_2 = 0;
        end_Bcols_V_a_2 = 0;
        wait (AESL_reset === 0);
        
        fp_Bcols_V_a_2 = $fopen(`STREAM_SIZE_IN_Bcols_V_a_2, "r");
        if(fp_Bcols_V_a_2 == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_Bcols_V_a_2);
            $finish;
        end
        read_token(fp_Bcols_V_a_2, token_Bcols_V_a_2); // should be [[[runtime]]]
        if (token_Bcols_V_a_2 != "[[[runtime]]]") begin
            $display("ERROR: token_Bcols_V_a_2 != \"[[[runtime]]]\"");
            $finish;
        end
        size_Bcols_V_a_2 = 0;
        size_Bcols_V_a_2_backup = 0;
        while (size_Bcols_V_a_2 == 0 && end_Bcols_V_a_2 == 0) begin
            ap_c_n_tvin_trans_num_Bcols_V_a_2 = ap_c_n_tvin_trans_num_Bcols_V_a_2 + 1;
            read_token(fp_Bcols_V_a_2, token_Bcols_V_a_2); // should be [[transaction]] or [[[/runtime]]]
            if (token_Bcols_V_a_2 == "[[transaction]]") begin
                read_token(fp_Bcols_V_a_2, token_Bcols_V_a_2); // should be transaction number
                read_token(fp_Bcols_V_a_2, token_Bcols_V_a_2); // should be size for hls::stream
                ret = $sscanf(token_Bcols_V_a_2, "%d", size_Bcols_V_a_2);
                if (size_Bcols_V_a_2 > 0) begin
                    size_Bcols_V_a_2_backup = size_Bcols_V_a_2;
                end
                read_token(fp_Bcols_V_a_2, token_Bcols_V_a_2); // should be [[/transaction]]
            end else if (token_Bcols_V_a_2 == "[[[/runtime]]]") begin
                $fclose(fp_Bcols_V_a_2);
                end_Bcols_V_a_2 = 1;
            end else begin
                $display("ERROR: unknown token_Bcols_V_a_2");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_Bcols_V_a_2 == 0) begin
                if (Bcols_V_a_2_read == 1) begin
                    if (size_Bcols_V_a_2 > 0) begin
                        size_Bcols_V_a_2 = size_Bcols_V_a_2 - 1;
                        while (size_Bcols_V_a_2 == 0 && end_Bcols_V_a_2 == 0) begin
                            ap_c_n_tvin_trans_num_Bcols_V_a_2 = ap_c_n_tvin_trans_num_Bcols_V_a_2 + 1;
                            read_token(fp_Bcols_V_a_2, token_Bcols_V_a_2); // should be [[transaction]] or [[[/runtime]]]
                            if (token_Bcols_V_a_2 == "[[transaction]]") begin
                                read_token(fp_Bcols_V_a_2, token_Bcols_V_a_2); // should be transaction number
                                read_token(fp_Bcols_V_a_2, token_Bcols_V_a_2); // should be size for hls::stream
                                ret = $sscanf(token_Bcols_V_a_2, "%d", size_Bcols_V_a_2);
                                if (size_Bcols_V_a_2 > 0) begin
                                    size_Bcols_V_a_2_backup = size_Bcols_V_a_2;
                                end
                                read_token(fp_Bcols_V_a_2, token_Bcols_V_a_2); // should be [[/transaction]]
                            end else if (token_Bcols_V_a_2 == "[[[/runtime]]]") begin
                                size_Bcols_V_a_2 = size_Bcols_V_a_2_backup;
                                $fclose(fp_Bcols_V_a_2);
                                end_Bcols_V_a_2 = 1;
                            end else begin
                                $display("ERROR: unknown token_Bcols_V_a_2");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (Bcols_V_a_2_read == 1) begin
                    if (size_Bcols_V_a_2 > 0) begin
                        size_Bcols_V_a_2 = size_Bcols_V_a_2 - 1;
                        if (size_Bcols_V_a_2 == 0) begin
                            ap_c_n_tvin_trans_num_Bcols_V_a_2 = ap_c_n_tvin_trans_num_Bcols_V_a_2 + 1;
                            size_Bcols_V_a_2 = size_Bcols_V_a_2_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_Bcols_V_a_3 "../tv/stream_size/stream_size_in_Bcols_V_a_3.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_Bcols_V_a_3
        integer fp_Bcols_V_a_3;
        reg [127:0] token_Bcols_V_a_3;
        integer ret;
        
        ap_c_n_tvin_trans_num_Bcols_V_a_3 = 0;
        end_Bcols_V_a_3 = 0;
        wait (AESL_reset === 0);
        
        fp_Bcols_V_a_3 = $fopen(`STREAM_SIZE_IN_Bcols_V_a_3, "r");
        if(fp_Bcols_V_a_3 == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_Bcols_V_a_3);
            $finish;
        end
        read_token(fp_Bcols_V_a_3, token_Bcols_V_a_3); // should be [[[runtime]]]
        if (token_Bcols_V_a_3 != "[[[runtime]]]") begin
            $display("ERROR: token_Bcols_V_a_3 != \"[[[runtime]]]\"");
            $finish;
        end
        size_Bcols_V_a_3 = 0;
        size_Bcols_V_a_3_backup = 0;
        while (size_Bcols_V_a_3 == 0 && end_Bcols_V_a_3 == 0) begin
            ap_c_n_tvin_trans_num_Bcols_V_a_3 = ap_c_n_tvin_trans_num_Bcols_V_a_3 + 1;
            read_token(fp_Bcols_V_a_3, token_Bcols_V_a_3); // should be [[transaction]] or [[[/runtime]]]
            if (token_Bcols_V_a_3 == "[[transaction]]") begin
                read_token(fp_Bcols_V_a_3, token_Bcols_V_a_3); // should be transaction number
                read_token(fp_Bcols_V_a_3, token_Bcols_V_a_3); // should be size for hls::stream
                ret = $sscanf(token_Bcols_V_a_3, "%d", size_Bcols_V_a_3);
                if (size_Bcols_V_a_3 > 0) begin
                    size_Bcols_V_a_3_backup = size_Bcols_V_a_3;
                end
                read_token(fp_Bcols_V_a_3, token_Bcols_V_a_3); // should be [[/transaction]]
            end else if (token_Bcols_V_a_3 == "[[[/runtime]]]") begin
                $fclose(fp_Bcols_V_a_3);
                end_Bcols_V_a_3 = 1;
            end else begin
                $display("ERROR: unknown token_Bcols_V_a_3");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_Bcols_V_a_3 == 0) begin
                if (Bcols_V_a_3_read == 1) begin
                    if (size_Bcols_V_a_3 > 0) begin
                        size_Bcols_V_a_3 = size_Bcols_V_a_3 - 1;
                        while (size_Bcols_V_a_3 == 0 && end_Bcols_V_a_3 == 0) begin
                            ap_c_n_tvin_trans_num_Bcols_V_a_3 = ap_c_n_tvin_trans_num_Bcols_V_a_3 + 1;
                            read_token(fp_Bcols_V_a_3, token_Bcols_V_a_3); // should be [[transaction]] or [[[/runtime]]]
                            if (token_Bcols_V_a_3 == "[[transaction]]") begin
                                read_token(fp_Bcols_V_a_3, token_Bcols_V_a_3); // should be transaction number
                                read_token(fp_Bcols_V_a_3, token_Bcols_V_a_3); // should be size for hls::stream
                                ret = $sscanf(token_Bcols_V_a_3, "%d", size_Bcols_V_a_3);
                                if (size_Bcols_V_a_3 > 0) begin
                                    size_Bcols_V_a_3_backup = size_Bcols_V_a_3;
                                end
                                read_token(fp_Bcols_V_a_3, token_Bcols_V_a_3); // should be [[/transaction]]
                            end else if (token_Bcols_V_a_3 == "[[[/runtime]]]") begin
                                size_Bcols_V_a_3 = size_Bcols_V_a_3_backup;
                                $fclose(fp_Bcols_V_a_3);
                                end_Bcols_V_a_3 = 1;
                            end else begin
                                $display("ERROR: unknown token_Bcols_V_a_3");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (Bcols_V_a_3_read == 1) begin
                    if (size_Bcols_V_a_3 > 0) begin
                        size_Bcols_V_a_3 = size_Bcols_V_a_3 - 1;
                        if (size_Bcols_V_a_3 == 0) begin
                            ap_c_n_tvin_trans_num_Bcols_V_a_3 = ap_c_n_tvin_trans_num_Bcols_V_a_3 + 1;
                            size_Bcols_V_a_3 = size_Bcols_V_a_3_backup;
                        end
                    end
                end
            end
        end
    end
    

reg dump_tvout_finish_ABpartial_out;

initial begin : dump_tvout_runtime_sign_ABpartial_out
    integer fp;
    dump_tvout_finish_ABpartial_out = 0;
    fp = $fopen(`AUTOTB_TVOUT_ABpartial_out_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ABpartial_out_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_ABpartial_out_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ABpartial_out_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_ABpartial_out = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

AESL_deadlock_detector deadlock_detector(
    .reset(~AESL_reset),
    .clock(AESL_clock));


endmodule
