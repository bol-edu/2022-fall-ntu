// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      matrixmul
`define AUTOTB_DUT_INST AESL_inst_matrixmul
`define AUTOTB_TOP      apatb_matrixmul_top
`define AUTOTB_LAT_RESULT_FILE "matrixmul.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "matrixmul.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_matrixmul_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 6.67

`define AESL_FIFO_a AESL_autofifo_a
`define AESL_FIFO_INST_a AESL_autofifo_inst_a
`define AESL_FIFO_b AESL_autofifo_b
`define AESL_FIFO_INST_b AESL_autofifo_inst_b
`define AESL_FIFO_res AESL_autofifo_res
`define AESL_FIFO_INST_res AESL_autofifo_inst_res
`define AUTOTB_TVIN_a  "../tv/cdatafile/c.matrixmul.autotvin_a.dat"
`define AUTOTB_TVIN_b  "../tv/cdatafile/c.matrixmul.autotvin_b.dat"
`define AUTOTB_TVIN_res  "../tv/cdatafile/c.matrixmul.autotvin_res.dat"
`define AUTOTB_TVIN_a_out_wrapc  "../tv/rtldatafile/rtl.matrixmul.autotvin_a.dat"
`define AUTOTB_TVIN_b_out_wrapc  "../tv/rtldatafile/rtl.matrixmul.autotvin_b.dat"
`define AUTOTB_TVIN_res_out_wrapc  "../tv/rtldatafile/rtl.matrixmul.autotvin_res.dat"
`define AUTOTB_TVOUT_res  "../tv/cdatafile/c.matrixmul.autotvout_res.dat"
`define AUTOTB_TVOUT_res_out_wrapc  "../tv/rtldatafile/rtl.matrixmul.autotvout_res.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 10;
parameter LENGTH_a = 3;
parameter LENGTH_b = 3;
parameter LENGTH_res = 9;

task read_token;
    input integer fp;
    output reg [127 : 0] token;
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
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [23 : 0] a_dout;
wire  a_empty_n;
wire  a_read;
wire [23 : 0] b_dout;
wire  b_empty_n;
wire  b_read;
wire [15 : 0] res_din;
wire  res_full_n;
wire  res_write;
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
    .a_dout(a_dout),
    .a_empty_n(a_empty_n),
    .a_read(a_read),
    .b_dout(b_dout),
    .b_empty_n(b_empty_n),
    .b_read(b_read),
    .res_din(res_din),
    .res_full_n(res_full_n),
    .res_write(res_write));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = AESL_reset;
assign ap_rst_n = ~AESL_reset;
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
// Fifo Instantiation a

wire fifoa_rd;
wire [23 : 0] fifoa_dout;
wire fifoa_empty_n;
wire fifoa_ready;
wire fifoa_done;
reg [31:0] ap_c_n_tvin_trans_num_a;
reg a_ready_reg;

`AESL_FIFO_a `AESL_FIFO_INST_a (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifoa_rd),
    .if_dout      (fifoa_dout),
    .if_empty_n   (fifoa_empty_n),
    .ready        (fifoa_ready),
    .done         (fifoa_done)
);

// Assignment between dut and fifoa

// Assign input of fifoa
assign      fifoa_rd        =   a_read & a_empty_n;
assign    fifoa_ready   =   ready;
assign    fifoa_done    =   0;
// Assign input of dut
assign      a_dout       =   fifoa_dout;
reg   reg_fifoa_empty_n;
initial begin : gen_reg_fifoa_empty_n_process
    integer proc_rand;
    reg_fifoa_empty_n = fifoa_empty_n;
    while (1) begin
        @ (fifoa_empty_n);
        reg_fifoa_empty_n = fifoa_empty_n;
    end
end

assign      a_empty_n    =   reg_fifoa_empty_n;


// Fifo Instantiation b

wire fifob_rd;
wire [23 : 0] fifob_dout;
wire fifob_empty_n;
wire fifob_ready;
wire fifob_done;
reg [31:0] ap_c_n_tvin_trans_num_b;
reg b_ready_reg;

`AESL_FIFO_b `AESL_FIFO_INST_b (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifob_rd),
    .if_dout      (fifob_dout),
    .if_empty_n   (fifob_empty_n),
    .ready        (fifob_ready),
    .done         (fifob_done)
);

// Assignment between dut and fifob

// Assign input of fifob
assign      fifob_rd        =   b_read & b_empty_n;
assign    fifob_ready   =   ready;
assign    fifob_done    =   0;
// Assign input of dut
assign      b_dout       =   fifob_dout;
reg   reg_fifob_empty_n;
initial begin : gen_reg_fifob_empty_n_process
    integer proc_rand;
    reg_fifob_empty_n = fifob_empty_n;
    while (1) begin
        @ (fifob_empty_n);
        reg_fifob_empty_n = fifob_empty_n;
    end
end

assign      b_empty_n    =   reg_fifob_empty_n;


//------------------------Fifores Instantiation--------------

// The input and output of fifores
wire  fifores_wr;
wire  [15 : 0] fifores_din;
wire  fifores_full_n;
wire  fifores_ready;
wire  fifores_done;

`AESL_FIFO_res `AESL_FIFO_INST_res(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifores_wr),
    .if_din       (fifores_din),
    .if_full_n    (fifores_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifores_ready),
    .done         (fifores_done)
);

// Assignment between dut and fifores

// Assign input of fifores
assign      fifores_wr        =   res_write & res_full_n;
assign      fifores_din        =   res_din;
assign    fifores_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifores_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifores_full_n;
initial begin : gen_reg_fifores_full_n_process
    integer proc_rand;
    reg_fifores_full_n = fifores_full_n;
    while (1) begin
        @ (fifores_full_n);
        reg_fifores_full_n = fifores_full_n;
    end
end

assign      res_full_n    =   reg_fifores_full_n;


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


reg end_a;
reg [31:0] size_a;
reg [31:0] size_a_backup;
reg end_b;
reg [31:0] size_b;
reg [31:0] size_b_backup;
reg end_res;
reg [31:0] size_res;
reg [31:0] size_res_backup;

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
initial begin : proc_gen_a_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    a_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_a > internal_trans_num) begin
            a_ready_reg <= 1;
            @(posedge AESL_clock);
            a_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    a_ready_reg <= 0;
end
initial begin : proc_gen_b_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    b_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_b > internal_trans_num) begin
            b_ready_reg <= 1;
            @(posedge AESL_clock);
            b_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    b_ready_reg <= 0;
end
    
    `define STREAM_SIZE_IN_a "../tv/stream_size/stream_size_in_a.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_a
        integer fp_a;
        reg [127:0] token_a;
        integer ret;
        
        ap_c_n_tvin_trans_num_a = 0;
        end_a = 0;
        wait (AESL_reset === 0);
        
        fp_a = $fopen(`AUTOTB_TVIN_a, "r");
        if(fp_a == 0) begin
            $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_a);
            $finish;
        end
        read_token(fp_a, token_a); // should be [[[runtime]]]
        if (token_a != "[[[runtime]]]") begin
            $display("ERROR: token_a != \"[[[runtime]]]\"");
            $finish;
        end
        ap_c_n_tvin_trans_num_a = ap_c_n_tvin_trans_num_a + 1;
        read_token(fp_a, token_a); // should be [[transaction]] or [[[/runtime]]]
        if (token_a == "[[[/runtime]]]") begin
            $fclose(fp_a);
            end_a = 1;
        end else begin
            end_a = 0;
            read_token(fp_a, token_a); // should be transaction number
            read_token(fp_a, token_a);
        end
        while (token_a == "[[/transaction]]" && end_a == 0) begin
            ap_c_n_tvin_trans_num_a = ap_c_n_tvin_trans_num_a + 1;
            read_token(fp_a, token_a); // should be [[transaction]] or [[[/runtime]]]
            if (token_a == "[[[/runtime]]]") begin
                $fclose(fp_a);
                end_a = 1;
            end else begin
                end_a = 0;
                read_token(fp_a, token_a); // should be transaction number
                read_token(fp_a, token_a);
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_a == 0) begin
                if (a_read == 1) begin
                    read_token(fp_a, token_a);
                    while (token_a == "[[/transaction]]" && end_a == 0) begin
                        ap_c_n_tvin_trans_num_a = ap_c_n_tvin_trans_num_a + 1;
                        read_token(fp_a, token_a); // should be [[transaction]] or [[[/runtime]]]
                        if (token_a == "[[[/runtime]]]") begin
                            $fclose(fp_a);
                            end_a = 1;
                        end else begin
                            end_a = 0;
                            read_token(fp_a, token_a); // should be transaction number
                            read_token(fp_a, token_a);
                        end
                    end
                end
            end else begin
                ap_c_n_tvin_trans_num_a = ap_c_n_tvin_trans_num_a + 1;
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_b "../tv/stream_size/stream_size_in_b.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_b
        integer fp_b;
        reg [127:0] token_b;
        integer ret;
        
        ap_c_n_tvin_trans_num_b = 0;
        end_b = 0;
        wait (AESL_reset === 0);
        
        fp_b = $fopen(`AUTOTB_TVIN_b, "r");
        if(fp_b == 0) begin
            $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_b);
            $finish;
        end
        read_token(fp_b, token_b); // should be [[[runtime]]]
        if (token_b != "[[[runtime]]]") begin
            $display("ERROR: token_b != \"[[[runtime]]]\"");
            $finish;
        end
        ap_c_n_tvin_trans_num_b = ap_c_n_tvin_trans_num_b + 1;
        read_token(fp_b, token_b); // should be [[transaction]] or [[[/runtime]]]
        if (token_b == "[[[/runtime]]]") begin
            $fclose(fp_b);
            end_b = 1;
        end else begin
            end_b = 0;
            read_token(fp_b, token_b); // should be transaction number
            read_token(fp_b, token_b);
        end
        while (token_b == "[[/transaction]]" && end_b == 0) begin
            ap_c_n_tvin_trans_num_b = ap_c_n_tvin_trans_num_b + 1;
            read_token(fp_b, token_b); // should be [[transaction]] or [[[/runtime]]]
            if (token_b == "[[[/runtime]]]") begin
                $fclose(fp_b);
                end_b = 1;
            end else begin
                end_b = 0;
                read_token(fp_b, token_b); // should be transaction number
                read_token(fp_b, token_b);
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_b == 0) begin
                if (b_read == 1) begin
                    read_token(fp_b, token_b);
                    while (token_b == "[[/transaction]]" && end_b == 0) begin
                        ap_c_n_tvin_trans_num_b = ap_c_n_tvin_trans_num_b + 1;
                        read_token(fp_b, token_b); // should be [[transaction]] or [[[/runtime]]]
                        if (token_b == "[[[/runtime]]]") begin
                            $fclose(fp_b);
                            end_b = 1;
                        end else begin
                            end_b = 0;
                            read_token(fp_b, token_b); // should be transaction number
                            read_token(fp_b, token_b);
                        end
                    end
                end
            end else begin
                ap_c_n_tvin_trans_num_b = ap_c_n_tvin_trans_num_b + 1;
            end
        end
    end
    

reg dump_tvout_finish_res;

initial begin : dump_tvout_runtime_sign_res
    integer fp;
    dump_tvout_finish_res = 0;
    fp = $fopen(`AUTOTB_TVOUT_res_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_res_out_wrapc);
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
    fp = $fopen(`AUTOTB_TVOUT_res_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_res_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_res = 1;
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

endmodule
