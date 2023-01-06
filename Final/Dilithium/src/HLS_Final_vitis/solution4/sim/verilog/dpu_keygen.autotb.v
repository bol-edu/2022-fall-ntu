// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      dpu_keygen
`define AUTOTB_DUT_INST AESL_inst_dpu_keygen
`define AUTOTB_TOP      apatb_dpu_keygen_top
`define AUTOTB_LAT_RESULT_FILE "dpu_keygen.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "dpu_keygen.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_dpu_keygen_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_MEM_pk AESL_automem_pk
`define AESL_MEM_INST_pk mem_inst_pk
`define AESL_MEM_sk AESL_automem_sk
`define AESL_MEM_INST_sk mem_inst_sk
`define AESL_MEM_seedbuf AESL_automem_seedbuf
`define AESL_MEM_INST_seedbuf mem_inst_seedbuf
`define AUTOTB_TVIN_pk  "../tv/cdatafile/c.dpu_keygen.autotvin_pk.dat"
`define AUTOTB_TVIN_sk  "../tv/cdatafile/c.dpu_keygen.autotvin_sk.dat"
`define AUTOTB_TVIN_seedbuf  "../tv/cdatafile/c.dpu_keygen.autotvin_seedbuf.dat"
`define AUTOTB_TVIN_pk_out_wrapc  "../tv/rtldatafile/rtl.dpu_keygen.autotvin_pk.dat"
`define AUTOTB_TVIN_sk_out_wrapc  "../tv/rtldatafile/rtl.dpu_keygen.autotvin_sk.dat"
`define AUTOTB_TVIN_seedbuf_out_wrapc  "../tv/rtldatafile/rtl.dpu_keygen.autotvin_seedbuf.dat"
`define AUTOTB_TVOUT_pk  "../tv/cdatafile/c.dpu_keygen.autotvout_pk.dat"
`define AUTOTB_TVOUT_sk  "../tv/cdatafile/c.dpu_keygen.autotvout_sk.dat"
`define AUTOTB_TVOUT_seedbuf  "../tv/cdatafile/c.dpu_keygen.autotvout_seedbuf.dat"
`define AUTOTB_TVOUT_ap_return  "../tv/cdatafile/c.dpu_keygen.autotvout_ap_return.dat"
`define AUTOTB_TVOUT_pk_out_wrapc  "../tv/rtldatafile/rtl.dpu_keygen.autotvout_pk.dat"
`define AUTOTB_TVOUT_sk_out_wrapc  "../tv/rtldatafile/rtl.dpu_keygen.autotvout_sk.dat"
`define AUTOTB_TVOUT_seedbuf_out_wrapc  "../tv/rtldatafile/rtl.dpu_keygen.autotvout_seedbuf.dat"
`define AUTOTB_TVOUT_ap_return_out_wrapc  "../tv/rtldatafile/rtl.dpu_keygen.autotvout_ap_return.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_pk = 1952;
parameter LENGTH_sk = 4016;
parameter LENGTH_seedbuf = 96;
parameter LENGTH_ap_return = 1;

task read_token;
    input integer fp;
    output reg [151 : 0] token;
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
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [10 : 0] pk_address0;
wire  pk_ce0;
wire  pk_we0;
wire [7 : 0] pk_d0;
wire [7 : 0] pk_q0;
wire [10 : 0] pk_address1;
wire  pk_ce1;
wire  pk_we1;
wire [7 : 0] pk_d1;
wire [7 : 0] pk_q1;
wire [11 : 0] sk_address0;
wire  sk_ce0;
wire  sk_we0;
wire [7 : 0] sk_d0;
wire [7 : 0] sk_q0;
wire [11 : 0] sk_address1;
wire  sk_ce1;
wire  sk_we1;
wire [7 : 0] sk_d1;
wire [7 : 0] sk_q1;
wire [6 : 0] seedbuf_address0;
wire  seedbuf_ce0;
wire  seedbuf_we0;
wire [7 : 0] seedbuf_d0;
wire [7 : 0] seedbuf_q0;
wire [6 : 0] seedbuf_address1;
wire  seedbuf_ce1;
wire  seedbuf_we1;
wire [7 : 0] seedbuf_d1;
wire [7 : 0] seedbuf_q1;
wire [31 : 0] ap_return;
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
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .pk_address0(pk_address0),
    .pk_ce0(pk_ce0),
    .pk_we0(pk_we0),
    .pk_d0(pk_d0),
    .pk_q0(pk_q0),
    .pk_address1(pk_address1),
    .pk_ce1(pk_ce1),
    .pk_we1(pk_we1),
    .pk_d1(pk_d1),
    .pk_q1(pk_q1),
    .sk_address0(sk_address0),
    .sk_ce0(sk_ce0),
    .sk_we0(sk_we0),
    .sk_d0(sk_d0),
    .sk_q0(sk_q0),
    .sk_address1(sk_address1),
    .sk_ce1(sk_ce1),
    .sk_we1(sk_we1),
    .sk_d1(sk_d1),
    .sk_q1(sk_q1),
    .seedbuf_address0(seedbuf_address0),
    .seedbuf_ce0(seedbuf_ce0),
    .seedbuf_we0(seedbuf_we0),
    .seedbuf_d0(seedbuf_d0),
    .seedbuf_q0(seedbuf_q0),
    .seedbuf_address1(seedbuf_address1),
    .seedbuf_ce1(seedbuf_ce1),
    .seedbuf_we1(seedbuf_we1),
    .seedbuf_d1(seedbuf_d1),
    .seedbuf_q1(seedbuf_q1),
    .ap_return(ap_return));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = dut_rst;
assign ap_rst_n = ~dut_rst;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
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
//------------------------arraypk Instantiation--------------

// The input and output of arraypk
wire    arraypk_ce0, arraypk_ce1;
wire [1 - 1 : 0]    arraypk_we0, arraypk_we1;
wire    [10 : 0]    arraypk_address0, arraypk_address1;
wire    [7 : 0]    arraypk_din0, arraypk_din1;
wire    [7 : 0]    arraypk_dout0, arraypk_dout1;
wire    arraypk_ready;
wire    arraypk_done;

`AESL_MEM_pk `AESL_MEM_INST_pk(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arraypk_ce0),
    .we0        (arraypk_we0),
    .address0   (arraypk_address0),
    .din0       (arraypk_din0),
    .dout0      (arraypk_dout0),
    .ce1        (arraypk_ce1),
    .we1        (arraypk_we1),
    .address1   (arraypk_address1),
    .din1       (arraypk_din1),
    .dout1      (arraypk_dout1),
    .ready      (arraypk_ready),
    .done    (arraypk_done)
);

// Assignment between dut and arraypk
assign arraypk_address0 = pk_address0;
assign arraypk_ce0 = pk_ce0;
assign pk_q0 = arraypk_dout0;
assign arraypk_we0[0] = pk_we0;
assign arraypk_din0 = pk_d0;
assign arraypk_address1 = pk_address1;
assign arraypk_ce1 = pk_ce1;
assign pk_q1 = arraypk_dout1;
assign arraypk_we1[0] = pk_we1;
assign arraypk_din1 = pk_d1;
assign arraypk_ready= ready;
assign arraypk_done = interface_done;


//------------------------arraysk Instantiation--------------

// The input and output of arraysk
wire    arraysk_ce0, arraysk_ce1;
wire [1 - 1 : 0]    arraysk_we0, arraysk_we1;
wire    [11 : 0]    arraysk_address0, arraysk_address1;
wire    [7 : 0]    arraysk_din0, arraysk_din1;
wire    [7 : 0]    arraysk_dout0, arraysk_dout1;
wire    arraysk_ready;
wire    arraysk_done;

`AESL_MEM_sk `AESL_MEM_INST_sk(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arraysk_ce0),
    .we0        (arraysk_we0),
    .address0   (arraysk_address0),
    .din0       (arraysk_din0),
    .dout0      (arraysk_dout0),
    .ce1        (arraysk_ce1),
    .we1        (arraysk_we1),
    .address1   (arraysk_address1),
    .din1       (arraysk_din1),
    .dout1      (arraysk_dout1),
    .ready      (arraysk_ready),
    .done    (arraysk_done)
);

// Assignment between dut and arraysk
assign arraysk_address0 = sk_address0;
assign arraysk_ce0 = sk_ce0;
assign sk_q0 = arraysk_dout0;
assign arraysk_we0[0] = sk_we0;
assign arraysk_din0 = sk_d0;
assign arraysk_address1 = sk_address1;
assign arraysk_ce1 = sk_ce1;
assign sk_q1 = arraysk_dout1;
assign arraysk_we1[0] = sk_we1;
assign arraysk_din1 = sk_d1;
assign arraysk_ready= ready;
assign arraysk_done = interface_done;


//------------------------arrayseedbuf Instantiation--------------

// The input and output of arrayseedbuf
wire    arrayseedbuf_ce0, arrayseedbuf_ce1;
wire [1 - 1 : 0]    arrayseedbuf_we0, arrayseedbuf_we1;
wire    [6 : 0]    arrayseedbuf_address0, arrayseedbuf_address1;
wire    [7 : 0]    arrayseedbuf_din0, arrayseedbuf_din1;
wire    [7 : 0]    arrayseedbuf_dout0, arrayseedbuf_dout1;
wire    arrayseedbuf_ready;
wire    arrayseedbuf_done;

`AESL_MEM_seedbuf `AESL_MEM_INST_seedbuf(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayseedbuf_ce0),
    .we0        (arrayseedbuf_we0),
    .address0   (arrayseedbuf_address0),
    .din0       (arrayseedbuf_din0),
    .dout0      (arrayseedbuf_dout0),
    .ce1        (arrayseedbuf_ce1),
    .we1        (arrayseedbuf_we1),
    .address1   (arrayseedbuf_address1),
    .din1       (arrayseedbuf_din1),
    .dout1      (arrayseedbuf_dout1),
    .ready      (arrayseedbuf_ready),
    .done    (arrayseedbuf_done)
);

// Assignment between dut and arrayseedbuf
assign arrayseedbuf_address0 = seedbuf_address0;
assign arrayseedbuf_ce0 = seedbuf_ce0;
assign seedbuf_q0 = arrayseedbuf_dout0;
assign arrayseedbuf_we0[0] = seedbuf_we0;
assign arrayseedbuf_din0 = seedbuf_d0;
assign arrayseedbuf_address1 = seedbuf_address1;
assign arrayseedbuf_ce1 = seedbuf_ce1;
assign seedbuf_q1 = arrayseedbuf_dout1;
assign arrayseedbuf_we1[0] = seedbuf_we1;
assign arrayseedbuf_din1 = seedbuf_d1;
assign arrayseedbuf_ready= ready;
assign arrayseedbuf_done = interface_done;


initial begin : write_file_process_ap_return
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer ap_return_count;
    reg [151:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_ap_return_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ap_return_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
          $fdisplay(fp,"0x%x", ap_return);
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
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
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_pk;
reg [31:0] size_pk;
reg [31:0] size_pk_backup;
reg end_sk;
reg [31:0] size_sk;
reg [31:0] size_sk_backup;
reg end_seedbuf;
reg [31:0] size_seedbuf;
reg [31:0] size_seedbuf_backup;
reg end_ap_return;
reg [31:0] size_ap_return;
reg [31:0] size_ap_return_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 0;
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

reg dump_tvout_finish_pk;

initial begin : dump_tvout_runtime_sign_pk
    integer fp;
    dump_tvout_finish_pk = 0;
    fp = $fopen(`AUTOTB_TVOUT_pk_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_pk_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_pk_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_pk_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_pk = 1;
end


reg dump_tvout_finish_sk;

initial begin : dump_tvout_runtime_sign_sk
    integer fp;
    dump_tvout_finish_sk = 0;
    fp = $fopen(`AUTOTB_TVOUT_sk_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_sk_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_sk_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_sk_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_sk = 1;
end


reg dump_tvout_finish_seedbuf;

initial begin : dump_tvout_runtime_sign_seedbuf
    integer fp;
    dump_tvout_finish_seedbuf = 0;
    fp = $fopen(`AUTOTB_TVOUT_seedbuf_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_seedbuf_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_seedbuf_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_seedbuf_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_seedbuf = 1;
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
    if (AESL_reset == 1) begin
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

// Dependence Check (WAR) "ap_enable_operation_42"(R:SV0-1) -> "ap_enable_operation_53"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878

// Dependence Check (WAR) "ap_enable_operation_42"(R:SV0-1) -> "ap_enable_operation_60"(W:SV4-4) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878

// Dependence Check (RAW) "ap_enable_operation_53"(W:SV3-3) -> "ap_enable_operation_36"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878
reg [8:0] DEP_address_2_to [1 - 1:0];
time DEP_time_2_to [1 - 1:0];
reg [8:0] DEP_address_2_from [1 - 1:0];
time DEP_time_2_from [1 - 1:0];
reg DEP_error_2 = 0;
integer DEP_i_2;

initial begin
    DEP_address_2_to[0] = 0;
    DEP_time_2_to[0] = 0;
    DEP_address_2_from[0] = 0;
    DEP_time_2_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_operation_36) begin
                DEP_address_2_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.this_pMem_address1};
                DEP_time_2_to[0] = $time;
            end else begin
                DEP_address_2_to[0] = {1'b0, 8'b0};
                DEP_time_2_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_reg_pp0_iter0) begin
            DEP_address_2_to[0] = {1'b0, 8'b0};
            DEP_time_2_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_operation_53) begin
                if (DEP_address_2_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_2_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_2_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.this_pMem_address0};
                DEP_time_2_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_operation_53) begin
                DEP_i_2 = 0;
                if (DEP_address_2_to[0][8]) begin
                    DEP_error_2 = (DEP_address_2_to[0][7:0] == DEP_address_2_from[DEP_i_2][7:0]);
                    if (DEP_error_2) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:281:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878\"");
                        $display("//                : From memory access \"this_pMem_address0\" = 0x%0h @ \"%0t\"", DEP_address_2_from[DEP_i_2][7:0], DEP_time_2_from[DEP_i_2]);
                        $display("//                : To memory access \"this_pMem_address1\" = DEP_address_2_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_2_to[0][7:0], DEP_time_2_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_53"(W:SV3-3) -> "ap_enable_operation_36"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878
                    end
                end
                DEP_address_2_from[DEP_i_2] = {1'b0, 8'b0};
                DEP_time_2_from[DEP_i_2] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_53"(W:SV3-3) -> "ap_enable_operation_60"(W:SV4-4) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878

// Dependence Check (RAW) "ap_enable_operation_60"(W:SV4-4) -> "ap_enable_operation_36"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878
reg [8:0] DEP_address_4_to [1 - 1:0];
time DEP_time_4_to [1 - 1:0];
reg [8:0] DEP_address_4_from [1 - 1:0];
time DEP_time_4_from [1 - 1:0];
reg DEP_error_4 = 0;
integer DEP_i_4;

initial begin
    DEP_address_4_to[0] = 0;
    DEP_time_4_to[0] = 0;
    DEP_address_4_from[0] = 0;
    DEP_time_4_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_operation_36) begin
                DEP_address_4_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.this_pMem_address1};
                DEP_time_4_to[0] = $time;
            end else begin
                DEP_address_4_to[0] = {1'b0, 8'b0};
                DEP_time_4_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_state5_pp0_iter2_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_reg_pp0_iter0) begin
            DEP_address_4_to[0] = {1'b0, 8'b0};
            DEP_time_4_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_state5_pp0_iter2_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_reg_pp0_iter2) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_operation_60) begin
                if (DEP_address_4_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_4_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_4_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.this_pMem_address0};
                DEP_time_4_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_state5_pp0_iter2_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_reg_pp0_iter2) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.ap_enable_operation_60) begin
                DEP_i_4 = 0;
                if (DEP_address_4_to[0][8]) begin
                    DEP_error_4 = (DEP_address_4_to[0][7:0] == DEP_address_4_from[DEP_i_4][7:0]);
                    if (DEP_error_4) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:281:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878\"");
                        $display("//                : From memory access \"this_pMem_address0\" = 0x%0h @ \"%0t\"", DEP_address_4_from[DEP_i_4][7:0], DEP_time_4_from[DEP_i_4]);
                        $display("//                : To memory access \"this_pMem_address1\" = DEP_address_4_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_4_to[0][7:0], DEP_time_4_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_60"(W:SV4-4) -> "ap_enable_operation_36"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878
                    end
                end
                DEP_address_4_from[DEP_i_4] = {1'b0, 8'b0};
                DEP_time_4_from[DEP_i_4] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_60"(W:SV4-4) -> "ap_enable_operation_53"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878

// Dependence Check (WAR) "ap_enable_operation_38"(R:SV0-1) -> "ap_enable_operation_45"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900

// Dependence Check (RAW) "ap_enable_operation_45"(W:SV3-3) -> "ap_enable_operation_34"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900
reg [8:0] DEP_address_7_to [1 - 1:0];
time DEP_time_7_to [1 - 1:0];
reg [8:0] DEP_address_7_from [1 - 1:0];
time DEP_time_7_from [1 - 1:0];
reg DEP_error_7 = 0;
integer DEP_i_7;

initial begin
    DEP_address_7_to[0] = 0;
    DEP_time_7_to[0] = 0;
    DEP_address_7_from[0] = 0;
    DEP_time_7_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900.ap_enable_operation_34) begin
                DEP_address_7_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900.this_pMem_address0};
                DEP_time_7_to[0] = $time;
            end else begin
                DEP_address_7_to[0] = {1'b0, 8'b0};
                DEP_time_7_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900.ap_enable_reg_pp0_iter0) begin
            DEP_address_7_to[0] = {1'b0, 8'b0};
            DEP_time_7_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900.ap_enable_operation_45) begin
                if (DEP_address_7_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_7_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_7_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900.this_pMem_address0};
                DEP_time_7_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900.ap_enable_operation_45) begin
                DEP_i_7 = 0;
                if (DEP_address_7_to[0][8]) begin
                    DEP_error_7 = (DEP_address_7_to[0][7:0] == DEP_address_7_from[DEP_i_7][7:0]);
                    if (DEP_error_7) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:271:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900\"");
                        $display("//                : From memory access \"this_pMem_address0\" = 0x%0h @ \"%0t\"", DEP_address_7_from[DEP_i_7][7:0], DEP_time_7_from[DEP_i_7]);
                        $display("//                : To memory access \"this_pMem_address0\" = DEP_address_7_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_7_to[0][7:0], DEP_time_7_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_45"(W:SV3-3) -> "ap_enable_operation_34"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900
                    end
                end
                DEP_address_7_from[DEP_i_7] = {1'b0, 8'b0};
                DEP_time_7_from[DEP_i_7] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAR) "ap_enable_operation_42"(R:SV0-1) -> "ap_enable_operation_53"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920

// Dependence Check (WAR) "ap_enable_operation_42"(R:SV0-1) -> "ap_enable_operation_57"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920

// Dependence Check (WAR) "ap_enable_operation_43"(R:SV0-1) -> "ap_enable_operation_53"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920

// Dependence Check (WAR) "ap_enable_operation_43"(R:SV0-1) -> "ap_enable_operation_57"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920

// Dependence Check (RAW) "ap_enable_operation_53"(W:SV3-3) -> "ap_enable_operation_33"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920
reg [8:0] DEP_address_12_to [1 - 1:0];
time DEP_time_12_to [1 - 1:0];
reg [8:0] DEP_address_12_from [1 - 1:0];
time DEP_time_12_from [1 - 1:0];
reg DEP_error_12 = 0;
integer DEP_i_12;

initial begin
    DEP_address_12_to[0] = 0;
    DEP_time_12_to[0] = 0;
    DEP_address_12_from[0] = 0;
    DEP_time_12_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_operation_33) begin
                DEP_address_12_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.this_pMem_address1};
                DEP_time_12_to[0] = $time;
            end else begin
                DEP_address_12_to[0] = {1'b0, 8'b0};
                DEP_time_12_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_reg_pp0_iter0) begin
            DEP_address_12_to[0] = {1'b0, 8'b0};
            DEP_time_12_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_operation_53) begin
                if (DEP_address_12_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_12_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_12_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.this_pMem_address1};
                DEP_time_12_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_operation_53) begin
                DEP_i_12 = 0;
                if (DEP_address_12_to[0][8]) begin
                    DEP_error_12 = (DEP_address_12_to[0][7:0] == DEP_address_12_from[DEP_i_12][7:0]);
                    if (DEP_error_12) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:182:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920\"");
                        $display("//                : From memory access \"this_pMem_address1\" = 0x%0h @ \"%0t\"", DEP_address_12_from[DEP_i_12][7:0], DEP_time_12_from[DEP_i_12]);
                        $display("//                : To memory access \"this_pMem_address1\" = DEP_address_12_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_12_to[0][7:0], DEP_time_12_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_53"(W:SV3-3) -> "ap_enable_operation_33"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920
                    end
                end
                DEP_address_12_from[DEP_i_12] = {1'b0, 8'b0};
                DEP_time_12_from[DEP_i_12] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_53"(W:SV3-3) -> "ap_enable_operation_38"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920
reg [8:0] DEP_address_13_to [1 - 1:0];
time DEP_time_13_to [1 - 1:0];
reg [8:0] DEP_address_13_from [1 - 1:0];
time DEP_time_13_from [1 - 1:0];
reg DEP_error_13 = 0;
integer DEP_i_13;

initial begin
    DEP_address_13_to[0] = 0;
    DEP_time_13_to[0] = 0;
    DEP_address_13_from[0] = 0;
    DEP_time_13_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_operation_38) begin
                DEP_address_13_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.this_pMem_address0};
                DEP_time_13_to[0] = $time;
            end else begin
                DEP_address_13_to[0] = {1'b0, 8'b0};
                DEP_time_13_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_reg_pp0_iter0) begin
            DEP_address_13_to[0] = {1'b0, 8'b0};
            DEP_time_13_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_operation_53) begin
                if (DEP_address_13_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_13_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_13_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.this_pMem_address1};
                DEP_time_13_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_operation_53) begin
                DEP_i_13 = 0;
                if (DEP_address_13_to[0][8]) begin
                    DEP_error_13 = (DEP_address_13_to[0][7:0] == DEP_address_13_from[DEP_i_13][7:0]);
                    if (DEP_error_13) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:182:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920\"");
                        $display("//                : From memory access \"this_pMem_address1\" = 0x%0h @ \"%0t\"", DEP_address_13_from[DEP_i_13][7:0], DEP_time_13_from[DEP_i_13]);
                        $display("//                : To memory access \"this_pMem_address0\" = DEP_address_13_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_13_to[0][7:0], DEP_time_13_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_53"(W:SV3-3) -> "ap_enable_operation_38"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920
                    end
                end
                DEP_address_13_from[DEP_i_13] = {1'b0, 8'b0};
                DEP_time_13_from[DEP_i_13] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_57"(W:SV3-3) -> "ap_enable_operation_33"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920
reg [8:0] DEP_address_14_to [1 - 1:0];
time DEP_time_14_to [1 - 1:0];
reg [8:0] DEP_address_14_from [1 - 1:0];
time DEP_time_14_from [1 - 1:0];
reg DEP_error_14 = 0;
integer DEP_i_14;

initial begin
    DEP_address_14_to[0] = 0;
    DEP_time_14_to[0] = 0;
    DEP_address_14_from[0] = 0;
    DEP_time_14_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_operation_33) begin
                DEP_address_14_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.this_pMem_address1};
                DEP_time_14_to[0] = $time;
            end else begin
                DEP_address_14_to[0] = {1'b0, 8'b0};
                DEP_time_14_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_reg_pp0_iter0) begin
            DEP_address_14_to[0] = {1'b0, 8'b0};
            DEP_time_14_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_operation_57) begin
                if (DEP_address_14_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_14_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_14_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.this_pMem_address0};
                DEP_time_14_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_operation_57) begin
                DEP_i_14 = 0;
                if (DEP_address_14_to[0][8]) begin
                    DEP_error_14 = (DEP_address_14_to[0][7:0] == DEP_address_14_from[DEP_i_14][7:0]);
                    if (DEP_error_14) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:182:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920\"");
                        $display("//                : From memory access \"this_pMem_address0\" = 0x%0h @ \"%0t\"", DEP_address_14_from[DEP_i_14][7:0], DEP_time_14_from[DEP_i_14]);
                        $display("//                : To memory access \"this_pMem_address1\" = DEP_address_14_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_14_to[0][7:0], DEP_time_14_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_57"(W:SV3-3) -> "ap_enable_operation_33"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920
                    end
                end
                DEP_address_14_from[DEP_i_14] = {1'b0, 8'b0};
                DEP_time_14_from[DEP_i_14] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_57"(W:SV3-3) -> "ap_enable_operation_38"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920
reg [8:0] DEP_address_15_to [1 - 1:0];
time DEP_time_15_to [1 - 1:0];
reg [8:0] DEP_address_15_from [1 - 1:0];
time DEP_time_15_from [1 - 1:0];
reg DEP_error_15 = 0;
integer DEP_i_15;

initial begin
    DEP_address_15_to[0] = 0;
    DEP_time_15_to[0] = 0;
    DEP_address_15_from[0] = 0;
    DEP_time_15_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_operation_38) begin
                DEP_address_15_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.this_pMem_address0};
                DEP_time_15_to[0] = $time;
            end else begin
                DEP_address_15_to[0] = {1'b0, 8'b0};
                DEP_time_15_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_reg_pp0_iter0) begin
            DEP_address_15_to[0] = {1'b0, 8'b0};
            DEP_time_15_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_operation_57) begin
                if (DEP_address_15_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_15_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_15_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.this_pMem_address0};
                DEP_time_15_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.ap_enable_operation_57) begin
                DEP_i_15 = 0;
                if (DEP_address_15_to[0][8]) begin
                    DEP_error_15 = (DEP_address_15_to[0][7:0] == DEP_address_15_from[DEP_i_15][7:0]);
                    if (DEP_error_15) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:182:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920\"");
                        $display("//                : From memory access \"this_pMem_address0\" = 0x%0h @ \"%0t\"", DEP_address_15_from[DEP_i_15][7:0], DEP_time_15_from[DEP_i_15]);
                        $display("//                : To memory access \"this_pMem_address0\" = DEP_address_15_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_15_to[0][7:0], DEP_time_15_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_57"(W:SV3-3) -> "ap_enable_operation_38"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920
                    end
                end
                DEP_address_15_from[DEP_i_15] = {1'b0, 8'b0};
                DEP_time_15_from[DEP_i_15] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_57"(W:SV3-3) -> "ap_enable_operation_53"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920

// Dependence Check (WAR) "ap_enable_operation_37"(R:SV0-1) -> "ap_enable_operation_49"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939

// Dependence Check (RAW) "ap_enable_operation_49"(W:SV3-3) -> "ap_enable_operation_31"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939
reg [8:0] DEP_address_18_to [1 - 1:0];
time DEP_time_18_to [1 - 1:0];
reg [8:0] DEP_address_18_from [1 - 1:0];
time DEP_time_18_from [1 - 1:0];
reg DEP_error_18 = 0;
integer DEP_i_18;

initial begin
    DEP_address_18_to[0] = 0;
    DEP_time_18_to[0] = 0;
    DEP_address_18_from[0] = 0;
    DEP_time_18_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939.ap_enable_operation_31) begin
                DEP_address_18_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939.this_pMem_address0};
                DEP_time_18_to[0] = $time;
            end else begin
                DEP_address_18_to[0] = {1'b0, 8'b0};
                DEP_time_18_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939.ap_enable_reg_pp0_iter0) begin
            DEP_address_18_to[0] = {1'b0, 8'b0};
            DEP_time_18_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939.ap_enable_operation_49) begin
                if (DEP_address_18_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_18_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_18_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939.this_pMem_address0};
                DEP_time_18_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939.ap_enable_operation_49) begin
                DEP_i_18 = 0;
                if (DEP_address_18_to[0][8]) begin
                    DEP_error_18 = (DEP_address_18_to[0][7:0] == DEP_address_18_from[DEP_i_18][7:0]);
                    if (DEP_error_18) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:156:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939\"");
                        $display("//                : From memory access \"this_pMem_address0\" = 0x%0h @ \"%0t\"", DEP_address_18_from[DEP_i_18][7:0], DEP_time_18_from[DEP_i_18]);
                        $display("//                : To memory access \"this_pMem_address0\" = DEP_address_18_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_18_to[0][7:0], DEP_time_18_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_49"(W:SV3-3) -> "ap_enable_operation_31"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939
                    end
                end
                DEP_address_18_from[DEP_i_18] = {1'b0, 8'b0};
                DEP_time_18_from[DEP_i_18] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAR) "ap_enable_operation_50"(R:SV0-1) -> "ap_enable_operation_61"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959

// Dependence Check (WAR) "ap_enable_operation_51"(R:SV0-1) -> "ap_enable_operation_61"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959

// Dependence Check (RAW) "ap_enable_operation_61"(W:SV3-3) -> "ap_enable_operation_41"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959
reg [8:0] DEP_address_21_to [1 - 1:0];
time DEP_time_21_to [1 - 1:0];
reg [8:0] DEP_address_21_from [1 - 1:0];
time DEP_time_21_from [1 - 1:0];
reg DEP_error_21 = 0;
integer DEP_i_21;

initial begin
    DEP_address_21_to[0] = 0;
    DEP_time_21_to[0] = 0;
    DEP_address_21_from[0] = 0;
    DEP_time_21_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_enable_operation_41) begin
                DEP_address_21_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.this_pMem_address1};
                DEP_time_21_to[0] = $time;
            end else begin
                DEP_address_21_to[0] = {1'b0, 8'b0};
                DEP_time_21_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_enable_reg_pp0_iter0) begin
            DEP_address_21_to[0] = {1'b0, 8'b0};
            DEP_time_21_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_enable_operation_61) begin
                if (DEP_address_21_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_21_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_21_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.this_pMem_address0};
                DEP_time_21_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_enable_operation_61) begin
                DEP_i_21 = 0;
                if (DEP_address_21_to[0][8]) begin
                    DEP_error_21 = (DEP_address_21_to[0][7:0] == DEP_address_21_from[DEP_i_21][7:0]);
                    if (DEP_error_21) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:145:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959\"");
                        $display("//                : From memory access \"this_pMem_address0\" = 0x%0h @ \"%0t\"", DEP_address_21_from[DEP_i_21][7:0], DEP_time_21_from[DEP_i_21]);
                        $display("//                : To memory access \"this_pMem_address1\" = DEP_address_21_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_21_to[0][7:0], DEP_time_21_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_61"(W:SV3-3) -> "ap_enable_operation_41"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959
                    end
                end
                DEP_address_21_from[DEP_i_21] = {1'b0, 8'b0};
                DEP_time_21_from[DEP_i_21] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_61"(W:SV3-3) -> "ap_enable_operation_45"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959
reg [8:0] DEP_address_22_to [1 - 1:0];
time DEP_time_22_to [1 - 1:0];
reg [8:0] DEP_address_22_from [1 - 1:0];
time DEP_time_22_from [1 - 1:0];
reg DEP_error_22 = 0;
integer DEP_i_22;

initial begin
    DEP_address_22_to[0] = 0;
    DEP_time_22_to[0] = 0;
    DEP_address_22_from[0] = 0;
    DEP_time_22_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_enable_operation_45) begin
                DEP_address_22_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.this_pMem_address0};
                DEP_time_22_to[0] = $time;
            end else begin
                DEP_address_22_to[0] = {1'b0, 8'b0};
                DEP_time_22_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_enable_reg_pp0_iter0) begin
            DEP_address_22_to[0] = {1'b0, 8'b0};
            DEP_time_22_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_enable_operation_61) begin
                if (DEP_address_22_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_22_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_22_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.this_pMem_address0};
                DEP_time_22_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.ap_enable_operation_61) begin
                DEP_i_22 = 0;
                if (DEP_address_22_to[0][8]) begin
                    DEP_error_22 = (DEP_address_22_to[0][7:0] == DEP_address_22_from[DEP_i_22][7:0]);
                    if (DEP_error_22) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:145:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959\"");
                        $display("//                : From memory access \"this_pMem_address0\" = 0x%0h @ \"%0t\"", DEP_address_22_from[DEP_i_22][7:0], DEP_time_22_from[DEP_i_22]);
                        $display("//                : To memory access \"this_pMem_address0\" = DEP_address_22_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_22_to[0][7:0], DEP_time_22_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_61"(W:SV3-3) -> "ap_enable_operation_45"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959
                    end
                end
                DEP_address_22_from[DEP_i_22] = {1'b0, 8'b0};
                DEP_time_22_from[DEP_i_22] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAR) "ap_enable_operation_37"(R:SV0-1) -> "ap_enable_operation_49"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982

// Dependence Check (WAR) "ap_enable_operation_37"(R:SV0-1) -> "ap_enable_operation_53"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982

// Dependence Check (RAW) "ap_enable_operation_49"(W:SV3-3) -> "ap_enable_operation_31"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982
reg [8:0] DEP_address_25_to [1 - 1:0];
time DEP_time_25_to [1 - 1:0];
reg [8:0] DEP_address_25_from [1 - 1:0];
time DEP_time_25_from [1 - 1:0];
reg DEP_error_25 = 0;
integer DEP_i_25;

initial begin
    DEP_address_25_to[0] = 0;
    DEP_time_25_to[0] = 0;
    DEP_address_25_from[0] = 0;
    DEP_time_25_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_enable_operation_31) begin
                DEP_address_25_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.this_pMem_address0};
                DEP_time_25_to[0] = $time;
            end else begin
                DEP_address_25_to[0] = {1'b0, 8'b0};
                DEP_time_25_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_enable_reg_pp0_iter0) begin
            DEP_address_25_to[0] = {1'b0, 8'b0};
            DEP_time_25_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_enable_operation_49) begin
                if (DEP_address_25_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_25_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_25_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.this_pMem_address1};
                DEP_time_25_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_enable_operation_49) begin
                DEP_i_25 = 0;
                if (DEP_address_25_to[0][8]) begin
                    DEP_error_25 = (DEP_address_25_to[0][7:0] == DEP_address_25_from[DEP_i_25][7:0]);
                    if (DEP_error_25) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:294:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982\"");
                        $display("//                : From memory access \"this_pMem_address1\" = 0x%0h @ \"%0t\"", DEP_address_25_from[DEP_i_25][7:0], DEP_time_25_from[DEP_i_25]);
                        $display("//                : To memory access \"this_pMem_address0\" = DEP_address_25_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_25_to[0][7:0], DEP_time_25_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_49"(W:SV3-3) -> "ap_enable_operation_31"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982
                    end
                end
                DEP_address_25_from[DEP_i_25] = {1'b0, 8'b0};
                DEP_time_25_from[DEP_i_25] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_53"(W:SV3-3) -> "ap_enable_operation_31"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982
reg [8:0] DEP_address_26_to [1 - 1:0];
time DEP_time_26_to [1 - 1:0];
reg [8:0] DEP_address_26_from [1 - 1:0];
time DEP_time_26_from [1 - 1:0];
reg DEP_error_26 = 0;
integer DEP_i_26;

initial begin
    DEP_address_26_to[0] = 0;
    DEP_time_26_to[0] = 0;
    DEP_address_26_from[0] = 0;
    DEP_time_26_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_enable_operation_31) begin
                DEP_address_26_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.this_pMem_address0};
                DEP_time_26_to[0] = $time;
            end else begin
                DEP_address_26_to[0] = {1'b0, 8'b0};
                DEP_time_26_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_enable_reg_pp0_iter0) begin
            DEP_address_26_to[0] = {1'b0, 8'b0};
            DEP_time_26_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_enable_operation_53) begin
                if (DEP_address_26_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_26_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_26_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.this_pMem_address0};
                DEP_time_26_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.ap_enable_operation_53) begin
                DEP_i_26 = 0;
                if (DEP_address_26_to[0][8]) begin
                    DEP_error_26 = (DEP_address_26_to[0][7:0] == DEP_address_26_from[DEP_i_26][7:0]);
                    if (DEP_error_26) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:294:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982\"");
                        $display("//                : From memory access \"this_pMem_address0\" = 0x%0h @ \"%0t\"", DEP_address_26_from[DEP_i_26][7:0], DEP_time_26_from[DEP_i_26]);
                        $display("//                : To memory access \"this_pMem_address0\" = DEP_address_26_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_26_to[0][7:0], DEP_time_26_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_53"(W:SV3-3) -> "ap_enable_operation_31"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982
                    end
                end
                DEP_address_26_from[DEP_i_26] = {1'b0, 8'b0};
                DEP_time_26_from[DEP_i_26] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_53"(W:SV3-3) -> "ap_enable_operation_49"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982

// Dependence Check (WAR) "ap_enable_operation_43"(R:SV0-1) -> "ap_enable_operation_57"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025

// Dependence Check (WAR) "ap_enable_operation_44"(R:SV0-1) -> "ap_enable_operation_57"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025

// Dependence Check (RAW) "ap_enable_operation_57"(W:SV3-3) -> "ap_enable_operation_33"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025
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
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_enable_operation_33) begin
                DEP_address_30_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.this_pMem_address1};
                DEP_time_30_to[0] = $time;
            end else begin
                DEP_address_30_to[0] = {1'b0, 8'b0};
                DEP_time_30_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_enable_reg_pp0_iter0) begin
            DEP_address_30_to[0] = {1'b0, 8'b0};
            DEP_time_30_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_enable_operation_57) begin
                if (DEP_address_30_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_30_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_30_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.this_pMem_address0};
                DEP_time_30_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_enable_operation_57) begin
                DEP_i_30 = 0;
                if (DEP_address_30_to[0][8]) begin
                    DEP_error_30 = (DEP_address_30_to[0][7:0] == DEP_address_30_from[DEP_i_30][7:0]);
                    if (DEP_error_30) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:321:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025\"");
                        $display("//                : From memory access \"this_pMem_address0\" = 0x%0h @ \"%0t\"", DEP_address_30_from[DEP_i_30][7:0], DEP_time_30_from[DEP_i_30]);
                        $display("//                : To memory access \"this_pMem_address1\" = DEP_address_30_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_30_to[0][7:0], DEP_time_30_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_57"(W:SV3-3) -> "ap_enable_operation_33"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025
                    end
                end
                DEP_address_30_from[DEP_i_30] = {1'b0, 8'b0};
                DEP_time_30_from[DEP_i_30] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_57"(W:SV3-3) -> "ap_enable_operation_37"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025
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
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_enable_operation_37) begin
                DEP_address_31_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.this_pMem_address0};
                DEP_time_31_to[0] = $time;
            end else begin
                DEP_address_31_to[0] = {1'b0, 8'b0};
                DEP_time_31_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_enable_reg_pp0_iter0) begin
            DEP_address_31_to[0] = {1'b0, 8'b0};
            DEP_time_31_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_enable_operation_57) begin
                if (DEP_address_31_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_31_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_31_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.this_pMem_address0};
                DEP_time_31_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.ap_enable_operation_57) begin
                DEP_i_31 = 0;
                if (DEP_address_31_to[0][8]) begin
                    DEP_error_31 = (DEP_address_31_to[0][7:0] == DEP_address_31_from[DEP_i_31][7:0]);
                    if (DEP_error_31) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:321:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025\"");
                        $display("//                : From memory access \"this_pMem_address0\" = 0x%0h @ \"%0t\"", DEP_address_31_from[DEP_i_31][7:0], DEP_time_31_from[DEP_i_31]);
                        $display("//                : To memory access \"this_pMem_address0\" = DEP_address_31_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_31_to[0][7:0], DEP_time_31_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_57"(W:SV3-3) -> "ap_enable_operation_37"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025
                    end
                end
                DEP_address_31_from[DEP_i_31] = {1'b0, 8'b0};
                DEP_time_31_from[DEP_i_31] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAR) "ap_enable_operation_40"(R:SV0-1) -> "ap_enable_operation_308"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041

// Dependence Check (RAW) "ap_enable_operation_308"(W:SV3-3) -> "ap_enable_operation_36"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041
reg [8:0] DEP_address_33_to [1 - 1:0];
time DEP_time_33_to [1 - 1:0];
reg [8:0] DEP_address_33_from [1 - 1:0];
time DEP_time_33_from [1 - 1:0];
reg DEP_error_33 = 0;
integer DEP_i_33;

initial begin
    DEP_address_33_to[0] = 0;
    DEP_time_33_to[0] = 0;
    DEP_address_33_from[0] = 0;
    DEP_time_33_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041.ap_enable_operation_36) begin
                DEP_address_33_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041.this_pMem_address0};
                DEP_time_33_to[0] = $time;
            end else begin
                DEP_address_33_to[0] = {1'b0, 8'b0};
                DEP_time_33_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041.ap_enable_reg_pp0_iter0) begin
            DEP_address_33_to[0] = {1'b0, 8'b0};
            DEP_time_33_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041.ap_enable_operation_308) begin
                if (DEP_address_33_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_33_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_33_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041.this_pMem_address0};
                DEP_time_33_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041.ap_enable_operation_308) begin
                DEP_i_33 = 0;
                if (DEP_address_33_to[0][8]) begin
                    DEP_error_33 = (DEP_address_33_to[0][7:0] == DEP_address_33_from[DEP_i_33][7:0]);
                    if (DEP_error_33) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:330:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041\"");
                        $display("//                : From memory access \"this_pMem_address0\" = 0x%0h @ \"%0t\"", DEP_address_33_from[DEP_i_33][7:0], DEP_time_33_from[DEP_i_33]);
                        $display("//                : To memory access \"this_pMem_address0\" = DEP_address_33_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_33_to[0][7:0], DEP_time_33_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_308"(W:SV3-3) -> "ap_enable_operation_36"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041
                    end
                end
                DEP_address_33_from[DEP_i_33] = {1'b0, 8'b0};
                DEP_time_33_from[DEP_i_33] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAR) "ap_enable_operation_47"(R:SV0-1) -> "ap_enable_operation_58"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057

// Dependence Check (WAR) "ap_enable_operation_47"(R:SV0-1) -> "ap_enable_operation_62"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057

// Dependence Check (WAR) "ap_enable_operation_48"(R:SV0-1) -> "ap_enable_operation_58"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057

// Dependence Check (WAR) "ap_enable_operation_48"(R:SV0-1) -> "ap_enable_operation_62"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057

// Dependence Check (RAW) "ap_enable_operation_58"(W:SV3-3) -> "ap_enable_operation_39"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057
reg [8:0] DEP_address_38_to [1 - 1:0];
time DEP_time_38_to [1 - 1:0];
reg [8:0] DEP_address_38_from [1 - 1:0];
time DEP_time_38_from [1 - 1:0];
reg DEP_error_38 = 0;
integer DEP_i_38;

initial begin
    DEP_address_38_to[0] = 0;
    DEP_time_38_to[0] = 0;
    DEP_address_38_from[0] = 0;
    DEP_time_38_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_operation_39) begin
                DEP_address_38_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.this_pMem_address1};
                DEP_time_38_to[0] = $time;
            end else begin
                DEP_address_38_to[0] = {1'b0, 8'b0};
                DEP_time_38_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_reg_pp0_iter0) begin
            DEP_address_38_to[0] = {1'b0, 8'b0};
            DEP_time_38_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_operation_58) begin
                if (DEP_address_38_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_38_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_38_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.this_pMem_address1};
                DEP_time_38_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_operation_58) begin
                DEP_i_38 = 0;
                if (DEP_address_38_to[0][8]) begin
                    DEP_error_38 = (DEP_address_38_to[0][7:0] == DEP_address_38_from[DEP_i_38][7:0]);
                    if (DEP_error_38) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:222:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057\"");
                        $display("//                : From memory access \"this_pMem_address1\" = 0x%0h @ \"%0t\"", DEP_address_38_from[DEP_i_38][7:0], DEP_time_38_from[DEP_i_38]);
                        $display("//                : To memory access \"this_pMem_address1\" = DEP_address_38_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_38_to[0][7:0], DEP_time_38_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_58"(W:SV3-3) -> "ap_enable_operation_39"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057
                    end
                end
                DEP_address_38_from[DEP_i_38] = {1'b0, 8'b0};
                DEP_time_38_from[DEP_i_38] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_58"(W:SV3-3) -> "ap_enable_operation_43"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057
reg [8:0] DEP_address_39_to [1 - 1:0];
time DEP_time_39_to [1 - 1:0];
reg [8:0] DEP_address_39_from [1 - 1:0];
time DEP_time_39_from [1 - 1:0];
reg DEP_error_39 = 0;
integer DEP_i_39;

initial begin
    DEP_address_39_to[0] = 0;
    DEP_time_39_to[0] = 0;
    DEP_address_39_from[0] = 0;
    DEP_time_39_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_operation_43) begin
                DEP_address_39_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.this_pMem_address0};
                DEP_time_39_to[0] = $time;
            end else begin
                DEP_address_39_to[0] = {1'b0, 8'b0};
                DEP_time_39_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_reg_pp0_iter0) begin
            DEP_address_39_to[0] = {1'b0, 8'b0};
            DEP_time_39_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_operation_58) begin
                if (DEP_address_39_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_39_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_39_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.this_pMem_address1};
                DEP_time_39_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_operation_58) begin
                DEP_i_39 = 0;
                if (DEP_address_39_to[0][8]) begin
                    DEP_error_39 = (DEP_address_39_to[0][7:0] == DEP_address_39_from[DEP_i_39][7:0]);
                    if (DEP_error_39) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:222:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057\"");
                        $display("//                : From memory access \"this_pMem_address1\" = 0x%0h @ \"%0t\"", DEP_address_39_from[DEP_i_39][7:0], DEP_time_39_from[DEP_i_39]);
                        $display("//                : To memory access \"this_pMem_address0\" = DEP_address_39_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_39_to[0][7:0], DEP_time_39_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_58"(W:SV3-3) -> "ap_enable_operation_43"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057
                    end
                end
                DEP_address_39_from[DEP_i_39] = {1'b0, 8'b0};
                DEP_time_39_from[DEP_i_39] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_62"(W:SV3-3) -> "ap_enable_operation_39"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057
reg [8:0] DEP_address_40_to [1 - 1:0];
time DEP_time_40_to [1 - 1:0];
reg [8:0] DEP_address_40_from [1 - 1:0];
time DEP_time_40_from [1 - 1:0];
reg DEP_error_40 = 0;
integer DEP_i_40;

initial begin
    DEP_address_40_to[0] = 0;
    DEP_time_40_to[0] = 0;
    DEP_address_40_from[0] = 0;
    DEP_time_40_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_operation_39) begin
                DEP_address_40_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.this_pMem_address1};
                DEP_time_40_to[0] = $time;
            end else begin
                DEP_address_40_to[0] = {1'b0, 8'b0};
                DEP_time_40_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_reg_pp0_iter0) begin
            DEP_address_40_to[0] = {1'b0, 8'b0};
            DEP_time_40_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_operation_62) begin
                if (DEP_address_40_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_40_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_40_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.this_pMem_address0};
                DEP_time_40_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_operation_62) begin
                DEP_i_40 = 0;
                if (DEP_address_40_to[0][8]) begin
                    DEP_error_40 = (DEP_address_40_to[0][7:0] == DEP_address_40_from[DEP_i_40][7:0]);
                    if (DEP_error_40) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:222:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057\"");
                        $display("//                : From memory access \"this_pMem_address0\" = 0x%0h @ \"%0t\"", DEP_address_40_from[DEP_i_40][7:0], DEP_time_40_from[DEP_i_40]);
                        $display("//                : To memory access \"this_pMem_address1\" = DEP_address_40_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_40_to[0][7:0], DEP_time_40_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_62"(W:SV3-3) -> "ap_enable_operation_39"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057
                    end
                end
                DEP_address_40_from[DEP_i_40] = {1'b0, 8'b0};
                DEP_time_40_from[DEP_i_40] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_62"(W:SV3-3) -> "ap_enable_operation_43"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057
reg [8:0] DEP_address_41_to [1 - 1:0];
time DEP_time_41_to [1 - 1:0];
reg [8:0] DEP_address_41_from [1 - 1:0];
time DEP_time_41_from [1 - 1:0];
reg DEP_error_41 = 0;
integer DEP_i_41;

initial begin
    DEP_address_41_to[0] = 0;
    DEP_time_41_to[0] = 0;
    DEP_address_41_from[0] = 0;
    DEP_time_41_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_operation_43) begin
                DEP_address_41_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.this_pMem_address0};
                DEP_time_41_to[0] = $time;
            end else begin
                DEP_address_41_to[0] = {1'b0, 8'b0};
                DEP_time_41_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_reg_pp0_iter0) begin
            DEP_address_41_to[0] = {1'b0, 8'b0};
            DEP_time_41_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_operation_62) begin
                if (DEP_address_41_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_41_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_41_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.this_pMem_address0};
                DEP_time_41_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.ap_enable_operation_62) begin
                DEP_i_41 = 0;
                if (DEP_address_41_to[0][8]) begin
                    DEP_error_41 = (DEP_address_41_to[0][7:0] == DEP_address_41_from[DEP_i_41][7:0]);
                    if (DEP_error_41) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:222:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057\"");
                        $display("//                : From memory access \"this_pMem_address0\" = 0x%0h @ \"%0t\"", DEP_address_41_from[DEP_i_41][7:0], DEP_time_41_from[DEP_i_41]);
                        $display("//                : To memory access \"this_pMem_address0\" = DEP_address_41_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_41_to[0][7:0], DEP_time_41_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_62"(W:SV3-3) -> "ap_enable_operation_43"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057
                    end
                end
                DEP_address_41_from[DEP_i_41] = {1'b0, 8'b0};
                DEP_time_41_from[DEP_i_41] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_62"(W:SV3-3) -> "ap_enable_operation_58"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057

// Dependence Check (WAR) "ap_enable_operation_43"(R:SV0-1) -> "ap_enable_operation_52"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_1101

// Dependence Check (WAR) "ap_enable_operation_46"(R:SV0-1) -> "ap_enable_operation_57"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164

// Dependence Check (WAR) "ap_enable_operation_47"(R:SV0-1) -> "ap_enable_operation_57"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164

// Dependence Check (RAW) "ap_enable_operation_57"(W:SV3-3) -> "ap_enable_operation_37"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164
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
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_enable_operation_37) begin
                DEP_address_46_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.this_pMem_address1};
                DEP_time_46_to[0] = $time;
            end else begin
                DEP_address_46_to[0] = {1'b0, 8'b0};
                DEP_time_46_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_enable_reg_pp0_iter0) begin
            DEP_address_46_to[0] = {1'b0, 8'b0};
            DEP_time_46_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_enable_operation_57) begin
                if (DEP_address_46_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_46_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_46_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.this_pMem_address0};
                DEP_time_46_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_enable_operation_57) begin
                DEP_i_46 = 0;
                if (DEP_address_46_to[0][8]) begin
                    DEP_error_46 = (DEP_address_46_to[0][7:0] == DEP_address_46_from[DEP_i_46][7:0]);
                    if (DEP_error_46) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:210:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164\"");
                        $display("//                : From memory access \"this_pMem_address0\" = 0x%0h @ \"%0t\"", DEP_address_46_from[DEP_i_46][7:0], DEP_time_46_from[DEP_i_46]);
                        $display("//                : To memory access \"this_pMem_address1\" = DEP_address_46_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_46_to[0][7:0], DEP_time_46_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_57"(W:SV3-3) -> "ap_enable_operation_37"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164
                    end
                end
                DEP_address_46_from[DEP_i_46] = {1'b0, 8'b0};
                DEP_time_46_from[DEP_i_46] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_57"(W:SV3-3) -> "ap_enable_operation_41"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164
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
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_enable_operation_41) begin
                DEP_address_47_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.this_pMem_address0};
                DEP_time_47_to[0] = $time;
            end else begin
                DEP_address_47_to[0] = {1'b0, 8'b0};
                DEP_time_47_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_enable_reg_pp0_iter0) begin
            DEP_address_47_to[0] = {1'b0, 8'b0};
            DEP_time_47_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_enable_operation_57) begin
                if (DEP_address_47_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_47_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_47_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.this_pMem_address0};
                DEP_time_47_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.ap_enable_operation_57) begin
                DEP_i_47 = 0;
                if (DEP_address_47_to[0][8]) begin
                    DEP_error_47 = (DEP_address_47_to[0][7:0] == DEP_address_47_from[DEP_i_47][7:0]);
                    if (DEP_error_47) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:210:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164\"");
                        $display("//                : From memory access \"this_pMem_address0\" = 0x%0h @ \"%0t\"", DEP_address_47_from[DEP_i_47][7:0], DEP_time_47_from[DEP_i_47]);
                        $display("//                : To memory access \"this_pMem_address0\" = DEP_address_47_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_47_to[0][7:0], DEP_time_47_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_57"(W:SV3-3) -> "ap_enable_operation_41"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164
                    end
                end
                DEP_address_47_from[DEP_i_47] = {1'b0, 8'b0};
                DEP_time_47_from[DEP_i_47] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAR) "ap_enable_operation_45"(R:SV0-1) -> "ap_enable_operation_54"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194

// Dependence Check (WAR) "ap_enable_operation_46"(R:SV0-1) -> "ap_enable_operation_54"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194

// Dependence Check (RAW) "ap_enable_operation_54"(W:SV3-3) -> "ap_enable_operation_37"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194
reg [8:0] DEP_address_50_to [1 - 1:0];
time DEP_time_50_to [1 - 1:0];
reg [8:0] DEP_address_50_from [1 - 1:0];
time DEP_time_50_from [1 - 1:0];
reg DEP_error_50 = 0;
integer DEP_i_50;

initial begin
    DEP_address_50_to[0] = 0;
    DEP_time_50_to[0] = 0;
    DEP_address_50_from[0] = 0;
    DEP_time_50_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_enable_operation_37) begin
                DEP_address_50_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.this_pMem_address1};
                DEP_time_50_to[0] = $time;
            end else begin
                DEP_address_50_to[0] = {1'b0, 8'b0};
                DEP_time_50_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_enable_reg_pp0_iter0) begin
            DEP_address_50_to[0] = {1'b0, 8'b0};
            DEP_time_50_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_enable_operation_54) begin
                if (DEP_address_50_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_50_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_50_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.this_pMem_address0};
                DEP_time_50_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_enable_operation_54) begin
                DEP_i_50 = 0;
                if (DEP_address_50_to[0][8]) begin
                    DEP_error_50 = (DEP_address_50_to[0][7:0] == DEP_address_50_from[DEP_i_50][7:0]);
                    if (DEP_error_50) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:171:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194\"");
                        $display("//                : From memory access \"this_pMem_address0\" = 0x%0h @ \"%0t\"", DEP_address_50_from[DEP_i_50][7:0], DEP_time_50_from[DEP_i_50]);
                        $display("//                : To memory access \"this_pMem_address1\" = DEP_address_50_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_50_to[0][7:0], DEP_time_50_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_54"(W:SV3-3) -> "ap_enable_operation_37"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194
                    end
                end
                DEP_address_50_from[DEP_i_50] = {1'b0, 8'b0};
                DEP_time_50_from[DEP_i_50] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_54"(W:SV3-3) -> "ap_enable_operation_41"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194
reg [8:0] DEP_address_51_to [1 - 1:0];
time DEP_time_51_to [1 - 1:0];
reg [8:0] DEP_address_51_from [1 - 1:0];
time DEP_time_51_from [1 - 1:0];
reg DEP_error_51 = 0;
integer DEP_i_51;

initial begin
    DEP_address_51_to[0] = 0;
    DEP_time_51_to[0] = 0;
    DEP_address_51_from[0] = 0;
    DEP_time_51_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_enable_operation_41) begin
                DEP_address_51_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.this_pMem_address0};
                DEP_time_51_to[0] = $time;
            end else begin
                DEP_address_51_to[0] = {1'b0, 8'b0};
                DEP_time_51_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_enable_reg_pp0_iter0) begin
            DEP_address_51_to[0] = {1'b0, 8'b0};
            DEP_time_51_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_enable_operation_54) begin
                if (DEP_address_51_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_51_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_51_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.this_pMem_address0};
                DEP_time_51_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.ap_enable_operation_54) begin
                DEP_i_51 = 0;
                if (DEP_address_51_to[0][8]) begin
                    DEP_error_51 = (DEP_address_51_to[0][7:0] == DEP_address_51_from[DEP_i_51][7:0]);
                    if (DEP_error_51) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:171:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194\"");
                        $display("//                : From memory access \"this_pMem_address0\" = 0x%0h @ \"%0t\"", DEP_address_51_from[DEP_i_51][7:0], DEP_time_51_from[DEP_i_51]);
                        $display("//                : To memory access \"this_pMem_address0\" = DEP_address_51_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_51_to[0][7:0], DEP_time_51_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_54"(W:SV3-3) -> "ap_enable_operation_41"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194
                    end
                end
                DEP_address_51_from[DEP_i_51] = {1'b0, 8'b0};
                DEP_time_51_from[DEP_i_51] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAR) "ap_enable_operation_37"(R:SV0-1) -> "ap_enable_operation_302"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210

// Dependence Check (RAW) "ap_enable_operation_302"(W:SV3-3) -> "ap_enable_operation_33"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210
reg [8:0] DEP_address_53_to [1 - 1:0];
time DEP_time_53_to [1 - 1:0];
reg [8:0] DEP_address_53_from [1 - 1:0];
time DEP_time_53_from [1 - 1:0];
reg DEP_error_53 = 0;
integer DEP_i_53;

initial begin
    DEP_address_53_to[0] = 0;
    DEP_time_53_to[0] = 0;
    DEP_address_53_from[0] = 0;
    DEP_time_53_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210.ap_enable_operation_33) begin
                DEP_address_53_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210.this_pMem_address0};
                DEP_time_53_to[0] = $time;
            end else begin
                DEP_address_53_to[0] = {1'b0, 8'b0};
                DEP_time_53_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210.ap_enable_reg_pp0_iter0) begin
            DEP_address_53_to[0] = {1'b0, 8'b0};
            DEP_time_53_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210.ap_enable_operation_302) begin
                if (DEP_address_53_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_53_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_53_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210.this_pMem_address0};
                DEP_time_53_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210.ap_enable_operation_302) begin
                DEP_i_53 = 0;
                if (DEP_address_53_to[0][8]) begin
                    DEP_error_53 = (DEP_address_53_to[0][7:0] == DEP_address_53_from[DEP_i_53][7:0]);
                    if (DEP_error_53) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:343:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210\"");
                        $display("//                : From memory access \"this_pMem_address0\" = 0x%0h @ \"%0t\"", DEP_address_53_from[DEP_i_53][7:0], DEP_time_53_from[DEP_i_53]);
                        $display("//                : To memory access \"this_pMem_address0\" = DEP_address_53_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_53_to[0][7:0], DEP_time_53_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_302"(W:SV3-3) -> "ap_enable_operation_33"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210
                    end
                end
                DEP_address_53_from[DEP_i_53] = {1'b0, 8'b0};
                DEP_time_53_from[DEP_i_53] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAR) "ap_enable_operation_37"(R:SV0-1) -> "ap_enable_operation_49"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224

// Dependence Check (WAR) "ap_enable_operation_37"(R:SV0-1) -> "ap_enable_operation_53"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224

// Dependence Check (RAW) "ap_enable_operation_49"(W:SV3-3) -> "ap_enable_operation_31"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224
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
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_enable_operation_31) begin
                DEP_address_56_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.this_pMem_address0};
                DEP_time_56_to[0] = $time;
            end else begin
                DEP_address_56_to[0] = {1'b0, 8'b0};
                DEP_time_56_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_enable_reg_pp0_iter0) begin
            DEP_address_56_to[0] = {1'b0, 8'b0};
            DEP_time_56_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_enable_operation_49) begin
                if (DEP_address_56_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_56_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_56_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.this_pMem_address1};
                DEP_time_56_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_enable_operation_49) begin
                DEP_i_56 = 0;
                if (DEP_address_56_to[0][8]) begin
                    DEP_error_56 = (DEP_address_56_to[0][7:0] == DEP_address_56_from[DEP_i_56][7:0]);
                    if (DEP_error_56) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:351:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224\"");
                        $display("//                : From memory access \"this_pMem_address1\" = 0x%0h @ \"%0t\"", DEP_address_56_from[DEP_i_56][7:0], DEP_time_56_from[DEP_i_56]);
                        $display("//                : To memory access \"this_pMem_address0\" = DEP_address_56_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_56_to[0][7:0], DEP_time_56_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_49"(W:SV3-3) -> "ap_enable_operation_31"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224
                    end
                end
                DEP_address_56_from[DEP_i_56] = {1'b0, 8'b0};
                DEP_time_56_from[DEP_i_56] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_53"(W:SV3-3) -> "ap_enable_operation_31"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224
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
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_enable_operation_31) begin
                DEP_address_57_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.this_pMem_address0};
                DEP_time_57_to[0] = $time;
            end else begin
                DEP_address_57_to[0] = {1'b0, 8'b0};
                DEP_time_57_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_enable_reg_pp0_iter0) begin
            DEP_address_57_to[0] = {1'b0, 8'b0};
            DEP_time_57_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_enable_operation_53) begin
                if (DEP_address_57_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_57_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_57_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.this_pMem_address0};
                DEP_time_57_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.ap_enable_operation_53) begin
                DEP_i_57 = 0;
                if (DEP_address_57_to[0][8]) begin
                    DEP_error_57 = (DEP_address_57_to[0][7:0] == DEP_address_57_from[DEP_i_57][7:0]);
                    if (DEP_error_57) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:351:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224\"");
                        $display("//                : From memory access \"this_pMem_address0\" = 0x%0h @ \"%0t\"", DEP_address_57_from[DEP_i_57][7:0], DEP_time_57_from[DEP_i_57]);
                        $display("//                : To memory access \"this_pMem_address0\" = DEP_address_57_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_57_to[0][7:0], DEP_time_57_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_53"(W:SV3-3) -> "ap_enable_operation_31"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224
                    end
                end
                DEP_address_57_from[DEP_i_57] = {1'b0, 8'b0};
                DEP_time_57_from[DEP_i_57] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_53"(W:SV3-3) -> "ap_enable_operation_49"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224

// Dependence Check (WAR) "ap_enable_operation_43"(R:SV0-1) -> "ap_enable_operation_57"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267

// Dependence Check (WAR) "ap_enable_operation_44"(R:SV0-1) -> "ap_enable_operation_57"(W:SV3-3) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267

// Dependence Check (RAW) "ap_enable_operation_57"(W:SV3-3) -> "ap_enable_operation_33"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267
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
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_enable_operation_33) begin
                DEP_address_61_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.this_pMem_address1};
                DEP_time_61_to[0] = $time;
            end else begin
                DEP_address_61_to[0] = {1'b0, 8'b0};
                DEP_time_61_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_enable_reg_pp0_iter0) begin
            DEP_address_61_to[0] = {1'b0, 8'b0};
            DEP_time_61_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_enable_operation_57) begin
                if (DEP_address_61_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_61_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_61_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.this_pMem_address0};
                DEP_time_61_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_enable_operation_57) begin
                DEP_i_61 = 0;
                if (DEP_address_61_to[0][8]) begin
                    DEP_error_61 = (DEP_address_61_to[0][7:0] == DEP_address_61_from[DEP_i_61][7:0]);
                    if (DEP_error_61) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:378:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267\"");
                        $display("//                : From memory access \"this_pMem_address0\" = 0x%0h @ \"%0t\"", DEP_address_61_from[DEP_i_61][7:0], DEP_time_61_from[DEP_i_61]);
                        $display("//                : To memory access \"this_pMem_address1\" = DEP_address_61_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_61_to[0][7:0], DEP_time_61_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_57"(W:SV3-3) -> "ap_enable_operation_33"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267
                    end
                end
                DEP_address_61_from[DEP_i_61] = {1'b0, 8'b0};
                DEP_time_61_from[DEP_i_61] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_57"(W:SV3-3) -> "ap_enable_operation_37"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267
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
    if (~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_enable_operation_37) begin
                DEP_address_62_to[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.this_pMem_address0};
                DEP_time_62_to[0] = $time;
            end else begin
                DEP_address_62_to[0] = {1'b0, 8'b0};
                DEP_time_62_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_enable_state1_pp0_iter0_stage0)
            &&  ~`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_enable_reg_pp0_iter0) begin
            DEP_address_62_to[0] = {1'b0, 8'b0};
            DEP_time_62_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_enable_operation_57) begin
                if (DEP_address_62_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_62_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_62_from[0] = {1'b1, `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.this_pMem_address0};
                DEP_time_62_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_enable_state4_pp0_iter1_stage1
            &&  `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.ap_enable_operation_57) begin
                DEP_i_62 = 0;
                if (DEP_address_62_to[0][8]) begin
                    DEP_error_62 = (DEP_address_62_to[0][7:0] == DEP_address_62_from[DEP_i_62][7:0]);
                    if (DEP_error_62) begin
                        $display("//Critical WARNING: Due to pragma (HLS_Final_vitis_src/dpu.cpp:378:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267\"");
                        $display("//                : From memory access \"this_pMem_address0\" = 0x%0h @ \"%0t\"", DEP_address_62_from[DEP_i_62][7:0], DEP_time_62_from[DEP_i_62]);
                        $display("//                : To memory access \"this_pMem_address0\" = DEP_address_62_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_62_to[0][7:0], DEP_time_62_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_57"(W:SV3-3) -> "ap_enable_operation_37"(R:SV0-1) @ `AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267
                    end
                end
                DEP_address_62_from[DEP_i_62] = {1'b0, 8'b0};
                DEP_time_62_from[DEP_i_62] = 0;
            end
        end // of check access
    end 
end

`endif
///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
