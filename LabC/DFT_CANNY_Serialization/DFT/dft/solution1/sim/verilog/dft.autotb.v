// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      dft
`define AUTOTB_DUT_INST AESL_inst_dft
`define AUTOTB_TOP      apatb_dft_top
`define AUTOTB_LAT_RESULT_FILE "dft.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "dft.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_dft_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 1.67

`define AESL_DEPTH_X_R 1
`define AESL_DEPTH_X_I 1
`define AESL_DEPTH_OUT_R_0 1
`define AESL_MEM_OUT_R_1 AESL_automem_OUT_R_1
`define AESL_MEM_INST_OUT_R_1 mem_inst_OUT_R_1
`define AESL_MEM_OUT_R_2 AESL_automem_OUT_R_2
`define AESL_MEM_INST_OUT_R_2 mem_inst_OUT_R_2
`define AESL_MEM_OUT_R_3 AESL_automem_OUT_R_3
`define AESL_MEM_INST_OUT_R_3 mem_inst_OUT_R_3
`define AESL_DEPTH_OUT_I_0 1
`define AESL_MEM_OUT_I_1 AESL_automem_OUT_I_1
`define AESL_MEM_INST_OUT_I_1 mem_inst_OUT_I_1
`define AESL_MEM_OUT_I_2 AESL_automem_OUT_I_2
`define AESL_MEM_INST_OUT_I_2 mem_inst_OUT_I_2
`define AESL_MEM_OUT_I_3 AESL_automem_OUT_I_3
`define AESL_MEM_INST_OUT_I_3 mem_inst_OUT_I_3
`define AUTOTB_TVIN_X_R  "../tv/cdatafile/c.dft.autotvin_X_R.dat"
`define AUTOTB_TVIN_X_I  "../tv/cdatafile/c.dft.autotvin_X_I.dat"
`define AUTOTB_TVIN_OUT_R_1  "../tv/cdatafile/c.dft.autotvin_OUT_R_1.dat"
`define AUTOTB_TVIN_OUT_R_2  "../tv/cdatafile/c.dft.autotvin_OUT_R_2.dat"
`define AUTOTB_TVIN_OUT_R_3  "../tv/cdatafile/c.dft.autotvin_OUT_R_3.dat"
`define AUTOTB_TVIN_OUT_I_1  "../tv/cdatafile/c.dft.autotvin_OUT_I_1.dat"
`define AUTOTB_TVIN_OUT_I_2  "../tv/cdatafile/c.dft.autotvin_OUT_I_2.dat"
`define AUTOTB_TVIN_OUT_I_3  "../tv/cdatafile/c.dft.autotvin_OUT_I_3.dat"
`define AUTOTB_TVIN_X_R_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_X_R.dat"
`define AUTOTB_TVIN_X_I_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_X_I.dat"
`define AUTOTB_TVIN_OUT_R_1_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_OUT_R_1.dat"
`define AUTOTB_TVIN_OUT_R_2_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_OUT_R_2.dat"
`define AUTOTB_TVIN_OUT_R_3_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_OUT_R_3.dat"
`define AUTOTB_TVIN_OUT_I_1_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_OUT_I_1.dat"
`define AUTOTB_TVIN_OUT_I_2_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_OUT_I_2.dat"
`define AUTOTB_TVIN_OUT_I_3_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvin_OUT_I_3.dat"
`define AUTOTB_TVOUT_OUT_R_0  "../tv/cdatafile/c.dft.autotvout_OUT_R_0.dat"
`define AUTOTB_TVOUT_OUT_R_1  "../tv/cdatafile/c.dft.autotvout_OUT_R_1.dat"
`define AUTOTB_TVOUT_OUT_R_2  "../tv/cdatafile/c.dft.autotvout_OUT_R_2.dat"
`define AUTOTB_TVOUT_OUT_R_3  "../tv/cdatafile/c.dft.autotvout_OUT_R_3.dat"
`define AUTOTB_TVOUT_OUT_I_0  "../tv/cdatafile/c.dft.autotvout_OUT_I_0.dat"
`define AUTOTB_TVOUT_OUT_I_1  "../tv/cdatafile/c.dft.autotvout_OUT_I_1.dat"
`define AUTOTB_TVOUT_OUT_I_2  "../tv/cdatafile/c.dft.autotvout_OUT_I_2.dat"
`define AUTOTB_TVOUT_OUT_I_3  "../tv/cdatafile/c.dft.autotvout_OUT_I_3.dat"
`define AUTOTB_TVOUT_OUT_R_0_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_OUT_R_0.dat"
`define AUTOTB_TVOUT_OUT_R_1_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_OUT_R_1.dat"
`define AUTOTB_TVOUT_OUT_R_2_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_OUT_R_2.dat"
`define AUTOTB_TVOUT_OUT_R_3_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_OUT_R_3.dat"
`define AUTOTB_TVOUT_OUT_I_0_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_OUT_I_0.dat"
`define AUTOTB_TVOUT_OUT_I_1_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_OUT_I_1.dat"
`define AUTOTB_TVOUT_OUT_I_2_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_OUT_I_2.dat"
`define AUTOTB_TVOUT_OUT_I_3_out_wrapc  "../tv/rtldatafile/rtl.dft.autotvout_OUT_I_3.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 2851;
parameter LENGTH_X_R = 1024;
parameter LENGTH_X_I = 1024;
parameter LENGTH_OUT_R_0 = 256;
parameter LENGTH_OUT_R_1 = 256;
parameter LENGTH_OUT_R_2 = 256;
parameter LENGTH_OUT_R_3 = 256;
parameter LENGTH_OUT_I_0 = 256;
parameter LENGTH_OUT_I_1 = 256;
parameter LENGTH_OUT_I_2 = 256;
parameter LENGTH_OUT_I_3 = 256;

task read_token;
    input integer fp;
    output reg [191 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
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
wire [11 : 0] control_AWADDR;
wire  control_AWVALID;
wire  control_AWREADY;
wire  control_WVALID;
wire  control_WREADY;
wire [31 : 0] control_WDATA;
wire [3 : 0] control_WSTRB;
wire [11 : 0] control_ARADDR;
wire  control_ARVALID;
wire  control_ARREADY;
wire  control_RVALID;
wire  control_RREADY;
wire [31 : 0] control_RDATA;
wire [1 : 0] control_RRESP;
wire  control_BVALID;
wire  control_BREADY;
wire [1 : 0] control_BRESP;
wire  control_INTERRUPT;
wire [31 : 0] X_R_TDATA;
wire  X_R_TVALID;
wire  X_R_TREADY;
wire [31 : 0] X_I_TDATA;
wire  X_I_TVALID;
wire  X_I_TREADY;
wire [7 : 0] OUT_R_1_address0;
wire  OUT_R_1_ce0;
wire  OUT_R_1_we0;
wire [31 : 0] OUT_R_1_d0;
wire [7 : 0] OUT_R_1_address1;
wire  OUT_R_1_ce1;
wire  OUT_R_1_we1;
wire [31 : 0] OUT_R_1_d1;
wire [7 : 0] OUT_R_2_address0;
wire  OUT_R_2_ce0;
wire  OUT_R_2_we0;
wire [31 : 0] OUT_R_2_d0;
wire [7 : 0] OUT_R_2_address1;
wire  OUT_R_2_ce1;
wire  OUT_R_2_we1;
wire [31 : 0] OUT_R_2_d1;
wire [7 : 0] OUT_R_3_address0;
wire  OUT_R_3_ce0;
wire  OUT_R_3_we0;
wire [31 : 0] OUT_R_3_d0;
wire [7 : 0] OUT_R_3_address1;
wire  OUT_R_3_ce1;
wire  OUT_R_3_we1;
wire [31 : 0] OUT_R_3_d1;
wire [7 : 0] OUT_I_1_address0;
wire  OUT_I_1_ce0;
wire  OUT_I_1_we0;
wire [31 : 0] OUT_I_1_d0;
wire [7 : 0] OUT_I_1_address1;
wire  OUT_I_1_ce1;
wire  OUT_I_1_we1;
wire [31 : 0] OUT_I_1_d1;
wire [7 : 0] OUT_I_2_address0;
wire  OUT_I_2_ce0;
wire  OUT_I_2_we0;
wire [31 : 0] OUT_I_2_d0;
wire [7 : 0] OUT_I_2_address1;
wire  OUT_I_2_ce1;
wire  OUT_I_2_we1;
wire [31 : 0] OUT_I_2_d1;
wire [7 : 0] OUT_I_3_address0;
wire  OUT_I_3_ce0;
wire  OUT_I_3_we0;
wire [31 : 0] OUT_I_3_d0;
wire [7 : 0] OUT_I_3_address1;
wire  OUT_I_3_ce1;
wire  OUT_I_3_we1;
wire [31 : 0] OUT_I_3_d1;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire control_read_data_finish;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;


wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_control_AWADDR(control_AWADDR),
    .s_axi_control_AWVALID(control_AWVALID),
    .s_axi_control_AWREADY(control_AWREADY),
    .s_axi_control_WVALID(control_WVALID),
    .s_axi_control_WREADY(control_WREADY),
    .s_axi_control_WDATA(control_WDATA),
    .s_axi_control_WSTRB(control_WSTRB),
    .s_axi_control_ARADDR(control_ARADDR),
    .s_axi_control_ARVALID(control_ARVALID),
    .s_axi_control_ARREADY(control_ARREADY),
    .s_axi_control_RVALID(control_RVALID),
    .s_axi_control_RREADY(control_RREADY),
    .s_axi_control_RDATA(control_RDATA),
    .s_axi_control_RRESP(control_RRESP),
    .s_axi_control_BVALID(control_BVALID),
    .s_axi_control_BREADY(control_BREADY),
    .s_axi_control_BRESP(control_BRESP),
    .interrupt(control_INTERRUPT),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .X_R_TDATA(X_R_TDATA),
    .X_R_TVALID(X_R_TVALID),
    .X_R_TREADY(X_R_TREADY),
    .X_I_TDATA(X_I_TDATA),
    .X_I_TVALID(X_I_TVALID),
    .X_I_TREADY(X_I_TREADY),
    .OUT_R_1_address0(OUT_R_1_address0),
    .OUT_R_1_ce0(OUT_R_1_ce0),
    .OUT_R_1_we0(OUT_R_1_we0),
    .OUT_R_1_d0(OUT_R_1_d0),
    .OUT_R_1_address1(OUT_R_1_address1),
    .OUT_R_1_ce1(OUT_R_1_ce1),
    .OUT_R_1_we1(OUT_R_1_we1),
    .OUT_R_1_d1(OUT_R_1_d1),
    .OUT_R_2_address0(OUT_R_2_address0),
    .OUT_R_2_ce0(OUT_R_2_ce0),
    .OUT_R_2_we0(OUT_R_2_we0),
    .OUT_R_2_d0(OUT_R_2_d0),
    .OUT_R_2_address1(OUT_R_2_address1),
    .OUT_R_2_ce1(OUT_R_2_ce1),
    .OUT_R_2_we1(OUT_R_2_we1),
    .OUT_R_2_d1(OUT_R_2_d1),
    .OUT_R_3_address0(OUT_R_3_address0),
    .OUT_R_3_ce0(OUT_R_3_ce0),
    .OUT_R_3_we0(OUT_R_3_we0),
    .OUT_R_3_d0(OUT_R_3_d0),
    .OUT_R_3_address1(OUT_R_3_address1),
    .OUT_R_3_ce1(OUT_R_3_ce1),
    .OUT_R_3_we1(OUT_R_3_we1),
    .OUT_R_3_d1(OUT_R_3_d1),
    .OUT_I_1_address0(OUT_I_1_address0),
    .OUT_I_1_ce0(OUT_I_1_ce0),
    .OUT_I_1_we0(OUT_I_1_we0),
    .OUT_I_1_d0(OUT_I_1_d0),
    .OUT_I_1_address1(OUT_I_1_address1),
    .OUT_I_1_ce1(OUT_I_1_ce1),
    .OUT_I_1_we1(OUT_I_1_we1),
    .OUT_I_1_d1(OUT_I_1_d1),
    .OUT_I_2_address0(OUT_I_2_address0),
    .OUT_I_2_ce0(OUT_I_2_ce0),
    .OUT_I_2_we0(OUT_I_2_we0),
    .OUT_I_2_d0(OUT_I_2_d0),
    .OUT_I_2_address1(OUT_I_2_address1),
    .OUT_I_2_ce1(OUT_I_2_ce1),
    .OUT_I_2_we1(OUT_I_2_we1),
    .OUT_I_2_d1(OUT_I_2_d1),
    .OUT_I_3_address0(OUT_I_3_address0),
    .OUT_I_3_ce0(OUT_I_3_ce0),
    .OUT_I_3_we0(OUT_I_3_we0),
    .OUT_I_3_d0(OUT_I_3_d0),
    .OUT_I_3_address1(OUT_I_3_address1),
    .OUT_I_3_ce1(OUT_I_3_ce1),
    .OUT_I_3_we1(OUT_I_3_we1),
    .OUT_I_3_d1(OUT_I_3_d1));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = dut_rst;
assign ap_rst_n_n = ~dut_rst;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status ;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status  & control_read_data_finish;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end



//------------------------arrayOUT_R_1 Instantiation--------------

// The input and output of arrayOUT_R_1
wire    arrayOUT_R_1_ce0, arrayOUT_R_1_ce1;
wire [4 - 1 : 0]    arrayOUT_R_1_we0, arrayOUT_R_1_we1;
wire    [7 : 0]    arrayOUT_R_1_address0, arrayOUT_R_1_address1;
wire    [31 : 0]    arrayOUT_R_1_din0, arrayOUT_R_1_din1;
wire    [31 : 0]    arrayOUT_R_1_dout0, arrayOUT_R_1_dout1;
wire    arrayOUT_R_1_ready;
wire    arrayOUT_R_1_done;

`AESL_MEM_OUT_R_1 `AESL_MEM_INST_OUT_R_1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayOUT_R_1_ce0),
    .we0        (arrayOUT_R_1_we0),
    .address0   (arrayOUT_R_1_address0),
    .din0       (arrayOUT_R_1_din0),
    .dout0      (arrayOUT_R_1_dout0),
    .ce1        (arrayOUT_R_1_ce1),
    .we1        (arrayOUT_R_1_we1),
    .address1   (arrayOUT_R_1_address1),
    .din1       (arrayOUT_R_1_din1),
    .dout1      (arrayOUT_R_1_dout1),
    .ready      (arrayOUT_R_1_ready),
    .done    (arrayOUT_R_1_done)
);

// Assignment between dut and arrayOUT_R_1
assign arrayOUT_R_1_address0 = OUT_R_1_address0;
assign arrayOUT_R_1_ce0 = OUT_R_1_ce0;
assign arrayOUT_R_1_we0[0] = OUT_R_1_we0;
assign arrayOUT_R_1_we0[1] = OUT_R_1_we0;
assign arrayOUT_R_1_we0[2] = OUT_R_1_we0;
assign arrayOUT_R_1_we0[3] = OUT_R_1_we0;
assign arrayOUT_R_1_din0 = OUT_R_1_d0;
assign arrayOUT_R_1_address1 = OUT_R_1_address1;
assign arrayOUT_R_1_ce1 = OUT_R_1_ce1;
assign arrayOUT_R_1_we1[0] = OUT_R_1_we1;
assign arrayOUT_R_1_we1[1] = OUT_R_1_we1;
assign arrayOUT_R_1_we1[2] = OUT_R_1_we1;
assign arrayOUT_R_1_we1[3] = OUT_R_1_we1;
assign arrayOUT_R_1_din1 = OUT_R_1_d1;
assign arrayOUT_R_1_ready= ready_initial | arrayOUT_R_1_done;
assign arrayOUT_R_1_done =    AESL_done_delay;


//------------------------arrayOUT_R_2 Instantiation--------------

// The input and output of arrayOUT_R_2
wire    arrayOUT_R_2_ce0, arrayOUT_R_2_ce1;
wire [4 - 1 : 0]    arrayOUT_R_2_we0, arrayOUT_R_2_we1;
wire    [7 : 0]    arrayOUT_R_2_address0, arrayOUT_R_2_address1;
wire    [31 : 0]    arrayOUT_R_2_din0, arrayOUT_R_2_din1;
wire    [31 : 0]    arrayOUT_R_2_dout0, arrayOUT_R_2_dout1;
wire    arrayOUT_R_2_ready;
wire    arrayOUT_R_2_done;

`AESL_MEM_OUT_R_2 `AESL_MEM_INST_OUT_R_2(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayOUT_R_2_ce0),
    .we0        (arrayOUT_R_2_we0),
    .address0   (arrayOUT_R_2_address0),
    .din0       (arrayOUT_R_2_din0),
    .dout0      (arrayOUT_R_2_dout0),
    .ce1        (arrayOUT_R_2_ce1),
    .we1        (arrayOUT_R_2_we1),
    .address1   (arrayOUT_R_2_address1),
    .din1       (arrayOUT_R_2_din1),
    .dout1      (arrayOUT_R_2_dout1),
    .ready      (arrayOUT_R_2_ready),
    .done    (arrayOUT_R_2_done)
);

// Assignment between dut and arrayOUT_R_2
assign arrayOUT_R_2_address0 = OUT_R_2_address0;
assign arrayOUT_R_2_ce0 = OUT_R_2_ce0;
assign arrayOUT_R_2_we0[0] = OUT_R_2_we0;
assign arrayOUT_R_2_we0[1] = OUT_R_2_we0;
assign arrayOUT_R_2_we0[2] = OUT_R_2_we0;
assign arrayOUT_R_2_we0[3] = OUT_R_2_we0;
assign arrayOUT_R_2_din0 = OUT_R_2_d0;
assign arrayOUT_R_2_address1 = OUT_R_2_address1;
assign arrayOUT_R_2_ce1 = OUT_R_2_ce1;
assign arrayOUT_R_2_we1[0] = OUT_R_2_we1;
assign arrayOUT_R_2_we1[1] = OUT_R_2_we1;
assign arrayOUT_R_2_we1[2] = OUT_R_2_we1;
assign arrayOUT_R_2_we1[3] = OUT_R_2_we1;
assign arrayOUT_R_2_din1 = OUT_R_2_d1;
assign arrayOUT_R_2_ready= ready_initial | arrayOUT_R_2_done;
assign arrayOUT_R_2_done =    AESL_done_delay;


//------------------------arrayOUT_R_3 Instantiation--------------

// The input and output of arrayOUT_R_3
wire    arrayOUT_R_3_ce0, arrayOUT_R_3_ce1;
wire [4 - 1 : 0]    arrayOUT_R_3_we0, arrayOUT_R_3_we1;
wire    [7 : 0]    arrayOUT_R_3_address0, arrayOUT_R_3_address1;
wire    [31 : 0]    arrayOUT_R_3_din0, arrayOUT_R_3_din1;
wire    [31 : 0]    arrayOUT_R_3_dout0, arrayOUT_R_3_dout1;
wire    arrayOUT_R_3_ready;
wire    arrayOUT_R_3_done;

`AESL_MEM_OUT_R_3 `AESL_MEM_INST_OUT_R_3(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayOUT_R_3_ce0),
    .we0        (arrayOUT_R_3_we0),
    .address0   (arrayOUT_R_3_address0),
    .din0       (arrayOUT_R_3_din0),
    .dout0      (arrayOUT_R_3_dout0),
    .ce1        (arrayOUT_R_3_ce1),
    .we1        (arrayOUT_R_3_we1),
    .address1   (arrayOUT_R_3_address1),
    .din1       (arrayOUT_R_3_din1),
    .dout1      (arrayOUT_R_3_dout1),
    .ready      (arrayOUT_R_3_ready),
    .done    (arrayOUT_R_3_done)
);

// Assignment between dut and arrayOUT_R_3
assign arrayOUT_R_3_address0 = OUT_R_3_address0;
assign arrayOUT_R_3_ce0 = OUT_R_3_ce0;
assign arrayOUT_R_3_we0[0] = OUT_R_3_we0;
assign arrayOUT_R_3_we0[1] = OUT_R_3_we0;
assign arrayOUT_R_3_we0[2] = OUT_R_3_we0;
assign arrayOUT_R_3_we0[3] = OUT_R_3_we0;
assign arrayOUT_R_3_din0 = OUT_R_3_d0;
assign arrayOUT_R_3_address1 = OUT_R_3_address1;
assign arrayOUT_R_3_ce1 = OUT_R_3_ce1;
assign arrayOUT_R_3_we1[0] = OUT_R_3_we1;
assign arrayOUT_R_3_we1[1] = OUT_R_3_we1;
assign arrayOUT_R_3_we1[2] = OUT_R_3_we1;
assign arrayOUT_R_3_we1[3] = OUT_R_3_we1;
assign arrayOUT_R_3_din1 = OUT_R_3_d1;
assign arrayOUT_R_3_ready= ready_initial | arrayOUT_R_3_done;
assign arrayOUT_R_3_done =    AESL_done_delay;



//------------------------arrayOUT_I_1 Instantiation--------------

// The input and output of arrayOUT_I_1
wire    arrayOUT_I_1_ce0, arrayOUT_I_1_ce1;
wire [4 - 1 : 0]    arrayOUT_I_1_we0, arrayOUT_I_1_we1;
wire    [7 : 0]    arrayOUT_I_1_address0, arrayOUT_I_1_address1;
wire    [31 : 0]    arrayOUT_I_1_din0, arrayOUT_I_1_din1;
wire    [31 : 0]    arrayOUT_I_1_dout0, arrayOUT_I_1_dout1;
wire    arrayOUT_I_1_ready;
wire    arrayOUT_I_1_done;

`AESL_MEM_OUT_I_1 `AESL_MEM_INST_OUT_I_1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayOUT_I_1_ce0),
    .we0        (arrayOUT_I_1_we0),
    .address0   (arrayOUT_I_1_address0),
    .din0       (arrayOUT_I_1_din0),
    .dout0      (arrayOUT_I_1_dout0),
    .ce1        (arrayOUT_I_1_ce1),
    .we1        (arrayOUT_I_1_we1),
    .address1   (arrayOUT_I_1_address1),
    .din1       (arrayOUT_I_1_din1),
    .dout1      (arrayOUT_I_1_dout1),
    .ready      (arrayOUT_I_1_ready),
    .done    (arrayOUT_I_1_done)
);

// Assignment between dut and arrayOUT_I_1
assign arrayOUT_I_1_address0 = OUT_I_1_address0;
assign arrayOUT_I_1_ce0 = OUT_I_1_ce0;
assign arrayOUT_I_1_we0[0] = OUT_I_1_we0;
assign arrayOUT_I_1_we0[1] = OUT_I_1_we0;
assign arrayOUT_I_1_we0[2] = OUT_I_1_we0;
assign arrayOUT_I_1_we0[3] = OUT_I_1_we0;
assign arrayOUT_I_1_din0 = OUT_I_1_d0;
assign arrayOUT_I_1_address1 = OUT_I_1_address1;
assign arrayOUT_I_1_ce1 = OUT_I_1_ce1;
assign arrayOUT_I_1_we1[0] = OUT_I_1_we1;
assign arrayOUT_I_1_we1[1] = OUT_I_1_we1;
assign arrayOUT_I_1_we1[2] = OUT_I_1_we1;
assign arrayOUT_I_1_we1[3] = OUT_I_1_we1;
assign arrayOUT_I_1_din1 = OUT_I_1_d1;
assign arrayOUT_I_1_ready= ready_initial | arrayOUT_I_1_done;
assign arrayOUT_I_1_done =    AESL_done_delay;


//------------------------arrayOUT_I_2 Instantiation--------------

// The input and output of arrayOUT_I_2
wire    arrayOUT_I_2_ce0, arrayOUT_I_2_ce1;
wire [4 - 1 : 0]    arrayOUT_I_2_we0, arrayOUT_I_2_we1;
wire    [7 : 0]    arrayOUT_I_2_address0, arrayOUT_I_2_address1;
wire    [31 : 0]    arrayOUT_I_2_din0, arrayOUT_I_2_din1;
wire    [31 : 0]    arrayOUT_I_2_dout0, arrayOUT_I_2_dout1;
wire    arrayOUT_I_2_ready;
wire    arrayOUT_I_2_done;

`AESL_MEM_OUT_I_2 `AESL_MEM_INST_OUT_I_2(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayOUT_I_2_ce0),
    .we0        (arrayOUT_I_2_we0),
    .address0   (arrayOUT_I_2_address0),
    .din0       (arrayOUT_I_2_din0),
    .dout0      (arrayOUT_I_2_dout0),
    .ce1        (arrayOUT_I_2_ce1),
    .we1        (arrayOUT_I_2_we1),
    .address1   (arrayOUT_I_2_address1),
    .din1       (arrayOUT_I_2_din1),
    .dout1      (arrayOUT_I_2_dout1),
    .ready      (arrayOUT_I_2_ready),
    .done    (arrayOUT_I_2_done)
);

// Assignment between dut and arrayOUT_I_2
assign arrayOUT_I_2_address0 = OUT_I_2_address0;
assign arrayOUT_I_2_ce0 = OUT_I_2_ce0;
assign arrayOUT_I_2_we0[0] = OUT_I_2_we0;
assign arrayOUT_I_2_we0[1] = OUT_I_2_we0;
assign arrayOUT_I_2_we0[2] = OUT_I_2_we0;
assign arrayOUT_I_2_we0[3] = OUT_I_2_we0;
assign arrayOUT_I_2_din0 = OUT_I_2_d0;
assign arrayOUT_I_2_address1 = OUT_I_2_address1;
assign arrayOUT_I_2_ce1 = OUT_I_2_ce1;
assign arrayOUT_I_2_we1[0] = OUT_I_2_we1;
assign arrayOUT_I_2_we1[1] = OUT_I_2_we1;
assign arrayOUT_I_2_we1[2] = OUT_I_2_we1;
assign arrayOUT_I_2_we1[3] = OUT_I_2_we1;
assign arrayOUT_I_2_din1 = OUT_I_2_d1;
assign arrayOUT_I_2_ready= ready_initial | arrayOUT_I_2_done;
assign arrayOUT_I_2_done =    AESL_done_delay;


//------------------------arrayOUT_I_3 Instantiation--------------

// The input and output of arrayOUT_I_3
wire    arrayOUT_I_3_ce0, arrayOUT_I_3_ce1;
wire [4 - 1 : 0]    arrayOUT_I_3_we0, arrayOUT_I_3_we1;
wire    [7 : 0]    arrayOUT_I_3_address0, arrayOUT_I_3_address1;
wire    [31 : 0]    arrayOUT_I_3_din0, arrayOUT_I_3_din1;
wire    [31 : 0]    arrayOUT_I_3_dout0, arrayOUT_I_3_dout1;
wire    arrayOUT_I_3_ready;
wire    arrayOUT_I_3_done;

`AESL_MEM_OUT_I_3 `AESL_MEM_INST_OUT_I_3(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayOUT_I_3_ce0),
    .we0        (arrayOUT_I_3_we0),
    .address0   (arrayOUT_I_3_address0),
    .din0       (arrayOUT_I_3_din0),
    .dout0      (arrayOUT_I_3_dout0),
    .ce1        (arrayOUT_I_3_ce1),
    .we1        (arrayOUT_I_3_we1),
    .address1   (arrayOUT_I_3_address1),
    .din1       (arrayOUT_I_3_din1),
    .dout1      (arrayOUT_I_3_dout1),
    .ready      (arrayOUT_I_3_ready),
    .done    (arrayOUT_I_3_done)
);

// Assignment between dut and arrayOUT_I_3
assign arrayOUT_I_3_address0 = OUT_I_3_address0;
assign arrayOUT_I_3_ce0 = OUT_I_3_ce0;
assign arrayOUT_I_3_we0[0] = OUT_I_3_we0;
assign arrayOUT_I_3_we0[1] = OUT_I_3_we0;
assign arrayOUT_I_3_we0[2] = OUT_I_3_we0;
assign arrayOUT_I_3_we0[3] = OUT_I_3_we0;
assign arrayOUT_I_3_din0 = OUT_I_3_d0;
assign arrayOUT_I_3_address1 = OUT_I_3_address1;
assign arrayOUT_I_3_ce1 = OUT_I_3_ce1;
assign arrayOUT_I_3_we1[0] = OUT_I_3_we1;
assign arrayOUT_I_3_we1[1] = OUT_I_3_we1;
assign arrayOUT_I_3_we1[2] = OUT_I_3_we1;
assign arrayOUT_I_3_we1[3] = OUT_I_3_we1;
assign arrayOUT_I_3_din1 = OUT_I_3_d1;
assign arrayOUT_I_3_ready= ready_initial | arrayOUT_I_3_done;
assign arrayOUT_I_3_done =    AESL_done_delay;


reg [31:0] ap_c_n_tvin_trans_num_X_R;

reg X_R_ready_reg; // for self-sync

wire X_R_ready;
wire X_R_done;
wire [31:0] X_R_transaction;
wire axi_s_X_R_TVALID;
wire axi_s_X_R_TREADY;

AESL_axi_s_X_R AESL_AXI_S_X_R(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_X_R_TDATA(X_R_TDATA),
    .TRAN_X_R_TVALID(axi_s_X_R_TVALID),
    .TRAN_X_R_TREADY(axi_s_X_R_TREADY),
    .ready(X_R_ready),
    .done(X_R_done),
    .transaction(X_R_transaction));

assign X_R_ready = ready;
assign X_R_done = 0;

assign X_R_TVALID = axi_s_X_R_TVALID;

assign axi_s_X_R_TREADY = X_R_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_X_I;

reg X_I_ready_reg; // for self-sync

wire X_I_ready;
wire X_I_done;
wire [31:0] X_I_transaction;
wire axi_s_X_I_TVALID;
wire axi_s_X_I_TREADY;

AESL_axi_s_X_I AESL_AXI_S_X_I(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_X_I_TDATA(X_I_TDATA),
    .TRAN_X_I_TVALID(axi_s_X_I_TVALID),
    .TRAN_X_I_TREADY(axi_s_X_I_TREADY),
    .ready(X_I_ready),
    .done(X_I_done),
    .transaction(X_I_transaction));

assign X_I_ready = ready;
assign X_I_done = 0;

assign X_I_TVALID = axi_s_X_I_TVALID;

assign axi_s_X_I_TREADY = X_I_TREADY;

AESL_axi_slave_control AESL_AXI_SLAVE_control(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_control_AWADDR (control_AWADDR),
    .TRAN_s_axi_control_AWVALID (control_AWVALID),
    .TRAN_s_axi_control_AWREADY (control_AWREADY),
    .TRAN_s_axi_control_WVALID (control_WVALID),
    .TRAN_s_axi_control_WREADY (control_WREADY),
    .TRAN_s_axi_control_WDATA (control_WDATA),
    .TRAN_s_axi_control_WSTRB (control_WSTRB),
    .TRAN_s_axi_control_ARADDR (control_ARADDR),
    .TRAN_s_axi_control_ARVALID (control_ARVALID),
    .TRAN_s_axi_control_ARREADY (control_ARREADY),
    .TRAN_s_axi_control_RVALID (control_RVALID),
    .TRAN_s_axi_control_RREADY (control_RREADY),
    .TRAN_s_axi_control_RDATA (control_RDATA),
    .TRAN_s_axi_control_RRESP (control_RRESP),
    .TRAN_s_axi_control_BVALID (control_BVALID),
    .TRAN_s_axi_control_BREADY (control_BREADY),
    .TRAN_s_axi_control_BRESP (control_BRESP),
    .TRAN_control_interrupt (control_INTERRUPT),
    .TRAN_control_read_data_finish(control_read_data_finish),
    .TRAN_control_ready_out (AESL_ready),
    .TRAN_control_ready_in (AESL_slave_ready),
    .TRAN_control_done_out (AESL_slave_output_done),
    .TRAN_control_idle_out (AESL_idle),
    .TRAN_control_write_start_in     (AESL_slave_write_start_in),
    .TRAN_control_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_control_transaction_done_in (AESL_done_delay),
    .TRAN_control_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
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
        wait (AESL_reset === 1);
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
        if (~AESL_reset) begin
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
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_X_R;
reg [31:0] size_X_R;
reg [31:0] size_X_R_backup;
reg end_X_I;
reg [31:0] size_X_I;
reg [31:0] size_X_I_backup;
reg end_OUT_R_1;
reg [31:0] size_OUT_R_1;
reg [31:0] size_OUT_R_1_backup;
reg end_OUT_R_2;
reg [31:0] size_OUT_R_2;
reg [31:0] size_OUT_R_2_backup;
reg end_OUT_R_3;
reg [31:0] size_OUT_R_3;
reg [31:0] size_OUT_R_3_backup;
reg end_OUT_I_1;
reg [31:0] size_OUT_I_1;
reg [31:0] size_OUT_I_1_backup;
reg end_OUT_I_2;
reg [31:0] size_OUT_I_2;
reg [31:0] size_OUT_I_2_backup;
reg end_OUT_I_3;
reg [31:0] size_OUT_I_3;
reg [31:0] size_OUT_I_3_backup;
reg end_OUT_R_0;
reg [31:0] size_OUT_R_0;
reg [31:0] size_OUT_R_0_backup;
reg end_OUT_I_0;
reg [31:0] size_OUT_I_0;
reg [31:0] size_OUT_I_0_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(3+3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
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
    if(AESL_reset === 0)
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
    if(AESL_reset === 0)
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
    if(AESL_reset === 0)
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
    if(AESL_reset === 0)
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
    
    initial begin : proc_gen_axis_internal_ready_X_R
        X_R_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_X_R or X_R_transaction);
            if (ap_c_n_tvin_trans_num_X_R > X_R_transaction) begin
                X_R_ready_reg = 1;
            end else begin
                X_R_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_X_I
        X_I_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_X_I or X_I_transaction);
            if (ap_c_n_tvin_trans_num_X_I > X_I_transaction) begin
                X_I_ready_reg = 1;
            end else begin
                X_I_ready_reg = 0;
            end
        end
    end
    
    `define STREAM_SIZE_IN_X_R "../tv/stream_size/stream_size_in_X_R.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_X_R
        integer fp_X_R;
        reg [127:0] token_X_R;
        integer ret;
        
        ap_c_n_tvin_trans_num_X_R = 0;
        end_X_R = 0;
        wait (AESL_reset === 1);
        
        fp_X_R = $fopen(`AUTOTB_TVIN_X_R, "r");
        if(fp_X_R == 0) begin
            $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_X_R);
            $finish;
        end
        read_token(fp_X_R, token_X_R); // should be [[[runtime]]]
        if (token_X_R != "[[[runtime]]]") begin
            $display("ERROR: token_X_R != \"[[[runtime]]]\"");
            $finish;
        end
        ap_c_n_tvin_trans_num_X_R = ap_c_n_tvin_trans_num_X_R + 1;
        read_token(fp_X_R, token_X_R); // should be [[transaction]] or [[[/runtime]]]
        if (token_X_R == "[[[/runtime]]]") begin
            $fclose(fp_X_R);
            end_X_R = 1;
        end else begin
            end_X_R = 0;
            read_token(fp_X_R, token_X_R); // should be transaction number
            read_token(fp_X_R, token_X_R);
        end
        while (token_X_R == "[[/transaction]]" && end_X_R == 0) begin
            ap_c_n_tvin_trans_num_X_R = ap_c_n_tvin_trans_num_X_R + 1;
            read_token(fp_X_R, token_X_R); // should be [[transaction]] or [[[/runtime]]]
            if (token_X_R == "[[[/runtime]]]") begin
                $fclose(fp_X_R);
                end_X_R = 1;
            end else begin
                end_X_R = 0;
                read_token(fp_X_R, token_X_R); // should be transaction number
                read_token(fp_X_R, token_X_R);
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_X_R == 0) begin
                if ((X_R_TREADY & X_R_TVALID) == 1) begin
                    read_token(fp_X_R, token_X_R);
                    while (token_X_R == "[[/transaction]]" && end_X_R == 0) begin
                        ap_c_n_tvin_trans_num_X_R = ap_c_n_tvin_trans_num_X_R + 1;
                        read_token(fp_X_R, token_X_R); // should be [[transaction]] or [[[/runtime]]]
                        if (token_X_R == "[[[/runtime]]]") begin
                            $fclose(fp_X_R);
                            end_X_R = 1;
                        end else begin
                            end_X_R = 0;
                            read_token(fp_X_R, token_X_R); // should be transaction number
                            read_token(fp_X_R, token_X_R);
                        end
                    end
                end
            end else begin
                ap_c_n_tvin_trans_num_X_R = ap_c_n_tvin_trans_num_X_R + 1;
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_X_I "../tv/stream_size/stream_size_in_X_I.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_X_I
        integer fp_X_I;
        reg [127:0] token_X_I;
        integer ret;
        
        ap_c_n_tvin_trans_num_X_I = 0;
        end_X_I = 0;
        wait (AESL_reset === 1);
        
        fp_X_I = $fopen(`AUTOTB_TVIN_X_I, "r");
        if(fp_X_I == 0) begin
            $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_X_I);
            $finish;
        end
        read_token(fp_X_I, token_X_I); // should be [[[runtime]]]
        if (token_X_I != "[[[runtime]]]") begin
            $display("ERROR: token_X_I != \"[[[runtime]]]\"");
            $finish;
        end
        ap_c_n_tvin_trans_num_X_I = ap_c_n_tvin_trans_num_X_I + 1;
        read_token(fp_X_I, token_X_I); // should be [[transaction]] or [[[/runtime]]]
        if (token_X_I == "[[[/runtime]]]") begin
            $fclose(fp_X_I);
            end_X_I = 1;
        end else begin
            end_X_I = 0;
            read_token(fp_X_I, token_X_I); // should be transaction number
            read_token(fp_X_I, token_X_I);
        end
        while (token_X_I == "[[/transaction]]" && end_X_I == 0) begin
            ap_c_n_tvin_trans_num_X_I = ap_c_n_tvin_trans_num_X_I + 1;
            read_token(fp_X_I, token_X_I); // should be [[transaction]] or [[[/runtime]]]
            if (token_X_I == "[[[/runtime]]]") begin
                $fclose(fp_X_I);
                end_X_I = 1;
            end else begin
                end_X_I = 0;
                read_token(fp_X_I, token_X_I); // should be transaction number
                read_token(fp_X_I, token_X_I);
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_X_I == 0) begin
                if ((X_I_TREADY & X_I_TVALID) == 1) begin
                    read_token(fp_X_I, token_X_I);
                    while (token_X_I == "[[/transaction]]" && end_X_I == 0) begin
                        ap_c_n_tvin_trans_num_X_I = ap_c_n_tvin_trans_num_X_I + 1;
                        read_token(fp_X_I, token_X_I); // should be [[transaction]] or [[[/runtime]]]
                        if (token_X_I == "[[[/runtime]]]") begin
                            $fclose(fp_X_I);
                            end_X_I = 1;
                        end else begin
                            end_X_I = 0;
                            read_token(fp_X_I, token_X_I); // should be transaction number
                            read_token(fp_X_I, token_X_I);
                        end
                    end
                end
            end else begin
                ap_c_n_tvin_trans_num_X_I = ap_c_n_tvin_trans_num_X_I + 1;
            end
        end
    end
    
task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

reg dump_tvout_finish_OUT_R_0;

initial begin : dump_tvout_runtime_sign_OUT_R_0
    integer fp;
    dump_tvout_finish_OUT_R_0 = 0;
    fp = $fopen(`AUTOTB_TVOUT_OUT_R_0_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_R_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_OUT_R_0_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_R_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_OUT_R_0 = 1;
end


reg dump_tvout_finish_OUT_R_1;

initial begin : dump_tvout_runtime_sign_OUT_R_1
    integer fp;
    dump_tvout_finish_OUT_R_1 = 0;
    fp = $fopen(`AUTOTB_TVOUT_OUT_R_1_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_R_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_OUT_R_1_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_R_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_OUT_R_1 = 1;
end


reg dump_tvout_finish_OUT_R_2;

initial begin : dump_tvout_runtime_sign_OUT_R_2
    integer fp;
    dump_tvout_finish_OUT_R_2 = 0;
    fp = $fopen(`AUTOTB_TVOUT_OUT_R_2_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_R_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_OUT_R_2_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_R_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_OUT_R_2 = 1;
end


reg dump_tvout_finish_OUT_R_3;

initial begin : dump_tvout_runtime_sign_OUT_R_3
    integer fp;
    dump_tvout_finish_OUT_R_3 = 0;
    fp = $fopen(`AUTOTB_TVOUT_OUT_R_3_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_R_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_OUT_R_3_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_R_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_OUT_R_3 = 1;
end


reg dump_tvout_finish_OUT_I_0;

initial begin : dump_tvout_runtime_sign_OUT_I_0
    integer fp;
    dump_tvout_finish_OUT_I_0 = 0;
    fp = $fopen(`AUTOTB_TVOUT_OUT_I_0_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_I_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_OUT_I_0_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_I_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_OUT_I_0 = 1;
end


reg dump_tvout_finish_OUT_I_1;

initial begin : dump_tvout_runtime_sign_OUT_I_1
    integer fp;
    dump_tvout_finish_OUT_I_1 = 0;
    fp = $fopen(`AUTOTB_TVOUT_OUT_I_1_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_I_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_OUT_I_1_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_I_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_OUT_I_1 = 1;
end


reg dump_tvout_finish_OUT_I_2;

initial begin : dump_tvout_runtime_sign_OUT_I_2
    integer fp;
    dump_tvout_finish_OUT_I_2 = 0;
    fp = $fopen(`AUTOTB_TVOUT_OUT_I_2_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_I_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_OUT_I_2_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_I_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_OUT_I_2 = 1;
end


reg dump_tvout_finish_OUT_I_3;

initial begin : dump_tvout_runtime_sign_OUT_I_3
    integer fp;
    dump_tvout_finish_OUT_I_3 = 0;
    fp = $fopen(`AUTOTB_TVOUT_OUT_I_3_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_I_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_OUT_I_3_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_I_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_OUT_I_3 = 1;
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
    if (AESL_reset == 0) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
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
    wait (AESL_reset == 1);
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
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

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
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

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

// Dependence Check (WAW) "ap_enable_operation_480"(W:SV36-36) -> "ap_enable_operation_496"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop_fu_168

// Dependence Check (WAW) "ap_enable_operation_482"(W:SV36-36) -> "ap_enable_operation_498"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop_fu_168

// Dependence Check (WAW) "ap_enable_operation_484"(W:SV36-36) -> "ap_enable_operation_500"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop_fu_168

// Dependence Check (WAW) "ap_enable_operation_486"(W:SV36-36) -> "ap_enable_operation_502"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop_fu_168

// Dependence Check (WAW) "ap_enable_operation_488"(W:SV36-36) -> "ap_enable_operation_504"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop_fu_168

// Dependence Check (WAW) "ap_enable_operation_490"(W:SV36-36) -> "ap_enable_operation_506"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop_fu_168

// Dependence Check (WAW) "ap_enable_operation_492"(W:SV36-36) -> "ap_enable_operation_508"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop_fu_168

// Dependence Check (WAW) "ap_enable_operation_494"(W:SV36-36) -> "ap_enable_operation_510"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop_fu_168

// Dependence Check (WAW) "ap_enable_operation_496"(W:SV36-36) -> "ap_enable_operation_480"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop_fu_168

// Dependence Check (WAW) "ap_enable_operation_498"(W:SV36-36) -> "ap_enable_operation_482"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop_fu_168

// Dependence Check (WAW) "ap_enable_operation_500"(W:SV36-36) -> "ap_enable_operation_484"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop_fu_168

// Dependence Check (WAW) "ap_enable_operation_502"(W:SV36-36) -> "ap_enable_operation_486"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop_fu_168

// Dependence Check (WAW) "ap_enable_operation_504"(W:SV36-36) -> "ap_enable_operation_488"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop_fu_168

// Dependence Check (WAW) "ap_enable_operation_506"(W:SV36-36) -> "ap_enable_operation_490"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop_fu_168

// Dependence Check (WAW) "ap_enable_operation_508"(W:SV36-36) -> "ap_enable_operation_492"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop_fu_168

// Dependence Check (WAW) "ap_enable_operation_510"(W:SV36-36) -> "ap_enable_operation_494"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop_fu_168

// Dependence Check (WAW) "ap_enable_operation_497"(W:SV36-36) -> "ap_enable_operation_509"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188

// Dependence Check (WAW) "ap_enable_operation_499"(W:SV36-36) -> "ap_enable_operation_511"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188

// Dependence Check (WAW) "ap_enable_operation_501"(W:SV36-36) -> "ap_enable_operation_513"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188

// Dependence Check (WAW) "ap_enable_operation_503"(W:SV36-36) -> "ap_enable_operation_515"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188

// Dependence Check (WAW) "ap_enable_operation_509"(W:SV36-36) -> "ap_enable_operation_497"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188

// Dependence Check (WAW) "ap_enable_operation_511"(W:SV36-36) -> "ap_enable_operation_499"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188

// Dependence Check (WAW) "ap_enable_operation_513"(W:SV36-36) -> "ap_enable_operation_501"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188

// Dependence Check (WAW) "ap_enable_operation_515"(W:SV36-36) -> "ap_enable_operation_503"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188

// Dependence Check (WAW) "ap_enable_operation_521"(W:SV37-37) -> "ap_enable_operation_535"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188

// Dependence Check (WAW) "ap_enable_operation_523"(W:SV37-37) -> "ap_enable_operation_537"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188

// Dependence Check (WAW) "ap_enable_operation_525"(W:SV37-37) -> "ap_enable_operation_539"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188

// Dependence Check (WAW) "ap_enable_operation_527"(W:SV37-37) -> "ap_enable_operation_541"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188

// Dependence Check (WAW) "ap_enable_operation_535"(W:SV38-38) -> "ap_enable_operation_521"(W:SV37-37) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188
reg [8:0] DEP_address_28_to [1 - 1:0];
time DEP_time_28_to [1 - 1:0];
reg [8:0] DEP_address_28_from [1 - 1:0];
time DEP_time_28_from [1 - 1:0];
reg DEP_error_28 = 0;
integer DEP_i_28;

initial begin
    DEP_address_28_to[0] = 0;
    DEP_time_28_to[0] = 0;
    DEP_address_28_from[0] = 0;
    DEP_time_28_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_state38_pp0_iter37_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_reg_pp0_iter37) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_operation_521) begin
                DEP_address_28_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.buf0_R_3_address1};
                DEP_time_28_to[0] = $time;
            end else begin
                DEP_address_28_to[0] = {1'b0, 8'b0};
                DEP_time_28_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_state38_pp0_iter37_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_state38_pp0_iter37_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_state39_pp0_iter38_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_reg_pp0_iter37) begin
            DEP_address_28_to[0] = {1'b0, 8'b0};
            DEP_time_28_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_reg_pp0_iter38) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_operation_535) begin
                if (DEP_address_28_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_28_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_28_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.buf0_R_3_address0};
                DEP_time_28_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_reg_pp0_iter38) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_operation_535) begin
                DEP_i_28 = 0;
                if (DEP_address_28_to[0][8]) begin
                    DEP_error_28 = (DEP_address_28_to[0][7:0] == DEP_address_28_from[DEP_i_28][7:0]);
                    if (DEP_error_28) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188\"");
                        $display("//                : From memory access \"buf0_R_3_address0\" = 0x%0h @ \"%0t\"", DEP_address_28_from[DEP_i_28][7:0], DEP_time_28_from[DEP_i_28]);
                        $display("//                : To memory access \"buf0_R_3_address1\" = DEP_address_28_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_28_to[0][7:0], DEP_time_28_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_535"(W:SV38-38) -> "ap_enable_operation_521"(W:SV37-37) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188
                    end
                end
                DEP_address_28_from[DEP_i_28] = {1'b0, 8'b0};
                DEP_time_28_from[DEP_i_28] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_537"(W:SV38-38) -> "ap_enable_operation_523"(W:SV37-37) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188
reg [8:0] DEP_address_29_to [1 - 1:0];
time DEP_time_29_to [1 - 1:0];
reg [8:0] DEP_address_29_from [1 - 1:0];
time DEP_time_29_from [1 - 1:0];
reg DEP_error_29 = 0;
integer DEP_i_29;

initial begin
    DEP_address_29_to[0] = 0;
    DEP_time_29_to[0] = 0;
    DEP_address_29_from[0] = 0;
    DEP_time_29_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_state38_pp0_iter37_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_reg_pp0_iter37) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_operation_523) begin
                DEP_address_29_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.buf0_I_3_address1};
                DEP_time_29_to[0] = $time;
            end else begin
                DEP_address_29_to[0] = {1'b0, 8'b0};
                DEP_time_29_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_state38_pp0_iter37_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_state38_pp0_iter37_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_state39_pp0_iter38_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_reg_pp0_iter37) begin
            DEP_address_29_to[0] = {1'b0, 8'b0};
            DEP_time_29_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_reg_pp0_iter38) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_operation_537) begin
                if (DEP_address_29_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_29_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_29_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.buf0_I_3_address0};
                DEP_time_29_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_reg_pp0_iter38) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_operation_537) begin
                DEP_i_29 = 0;
                if (DEP_address_29_to[0][8]) begin
                    DEP_error_29 = (DEP_address_29_to[0][7:0] == DEP_address_29_from[DEP_i_29][7:0]);
                    if (DEP_error_29) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188\"");
                        $display("//                : From memory access \"buf0_I_3_address0\" = 0x%0h @ \"%0t\"", DEP_address_29_from[DEP_i_29][7:0], DEP_time_29_from[DEP_i_29]);
                        $display("//                : To memory access \"buf0_I_3_address1\" = DEP_address_29_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_29_to[0][7:0], DEP_time_29_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_537"(W:SV38-38) -> "ap_enable_operation_523"(W:SV37-37) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188
                    end
                end
                DEP_address_29_from[DEP_i_29] = {1'b0, 8'b0};
                DEP_time_29_from[DEP_i_29] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_539"(W:SV38-38) -> "ap_enable_operation_525"(W:SV37-37) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188
reg [8:0] DEP_address_30_to [1 - 1:0];
time DEP_time_30_to [1 - 1:0];
reg [8:0] DEP_address_30_from [1 - 1:0];
time DEP_time_30_from [1 - 1:0];
reg DEP_error_30 = 0;
integer DEP_i_30;

initial begin
    DEP_address_30_to[0] = 0;
    DEP_time_30_to[0] = 0;
    DEP_address_30_from[0] = 0;
    DEP_time_30_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_state38_pp0_iter37_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_reg_pp0_iter37) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_operation_525) begin
                DEP_address_30_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.buf0_R_1_address1};
                DEP_time_30_to[0] = $time;
            end else begin
                DEP_address_30_to[0] = {1'b0, 8'b0};
                DEP_time_30_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_state38_pp0_iter37_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_state38_pp0_iter37_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_state39_pp0_iter38_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_reg_pp0_iter37) begin
            DEP_address_30_to[0] = {1'b0, 8'b0};
            DEP_time_30_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_reg_pp0_iter38) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_operation_539) begin
                if (DEP_address_30_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_30_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_30_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.buf0_R_1_address0};
                DEP_time_30_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_reg_pp0_iter38) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_operation_539) begin
                DEP_i_30 = 0;
                if (DEP_address_30_to[0][8]) begin
                    DEP_error_30 = (DEP_address_30_to[0][7:0] == DEP_address_30_from[DEP_i_30][7:0]);
                    if (DEP_error_30) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188\"");
                        $display("//                : From memory access \"buf0_R_1_address0\" = 0x%0h @ \"%0t\"", DEP_address_30_from[DEP_i_30][7:0], DEP_time_30_from[DEP_i_30]);
                        $display("//                : To memory access \"buf0_R_1_address1\" = DEP_address_30_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_30_to[0][7:0], DEP_time_30_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_539"(W:SV38-38) -> "ap_enable_operation_525"(W:SV37-37) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188
                    end
                end
                DEP_address_30_from[DEP_i_30] = {1'b0, 8'b0};
                DEP_time_30_from[DEP_i_30] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_541"(W:SV38-38) -> "ap_enable_operation_527"(W:SV37-37) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188
reg [8:0] DEP_address_31_to [1 - 1:0];
time DEP_time_31_to [1 - 1:0];
reg [8:0] DEP_address_31_from [1 - 1:0];
time DEP_time_31_from [1 - 1:0];
reg DEP_error_31 = 0;
integer DEP_i_31;

initial begin
    DEP_address_31_to[0] = 0;
    DEP_time_31_to[0] = 0;
    DEP_address_31_from[0] = 0;
    DEP_time_31_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_state38_pp0_iter37_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_reg_pp0_iter37) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_operation_527) begin
                DEP_address_31_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.buf0_I_1_address1};
                DEP_time_31_to[0] = $time;
            end else begin
                DEP_address_31_to[0] = {1'b0, 8'b0};
                DEP_time_31_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_state38_pp0_iter37_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_state38_pp0_iter37_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_state39_pp0_iter38_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_reg_pp0_iter37) begin
            DEP_address_31_to[0] = {1'b0, 8'b0};
            DEP_time_31_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_reg_pp0_iter38) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_operation_541) begin
                if (DEP_address_31_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_31_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_31_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.buf0_I_1_address0};
                DEP_time_31_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_reg_pp0_iter38) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188.ap_enable_operation_541) begin
                DEP_i_31 = 0;
                if (DEP_address_31_to[0][8]) begin
                    DEP_error_31 = (DEP_address_31_to[0][7:0] == DEP_address_31_from[DEP_i_31][7:0]);
                    if (DEP_error_31) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188\"");
                        $display("//                : From memory access \"buf0_I_1_address0\" = 0x%0h @ \"%0t\"", DEP_address_31_from[DEP_i_31][7:0], DEP_time_31_from[DEP_i_31]);
                        $display("//                : To memory access \"buf0_I_1_address1\" = DEP_address_31_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_31_to[0][7:0], DEP_time_31_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_541"(W:SV38-38) -> "ap_enable_operation_527"(W:SV37-37) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop1_fu_188
                    end
                end
                DEP_address_31_from[DEP_i_31] = {1'b0, 8'b0};
                DEP_time_31_from[DEP_i_31] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_504"(W:SV36-36) -> "ap_enable_operation_508"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208

// Dependence Check (WAW) "ap_enable_operation_506"(W:SV36-36) -> "ap_enable_operation_510"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208

// Dependence Check (WAW) "ap_enable_operation_508"(W:SV36-36) -> "ap_enable_operation_504"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208

// Dependence Check (WAW) "ap_enable_operation_510"(W:SV36-36) -> "ap_enable_operation_506"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208

// Dependence Check (WAW) "ap_enable_operation_536"(W:SV38-38) -> "ap_enable_operation_550"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208

// Dependence Check (WAW) "ap_enable_operation_538"(W:SV38-38) -> "ap_enable_operation_552"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208

// Dependence Check (WAW) "ap_enable_operation_540"(W:SV38-38) -> "ap_enable_operation_554"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208

// Dependence Check (WAW) "ap_enable_operation_542"(W:SV38-38) -> "ap_enable_operation_556"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208

// Dependence Check (WAW) "ap_enable_operation_544"(W:SV38-38) -> "ap_enable_operation_558"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208

// Dependence Check (WAW) "ap_enable_operation_546"(W:SV38-38) -> "ap_enable_operation_560"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208

// Dependence Check (WAW) "ap_enable_operation_550"(W:SV39-39) -> "ap_enable_operation_536"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208
reg [8:0] DEP_address_42_to [1 - 1:0];
time DEP_time_42_to [1 - 1:0];
reg [8:0] DEP_address_42_from [1 - 1:0];
time DEP_time_42_from [1 - 1:0];
reg DEP_error_42 = 0;
integer DEP_i_42;

initial begin
    DEP_address_42_to[0] = 0;
    DEP_time_42_to[0] = 0;
    DEP_address_42_from[0] = 0;
    DEP_time_42_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_operation_536) begin
                DEP_address_42_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.buf1_R_1_address1};
                DEP_time_42_to[0] = $time;
            end else begin
                DEP_address_42_to[0] = {1'b0, 8'b0};
                DEP_time_42_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_reg_pp0_iter38) begin
            DEP_address_42_to[0] = {1'b0, 8'b0};
            DEP_time_42_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_operation_550) begin
                if (DEP_address_42_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_42_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_42_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.buf1_R_1_address0};
                DEP_time_42_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_operation_550) begin
                DEP_i_42 = 0;
                if (DEP_address_42_to[0][8]) begin
                    DEP_error_42 = (DEP_address_42_to[0][7:0] == DEP_address_42_from[DEP_i_42][7:0]);
                    if (DEP_error_42) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208\"");
                        $display("//                : From memory access \"buf1_R_1_address0\" = 0x%0h @ \"%0t\"", DEP_address_42_from[DEP_i_42][7:0], DEP_time_42_from[DEP_i_42]);
                        $display("//                : To memory access \"buf1_R_1_address1\" = DEP_address_42_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_42_to[0][7:0], DEP_time_42_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_550"(W:SV39-39) -> "ap_enable_operation_536"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208
                    end
                end
                DEP_address_42_from[DEP_i_42] = {1'b0, 8'b0};
                DEP_time_42_from[DEP_i_42] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_552"(W:SV39-39) -> "ap_enable_operation_538"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208
reg [8:0] DEP_address_43_to [1 - 1:0];
time DEP_time_43_to [1 - 1:0];
reg [8:0] DEP_address_43_from [1 - 1:0];
time DEP_time_43_from [1 - 1:0];
reg DEP_error_43 = 0;
integer DEP_i_43;

initial begin
    DEP_address_43_to[0] = 0;
    DEP_time_43_to[0] = 0;
    DEP_address_43_from[0] = 0;
    DEP_time_43_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_operation_538) begin
                DEP_address_43_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.buf1_I_1_address1};
                DEP_time_43_to[0] = $time;
            end else begin
                DEP_address_43_to[0] = {1'b0, 8'b0};
                DEP_time_43_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_reg_pp0_iter38) begin
            DEP_address_43_to[0] = {1'b0, 8'b0};
            DEP_time_43_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_operation_552) begin
                if (DEP_address_43_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_43_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_43_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.buf1_I_1_address0};
                DEP_time_43_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_operation_552) begin
                DEP_i_43 = 0;
                if (DEP_address_43_to[0][8]) begin
                    DEP_error_43 = (DEP_address_43_to[0][7:0] == DEP_address_43_from[DEP_i_43][7:0]);
                    if (DEP_error_43) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208\"");
                        $display("//                : From memory access \"buf1_I_1_address0\" = 0x%0h @ \"%0t\"", DEP_address_43_from[DEP_i_43][7:0], DEP_time_43_from[DEP_i_43]);
                        $display("//                : To memory access \"buf1_I_1_address1\" = DEP_address_43_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_43_to[0][7:0], DEP_time_43_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_552"(W:SV39-39) -> "ap_enable_operation_538"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208
                    end
                end
                DEP_address_43_from[DEP_i_43] = {1'b0, 8'b0};
                DEP_time_43_from[DEP_i_43] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_554"(W:SV39-39) -> "ap_enable_operation_540"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208
reg [8:0] DEP_address_44_to [1 - 1:0];
time DEP_time_44_to [1 - 1:0];
reg [8:0] DEP_address_44_from [1 - 1:0];
time DEP_time_44_from [1 - 1:0];
reg DEP_error_44 = 0;
integer DEP_i_44;

initial begin
    DEP_address_44_to[0] = 0;
    DEP_time_44_to[0] = 0;
    DEP_address_44_from[0] = 0;
    DEP_time_44_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_operation_540) begin
                DEP_address_44_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.buf1_R_2_address1};
                DEP_time_44_to[0] = $time;
            end else begin
                DEP_address_44_to[0] = {1'b0, 8'b0};
                DEP_time_44_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_reg_pp0_iter38) begin
            DEP_address_44_to[0] = {1'b0, 8'b0};
            DEP_time_44_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_operation_554) begin
                if (DEP_address_44_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_44_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_44_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.buf1_R_2_address0};
                DEP_time_44_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_operation_554) begin
                DEP_i_44 = 0;
                if (DEP_address_44_to[0][8]) begin
                    DEP_error_44 = (DEP_address_44_to[0][7:0] == DEP_address_44_from[DEP_i_44][7:0]);
                    if (DEP_error_44) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208\"");
                        $display("//                : From memory access \"buf1_R_2_address0\" = 0x%0h @ \"%0t\"", DEP_address_44_from[DEP_i_44][7:0], DEP_time_44_from[DEP_i_44]);
                        $display("//                : To memory access \"buf1_R_2_address1\" = DEP_address_44_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_44_to[0][7:0], DEP_time_44_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_554"(W:SV39-39) -> "ap_enable_operation_540"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208
                    end
                end
                DEP_address_44_from[DEP_i_44] = {1'b0, 8'b0};
                DEP_time_44_from[DEP_i_44] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_556"(W:SV39-39) -> "ap_enable_operation_542"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208
reg [8:0] DEP_address_45_to [1 - 1:0];
time DEP_time_45_to [1 - 1:0];
reg [8:0] DEP_address_45_from [1 - 1:0];
time DEP_time_45_from [1 - 1:0];
reg DEP_error_45 = 0;
integer DEP_i_45;

initial begin
    DEP_address_45_to[0] = 0;
    DEP_time_45_to[0] = 0;
    DEP_address_45_from[0] = 0;
    DEP_time_45_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_operation_542) begin
                DEP_address_45_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.buf1_I_2_address1};
                DEP_time_45_to[0] = $time;
            end else begin
                DEP_address_45_to[0] = {1'b0, 8'b0};
                DEP_time_45_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_reg_pp0_iter38) begin
            DEP_address_45_to[0] = {1'b0, 8'b0};
            DEP_time_45_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_operation_556) begin
                if (DEP_address_45_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_45_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_45_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.buf1_I_2_address0};
                DEP_time_45_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_operation_556) begin
                DEP_i_45 = 0;
                if (DEP_address_45_to[0][8]) begin
                    DEP_error_45 = (DEP_address_45_to[0][7:0] == DEP_address_45_from[DEP_i_45][7:0]);
                    if (DEP_error_45) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208\"");
                        $display("//                : From memory access \"buf1_I_2_address0\" = 0x%0h @ \"%0t\"", DEP_address_45_from[DEP_i_45][7:0], DEP_time_45_from[DEP_i_45]);
                        $display("//                : To memory access \"buf1_I_2_address1\" = DEP_address_45_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_45_to[0][7:0], DEP_time_45_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_556"(W:SV39-39) -> "ap_enable_operation_542"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208
                    end
                end
                DEP_address_45_from[DEP_i_45] = {1'b0, 8'b0};
                DEP_time_45_from[DEP_i_45] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_558"(W:SV39-39) -> "ap_enable_operation_544"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208
reg [8:0] DEP_address_46_to [1 - 1:0];
time DEP_time_46_to [1 - 1:0];
reg [8:0] DEP_address_46_from [1 - 1:0];
time DEP_time_46_from [1 - 1:0];
reg DEP_error_46 = 0;
integer DEP_i_46;

initial begin
    DEP_address_46_to[0] = 0;
    DEP_time_46_to[0] = 0;
    DEP_address_46_from[0] = 0;
    DEP_time_46_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_operation_544) begin
                DEP_address_46_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.buf1_R_3_address1};
                DEP_time_46_to[0] = $time;
            end else begin
                DEP_address_46_to[0] = {1'b0, 8'b0};
                DEP_time_46_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_reg_pp0_iter38) begin
            DEP_address_46_to[0] = {1'b0, 8'b0};
            DEP_time_46_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_operation_558) begin
                if (DEP_address_46_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_46_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_46_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.buf1_R_3_address0};
                DEP_time_46_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_operation_558) begin
                DEP_i_46 = 0;
                if (DEP_address_46_to[0][8]) begin
                    DEP_error_46 = (DEP_address_46_to[0][7:0] == DEP_address_46_from[DEP_i_46][7:0]);
                    if (DEP_error_46) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208\"");
                        $display("//                : From memory access \"buf1_R_3_address0\" = 0x%0h @ \"%0t\"", DEP_address_46_from[DEP_i_46][7:0], DEP_time_46_from[DEP_i_46]);
                        $display("//                : To memory access \"buf1_R_3_address1\" = DEP_address_46_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_46_to[0][7:0], DEP_time_46_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_558"(W:SV39-39) -> "ap_enable_operation_544"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208
                    end
                end
                DEP_address_46_from[DEP_i_46] = {1'b0, 8'b0};
                DEP_time_46_from[DEP_i_46] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_560"(W:SV39-39) -> "ap_enable_operation_546"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208
reg [8:0] DEP_address_47_to [1 - 1:0];
time DEP_time_47_to [1 - 1:0];
reg [8:0] DEP_address_47_from [1 - 1:0];
time DEP_time_47_from [1 - 1:0];
reg DEP_error_47 = 0;
integer DEP_i_47;

initial begin
    DEP_address_47_to[0] = 0;
    DEP_time_47_to[0] = 0;
    DEP_address_47_from[0] = 0;
    DEP_time_47_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_operation_546) begin
                DEP_address_47_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.buf1_I_3_address1};
                DEP_time_47_to[0] = $time;
            end else begin
                DEP_address_47_to[0] = {1'b0, 8'b0};
                DEP_time_47_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_reg_pp0_iter38) begin
            DEP_address_47_to[0] = {1'b0, 8'b0};
            DEP_time_47_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_operation_560) begin
                if (DEP_address_47_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_47_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_47_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.buf1_I_3_address0};
                DEP_time_47_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208.ap_enable_operation_560) begin
                DEP_i_47 = 0;
                if (DEP_address_47_to[0][8]) begin
                    DEP_error_47 = (DEP_address_47_to[0][7:0] == DEP_address_47_from[DEP_i_47][7:0]);
                    if (DEP_error_47) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208\"");
                        $display("//                : From memory access \"buf1_I_3_address0\" = 0x%0h @ \"%0t\"", DEP_address_47_from[DEP_i_47][7:0], DEP_time_47_from[DEP_i_47]);
                        $display("//                : To memory access \"buf1_I_3_address1\" = DEP_address_47_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_47_to[0][7:0], DEP_time_47_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_560"(W:SV39-39) -> "ap_enable_operation_546"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop2_fu_208
                    end
                end
                DEP_address_47_from[DEP_i_47] = {1'b0, 8'b0};
                DEP_time_47_from[DEP_i_47] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_611"(W:SV38-38) -> "ap_enable_operation_629"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228

// Dependence Check (WAW) "ap_enable_operation_613"(W:SV38-38) -> "ap_enable_operation_631"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228

// Dependence Check (WAW) "ap_enable_operation_615"(W:SV38-38) -> "ap_enable_operation_633"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228

// Dependence Check (WAW) "ap_enable_operation_617"(W:SV38-38) -> "ap_enable_operation_635"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228

// Dependence Check (WAW) "ap_enable_operation_619"(W:SV38-38) -> "ap_enable_operation_637"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228

// Dependence Check (WAW) "ap_enable_operation_621"(W:SV38-38) -> "ap_enable_operation_639"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228

// Dependence Check (WAW) "ap_enable_operation_623"(W:SV38-38) -> "ap_enable_operation_641"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228

// Dependence Check (WAW) "ap_enable_operation_625"(W:SV38-38) -> "ap_enable_operation_643"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228

// Dependence Check (WAW) "ap_enable_operation_629"(W:SV39-39) -> "ap_enable_operation_611"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228
reg [8:0] DEP_address_56_to [1 - 1:0];
time DEP_time_56_to [1 - 1:0];
reg [8:0] DEP_address_56_from [1 - 1:0];
time DEP_time_56_from [1 - 1:0];
reg DEP_error_56 = 0;
integer DEP_i_56;

initial begin
    DEP_address_56_to[0] = 0;
    DEP_time_56_to[0] = 0;
    DEP_address_56_from[0] = 0;
    DEP_time_56_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_operation_611) begin
                DEP_address_56_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.buf0_R_address1};
                DEP_time_56_to[0] = $time;
            end else begin
                DEP_address_56_to[0] = {1'b0, 8'b0};
                DEP_time_56_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter38) begin
            DEP_address_56_to[0] = {1'b0, 8'b0};
            DEP_time_56_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_operation_629) begin
                if (DEP_address_56_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_56_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_56_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.buf0_R_address0};
                DEP_time_56_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_operation_629) begin
                DEP_i_56 = 0;
                if (DEP_address_56_to[0][8]) begin
                    DEP_error_56 = (DEP_address_56_to[0][7:0] == DEP_address_56_from[DEP_i_56][7:0]);
                    if (DEP_error_56) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228\"");
                        $display("//                : From memory access \"buf0_R_address0\" = 0x%0h @ \"%0t\"", DEP_address_56_from[DEP_i_56][7:0], DEP_time_56_from[DEP_i_56]);
                        $display("//                : To memory access \"buf0_R_address1\" = DEP_address_56_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_56_to[0][7:0], DEP_time_56_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_629"(W:SV39-39) -> "ap_enable_operation_611"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228
                    end
                end
                DEP_address_56_from[DEP_i_56] = {1'b0, 8'b0};
                DEP_time_56_from[DEP_i_56] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_631"(W:SV39-39) -> "ap_enable_operation_613"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228
reg [8:0] DEP_address_57_to [1 - 1:0];
time DEP_time_57_to [1 - 1:0];
reg [8:0] DEP_address_57_from [1 - 1:0];
time DEP_time_57_from [1 - 1:0];
reg DEP_error_57 = 0;
integer DEP_i_57;

initial begin
    DEP_address_57_to[0] = 0;
    DEP_time_57_to[0] = 0;
    DEP_address_57_from[0] = 0;
    DEP_time_57_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_operation_613) begin
                DEP_address_57_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.buf0_I_address1};
                DEP_time_57_to[0] = $time;
            end else begin
                DEP_address_57_to[0] = {1'b0, 8'b0};
                DEP_time_57_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter38) begin
            DEP_address_57_to[0] = {1'b0, 8'b0};
            DEP_time_57_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_operation_631) begin
                if (DEP_address_57_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_57_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_57_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.buf0_I_address0};
                DEP_time_57_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_operation_631) begin
                DEP_i_57 = 0;
                if (DEP_address_57_to[0][8]) begin
                    DEP_error_57 = (DEP_address_57_to[0][7:0] == DEP_address_57_from[DEP_i_57][7:0]);
                    if (DEP_error_57) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228\"");
                        $display("//                : From memory access \"buf0_I_address0\" = 0x%0h @ \"%0t\"", DEP_address_57_from[DEP_i_57][7:0], DEP_time_57_from[DEP_i_57]);
                        $display("//                : To memory access \"buf0_I_address1\" = DEP_address_57_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_57_to[0][7:0], DEP_time_57_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_631"(W:SV39-39) -> "ap_enable_operation_613"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228
                    end
                end
                DEP_address_57_from[DEP_i_57] = {1'b0, 8'b0};
                DEP_time_57_from[DEP_i_57] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_633"(W:SV39-39) -> "ap_enable_operation_615"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228
reg [8:0] DEP_address_58_to [1 - 1:0];
time DEP_time_58_to [1 - 1:0];
reg [8:0] DEP_address_58_from [1 - 1:0];
time DEP_time_58_from [1 - 1:0];
reg DEP_error_58 = 0;
integer DEP_i_58;

initial begin
    DEP_address_58_to[0] = 0;
    DEP_time_58_to[0] = 0;
    DEP_address_58_from[0] = 0;
    DEP_time_58_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_operation_615) begin
                DEP_address_58_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.buf0_R_1_address1};
                DEP_time_58_to[0] = $time;
            end else begin
                DEP_address_58_to[0] = {1'b0, 8'b0};
                DEP_time_58_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter38) begin
            DEP_address_58_to[0] = {1'b0, 8'b0};
            DEP_time_58_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_operation_633) begin
                if (DEP_address_58_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_58_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_58_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.buf0_R_1_address0};
                DEP_time_58_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_operation_633) begin
                DEP_i_58 = 0;
                if (DEP_address_58_to[0][8]) begin
                    DEP_error_58 = (DEP_address_58_to[0][7:0] == DEP_address_58_from[DEP_i_58][7:0]);
                    if (DEP_error_58) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228\"");
                        $display("//                : From memory access \"buf0_R_1_address0\" = 0x%0h @ \"%0t\"", DEP_address_58_from[DEP_i_58][7:0], DEP_time_58_from[DEP_i_58]);
                        $display("//                : To memory access \"buf0_R_1_address1\" = DEP_address_58_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_58_to[0][7:0], DEP_time_58_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_633"(W:SV39-39) -> "ap_enable_operation_615"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228
                    end
                end
                DEP_address_58_from[DEP_i_58] = {1'b0, 8'b0};
                DEP_time_58_from[DEP_i_58] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_635"(W:SV39-39) -> "ap_enable_operation_617"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228
reg [8:0] DEP_address_59_to [1 - 1:0];
time DEP_time_59_to [1 - 1:0];
reg [8:0] DEP_address_59_from [1 - 1:0];
time DEP_time_59_from [1 - 1:0];
reg DEP_error_59 = 0;
integer DEP_i_59;

initial begin
    DEP_address_59_to[0] = 0;
    DEP_time_59_to[0] = 0;
    DEP_address_59_from[0] = 0;
    DEP_time_59_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_operation_617) begin
                DEP_address_59_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.buf0_I_1_address1};
                DEP_time_59_to[0] = $time;
            end else begin
                DEP_address_59_to[0] = {1'b0, 8'b0};
                DEP_time_59_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter38) begin
            DEP_address_59_to[0] = {1'b0, 8'b0};
            DEP_time_59_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_operation_635) begin
                if (DEP_address_59_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_59_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_59_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.buf0_I_1_address0};
                DEP_time_59_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_operation_635) begin
                DEP_i_59 = 0;
                if (DEP_address_59_to[0][8]) begin
                    DEP_error_59 = (DEP_address_59_to[0][7:0] == DEP_address_59_from[DEP_i_59][7:0]);
                    if (DEP_error_59) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228\"");
                        $display("//                : From memory access \"buf0_I_1_address0\" = 0x%0h @ \"%0t\"", DEP_address_59_from[DEP_i_59][7:0], DEP_time_59_from[DEP_i_59]);
                        $display("//                : To memory access \"buf0_I_1_address1\" = DEP_address_59_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_59_to[0][7:0], DEP_time_59_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_635"(W:SV39-39) -> "ap_enable_operation_617"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228
                    end
                end
                DEP_address_59_from[DEP_i_59] = {1'b0, 8'b0};
                DEP_time_59_from[DEP_i_59] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_637"(W:SV39-39) -> "ap_enable_operation_619"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228
reg [8:0] DEP_address_60_to [1 - 1:0];
time DEP_time_60_to [1 - 1:0];
reg [8:0] DEP_address_60_from [1 - 1:0];
time DEP_time_60_from [1 - 1:0];
reg DEP_error_60 = 0;
integer DEP_i_60;

initial begin
    DEP_address_60_to[0] = 0;
    DEP_time_60_to[0] = 0;
    DEP_address_60_from[0] = 0;
    DEP_time_60_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_operation_619) begin
                DEP_address_60_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.buf0_R_2_address1};
                DEP_time_60_to[0] = $time;
            end else begin
                DEP_address_60_to[0] = {1'b0, 8'b0};
                DEP_time_60_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter38) begin
            DEP_address_60_to[0] = {1'b0, 8'b0};
            DEP_time_60_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_operation_637) begin
                if (DEP_address_60_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_60_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_60_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.buf0_R_2_address0};
                DEP_time_60_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_operation_637) begin
                DEP_i_60 = 0;
                if (DEP_address_60_to[0][8]) begin
                    DEP_error_60 = (DEP_address_60_to[0][7:0] == DEP_address_60_from[DEP_i_60][7:0]);
                    if (DEP_error_60) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228\"");
                        $display("//                : From memory access \"buf0_R_2_address0\" = 0x%0h @ \"%0t\"", DEP_address_60_from[DEP_i_60][7:0], DEP_time_60_from[DEP_i_60]);
                        $display("//                : To memory access \"buf0_R_2_address1\" = DEP_address_60_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_60_to[0][7:0], DEP_time_60_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_637"(W:SV39-39) -> "ap_enable_operation_619"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228
                    end
                end
                DEP_address_60_from[DEP_i_60] = {1'b0, 8'b0};
                DEP_time_60_from[DEP_i_60] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_639"(W:SV39-39) -> "ap_enable_operation_621"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228
reg [8:0] DEP_address_61_to [1 - 1:0];
time DEP_time_61_to [1 - 1:0];
reg [8:0] DEP_address_61_from [1 - 1:0];
time DEP_time_61_from [1 - 1:0];
reg DEP_error_61 = 0;
integer DEP_i_61;

initial begin
    DEP_address_61_to[0] = 0;
    DEP_time_61_to[0] = 0;
    DEP_address_61_from[0] = 0;
    DEP_time_61_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_operation_621) begin
                DEP_address_61_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.buf0_I_2_address1};
                DEP_time_61_to[0] = $time;
            end else begin
                DEP_address_61_to[0] = {1'b0, 8'b0};
                DEP_time_61_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter38) begin
            DEP_address_61_to[0] = {1'b0, 8'b0};
            DEP_time_61_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_operation_639) begin
                if (DEP_address_61_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_61_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_61_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.buf0_I_2_address0};
                DEP_time_61_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_operation_639) begin
                DEP_i_61 = 0;
                if (DEP_address_61_to[0][8]) begin
                    DEP_error_61 = (DEP_address_61_to[0][7:0] == DEP_address_61_from[DEP_i_61][7:0]);
                    if (DEP_error_61) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228\"");
                        $display("//                : From memory access \"buf0_I_2_address0\" = 0x%0h @ \"%0t\"", DEP_address_61_from[DEP_i_61][7:0], DEP_time_61_from[DEP_i_61]);
                        $display("//                : To memory access \"buf0_I_2_address1\" = DEP_address_61_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_61_to[0][7:0], DEP_time_61_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_639"(W:SV39-39) -> "ap_enable_operation_621"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228
                    end
                end
                DEP_address_61_from[DEP_i_61] = {1'b0, 8'b0};
                DEP_time_61_from[DEP_i_61] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_641"(W:SV39-39) -> "ap_enable_operation_623"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228
reg [8:0] DEP_address_62_to [1 - 1:0];
time DEP_time_62_to [1 - 1:0];
reg [8:0] DEP_address_62_from [1 - 1:0];
time DEP_time_62_from [1 - 1:0];
reg DEP_error_62 = 0;
integer DEP_i_62;

initial begin
    DEP_address_62_to[0] = 0;
    DEP_time_62_to[0] = 0;
    DEP_address_62_from[0] = 0;
    DEP_time_62_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_operation_623) begin
                DEP_address_62_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.buf0_R_3_address1};
                DEP_time_62_to[0] = $time;
            end else begin
                DEP_address_62_to[0] = {1'b0, 8'b0};
                DEP_time_62_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter38) begin
            DEP_address_62_to[0] = {1'b0, 8'b0};
            DEP_time_62_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_operation_641) begin
                if (DEP_address_62_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_62_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_62_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.buf0_R_3_address0};
                DEP_time_62_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_operation_641) begin
                DEP_i_62 = 0;
                if (DEP_address_62_to[0][8]) begin
                    DEP_error_62 = (DEP_address_62_to[0][7:0] == DEP_address_62_from[DEP_i_62][7:0]);
                    if (DEP_error_62) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228\"");
                        $display("//                : From memory access \"buf0_R_3_address0\" = 0x%0h @ \"%0t\"", DEP_address_62_from[DEP_i_62][7:0], DEP_time_62_from[DEP_i_62]);
                        $display("//                : To memory access \"buf0_R_3_address1\" = DEP_address_62_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_62_to[0][7:0], DEP_time_62_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_641"(W:SV39-39) -> "ap_enable_operation_623"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228
                    end
                end
                DEP_address_62_from[DEP_i_62] = {1'b0, 8'b0};
                DEP_time_62_from[DEP_i_62] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_643"(W:SV39-39) -> "ap_enable_operation_625"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228
reg [8:0] DEP_address_63_to [1 - 1:0];
time DEP_time_63_to [1 - 1:0];
reg [8:0] DEP_address_63_from [1 - 1:0];
time DEP_time_63_from [1 - 1:0];
reg DEP_error_63 = 0;
integer DEP_i_63;

initial begin
    DEP_address_63_to[0] = 0;
    DEP_time_63_to[0] = 0;
    DEP_address_63_from[0] = 0;
    DEP_time_63_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_operation_625) begin
                DEP_address_63_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.buf0_I_3_address1};
                DEP_time_63_to[0] = $time;
            end else begin
                DEP_address_63_to[0] = {1'b0, 8'b0};
                DEP_time_63_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter38) begin
            DEP_address_63_to[0] = {1'b0, 8'b0};
            DEP_time_63_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_operation_643) begin
                if (DEP_address_63_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_63_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_63_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.buf0_I_3_address0};
                DEP_time_63_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228.ap_enable_operation_643) begin
                DEP_i_63 = 0;
                if (DEP_address_63_to[0][8]) begin
                    DEP_error_63 = (DEP_address_63_to[0][7:0] == DEP_address_63_from[DEP_i_63][7:0]);
                    if (DEP_error_63) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228\"");
                        $display("//                : From memory access \"buf0_I_3_address0\" = 0x%0h @ \"%0t\"", DEP_address_63_from[DEP_i_63][7:0], DEP_time_63_from[DEP_i_63]);
                        $display("//                : To memory access \"buf0_I_3_address1\" = DEP_address_63_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_63_to[0][7:0], DEP_time_63_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_643"(W:SV39-39) -> "ap_enable_operation_625"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop3_fu_228
                    end
                end
                DEP_address_63_from[DEP_i_63] = {1'b0, 8'b0};
                DEP_time_63_from[DEP_i_63] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_611"(W:SV38-38) -> "ap_enable_operation_629"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252

// Dependence Check (WAW) "ap_enable_operation_613"(W:SV38-38) -> "ap_enable_operation_631"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252

// Dependence Check (WAW) "ap_enable_operation_615"(W:SV38-38) -> "ap_enable_operation_633"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252

// Dependence Check (WAW) "ap_enable_operation_617"(W:SV38-38) -> "ap_enable_operation_635"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252

// Dependence Check (WAW) "ap_enable_operation_619"(W:SV38-38) -> "ap_enable_operation_637"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252

// Dependence Check (WAW) "ap_enable_operation_621"(W:SV38-38) -> "ap_enable_operation_639"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252

// Dependence Check (WAW) "ap_enable_operation_623"(W:SV38-38) -> "ap_enable_operation_641"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252

// Dependence Check (WAW) "ap_enable_operation_625"(W:SV38-38) -> "ap_enable_operation_643"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252

// Dependence Check (WAW) "ap_enable_operation_629"(W:SV39-39) -> "ap_enable_operation_611"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252
reg [8:0] DEP_address_72_to [1 - 1:0];
time DEP_time_72_to [1 - 1:0];
reg [8:0] DEP_address_72_from [1 - 1:0];
time DEP_time_72_from [1 - 1:0];
reg DEP_error_72 = 0;
integer DEP_i_72;

initial begin
    DEP_address_72_to[0] = 0;
    DEP_time_72_to[0] = 0;
    DEP_address_72_from[0] = 0;
    DEP_time_72_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_operation_611) begin
                DEP_address_72_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.buf1_R_address1};
                DEP_time_72_to[0] = $time;
            end else begin
                DEP_address_72_to[0] = {1'b0, 8'b0};
                DEP_time_72_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter38) begin
            DEP_address_72_to[0] = {1'b0, 8'b0};
            DEP_time_72_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_operation_629) begin
                if (DEP_address_72_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_72_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_72_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.buf1_R_address0};
                DEP_time_72_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_operation_629) begin
                DEP_i_72 = 0;
                if (DEP_address_72_to[0][8]) begin
                    DEP_error_72 = (DEP_address_72_to[0][7:0] == DEP_address_72_from[DEP_i_72][7:0]);
                    if (DEP_error_72) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252\"");
                        $display("//                : From memory access \"buf1_R_address0\" = 0x%0h @ \"%0t\"", DEP_address_72_from[DEP_i_72][7:0], DEP_time_72_from[DEP_i_72]);
                        $display("//                : To memory access \"buf1_R_address1\" = DEP_address_72_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_72_to[0][7:0], DEP_time_72_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_629"(W:SV39-39) -> "ap_enable_operation_611"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252
                    end
                end
                DEP_address_72_from[DEP_i_72] = {1'b0, 8'b0};
                DEP_time_72_from[DEP_i_72] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_631"(W:SV39-39) -> "ap_enable_operation_613"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252
reg [8:0] DEP_address_73_to [1 - 1:0];
time DEP_time_73_to [1 - 1:0];
reg [8:0] DEP_address_73_from [1 - 1:0];
time DEP_time_73_from [1 - 1:0];
reg DEP_error_73 = 0;
integer DEP_i_73;

initial begin
    DEP_address_73_to[0] = 0;
    DEP_time_73_to[0] = 0;
    DEP_address_73_from[0] = 0;
    DEP_time_73_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_operation_613) begin
                DEP_address_73_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.buf1_I_address1};
                DEP_time_73_to[0] = $time;
            end else begin
                DEP_address_73_to[0] = {1'b0, 8'b0};
                DEP_time_73_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter38) begin
            DEP_address_73_to[0] = {1'b0, 8'b0};
            DEP_time_73_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_operation_631) begin
                if (DEP_address_73_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_73_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_73_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.buf1_I_address0};
                DEP_time_73_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_operation_631) begin
                DEP_i_73 = 0;
                if (DEP_address_73_to[0][8]) begin
                    DEP_error_73 = (DEP_address_73_to[0][7:0] == DEP_address_73_from[DEP_i_73][7:0]);
                    if (DEP_error_73) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252\"");
                        $display("//                : From memory access \"buf1_I_address0\" = 0x%0h @ \"%0t\"", DEP_address_73_from[DEP_i_73][7:0], DEP_time_73_from[DEP_i_73]);
                        $display("//                : To memory access \"buf1_I_address1\" = DEP_address_73_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_73_to[0][7:0], DEP_time_73_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_631"(W:SV39-39) -> "ap_enable_operation_613"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252
                    end
                end
                DEP_address_73_from[DEP_i_73] = {1'b0, 8'b0};
                DEP_time_73_from[DEP_i_73] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_633"(W:SV39-39) -> "ap_enable_operation_615"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252
reg [8:0] DEP_address_74_to [1 - 1:0];
time DEP_time_74_to [1 - 1:0];
reg [8:0] DEP_address_74_from [1 - 1:0];
time DEP_time_74_from [1 - 1:0];
reg DEP_error_74 = 0;
integer DEP_i_74;

initial begin
    DEP_address_74_to[0] = 0;
    DEP_time_74_to[0] = 0;
    DEP_address_74_from[0] = 0;
    DEP_time_74_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_operation_615) begin
                DEP_address_74_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.buf1_R_1_address1};
                DEP_time_74_to[0] = $time;
            end else begin
                DEP_address_74_to[0] = {1'b0, 8'b0};
                DEP_time_74_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter38) begin
            DEP_address_74_to[0] = {1'b0, 8'b0};
            DEP_time_74_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_operation_633) begin
                if (DEP_address_74_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_74_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_74_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.buf1_R_1_address0};
                DEP_time_74_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_operation_633) begin
                DEP_i_74 = 0;
                if (DEP_address_74_to[0][8]) begin
                    DEP_error_74 = (DEP_address_74_to[0][7:0] == DEP_address_74_from[DEP_i_74][7:0]);
                    if (DEP_error_74) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252\"");
                        $display("//                : From memory access \"buf1_R_1_address0\" = 0x%0h @ \"%0t\"", DEP_address_74_from[DEP_i_74][7:0], DEP_time_74_from[DEP_i_74]);
                        $display("//                : To memory access \"buf1_R_1_address1\" = DEP_address_74_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_74_to[0][7:0], DEP_time_74_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_633"(W:SV39-39) -> "ap_enable_operation_615"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252
                    end
                end
                DEP_address_74_from[DEP_i_74] = {1'b0, 8'b0};
                DEP_time_74_from[DEP_i_74] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_635"(W:SV39-39) -> "ap_enable_operation_617"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252
reg [8:0] DEP_address_75_to [1 - 1:0];
time DEP_time_75_to [1 - 1:0];
reg [8:0] DEP_address_75_from [1 - 1:0];
time DEP_time_75_from [1 - 1:0];
reg DEP_error_75 = 0;
integer DEP_i_75;

initial begin
    DEP_address_75_to[0] = 0;
    DEP_time_75_to[0] = 0;
    DEP_address_75_from[0] = 0;
    DEP_time_75_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_operation_617) begin
                DEP_address_75_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.buf1_I_1_address1};
                DEP_time_75_to[0] = $time;
            end else begin
                DEP_address_75_to[0] = {1'b0, 8'b0};
                DEP_time_75_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter38) begin
            DEP_address_75_to[0] = {1'b0, 8'b0};
            DEP_time_75_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_operation_635) begin
                if (DEP_address_75_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_75_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_75_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.buf1_I_1_address0};
                DEP_time_75_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_operation_635) begin
                DEP_i_75 = 0;
                if (DEP_address_75_to[0][8]) begin
                    DEP_error_75 = (DEP_address_75_to[0][7:0] == DEP_address_75_from[DEP_i_75][7:0]);
                    if (DEP_error_75) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252\"");
                        $display("//                : From memory access \"buf1_I_1_address0\" = 0x%0h @ \"%0t\"", DEP_address_75_from[DEP_i_75][7:0], DEP_time_75_from[DEP_i_75]);
                        $display("//                : To memory access \"buf1_I_1_address1\" = DEP_address_75_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_75_to[0][7:0], DEP_time_75_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_635"(W:SV39-39) -> "ap_enable_operation_617"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252
                    end
                end
                DEP_address_75_from[DEP_i_75] = {1'b0, 8'b0};
                DEP_time_75_from[DEP_i_75] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_637"(W:SV39-39) -> "ap_enable_operation_619"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252
reg [8:0] DEP_address_76_to [1 - 1:0];
time DEP_time_76_to [1 - 1:0];
reg [8:0] DEP_address_76_from [1 - 1:0];
time DEP_time_76_from [1 - 1:0];
reg DEP_error_76 = 0;
integer DEP_i_76;

initial begin
    DEP_address_76_to[0] = 0;
    DEP_time_76_to[0] = 0;
    DEP_address_76_from[0] = 0;
    DEP_time_76_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_operation_619) begin
                DEP_address_76_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.buf1_R_2_address1};
                DEP_time_76_to[0] = $time;
            end else begin
                DEP_address_76_to[0] = {1'b0, 8'b0};
                DEP_time_76_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter38) begin
            DEP_address_76_to[0] = {1'b0, 8'b0};
            DEP_time_76_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_operation_637) begin
                if (DEP_address_76_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_76_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_76_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.buf1_R_2_address0};
                DEP_time_76_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_operation_637) begin
                DEP_i_76 = 0;
                if (DEP_address_76_to[0][8]) begin
                    DEP_error_76 = (DEP_address_76_to[0][7:0] == DEP_address_76_from[DEP_i_76][7:0]);
                    if (DEP_error_76) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252\"");
                        $display("//                : From memory access \"buf1_R_2_address0\" = 0x%0h @ \"%0t\"", DEP_address_76_from[DEP_i_76][7:0], DEP_time_76_from[DEP_i_76]);
                        $display("//                : To memory access \"buf1_R_2_address1\" = DEP_address_76_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_76_to[0][7:0], DEP_time_76_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_637"(W:SV39-39) -> "ap_enable_operation_619"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252
                    end
                end
                DEP_address_76_from[DEP_i_76] = {1'b0, 8'b0};
                DEP_time_76_from[DEP_i_76] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_639"(W:SV39-39) -> "ap_enable_operation_621"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252
reg [8:0] DEP_address_77_to [1 - 1:0];
time DEP_time_77_to [1 - 1:0];
reg [8:0] DEP_address_77_from [1 - 1:0];
time DEP_time_77_from [1 - 1:0];
reg DEP_error_77 = 0;
integer DEP_i_77;

initial begin
    DEP_address_77_to[0] = 0;
    DEP_time_77_to[0] = 0;
    DEP_address_77_from[0] = 0;
    DEP_time_77_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_operation_621) begin
                DEP_address_77_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.buf1_I_2_address1};
                DEP_time_77_to[0] = $time;
            end else begin
                DEP_address_77_to[0] = {1'b0, 8'b0};
                DEP_time_77_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter38) begin
            DEP_address_77_to[0] = {1'b0, 8'b0};
            DEP_time_77_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_operation_639) begin
                if (DEP_address_77_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_77_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_77_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.buf1_I_2_address0};
                DEP_time_77_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_operation_639) begin
                DEP_i_77 = 0;
                if (DEP_address_77_to[0][8]) begin
                    DEP_error_77 = (DEP_address_77_to[0][7:0] == DEP_address_77_from[DEP_i_77][7:0]);
                    if (DEP_error_77) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252\"");
                        $display("//                : From memory access \"buf1_I_2_address0\" = 0x%0h @ \"%0t\"", DEP_address_77_from[DEP_i_77][7:0], DEP_time_77_from[DEP_i_77]);
                        $display("//                : To memory access \"buf1_I_2_address1\" = DEP_address_77_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_77_to[0][7:0], DEP_time_77_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_639"(W:SV39-39) -> "ap_enable_operation_621"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252
                    end
                end
                DEP_address_77_from[DEP_i_77] = {1'b0, 8'b0};
                DEP_time_77_from[DEP_i_77] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_641"(W:SV39-39) -> "ap_enable_operation_623"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252
reg [8:0] DEP_address_78_to [1 - 1:0];
time DEP_time_78_to [1 - 1:0];
reg [8:0] DEP_address_78_from [1 - 1:0];
time DEP_time_78_from [1 - 1:0];
reg DEP_error_78 = 0;
integer DEP_i_78;

initial begin
    DEP_address_78_to[0] = 0;
    DEP_time_78_to[0] = 0;
    DEP_address_78_from[0] = 0;
    DEP_time_78_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_operation_623) begin
                DEP_address_78_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.buf1_R_3_address1};
                DEP_time_78_to[0] = $time;
            end else begin
                DEP_address_78_to[0] = {1'b0, 8'b0};
                DEP_time_78_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter38) begin
            DEP_address_78_to[0] = {1'b0, 8'b0};
            DEP_time_78_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_operation_641) begin
                if (DEP_address_78_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_78_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_78_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.buf1_R_3_address0};
                DEP_time_78_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_operation_641) begin
                DEP_i_78 = 0;
                if (DEP_address_78_to[0][8]) begin
                    DEP_error_78 = (DEP_address_78_to[0][7:0] == DEP_address_78_from[DEP_i_78][7:0]);
                    if (DEP_error_78) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252\"");
                        $display("//                : From memory access \"buf1_R_3_address0\" = 0x%0h @ \"%0t\"", DEP_address_78_from[DEP_i_78][7:0], DEP_time_78_from[DEP_i_78]);
                        $display("//                : To memory access \"buf1_R_3_address1\" = DEP_address_78_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_78_to[0][7:0], DEP_time_78_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_641"(W:SV39-39) -> "ap_enable_operation_623"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252
                    end
                end
                DEP_address_78_from[DEP_i_78] = {1'b0, 8'b0};
                DEP_time_78_from[DEP_i_78] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_643"(W:SV39-39) -> "ap_enable_operation_625"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252
reg [8:0] DEP_address_79_to [1 - 1:0];
time DEP_time_79_to [1 - 1:0];
reg [8:0] DEP_address_79_from [1 - 1:0];
time DEP_time_79_from [1 - 1:0];
reg DEP_error_79 = 0;
integer DEP_i_79;

initial begin
    DEP_address_79_to[0] = 0;
    DEP_time_79_to[0] = 0;
    DEP_address_79_from[0] = 0;
    DEP_time_79_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_operation_625) begin
                DEP_address_79_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.buf1_I_3_address1};
                DEP_time_79_to[0] = $time;
            end else begin
                DEP_address_79_to[0] = {1'b0, 8'b0};
                DEP_time_79_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter38) begin
            DEP_address_79_to[0] = {1'b0, 8'b0};
            DEP_time_79_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_operation_643) begin
                if (DEP_address_79_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_79_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_79_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.buf1_I_3_address0};
                DEP_time_79_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252.ap_enable_operation_643) begin
                DEP_i_79 = 0;
                if (DEP_address_79_to[0][8]) begin
                    DEP_error_79 = (DEP_address_79_to[0][7:0] == DEP_address_79_from[DEP_i_79][7:0]);
                    if (DEP_error_79) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252\"");
                        $display("//                : From memory access \"buf1_I_3_address0\" = 0x%0h @ \"%0t\"", DEP_address_79_from[DEP_i_79][7:0], DEP_time_79_from[DEP_i_79]);
                        $display("//                : To memory access \"buf1_I_3_address1\" = DEP_address_79_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_79_to[0][7:0], DEP_time_79_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_643"(W:SV39-39) -> "ap_enable_operation_625"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop4_fu_252
                    end
                end
                DEP_address_79_from[DEP_i_79] = {1'b0, 8'b0};
                DEP_time_79_from[DEP_i_79] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_611"(W:SV38-38) -> "ap_enable_operation_629"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276

// Dependence Check (WAW) "ap_enable_operation_613"(W:SV38-38) -> "ap_enable_operation_631"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276

// Dependence Check (WAW) "ap_enable_operation_615"(W:SV38-38) -> "ap_enable_operation_633"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276

// Dependence Check (WAW) "ap_enable_operation_617"(W:SV38-38) -> "ap_enable_operation_635"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276

// Dependence Check (WAW) "ap_enable_operation_619"(W:SV38-38) -> "ap_enable_operation_637"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276

// Dependence Check (WAW) "ap_enable_operation_621"(W:SV38-38) -> "ap_enable_operation_639"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276

// Dependence Check (WAW) "ap_enable_operation_623"(W:SV38-38) -> "ap_enable_operation_641"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276

// Dependence Check (WAW) "ap_enable_operation_625"(W:SV38-38) -> "ap_enable_operation_643"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276

// Dependence Check (WAW) "ap_enable_operation_629"(W:SV39-39) -> "ap_enable_operation_611"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276
reg [8:0] DEP_address_88_to [1 - 1:0];
time DEP_time_88_to [1 - 1:0];
reg [8:0] DEP_address_88_from [1 - 1:0];
time DEP_time_88_from [1 - 1:0];
reg DEP_error_88 = 0;
integer DEP_i_88;

initial begin
    DEP_address_88_to[0] = 0;
    DEP_time_88_to[0] = 0;
    DEP_address_88_from[0] = 0;
    DEP_time_88_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_operation_611) begin
                DEP_address_88_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.buf0_R_address1};
                DEP_time_88_to[0] = $time;
            end else begin
                DEP_address_88_to[0] = {1'b0, 8'b0};
                DEP_time_88_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter38) begin
            DEP_address_88_to[0] = {1'b0, 8'b0};
            DEP_time_88_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_operation_629) begin
                if (DEP_address_88_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_88_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_88_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.buf0_R_address0};
                DEP_time_88_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_operation_629) begin
                DEP_i_88 = 0;
                if (DEP_address_88_to[0][8]) begin
                    DEP_error_88 = (DEP_address_88_to[0][7:0] == DEP_address_88_from[DEP_i_88][7:0]);
                    if (DEP_error_88) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276\"");
                        $display("//                : From memory access \"buf0_R_address0\" = 0x%0h @ \"%0t\"", DEP_address_88_from[DEP_i_88][7:0], DEP_time_88_from[DEP_i_88]);
                        $display("//                : To memory access \"buf0_R_address1\" = DEP_address_88_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_88_to[0][7:0], DEP_time_88_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_629"(W:SV39-39) -> "ap_enable_operation_611"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276
                    end
                end
                DEP_address_88_from[DEP_i_88] = {1'b0, 8'b0};
                DEP_time_88_from[DEP_i_88] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_631"(W:SV39-39) -> "ap_enable_operation_613"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276
reg [8:0] DEP_address_89_to [1 - 1:0];
time DEP_time_89_to [1 - 1:0];
reg [8:0] DEP_address_89_from [1 - 1:0];
time DEP_time_89_from [1 - 1:0];
reg DEP_error_89 = 0;
integer DEP_i_89;

initial begin
    DEP_address_89_to[0] = 0;
    DEP_time_89_to[0] = 0;
    DEP_address_89_from[0] = 0;
    DEP_time_89_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_operation_613) begin
                DEP_address_89_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.buf0_I_address1};
                DEP_time_89_to[0] = $time;
            end else begin
                DEP_address_89_to[0] = {1'b0, 8'b0};
                DEP_time_89_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter38) begin
            DEP_address_89_to[0] = {1'b0, 8'b0};
            DEP_time_89_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_operation_631) begin
                if (DEP_address_89_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_89_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_89_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.buf0_I_address0};
                DEP_time_89_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_operation_631) begin
                DEP_i_89 = 0;
                if (DEP_address_89_to[0][8]) begin
                    DEP_error_89 = (DEP_address_89_to[0][7:0] == DEP_address_89_from[DEP_i_89][7:0]);
                    if (DEP_error_89) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276\"");
                        $display("//                : From memory access \"buf0_I_address0\" = 0x%0h @ \"%0t\"", DEP_address_89_from[DEP_i_89][7:0], DEP_time_89_from[DEP_i_89]);
                        $display("//                : To memory access \"buf0_I_address1\" = DEP_address_89_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_89_to[0][7:0], DEP_time_89_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_631"(W:SV39-39) -> "ap_enable_operation_613"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276
                    end
                end
                DEP_address_89_from[DEP_i_89] = {1'b0, 8'b0};
                DEP_time_89_from[DEP_i_89] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_633"(W:SV39-39) -> "ap_enable_operation_615"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276
reg [8:0] DEP_address_90_to [1 - 1:0];
time DEP_time_90_to [1 - 1:0];
reg [8:0] DEP_address_90_from [1 - 1:0];
time DEP_time_90_from [1 - 1:0];
reg DEP_error_90 = 0;
integer DEP_i_90;

initial begin
    DEP_address_90_to[0] = 0;
    DEP_time_90_to[0] = 0;
    DEP_address_90_from[0] = 0;
    DEP_time_90_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_operation_615) begin
                DEP_address_90_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.buf0_R_1_address1};
                DEP_time_90_to[0] = $time;
            end else begin
                DEP_address_90_to[0] = {1'b0, 8'b0};
                DEP_time_90_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter38) begin
            DEP_address_90_to[0] = {1'b0, 8'b0};
            DEP_time_90_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_operation_633) begin
                if (DEP_address_90_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_90_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_90_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.buf0_R_1_address0};
                DEP_time_90_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_operation_633) begin
                DEP_i_90 = 0;
                if (DEP_address_90_to[0][8]) begin
                    DEP_error_90 = (DEP_address_90_to[0][7:0] == DEP_address_90_from[DEP_i_90][7:0]);
                    if (DEP_error_90) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276\"");
                        $display("//                : From memory access \"buf0_R_1_address0\" = 0x%0h @ \"%0t\"", DEP_address_90_from[DEP_i_90][7:0], DEP_time_90_from[DEP_i_90]);
                        $display("//                : To memory access \"buf0_R_1_address1\" = DEP_address_90_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_90_to[0][7:0], DEP_time_90_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_633"(W:SV39-39) -> "ap_enable_operation_615"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276
                    end
                end
                DEP_address_90_from[DEP_i_90] = {1'b0, 8'b0};
                DEP_time_90_from[DEP_i_90] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_635"(W:SV39-39) -> "ap_enable_operation_617"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276
reg [8:0] DEP_address_91_to [1 - 1:0];
time DEP_time_91_to [1 - 1:0];
reg [8:0] DEP_address_91_from [1 - 1:0];
time DEP_time_91_from [1 - 1:0];
reg DEP_error_91 = 0;
integer DEP_i_91;

initial begin
    DEP_address_91_to[0] = 0;
    DEP_time_91_to[0] = 0;
    DEP_address_91_from[0] = 0;
    DEP_time_91_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_operation_617) begin
                DEP_address_91_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.buf0_I_1_address1};
                DEP_time_91_to[0] = $time;
            end else begin
                DEP_address_91_to[0] = {1'b0, 8'b0};
                DEP_time_91_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter38) begin
            DEP_address_91_to[0] = {1'b0, 8'b0};
            DEP_time_91_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_operation_635) begin
                if (DEP_address_91_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_91_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_91_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.buf0_I_1_address0};
                DEP_time_91_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_operation_635) begin
                DEP_i_91 = 0;
                if (DEP_address_91_to[0][8]) begin
                    DEP_error_91 = (DEP_address_91_to[0][7:0] == DEP_address_91_from[DEP_i_91][7:0]);
                    if (DEP_error_91) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276\"");
                        $display("//                : From memory access \"buf0_I_1_address0\" = 0x%0h @ \"%0t\"", DEP_address_91_from[DEP_i_91][7:0], DEP_time_91_from[DEP_i_91]);
                        $display("//                : To memory access \"buf0_I_1_address1\" = DEP_address_91_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_91_to[0][7:0], DEP_time_91_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_635"(W:SV39-39) -> "ap_enable_operation_617"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276
                    end
                end
                DEP_address_91_from[DEP_i_91] = {1'b0, 8'b0};
                DEP_time_91_from[DEP_i_91] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_637"(W:SV39-39) -> "ap_enable_operation_619"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276
reg [8:0] DEP_address_92_to [1 - 1:0];
time DEP_time_92_to [1 - 1:0];
reg [8:0] DEP_address_92_from [1 - 1:0];
time DEP_time_92_from [1 - 1:0];
reg DEP_error_92 = 0;
integer DEP_i_92;

initial begin
    DEP_address_92_to[0] = 0;
    DEP_time_92_to[0] = 0;
    DEP_address_92_from[0] = 0;
    DEP_time_92_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_operation_619) begin
                DEP_address_92_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.buf0_R_2_address1};
                DEP_time_92_to[0] = $time;
            end else begin
                DEP_address_92_to[0] = {1'b0, 8'b0};
                DEP_time_92_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter38) begin
            DEP_address_92_to[0] = {1'b0, 8'b0};
            DEP_time_92_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_operation_637) begin
                if (DEP_address_92_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_92_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_92_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.buf0_R_2_address0};
                DEP_time_92_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_operation_637) begin
                DEP_i_92 = 0;
                if (DEP_address_92_to[0][8]) begin
                    DEP_error_92 = (DEP_address_92_to[0][7:0] == DEP_address_92_from[DEP_i_92][7:0]);
                    if (DEP_error_92) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276\"");
                        $display("//                : From memory access \"buf0_R_2_address0\" = 0x%0h @ \"%0t\"", DEP_address_92_from[DEP_i_92][7:0], DEP_time_92_from[DEP_i_92]);
                        $display("//                : To memory access \"buf0_R_2_address1\" = DEP_address_92_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_92_to[0][7:0], DEP_time_92_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_637"(W:SV39-39) -> "ap_enable_operation_619"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276
                    end
                end
                DEP_address_92_from[DEP_i_92] = {1'b0, 8'b0};
                DEP_time_92_from[DEP_i_92] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_639"(W:SV39-39) -> "ap_enable_operation_621"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276
reg [8:0] DEP_address_93_to [1 - 1:0];
time DEP_time_93_to [1 - 1:0];
reg [8:0] DEP_address_93_from [1 - 1:0];
time DEP_time_93_from [1 - 1:0];
reg DEP_error_93 = 0;
integer DEP_i_93;

initial begin
    DEP_address_93_to[0] = 0;
    DEP_time_93_to[0] = 0;
    DEP_address_93_from[0] = 0;
    DEP_time_93_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_operation_621) begin
                DEP_address_93_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.buf0_I_2_address1};
                DEP_time_93_to[0] = $time;
            end else begin
                DEP_address_93_to[0] = {1'b0, 8'b0};
                DEP_time_93_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter38) begin
            DEP_address_93_to[0] = {1'b0, 8'b0};
            DEP_time_93_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_operation_639) begin
                if (DEP_address_93_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_93_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_93_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.buf0_I_2_address0};
                DEP_time_93_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_operation_639) begin
                DEP_i_93 = 0;
                if (DEP_address_93_to[0][8]) begin
                    DEP_error_93 = (DEP_address_93_to[0][7:0] == DEP_address_93_from[DEP_i_93][7:0]);
                    if (DEP_error_93) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276\"");
                        $display("//                : From memory access \"buf0_I_2_address0\" = 0x%0h @ \"%0t\"", DEP_address_93_from[DEP_i_93][7:0], DEP_time_93_from[DEP_i_93]);
                        $display("//                : To memory access \"buf0_I_2_address1\" = DEP_address_93_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_93_to[0][7:0], DEP_time_93_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_639"(W:SV39-39) -> "ap_enable_operation_621"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276
                    end
                end
                DEP_address_93_from[DEP_i_93] = {1'b0, 8'b0};
                DEP_time_93_from[DEP_i_93] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_641"(W:SV39-39) -> "ap_enable_operation_623"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276
reg [8:0] DEP_address_94_to [1 - 1:0];
time DEP_time_94_to [1 - 1:0];
reg [8:0] DEP_address_94_from [1 - 1:0];
time DEP_time_94_from [1 - 1:0];
reg DEP_error_94 = 0;
integer DEP_i_94;

initial begin
    DEP_address_94_to[0] = 0;
    DEP_time_94_to[0] = 0;
    DEP_address_94_from[0] = 0;
    DEP_time_94_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_operation_623) begin
                DEP_address_94_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.buf0_R_3_address1};
                DEP_time_94_to[0] = $time;
            end else begin
                DEP_address_94_to[0] = {1'b0, 8'b0};
                DEP_time_94_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter38) begin
            DEP_address_94_to[0] = {1'b0, 8'b0};
            DEP_time_94_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_operation_641) begin
                if (DEP_address_94_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_94_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_94_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.buf0_R_3_address0};
                DEP_time_94_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_operation_641) begin
                DEP_i_94 = 0;
                if (DEP_address_94_to[0][8]) begin
                    DEP_error_94 = (DEP_address_94_to[0][7:0] == DEP_address_94_from[DEP_i_94][7:0]);
                    if (DEP_error_94) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276\"");
                        $display("//                : From memory access \"buf0_R_3_address0\" = 0x%0h @ \"%0t\"", DEP_address_94_from[DEP_i_94][7:0], DEP_time_94_from[DEP_i_94]);
                        $display("//                : To memory access \"buf0_R_3_address1\" = DEP_address_94_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_94_to[0][7:0], DEP_time_94_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_641"(W:SV39-39) -> "ap_enable_operation_623"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276
                    end
                end
                DEP_address_94_from[DEP_i_94] = {1'b0, 8'b0};
                DEP_time_94_from[DEP_i_94] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_643"(W:SV39-39) -> "ap_enable_operation_625"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276
reg [8:0] DEP_address_95_to [1 - 1:0];
time DEP_time_95_to [1 - 1:0];
reg [8:0] DEP_address_95_from [1 - 1:0];
time DEP_time_95_from [1 - 1:0];
reg DEP_error_95 = 0;
integer DEP_i_95;

initial begin
    DEP_address_95_to[0] = 0;
    DEP_time_95_to[0] = 0;
    DEP_address_95_from[0] = 0;
    DEP_time_95_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_operation_625) begin
                DEP_address_95_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.buf0_I_3_address1};
                DEP_time_95_to[0] = $time;
            end else begin
                DEP_address_95_to[0] = {1'b0, 8'b0};
                DEP_time_95_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter38) begin
            DEP_address_95_to[0] = {1'b0, 8'b0};
            DEP_time_95_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_operation_643) begin
                if (DEP_address_95_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_95_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_95_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.buf0_I_3_address0};
                DEP_time_95_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276.ap_enable_operation_643) begin
                DEP_i_95 = 0;
                if (DEP_address_95_to[0][8]) begin
                    DEP_error_95 = (DEP_address_95_to[0][7:0] == DEP_address_95_from[DEP_i_95][7:0]);
                    if (DEP_error_95) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276\"");
                        $display("//                : From memory access \"buf0_I_3_address0\" = 0x%0h @ \"%0t\"", DEP_address_95_from[DEP_i_95][7:0], DEP_time_95_from[DEP_i_95]);
                        $display("//                : To memory access \"buf0_I_3_address1\" = DEP_address_95_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_95_to[0][7:0], DEP_time_95_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_643"(W:SV39-39) -> "ap_enable_operation_625"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop5_fu_276
                    end
                end
                DEP_address_95_from[DEP_i_95] = {1'b0, 8'b0};
                DEP_time_95_from[DEP_i_95] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_611"(W:SV38-38) -> "ap_enable_operation_629"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300

// Dependence Check (WAW) "ap_enable_operation_613"(W:SV38-38) -> "ap_enable_operation_631"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300

// Dependence Check (WAW) "ap_enable_operation_615"(W:SV38-38) -> "ap_enable_operation_633"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300

// Dependence Check (WAW) "ap_enable_operation_617"(W:SV38-38) -> "ap_enable_operation_635"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300

// Dependence Check (WAW) "ap_enable_operation_619"(W:SV38-38) -> "ap_enable_operation_637"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300

// Dependence Check (WAW) "ap_enable_operation_621"(W:SV38-38) -> "ap_enable_operation_639"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300

// Dependence Check (WAW) "ap_enable_operation_623"(W:SV38-38) -> "ap_enable_operation_641"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300

// Dependence Check (WAW) "ap_enable_operation_625"(W:SV38-38) -> "ap_enable_operation_643"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300

// Dependence Check (WAW) "ap_enable_operation_629"(W:SV39-39) -> "ap_enable_operation_611"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300
reg [8:0] DEP_address_104_to [1 - 1:0];
time DEP_time_104_to [1 - 1:0];
reg [8:0] DEP_address_104_from [1 - 1:0];
time DEP_time_104_from [1 - 1:0];
reg DEP_error_104 = 0;
integer DEP_i_104;

initial begin
    DEP_address_104_to[0] = 0;
    DEP_time_104_to[0] = 0;
    DEP_address_104_from[0] = 0;
    DEP_time_104_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_operation_611) begin
                DEP_address_104_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.buf1_R_address1};
                DEP_time_104_to[0] = $time;
            end else begin
                DEP_address_104_to[0] = {1'b0, 8'b0};
                DEP_time_104_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter38) begin
            DEP_address_104_to[0] = {1'b0, 8'b0};
            DEP_time_104_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_operation_629) begin
                if (DEP_address_104_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_104_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_104_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.buf1_R_address0};
                DEP_time_104_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_operation_629) begin
                DEP_i_104 = 0;
                if (DEP_address_104_to[0][8]) begin
                    DEP_error_104 = (DEP_address_104_to[0][7:0] == DEP_address_104_from[DEP_i_104][7:0]);
                    if (DEP_error_104) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300\"");
                        $display("//                : From memory access \"buf1_R_address0\" = 0x%0h @ \"%0t\"", DEP_address_104_from[DEP_i_104][7:0], DEP_time_104_from[DEP_i_104]);
                        $display("//                : To memory access \"buf1_R_address1\" = DEP_address_104_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_104_to[0][7:0], DEP_time_104_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_629"(W:SV39-39) -> "ap_enable_operation_611"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300
                    end
                end
                DEP_address_104_from[DEP_i_104] = {1'b0, 8'b0};
                DEP_time_104_from[DEP_i_104] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_631"(W:SV39-39) -> "ap_enable_operation_613"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300
reg [8:0] DEP_address_105_to [1 - 1:0];
time DEP_time_105_to [1 - 1:0];
reg [8:0] DEP_address_105_from [1 - 1:0];
time DEP_time_105_from [1 - 1:0];
reg DEP_error_105 = 0;
integer DEP_i_105;

initial begin
    DEP_address_105_to[0] = 0;
    DEP_time_105_to[0] = 0;
    DEP_address_105_from[0] = 0;
    DEP_time_105_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_operation_613) begin
                DEP_address_105_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.buf1_I_address1};
                DEP_time_105_to[0] = $time;
            end else begin
                DEP_address_105_to[0] = {1'b0, 8'b0};
                DEP_time_105_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter38) begin
            DEP_address_105_to[0] = {1'b0, 8'b0};
            DEP_time_105_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_operation_631) begin
                if (DEP_address_105_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_105_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_105_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.buf1_I_address0};
                DEP_time_105_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_operation_631) begin
                DEP_i_105 = 0;
                if (DEP_address_105_to[0][8]) begin
                    DEP_error_105 = (DEP_address_105_to[0][7:0] == DEP_address_105_from[DEP_i_105][7:0]);
                    if (DEP_error_105) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300\"");
                        $display("//                : From memory access \"buf1_I_address0\" = 0x%0h @ \"%0t\"", DEP_address_105_from[DEP_i_105][7:0], DEP_time_105_from[DEP_i_105]);
                        $display("//                : To memory access \"buf1_I_address1\" = DEP_address_105_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_105_to[0][7:0], DEP_time_105_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_631"(W:SV39-39) -> "ap_enable_operation_613"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300
                    end
                end
                DEP_address_105_from[DEP_i_105] = {1'b0, 8'b0};
                DEP_time_105_from[DEP_i_105] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_633"(W:SV39-39) -> "ap_enable_operation_615"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300
reg [8:0] DEP_address_106_to [1 - 1:0];
time DEP_time_106_to [1 - 1:0];
reg [8:0] DEP_address_106_from [1 - 1:0];
time DEP_time_106_from [1 - 1:0];
reg DEP_error_106 = 0;
integer DEP_i_106;

initial begin
    DEP_address_106_to[0] = 0;
    DEP_time_106_to[0] = 0;
    DEP_address_106_from[0] = 0;
    DEP_time_106_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_operation_615) begin
                DEP_address_106_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.buf1_R_1_address1};
                DEP_time_106_to[0] = $time;
            end else begin
                DEP_address_106_to[0] = {1'b0, 8'b0};
                DEP_time_106_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter38) begin
            DEP_address_106_to[0] = {1'b0, 8'b0};
            DEP_time_106_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_operation_633) begin
                if (DEP_address_106_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_106_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_106_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.buf1_R_1_address0};
                DEP_time_106_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_operation_633) begin
                DEP_i_106 = 0;
                if (DEP_address_106_to[0][8]) begin
                    DEP_error_106 = (DEP_address_106_to[0][7:0] == DEP_address_106_from[DEP_i_106][7:0]);
                    if (DEP_error_106) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300\"");
                        $display("//                : From memory access \"buf1_R_1_address0\" = 0x%0h @ \"%0t\"", DEP_address_106_from[DEP_i_106][7:0], DEP_time_106_from[DEP_i_106]);
                        $display("//                : To memory access \"buf1_R_1_address1\" = DEP_address_106_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_106_to[0][7:0], DEP_time_106_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_633"(W:SV39-39) -> "ap_enable_operation_615"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300
                    end
                end
                DEP_address_106_from[DEP_i_106] = {1'b0, 8'b0};
                DEP_time_106_from[DEP_i_106] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_635"(W:SV39-39) -> "ap_enable_operation_617"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300
reg [8:0] DEP_address_107_to [1 - 1:0];
time DEP_time_107_to [1 - 1:0];
reg [8:0] DEP_address_107_from [1 - 1:0];
time DEP_time_107_from [1 - 1:0];
reg DEP_error_107 = 0;
integer DEP_i_107;

initial begin
    DEP_address_107_to[0] = 0;
    DEP_time_107_to[0] = 0;
    DEP_address_107_from[0] = 0;
    DEP_time_107_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_operation_617) begin
                DEP_address_107_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.buf1_I_1_address1};
                DEP_time_107_to[0] = $time;
            end else begin
                DEP_address_107_to[0] = {1'b0, 8'b0};
                DEP_time_107_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter38) begin
            DEP_address_107_to[0] = {1'b0, 8'b0};
            DEP_time_107_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_operation_635) begin
                if (DEP_address_107_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_107_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_107_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.buf1_I_1_address0};
                DEP_time_107_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_operation_635) begin
                DEP_i_107 = 0;
                if (DEP_address_107_to[0][8]) begin
                    DEP_error_107 = (DEP_address_107_to[0][7:0] == DEP_address_107_from[DEP_i_107][7:0]);
                    if (DEP_error_107) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300\"");
                        $display("//                : From memory access \"buf1_I_1_address0\" = 0x%0h @ \"%0t\"", DEP_address_107_from[DEP_i_107][7:0], DEP_time_107_from[DEP_i_107]);
                        $display("//                : To memory access \"buf1_I_1_address1\" = DEP_address_107_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_107_to[0][7:0], DEP_time_107_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_635"(W:SV39-39) -> "ap_enable_operation_617"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300
                    end
                end
                DEP_address_107_from[DEP_i_107] = {1'b0, 8'b0};
                DEP_time_107_from[DEP_i_107] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_637"(W:SV39-39) -> "ap_enable_operation_619"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300
reg [8:0] DEP_address_108_to [1 - 1:0];
time DEP_time_108_to [1 - 1:0];
reg [8:0] DEP_address_108_from [1 - 1:0];
time DEP_time_108_from [1 - 1:0];
reg DEP_error_108 = 0;
integer DEP_i_108;

initial begin
    DEP_address_108_to[0] = 0;
    DEP_time_108_to[0] = 0;
    DEP_address_108_from[0] = 0;
    DEP_time_108_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_operation_619) begin
                DEP_address_108_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.buf1_R_2_address1};
                DEP_time_108_to[0] = $time;
            end else begin
                DEP_address_108_to[0] = {1'b0, 8'b0};
                DEP_time_108_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter38) begin
            DEP_address_108_to[0] = {1'b0, 8'b0};
            DEP_time_108_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_operation_637) begin
                if (DEP_address_108_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_108_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_108_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.buf1_R_2_address0};
                DEP_time_108_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_operation_637) begin
                DEP_i_108 = 0;
                if (DEP_address_108_to[0][8]) begin
                    DEP_error_108 = (DEP_address_108_to[0][7:0] == DEP_address_108_from[DEP_i_108][7:0]);
                    if (DEP_error_108) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300\"");
                        $display("//                : From memory access \"buf1_R_2_address0\" = 0x%0h @ \"%0t\"", DEP_address_108_from[DEP_i_108][7:0], DEP_time_108_from[DEP_i_108]);
                        $display("//                : To memory access \"buf1_R_2_address1\" = DEP_address_108_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_108_to[0][7:0], DEP_time_108_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_637"(W:SV39-39) -> "ap_enable_operation_619"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300
                    end
                end
                DEP_address_108_from[DEP_i_108] = {1'b0, 8'b0};
                DEP_time_108_from[DEP_i_108] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_639"(W:SV39-39) -> "ap_enable_operation_621"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300
reg [8:0] DEP_address_109_to [1 - 1:0];
time DEP_time_109_to [1 - 1:0];
reg [8:0] DEP_address_109_from [1 - 1:0];
time DEP_time_109_from [1 - 1:0];
reg DEP_error_109 = 0;
integer DEP_i_109;

initial begin
    DEP_address_109_to[0] = 0;
    DEP_time_109_to[0] = 0;
    DEP_address_109_from[0] = 0;
    DEP_time_109_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_operation_621) begin
                DEP_address_109_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.buf1_I_2_address1};
                DEP_time_109_to[0] = $time;
            end else begin
                DEP_address_109_to[0] = {1'b0, 8'b0};
                DEP_time_109_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter38) begin
            DEP_address_109_to[0] = {1'b0, 8'b0};
            DEP_time_109_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_operation_639) begin
                if (DEP_address_109_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_109_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_109_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.buf1_I_2_address0};
                DEP_time_109_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_operation_639) begin
                DEP_i_109 = 0;
                if (DEP_address_109_to[0][8]) begin
                    DEP_error_109 = (DEP_address_109_to[0][7:0] == DEP_address_109_from[DEP_i_109][7:0]);
                    if (DEP_error_109) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300\"");
                        $display("//                : From memory access \"buf1_I_2_address0\" = 0x%0h @ \"%0t\"", DEP_address_109_from[DEP_i_109][7:0], DEP_time_109_from[DEP_i_109]);
                        $display("//                : To memory access \"buf1_I_2_address1\" = DEP_address_109_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_109_to[0][7:0], DEP_time_109_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_639"(W:SV39-39) -> "ap_enable_operation_621"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300
                    end
                end
                DEP_address_109_from[DEP_i_109] = {1'b0, 8'b0};
                DEP_time_109_from[DEP_i_109] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_641"(W:SV39-39) -> "ap_enable_operation_623"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300
reg [8:0] DEP_address_110_to [1 - 1:0];
time DEP_time_110_to [1 - 1:0];
reg [8:0] DEP_address_110_from [1 - 1:0];
time DEP_time_110_from [1 - 1:0];
reg DEP_error_110 = 0;
integer DEP_i_110;

initial begin
    DEP_address_110_to[0] = 0;
    DEP_time_110_to[0] = 0;
    DEP_address_110_from[0] = 0;
    DEP_time_110_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_operation_623) begin
                DEP_address_110_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.buf1_R_3_address1};
                DEP_time_110_to[0] = $time;
            end else begin
                DEP_address_110_to[0] = {1'b0, 8'b0};
                DEP_time_110_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter38) begin
            DEP_address_110_to[0] = {1'b0, 8'b0};
            DEP_time_110_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_operation_641) begin
                if (DEP_address_110_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_110_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_110_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.buf1_R_3_address0};
                DEP_time_110_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_operation_641) begin
                DEP_i_110 = 0;
                if (DEP_address_110_to[0][8]) begin
                    DEP_error_110 = (DEP_address_110_to[0][7:0] == DEP_address_110_from[DEP_i_110][7:0]);
                    if (DEP_error_110) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300\"");
                        $display("//                : From memory access \"buf1_R_3_address0\" = 0x%0h @ \"%0t\"", DEP_address_110_from[DEP_i_110][7:0], DEP_time_110_from[DEP_i_110]);
                        $display("//                : To memory access \"buf1_R_3_address1\" = DEP_address_110_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_110_to[0][7:0], DEP_time_110_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_641"(W:SV39-39) -> "ap_enable_operation_623"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300
                    end
                end
                DEP_address_110_from[DEP_i_110] = {1'b0, 8'b0};
                DEP_time_110_from[DEP_i_110] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_643"(W:SV39-39) -> "ap_enable_operation_625"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300
reg [8:0] DEP_address_111_to [1 - 1:0];
time DEP_time_111_to [1 - 1:0];
reg [8:0] DEP_address_111_from [1 - 1:0];
time DEP_time_111_from [1 - 1:0];
reg DEP_error_111 = 0;
integer DEP_i_111;

initial begin
    DEP_address_111_to[0] = 0;
    DEP_time_111_to[0] = 0;
    DEP_address_111_from[0] = 0;
    DEP_time_111_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_operation_625) begin
                DEP_address_111_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.buf1_I_3_address1};
                DEP_time_111_to[0] = $time;
            end else begin
                DEP_address_111_to[0] = {1'b0, 8'b0};
                DEP_time_111_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter38) begin
            DEP_address_111_to[0] = {1'b0, 8'b0};
            DEP_time_111_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_operation_643) begin
                if (DEP_address_111_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_111_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_111_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.buf1_I_3_address0};
                DEP_time_111_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300.ap_enable_operation_643) begin
                DEP_i_111 = 0;
                if (DEP_address_111_to[0][8]) begin
                    DEP_error_111 = (DEP_address_111_to[0][7:0] == DEP_address_111_from[DEP_i_111][7:0]);
                    if (DEP_error_111) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300\"");
                        $display("//                : From memory access \"buf1_I_3_address0\" = 0x%0h @ \"%0t\"", DEP_address_111_from[DEP_i_111][7:0], DEP_time_111_from[DEP_i_111]);
                        $display("//                : To memory access \"buf1_I_3_address1\" = DEP_address_111_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_111_to[0][7:0], DEP_time_111_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_643"(W:SV39-39) -> "ap_enable_operation_625"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop6_fu_300
                    end
                end
                DEP_address_111_from[DEP_i_111] = {1'b0, 8'b0};
                DEP_time_111_from[DEP_i_111] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_611"(W:SV38-38) -> "ap_enable_operation_629"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324

// Dependence Check (WAW) "ap_enable_operation_613"(W:SV38-38) -> "ap_enable_operation_631"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324

// Dependence Check (WAW) "ap_enable_operation_615"(W:SV38-38) -> "ap_enable_operation_633"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324

// Dependence Check (WAW) "ap_enable_operation_617"(W:SV38-38) -> "ap_enable_operation_635"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324

// Dependence Check (WAW) "ap_enable_operation_619"(W:SV38-38) -> "ap_enable_operation_637"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324

// Dependence Check (WAW) "ap_enable_operation_621"(W:SV38-38) -> "ap_enable_operation_639"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324

// Dependence Check (WAW) "ap_enable_operation_623"(W:SV38-38) -> "ap_enable_operation_641"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324

// Dependence Check (WAW) "ap_enable_operation_625"(W:SV38-38) -> "ap_enable_operation_643"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324

// Dependence Check (WAW) "ap_enable_operation_629"(W:SV39-39) -> "ap_enable_operation_611"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324
reg [8:0] DEP_address_120_to [1 - 1:0];
time DEP_time_120_to [1 - 1:0];
reg [8:0] DEP_address_120_from [1 - 1:0];
time DEP_time_120_from [1 - 1:0];
reg DEP_error_120 = 0;
integer DEP_i_120;

initial begin
    DEP_address_120_to[0] = 0;
    DEP_time_120_to[0] = 0;
    DEP_address_120_from[0] = 0;
    DEP_time_120_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_operation_611) begin
                DEP_address_120_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.buf0_R_address1};
                DEP_time_120_to[0] = $time;
            end else begin
                DEP_address_120_to[0] = {1'b0, 8'b0};
                DEP_time_120_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter38) begin
            DEP_address_120_to[0] = {1'b0, 8'b0};
            DEP_time_120_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_operation_629) begin
                if (DEP_address_120_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_120_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_120_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.buf0_R_address0};
                DEP_time_120_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_operation_629) begin
                DEP_i_120 = 0;
                if (DEP_address_120_to[0][8]) begin
                    DEP_error_120 = (DEP_address_120_to[0][7:0] == DEP_address_120_from[DEP_i_120][7:0]);
                    if (DEP_error_120) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324\"");
                        $display("//                : From memory access \"buf0_R_address0\" = 0x%0h @ \"%0t\"", DEP_address_120_from[DEP_i_120][7:0], DEP_time_120_from[DEP_i_120]);
                        $display("//                : To memory access \"buf0_R_address1\" = DEP_address_120_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_120_to[0][7:0], DEP_time_120_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_629"(W:SV39-39) -> "ap_enable_operation_611"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324
                    end
                end
                DEP_address_120_from[DEP_i_120] = {1'b0, 8'b0};
                DEP_time_120_from[DEP_i_120] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_631"(W:SV39-39) -> "ap_enable_operation_613"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324
reg [8:0] DEP_address_121_to [1 - 1:0];
time DEP_time_121_to [1 - 1:0];
reg [8:0] DEP_address_121_from [1 - 1:0];
time DEP_time_121_from [1 - 1:0];
reg DEP_error_121 = 0;
integer DEP_i_121;

initial begin
    DEP_address_121_to[0] = 0;
    DEP_time_121_to[0] = 0;
    DEP_address_121_from[0] = 0;
    DEP_time_121_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_operation_613) begin
                DEP_address_121_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.buf0_I_address1};
                DEP_time_121_to[0] = $time;
            end else begin
                DEP_address_121_to[0] = {1'b0, 8'b0};
                DEP_time_121_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter38) begin
            DEP_address_121_to[0] = {1'b0, 8'b0};
            DEP_time_121_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_operation_631) begin
                if (DEP_address_121_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_121_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_121_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.buf0_I_address0};
                DEP_time_121_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_operation_631) begin
                DEP_i_121 = 0;
                if (DEP_address_121_to[0][8]) begin
                    DEP_error_121 = (DEP_address_121_to[0][7:0] == DEP_address_121_from[DEP_i_121][7:0]);
                    if (DEP_error_121) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324\"");
                        $display("//                : From memory access \"buf0_I_address0\" = 0x%0h @ \"%0t\"", DEP_address_121_from[DEP_i_121][7:0], DEP_time_121_from[DEP_i_121]);
                        $display("//                : To memory access \"buf0_I_address1\" = DEP_address_121_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_121_to[0][7:0], DEP_time_121_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_631"(W:SV39-39) -> "ap_enable_operation_613"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324
                    end
                end
                DEP_address_121_from[DEP_i_121] = {1'b0, 8'b0};
                DEP_time_121_from[DEP_i_121] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_633"(W:SV39-39) -> "ap_enable_operation_615"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324
reg [8:0] DEP_address_122_to [1 - 1:0];
time DEP_time_122_to [1 - 1:0];
reg [8:0] DEP_address_122_from [1 - 1:0];
time DEP_time_122_from [1 - 1:0];
reg DEP_error_122 = 0;
integer DEP_i_122;

initial begin
    DEP_address_122_to[0] = 0;
    DEP_time_122_to[0] = 0;
    DEP_address_122_from[0] = 0;
    DEP_time_122_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_operation_615) begin
                DEP_address_122_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.buf0_R_1_address1};
                DEP_time_122_to[0] = $time;
            end else begin
                DEP_address_122_to[0] = {1'b0, 8'b0};
                DEP_time_122_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter38) begin
            DEP_address_122_to[0] = {1'b0, 8'b0};
            DEP_time_122_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_operation_633) begin
                if (DEP_address_122_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_122_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_122_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.buf0_R_1_address0};
                DEP_time_122_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_operation_633) begin
                DEP_i_122 = 0;
                if (DEP_address_122_to[0][8]) begin
                    DEP_error_122 = (DEP_address_122_to[0][7:0] == DEP_address_122_from[DEP_i_122][7:0]);
                    if (DEP_error_122) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324\"");
                        $display("//                : From memory access \"buf0_R_1_address0\" = 0x%0h @ \"%0t\"", DEP_address_122_from[DEP_i_122][7:0], DEP_time_122_from[DEP_i_122]);
                        $display("//                : To memory access \"buf0_R_1_address1\" = DEP_address_122_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_122_to[0][7:0], DEP_time_122_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_633"(W:SV39-39) -> "ap_enable_operation_615"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324
                    end
                end
                DEP_address_122_from[DEP_i_122] = {1'b0, 8'b0};
                DEP_time_122_from[DEP_i_122] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_635"(W:SV39-39) -> "ap_enable_operation_617"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324
reg [8:0] DEP_address_123_to [1 - 1:0];
time DEP_time_123_to [1 - 1:0];
reg [8:0] DEP_address_123_from [1 - 1:0];
time DEP_time_123_from [1 - 1:0];
reg DEP_error_123 = 0;
integer DEP_i_123;

initial begin
    DEP_address_123_to[0] = 0;
    DEP_time_123_to[0] = 0;
    DEP_address_123_from[0] = 0;
    DEP_time_123_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_operation_617) begin
                DEP_address_123_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.buf0_I_1_address1};
                DEP_time_123_to[0] = $time;
            end else begin
                DEP_address_123_to[0] = {1'b0, 8'b0};
                DEP_time_123_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter38) begin
            DEP_address_123_to[0] = {1'b0, 8'b0};
            DEP_time_123_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_operation_635) begin
                if (DEP_address_123_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_123_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_123_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.buf0_I_1_address0};
                DEP_time_123_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_operation_635) begin
                DEP_i_123 = 0;
                if (DEP_address_123_to[0][8]) begin
                    DEP_error_123 = (DEP_address_123_to[0][7:0] == DEP_address_123_from[DEP_i_123][7:0]);
                    if (DEP_error_123) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324\"");
                        $display("//                : From memory access \"buf0_I_1_address0\" = 0x%0h @ \"%0t\"", DEP_address_123_from[DEP_i_123][7:0], DEP_time_123_from[DEP_i_123]);
                        $display("//                : To memory access \"buf0_I_1_address1\" = DEP_address_123_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_123_to[0][7:0], DEP_time_123_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_635"(W:SV39-39) -> "ap_enable_operation_617"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324
                    end
                end
                DEP_address_123_from[DEP_i_123] = {1'b0, 8'b0};
                DEP_time_123_from[DEP_i_123] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_637"(W:SV39-39) -> "ap_enable_operation_619"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324
reg [8:0] DEP_address_124_to [1 - 1:0];
time DEP_time_124_to [1 - 1:0];
reg [8:0] DEP_address_124_from [1 - 1:0];
time DEP_time_124_from [1 - 1:0];
reg DEP_error_124 = 0;
integer DEP_i_124;

initial begin
    DEP_address_124_to[0] = 0;
    DEP_time_124_to[0] = 0;
    DEP_address_124_from[0] = 0;
    DEP_time_124_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_operation_619) begin
                DEP_address_124_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.buf0_R_2_address1};
                DEP_time_124_to[0] = $time;
            end else begin
                DEP_address_124_to[0] = {1'b0, 8'b0};
                DEP_time_124_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter38) begin
            DEP_address_124_to[0] = {1'b0, 8'b0};
            DEP_time_124_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_operation_637) begin
                if (DEP_address_124_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_124_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_124_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.buf0_R_2_address0};
                DEP_time_124_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_operation_637) begin
                DEP_i_124 = 0;
                if (DEP_address_124_to[0][8]) begin
                    DEP_error_124 = (DEP_address_124_to[0][7:0] == DEP_address_124_from[DEP_i_124][7:0]);
                    if (DEP_error_124) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324\"");
                        $display("//                : From memory access \"buf0_R_2_address0\" = 0x%0h @ \"%0t\"", DEP_address_124_from[DEP_i_124][7:0], DEP_time_124_from[DEP_i_124]);
                        $display("//                : To memory access \"buf0_R_2_address1\" = DEP_address_124_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_124_to[0][7:0], DEP_time_124_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_637"(W:SV39-39) -> "ap_enable_operation_619"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324
                    end
                end
                DEP_address_124_from[DEP_i_124] = {1'b0, 8'b0};
                DEP_time_124_from[DEP_i_124] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_639"(W:SV39-39) -> "ap_enable_operation_621"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324
reg [8:0] DEP_address_125_to [1 - 1:0];
time DEP_time_125_to [1 - 1:0];
reg [8:0] DEP_address_125_from [1 - 1:0];
time DEP_time_125_from [1 - 1:0];
reg DEP_error_125 = 0;
integer DEP_i_125;

initial begin
    DEP_address_125_to[0] = 0;
    DEP_time_125_to[0] = 0;
    DEP_address_125_from[0] = 0;
    DEP_time_125_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_operation_621) begin
                DEP_address_125_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.buf0_I_2_address1};
                DEP_time_125_to[0] = $time;
            end else begin
                DEP_address_125_to[0] = {1'b0, 8'b0};
                DEP_time_125_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter38) begin
            DEP_address_125_to[0] = {1'b0, 8'b0};
            DEP_time_125_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_operation_639) begin
                if (DEP_address_125_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_125_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_125_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.buf0_I_2_address0};
                DEP_time_125_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_operation_639) begin
                DEP_i_125 = 0;
                if (DEP_address_125_to[0][8]) begin
                    DEP_error_125 = (DEP_address_125_to[0][7:0] == DEP_address_125_from[DEP_i_125][7:0]);
                    if (DEP_error_125) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324\"");
                        $display("//                : From memory access \"buf0_I_2_address0\" = 0x%0h @ \"%0t\"", DEP_address_125_from[DEP_i_125][7:0], DEP_time_125_from[DEP_i_125]);
                        $display("//                : To memory access \"buf0_I_2_address1\" = DEP_address_125_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_125_to[0][7:0], DEP_time_125_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_639"(W:SV39-39) -> "ap_enable_operation_621"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324
                    end
                end
                DEP_address_125_from[DEP_i_125] = {1'b0, 8'b0};
                DEP_time_125_from[DEP_i_125] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_641"(W:SV39-39) -> "ap_enable_operation_623"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324
reg [8:0] DEP_address_126_to [1 - 1:0];
time DEP_time_126_to [1 - 1:0];
reg [8:0] DEP_address_126_from [1 - 1:0];
time DEP_time_126_from [1 - 1:0];
reg DEP_error_126 = 0;
integer DEP_i_126;

initial begin
    DEP_address_126_to[0] = 0;
    DEP_time_126_to[0] = 0;
    DEP_address_126_from[0] = 0;
    DEP_time_126_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_operation_623) begin
                DEP_address_126_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.buf0_R_3_address1};
                DEP_time_126_to[0] = $time;
            end else begin
                DEP_address_126_to[0] = {1'b0, 8'b0};
                DEP_time_126_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter38) begin
            DEP_address_126_to[0] = {1'b0, 8'b0};
            DEP_time_126_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_operation_641) begin
                if (DEP_address_126_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_126_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_126_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.buf0_R_3_address0};
                DEP_time_126_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_operation_641) begin
                DEP_i_126 = 0;
                if (DEP_address_126_to[0][8]) begin
                    DEP_error_126 = (DEP_address_126_to[0][7:0] == DEP_address_126_from[DEP_i_126][7:0]);
                    if (DEP_error_126) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324\"");
                        $display("//                : From memory access \"buf0_R_3_address0\" = 0x%0h @ \"%0t\"", DEP_address_126_from[DEP_i_126][7:0], DEP_time_126_from[DEP_i_126]);
                        $display("//                : To memory access \"buf0_R_3_address1\" = DEP_address_126_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_126_to[0][7:0], DEP_time_126_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_641"(W:SV39-39) -> "ap_enable_operation_623"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324
                    end
                end
                DEP_address_126_from[DEP_i_126] = {1'b0, 8'b0};
                DEP_time_126_from[DEP_i_126] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_643"(W:SV39-39) -> "ap_enable_operation_625"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324
reg [8:0] DEP_address_127_to [1 - 1:0];
time DEP_time_127_to [1 - 1:0];
reg [8:0] DEP_address_127_from [1 - 1:0];
time DEP_time_127_from [1 - 1:0];
reg DEP_error_127 = 0;
integer DEP_i_127;

initial begin
    DEP_address_127_to[0] = 0;
    DEP_time_127_to[0] = 0;
    DEP_address_127_from[0] = 0;
    DEP_time_127_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_operation_625) begin
                DEP_address_127_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.buf0_I_3_address1};
                DEP_time_127_to[0] = $time;
            end else begin
                DEP_address_127_to[0] = {1'b0, 8'b0};
                DEP_time_127_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter38) begin
            DEP_address_127_to[0] = {1'b0, 8'b0};
            DEP_time_127_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_operation_643) begin
                if (DEP_address_127_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_127_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_127_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.buf0_I_3_address0};
                DEP_time_127_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324.ap_enable_operation_643) begin
                DEP_i_127 = 0;
                if (DEP_address_127_to[0][8]) begin
                    DEP_error_127 = (DEP_address_127_to[0][7:0] == DEP_address_127_from[DEP_i_127][7:0]);
                    if (DEP_error_127) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324\"");
                        $display("//                : From memory access \"buf0_I_3_address0\" = 0x%0h @ \"%0t\"", DEP_address_127_from[DEP_i_127][7:0], DEP_time_127_from[DEP_i_127]);
                        $display("//                : To memory access \"buf0_I_3_address1\" = DEP_address_127_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_127_to[0][7:0], DEP_time_127_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_643"(W:SV39-39) -> "ap_enable_operation_625"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop7_fu_324
                    end
                end
                DEP_address_127_from[DEP_i_127] = {1'b0, 8'b0};
                DEP_time_127_from[DEP_i_127] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_611"(W:SV38-38) -> "ap_enable_operation_629"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348

// Dependence Check (WAW) "ap_enable_operation_613"(W:SV38-38) -> "ap_enable_operation_631"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348

// Dependence Check (WAW) "ap_enable_operation_615"(W:SV38-38) -> "ap_enable_operation_633"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348

// Dependence Check (WAW) "ap_enable_operation_617"(W:SV38-38) -> "ap_enable_operation_635"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348

// Dependence Check (WAW) "ap_enable_operation_619"(W:SV38-38) -> "ap_enable_operation_637"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348

// Dependence Check (WAW) "ap_enable_operation_621"(W:SV38-38) -> "ap_enable_operation_639"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348

// Dependence Check (WAW) "ap_enable_operation_623"(W:SV38-38) -> "ap_enable_operation_641"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348

// Dependence Check (WAW) "ap_enable_operation_625"(W:SV38-38) -> "ap_enable_operation_643"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348

// Dependence Check (WAW) "ap_enable_operation_629"(W:SV39-39) -> "ap_enable_operation_611"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348
reg [8:0] DEP_address_136_to [1 - 1:0];
time DEP_time_136_to [1 - 1:0];
reg [8:0] DEP_address_136_from [1 - 1:0];
time DEP_time_136_from [1 - 1:0];
reg DEP_error_136 = 0;
integer DEP_i_136;

initial begin
    DEP_address_136_to[0] = 0;
    DEP_time_136_to[0] = 0;
    DEP_address_136_from[0] = 0;
    DEP_time_136_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_operation_611) begin
                DEP_address_136_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.buf1_R_address1};
                DEP_time_136_to[0] = $time;
            end else begin
                DEP_address_136_to[0] = {1'b0, 8'b0};
                DEP_time_136_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter38) begin
            DEP_address_136_to[0] = {1'b0, 8'b0};
            DEP_time_136_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_operation_629) begin
                if (DEP_address_136_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_136_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_136_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.buf1_R_address0};
                DEP_time_136_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_operation_629) begin
                DEP_i_136 = 0;
                if (DEP_address_136_to[0][8]) begin
                    DEP_error_136 = (DEP_address_136_to[0][7:0] == DEP_address_136_from[DEP_i_136][7:0]);
                    if (DEP_error_136) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348\"");
                        $display("//                : From memory access \"buf1_R_address0\" = 0x%0h @ \"%0t\"", DEP_address_136_from[DEP_i_136][7:0], DEP_time_136_from[DEP_i_136]);
                        $display("//                : To memory access \"buf1_R_address1\" = DEP_address_136_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_136_to[0][7:0], DEP_time_136_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_629"(W:SV39-39) -> "ap_enable_operation_611"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348
                    end
                end
                DEP_address_136_from[DEP_i_136] = {1'b0, 8'b0};
                DEP_time_136_from[DEP_i_136] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_631"(W:SV39-39) -> "ap_enable_operation_613"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348
reg [8:0] DEP_address_137_to [1 - 1:0];
time DEP_time_137_to [1 - 1:0];
reg [8:0] DEP_address_137_from [1 - 1:0];
time DEP_time_137_from [1 - 1:0];
reg DEP_error_137 = 0;
integer DEP_i_137;

initial begin
    DEP_address_137_to[0] = 0;
    DEP_time_137_to[0] = 0;
    DEP_address_137_from[0] = 0;
    DEP_time_137_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_operation_613) begin
                DEP_address_137_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.buf1_I_address1};
                DEP_time_137_to[0] = $time;
            end else begin
                DEP_address_137_to[0] = {1'b0, 8'b0};
                DEP_time_137_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter38) begin
            DEP_address_137_to[0] = {1'b0, 8'b0};
            DEP_time_137_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_operation_631) begin
                if (DEP_address_137_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_137_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_137_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.buf1_I_address0};
                DEP_time_137_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_operation_631) begin
                DEP_i_137 = 0;
                if (DEP_address_137_to[0][8]) begin
                    DEP_error_137 = (DEP_address_137_to[0][7:0] == DEP_address_137_from[DEP_i_137][7:0]);
                    if (DEP_error_137) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348\"");
                        $display("//                : From memory access \"buf1_I_address0\" = 0x%0h @ \"%0t\"", DEP_address_137_from[DEP_i_137][7:0], DEP_time_137_from[DEP_i_137]);
                        $display("//                : To memory access \"buf1_I_address1\" = DEP_address_137_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_137_to[0][7:0], DEP_time_137_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_631"(W:SV39-39) -> "ap_enable_operation_613"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348
                    end
                end
                DEP_address_137_from[DEP_i_137] = {1'b0, 8'b0};
                DEP_time_137_from[DEP_i_137] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_633"(W:SV39-39) -> "ap_enable_operation_615"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348
reg [8:0] DEP_address_138_to [1 - 1:0];
time DEP_time_138_to [1 - 1:0];
reg [8:0] DEP_address_138_from [1 - 1:0];
time DEP_time_138_from [1 - 1:0];
reg DEP_error_138 = 0;
integer DEP_i_138;

initial begin
    DEP_address_138_to[0] = 0;
    DEP_time_138_to[0] = 0;
    DEP_address_138_from[0] = 0;
    DEP_time_138_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_operation_615) begin
                DEP_address_138_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.buf1_R_1_address1};
                DEP_time_138_to[0] = $time;
            end else begin
                DEP_address_138_to[0] = {1'b0, 8'b0};
                DEP_time_138_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter38) begin
            DEP_address_138_to[0] = {1'b0, 8'b0};
            DEP_time_138_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_operation_633) begin
                if (DEP_address_138_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_138_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_138_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.buf1_R_1_address0};
                DEP_time_138_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_operation_633) begin
                DEP_i_138 = 0;
                if (DEP_address_138_to[0][8]) begin
                    DEP_error_138 = (DEP_address_138_to[0][7:0] == DEP_address_138_from[DEP_i_138][7:0]);
                    if (DEP_error_138) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348\"");
                        $display("//                : From memory access \"buf1_R_1_address0\" = 0x%0h @ \"%0t\"", DEP_address_138_from[DEP_i_138][7:0], DEP_time_138_from[DEP_i_138]);
                        $display("//                : To memory access \"buf1_R_1_address1\" = DEP_address_138_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_138_to[0][7:0], DEP_time_138_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_633"(W:SV39-39) -> "ap_enable_operation_615"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348
                    end
                end
                DEP_address_138_from[DEP_i_138] = {1'b0, 8'b0};
                DEP_time_138_from[DEP_i_138] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_635"(W:SV39-39) -> "ap_enable_operation_617"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348
reg [8:0] DEP_address_139_to [1 - 1:0];
time DEP_time_139_to [1 - 1:0];
reg [8:0] DEP_address_139_from [1 - 1:0];
time DEP_time_139_from [1 - 1:0];
reg DEP_error_139 = 0;
integer DEP_i_139;

initial begin
    DEP_address_139_to[0] = 0;
    DEP_time_139_to[0] = 0;
    DEP_address_139_from[0] = 0;
    DEP_time_139_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_operation_617) begin
                DEP_address_139_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.buf1_I_1_address1};
                DEP_time_139_to[0] = $time;
            end else begin
                DEP_address_139_to[0] = {1'b0, 8'b0};
                DEP_time_139_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter38) begin
            DEP_address_139_to[0] = {1'b0, 8'b0};
            DEP_time_139_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_operation_635) begin
                if (DEP_address_139_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_139_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_139_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.buf1_I_1_address0};
                DEP_time_139_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_operation_635) begin
                DEP_i_139 = 0;
                if (DEP_address_139_to[0][8]) begin
                    DEP_error_139 = (DEP_address_139_to[0][7:0] == DEP_address_139_from[DEP_i_139][7:0]);
                    if (DEP_error_139) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348\"");
                        $display("//                : From memory access \"buf1_I_1_address0\" = 0x%0h @ \"%0t\"", DEP_address_139_from[DEP_i_139][7:0], DEP_time_139_from[DEP_i_139]);
                        $display("//                : To memory access \"buf1_I_1_address1\" = DEP_address_139_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_139_to[0][7:0], DEP_time_139_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_635"(W:SV39-39) -> "ap_enable_operation_617"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348
                    end
                end
                DEP_address_139_from[DEP_i_139] = {1'b0, 8'b0};
                DEP_time_139_from[DEP_i_139] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_637"(W:SV39-39) -> "ap_enable_operation_619"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348
reg [8:0] DEP_address_140_to [1 - 1:0];
time DEP_time_140_to [1 - 1:0];
reg [8:0] DEP_address_140_from [1 - 1:0];
time DEP_time_140_from [1 - 1:0];
reg DEP_error_140 = 0;
integer DEP_i_140;

initial begin
    DEP_address_140_to[0] = 0;
    DEP_time_140_to[0] = 0;
    DEP_address_140_from[0] = 0;
    DEP_time_140_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_operation_619) begin
                DEP_address_140_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.buf1_R_2_address1};
                DEP_time_140_to[0] = $time;
            end else begin
                DEP_address_140_to[0] = {1'b0, 8'b0};
                DEP_time_140_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter38) begin
            DEP_address_140_to[0] = {1'b0, 8'b0};
            DEP_time_140_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_operation_637) begin
                if (DEP_address_140_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_140_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_140_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.buf1_R_2_address0};
                DEP_time_140_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_operation_637) begin
                DEP_i_140 = 0;
                if (DEP_address_140_to[0][8]) begin
                    DEP_error_140 = (DEP_address_140_to[0][7:0] == DEP_address_140_from[DEP_i_140][7:0]);
                    if (DEP_error_140) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348\"");
                        $display("//                : From memory access \"buf1_R_2_address0\" = 0x%0h @ \"%0t\"", DEP_address_140_from[DEP_i_140][7:0], DEP_time_140_from[DEP_i_140]);
                        $display("//                : To memory access \"buf1_R_2_address1\" = DEP_address_140_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_140_to[0][7:0], DEP_time_140_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_637"(W:SV39-39) -> "ap_enable_operation_619"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348
                    end
                end
                DEP_address_140_from[DEP_i_140] = {1'b0, 8'b0};
                DEP_time_140_from[DEP_i_140] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_639"(W:SV39-39) -> "ap_enable_operation_621"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348
reg [8:0] DEP_address_141_to [1 - 1:0];
time DEP_time_141_to [1 - 1:0];
reg [8:0] DEP_address_141_from [1 - 1:0];
time DEP_time_141_from [1 - 1:0];
reg DEP_error_141 = 0;
integer DEP_i_141;

initial begin
    DEP_address_141_to[0] = 0;
    DEP_time_141_to[0] = 0;
    DEP_address_141_from[0] = 0;
    DEP_time_141_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_operation_621) begin
                DEP_address_141_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.buf1_I_2_address1};
                DEP_time_141_to[0] = $time;
            end else begin
                DEP_address_141_to[0] = {1'b0, 8'b0};
                DEP_time_141_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter38) begin
            DEP_address_141_to[0] = {1'b0, 8'b0};
            DEP_time_141_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_operation_639) begin
                if (DEP_address_141_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_141_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_141_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.buf1_I_2_address0};
                DEP_time_141_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_operation_639) begin
                DEP_i_141 = 0;
                if (DEP_address_141_to[0][8]) begin
                    DEP_error_141 = (DEP_address_141_to[0][7:0] == DEP_address_141_from[DEP_i_141][7:0]);
                    if (DEP_error_141) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348\"");
                        $display("//                : From memory access \"buf1_I_2_address0\" = 0x%0h @ \"%0t\"", DEP_address_141_from[DEP_i_141][7:0], DEP_time_141_from[DEP_i_141]);
                        $display("//                : To memory access \"buf1_I_2_address1\" = DEP_address_141_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_141_to[0][7:0], DEP_time_141_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_639"(W:SV39-39) -> "ap_enable_operation_621"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348
                    end
                end
                DEP_address_141_from[DEP_i_141] = {1'b0, 8'b0};
                DEP_time_141_from[DEP_i_141] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_641"(W:SV39-39) -> "ap_enable_operation_623"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348
reg [8:0] DEP_address_142_to [1 - 1:0];
time DEP_time_142_to [1 - 1:0];
reg [8:0] DEP_address_142_from [1 - 1:0];
time DEP_time_142_from [1 - 1:0];
reg DEP_error_142 = 0;
integer DEP_i_142;

initial begin
    DEP_address_142_to[0] = 0;
    DEP_time_142_to[0] = 0;
    DEP_address_142_from[0] = 0;
    DEP_time_142_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_operation_623) begin
                DEP_address_142_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.buf1_R_3_address1};
                DEP_time_142_to[0] = $time;
            end else begin
                DEP_address_142_to[0] = {1'b0, 8'b0};
                DEP_time_142_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter38) begin
            DEP_address_142_to[0] = {1'b0, 8'b0};
            DEP_time_142_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_operation_641) begin
                if (DEP_address_142_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_142_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_142_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.buf1_R_3_address0};
                DEP_time_142_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_operation_641) begin
                DEP_i_142 = 0;
                if (DEP_address_142_to[0][8]) begin
                    DEP_error_142 = (DEP_address_142_to[0][7:0] == DEP_address_142_from[DEP_i_142][7:0]);
                    if (DEP_error_142) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348\"");
                        $display("//                : From memory access \"buf1_R_3_address0\" = 0x%0h @ \"%0t\"", DEP_address_142_from[DEP_i_142][7:0], DEP_time_142_from[DEP_i_142]);
                        $display("//                : To memory access \"buf1_R_3_address1\" = DEP_address_142_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_142_to[0][7:0], DEP_time_142_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_641"(W:SV39-39) -> "ap_enable_operation_623"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348
                    end
                end
                DEP_address_142_from[DEP_i_142] = {1'b0, 8'b0};
                DEP_time_142_from[DEP_i_142] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_643"(W:SV39-39) -> "ap_enable_operation_625"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348
reg [8:0] DEP_address_143_to [1 - 1:0];
time DEP_time_143_to [1 - 1:0];
reg [8:0] DEP_address_143_from [1 - 1:0];
time DEP_time_143_from [1 - 1:0];
reg DEP_error_143 = 0;
integer DEP_i_143;

initial begin
    DEP_address_143_to[0] = 0;
    DEP_time_143_to[0] = 0;
    DEP_address_143_from[0] = 0;
    DEP_time_143_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state39_pp0_iter38_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter38) begin 
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_operation_625) begin
                DEP_address_143_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.buf1_I_3_address1};
                DEP_time_143_to[0] = $time;
            end else begin
                DEP_address_143_to[0] = {1'b0, 8'b0};
                DEP_time_143_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state39_pp0_iter38_stage0||
            `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state40_pp0_iter39_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter38) begin
            DEP_address_143_to[0] = {1'b0, 8'b0};
            DEP_time_143_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_operation_643) begin
                if (DEP_address_143_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_143_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_143_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.buf1_I_3_address0};
                DEP_time_143_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_state40_pp0_iter39_stage0
            &&  `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_reg_pp0_iter39) begin
            if (`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348.ap_enable_operation_643) begin
                DEP_i_143 = 0;
                if (DEP_address_143_to[0][8]) begin
                    DEP_error_143 = (DEP_address_143_to[0][7:0] == DEP_address_143_from[DEP_i_143][7:0]);
                    if (DEP_error_143) begin
                        $display("//Critical WARNING: Due to pragma (fft.cpp:68:32), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348\"");
                        $display("//                : From memory access \"buf1_I_3_address0\" = 0x%0h @ \"%0t\"", DEP_address_143_from[DEP_i_143][7:0], DEP_time_143_from[DEP_i_143]);
                        $display("//                : To memory access \"buf1_I_3_address1\" = DEP_address_143_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_143_to[0][7:0], DEP_time_143_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (WAW) "ap_enable_operation_643"(W:SV39-39) -> "ap_enable_operation_625"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop8_fu_348
                    end
                end
                DEP_address_143_from[DEP_i_143] = {1'b0, 8'b0};
                DEP_time_143_from[DEP_i_143] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_581"(W:SV36-36) -> "ap_enable_operation_587"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop9_fu_372

// Dependence Check (WAW) "ap_enable_operation_583"(W:SV36-36) -> "ap_enable_operation_589"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop9_fu_372

// Dependence Check (WAW) "ap_enable_operation_587"(W:SV36-36) -> "ap_enable_operation_581"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop9_fu_372

// Dependence Check (WAW) "ap_enable_operation_589"(W:SV36-36) -> "ap_enable_operation_583"(W:SV36-36) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop9_fu_372

// Dependence Check (WAW) "ap_enable_operation_605"(W:SV37-37) -> "ap_enable_operation_611"(W:SV37-37) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop9_fu_372

// Dependence Check (WAW) "ap_enable_operation_607"(W:SV37-37) -> "ap_enable_operation_613"(W:SV37-37) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop9_fu_372

// Dependence Check (WAW) "ap_enable_operation_611"(W:SV37-37) -> "ap_enable_operation_605"(W:SV37-37) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop9_fu_372

// Dependence Check (WAW) "ap_enable_operation_613"(W:SV37-37) -> "ap_enable_operation_607"(W:SV37-37) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop9_fu_372

// Dependence Check (WAW) "ap_enable_operation_617"(W:SV37-37) -> "ap_enable_operation_623"(W:SV37-37) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop9_fu_372

// Dependence Check (WAW) "ap_enable_operation_619"(W:SV37-37) -> "ap_enable_operation_625"(W:SV37-37) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop9_fu_372

// Dependence Check (WAW) "ap_enable_operation_623"(W:SV37-37) -> "ap_enable_operation_617"(W:SV37-37) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop9_fu_372

// Dependence Check (WAW) "ap_enable_operation_625"(W:SV37-37) -> "ap_enable_operation_619"(W:SV37-37) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop9_fu_372

// Dependence Check (WAW) "ap_enable_operation_629"(W:SV38-38) -> "ap_enable_operation_637"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop9_fu_372

// Dependence Check (WAW) "ap_enable_operation_631"(W:SV38-38) -> "ap_enable_operation_639"(W:SV39-39) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop9_fu_372

// Dependence Check (WAW) "ap_enable_operation_637"(W:SV39-39) -> "ap_enable_operation_629"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop9_fu_372

// Dependence Check (WAW) "ap_enable_operation_639"(W:SV39-39) -> "ap_enable_operation_631"(W:SV38-38) @ `AUTOTB_DUT_INST.grp_dft_Pipeline_DFT_Loop9_fu_372

`endif

AESL_deadlock_kernel_monitor_top kernel_monitor_top(
    .kernel_monitor_reset(~AESL_reset),
    .kernel_monitor_clock(AESL_clock));

///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(~rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
