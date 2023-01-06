// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      canny
`define AUTOTB_DUT_INST AESL_inst_canny
`define AUTOTB_TOP      apatb_canny_top
`define AUTOTB_LAT_RESULT_FILE "canny.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "canny.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_canny_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_MEM_src AESL_automem_src
`define AESL_MEM_INST_src mem_inst_src
`define AESL_MEM_dst AESL_automem_dst
`define AESL_MEM_INST_dst mem_inst_dst
`define AESL_DEPTH_upperThresh 1
`define AESL_DEPTH_lowerThresh 1
`define AUTOTB_TVIN_src  "../tv/cdatafile/c.canny.autotvin_src.dat"
`define AUTOTB_TVIN_dst  "../tv/cdatafile/c.canny.autotvin_dst.dat"
`define AUTOTB_TVIN_upperThresh  "../tv/cdatafile/c.canny.autotvin_upperThresh.dat"
`define AUTOTB_TVIN_lowerThresh  "../tv/cdatafile/c.canny.autotvin_lowerThresh.dat"
`define AUTOTB_TVIN_src_out_wrapc  "../tv/rtldatafile/rtl.canny.autotvin_src.dat"
`define AUTOTB_TVIN_dst_out_wrapc  "../tv/rtldatafile/rtl.canny.autotvin_dst.dat"
`define AUTOTB_TVIN_upperThresh_out_wrapc  "../tv/rtldatafile/rtl.canny.autotvin_upperThresh.dat"
`define AUTOTB_TVIN_lowerThresh_out_wrapc  "../tv/rtldatafile/rtl.canny.autotvin_lowerThresh.dat"
`define AUTOTB_TVOUT_dst  "../tv/cdatafile/c.canny.autotvout_dst.dat"
`define AUTOTB_TVOUT_dst_out_wrapc  "../tv/rtldatafile/rtl.canny.autotvout_dst.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 17453;
parameter LENGTH_dst = 16384;
parameter LENGTH_lowerThresh = 1;
parameter LENGTH_src = 16384;
parameter LENGTH_upperThresh = 1;

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
wire [13 : 0] src_address0;
wire  src_ce0;
wire [31 : 0] src_d0;
wire [31 : 0] src_q0;
wire  src_we0;
wire [13 : 0] src_address1;
wire  src_ce1;
wire [31 : 0] src_d1;
wire [31 : 0] src_q1;
wire  src_we1;
wire [13 : 0] dst_address0;
wire  dst_ce0;
wire [31 : 0] dst_d0;
wire [31 : 0] dst_q0;
wire  dst_we0;
wire [13 : 0] dst_address1;
wire  dst_ce1;
wire [31 : 0] dst_d1;
wire [31 : 0] dst_q1;
wire  dst_we1;
wire [31 : 0] upperThresh;
wire [31 : 0] lowerThresh;
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
    .src_address0(src_address0),
    .src_ce0(src_ce0),
    .src_d0(src_d0),
    .src_q0(src_q0),
    .src_we0(src_we0),
    .src_address1(src_address1),
    .src_ce1(src_ce1),
    .src_d1(src_d1),
    .src_q1(src_q1),
    .src_we1(src_we1),
    .dst_address0(dst_address0),
    .dst_ce0(dst_ce0),
    .dst_d0(dst_d0),
    .dst_q0(dst_q0),
    .dst_we0(dst_we0),
    .dst_address1(dst_address1),
    .dst_ce1(dst_ce1),
    .dst_d1(dst_d1),
    .dst_q1(dst_q1),
    .dst_we1(dst_we1),
    .upperThresh(upperThresh),
    .lowerThresh(lowerThresh),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_ready(ap_ready),
    .ap_idle(ap_idle));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = dut_rst;
assign ap_rst_n = ~dut_rst;
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
//------------------------arraysrc Instantiation--------------

// The input and output of arraysrc
wire    arraysrc_ce0, arraysrc_ce1;
wire [4 - 1 : 0]    arraysrc_we0, arraysrc_we1;
wire    [13 : 0]    arraysrc_address0, arraysrc_address1;
wire    [31 : 0]    arraysrc_din0, arraysrc_din1;
wire    [31 : 0]    arraysrc_dout0, arraysrc_dout1;
wire    arraysrc_ready;
wire    arraysrc_done;

`AESL_MEM_src `AESL_MEM_INST_src(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arraysrc_ce0),
    .we0        (arraysrc_we0),
    .address0   (arraysrc_address0),
    .din0       (arraysrc_din0),
    .dout0      (arraysrc_dout0),
    .ce1        (arraysrc_ce1),
    .we1        (arraysrc_we1),
    .address1   (arraysrc_address1),
    .din1       (arraysrc_din1),
    .dout1      (arraysrc_dout1),
    .ready      (arraysrc_ready),
    .done    (arraysrc_done)
);

// Assignment between dut and arraysrc
assign arraysrc_address0 = src_address0;
assign arraysrc_ce0 = src_ce0;
assign src_q0 = arraysrc_dout0;
assign arraysrc_we0 = 0;
assign arraysrc_din0 = 0;
assign arraysrc_we1 = 0;
assign arraysrc_din1 = 0;
assign arraysrc_ready=    ready;
assign arraysrc_done = 0;


//------------------------arraydst Instantiation--------------

// The input and output of arraydst
wire    arraydst_ce0, arraydst_ce1;
wire [4 - 1 : 0]    arraydst_we0, arraydst_we1;
wire    [13 : 0]    arraydst_address0, arraydst_address1;
wire    [31 : 0]    arraydst_din0, arraydst_din1;
wire    [31 : 0]    arraydst_dout0, arraydst_dout1;
wire    arraydst_ready;
wire    arraydst_done;

`AESL_MEM_dst `AESL_MEM_INST_dst(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arraydst_ce0),
    .we0        (arraydst_we0),
    .address0   (arraydst_address0),
    .din0       (arraydst_din0),
    .dout0      (arraydst_dout0),
    .ce1        (arraydst_ce1),
    .we1        (arraydst_we1),
    .address1   (arraydst_address1),
    .din1       (arraydst_din1),
    .dout1      (arraydst_dout1),
    .ready      (arraydst_ready),
    .done    (arraydst_done)
);

// Assignment between dut and arraydst
assign arraydst_address0 = dst_address0;
assign arraydst_ce0 = dst_ce0;
assign arraydst_we0[0] = dst_we0;
assign arraydst_we0[1] = dst_we0;
assign arraydst_we0[2] = dst_we0;
assign arraydst_we0[3] = dst_we0;
assign arraydst_din0 = dst_d0;
assign arraydst_we1 = 0;
assign arraydst_din1 = 0;
assign arraydst_ready= ready_initial | arraydst_done;
assign arraydst_done =    AESL_done_delay;


// The signal of port upperThresh
reg [31: 0] AESL_REG_upperThresh = 0;
assign upperThresh = AESL_REG_upperThresh;
initial begin : read_file_process_upperThresh
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_upperThresh,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_upperThresh);
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
            ret = $sscanf(token, "0x%x", AESL_REG_upperThresh);
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


// The signal of port lowerThresh
reg [31: 0] AESL_REG_lowerThresh = 0;
assign lowerThresh = AESL_REG_lowerThresh;
initial begin : read_file_process_lowerThresh
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_lowerThresh,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_lowerThresh);
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
            ret = $sscanf(token, "0x%x", AESL_REG_lowerThresh);
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
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_src;
reg [31:0] size_src;
reg [31:0] size_src_backup;
reg end_dst;
reg [31:0] size_dst;
reg [31:0] size_dst_backup;
reg end_upperThresh;
reg [31:0] size_upperThresh;
reg [31:0] size_upperThresh_backup;
reg end_lowerThresh;
reg [31:0] size_lowerThresh;
reg [31:0] size_lowerThresh_backup;

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

reg dump_tvout_finish_dst;

initial begin : dump_tvout_runtime_sign_dst
    integer fp;
    dump_tvout_finish_dst = 0;
    fp = $fopen(`AUTOTB_TVOUT_dst_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_dst_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_dst_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_dst_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_dst = 1;
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

// Dependence Check (WAR) "ap_enable_operation_104"(R:SV2-3) -> "ap_enable_operation_120"(W:SV4-4) @ `AUTOTB_DUT_INST.MergeFilter_U0

// Dependence Check (RAW) "ap_enable_operation_120"(W:SV4-4) -> "ap_enable_operation_97"(R:SV2-3) @ `AUTOTB_DUT_INST.MergeFilter_U0
reg [8:0] DEP_address_1_to [2 - 1:0];
time DEP_time_1_to [2 - 1:0];
reg [8:0] DEP_address_1_from [1 - 1:0];
time DEP_time_1_from [1 - 1:0];
reg DEP_error_1 = 0;
integer DEP_i_1;

initial begin
    DEP_address_1_to[0] = 0;
    DEP_time_1_to[0] = 0;
    DEP_address_1_to[1] = 0;
    DEP_time_1_to[1] = 0;
    DEP_address_1_from[0] = 0;
    DEP_time_1_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.MergeFilter_U0.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.MergeFilter_U0.ap_enable_state3_pp0_iter2_stage0
            &&  `AUTOTB_DUT_INST.MergeFilter_U0.ap_enable_reg_pp0_iter2) begin 
            DEP_address_1_to[1] = DEP_address_1_to[0];
            DEP_time_1_to[1] = DEP_time_1_to[0];
            if (`AUTOTB_DUT_INST.MergeFilter_U0.ap_enable_operation_97) begin
                DEP_address_1_to[0] = {1'b1, `AUTOTB_DUT_INST.MergeFilter_U0.LineBuff_address1};
                DEP_time_1_to[0] = $time;
            end else begin
                DEP_address_1_to[0] = {1'b0, 8'b0};
                DEP_time_1_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.MergeFilter_U0.ap_enable_state3_pp0_iter2_stage0||
            `AUTOTB_DUT_INST.MergeFilter_U0.ap_enable_state3_pp0_iter2_stage0||
            `AUTOTB_DUT_INST.MergeFilter_U0.ap_enable_state4_pp0_iter3_stage0||
            `AUTOTB_DUT_INST.MergeFilter_U0.ap_enable_state5_pp0_iter4_stage0)
            &&  ~`AUTOTB_DUT_INST.MergeFilter_U0.ap_enable_reg_pp0_iter2) begin
            DEP_address_1_to[1] = DEP_address_1_to[0];
            DEP_time_1_to[1] = DEP_time_1_to[0];
            DEP_address_1_to[0] = {1'b0, 8'b0};
            DEP_time_1_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.MergeFilter_U0.ap_enable_state5_pp0_iter4_stage0
            &&  `AUTOTB_DUT_INST.MergeFilter_U0.ap_enable_reg_pp0_iter4) begin
            if (`AUTOTB_DUT_INST.MergeFilter_U0.ap_enable_operation_120) begin
                if (DEP_address_1_from[0][8]) begin
                    $display("// ERROR : \"DEP_address_1_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_1_from[0] = {1'b1, `AUTOTB_DUT_INST.MergeFilter_U0.LineBuff_address0};
                DEP_time_1_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.MergeFilter_U0.ap_enable_state5_pp0_iter4_stage0
            &&  `AUTOTB_DUT_INST.MergeFilter_U0.ap_enable_reg_pp0_iter4) begin
            if (`AUTOTB_DUT_INST.MergeFilter_U0.ap_enable_operation_120) begin
                DEP_i_1 = 0;
                if (DEP_address_1_to[0][8]) begin
                    DEP_error_1 = (DEP_address_1_to[0][7:0] == DEP_address_1_from[DEP_i_1][7:0]);
                    if (DEP_error_1) begin
                        $display("//Critical WARNING: Due to pragma (canny/canny.cpp:45:9), dependence access (loop distance = 2) is detected in \"`AUTOTB_DUT_INST.MergeFilter_U0\"");
                        $display("//                : From memory access \"LineBuff_address0\" = 0x%0h @ \"%0t\"", DEP_address_1_from[DEP_i_1][7:0], DEP_time_1_from[DEP_i_1]);
                        $display("//                : To memory access \"LineBuff_address1\" = DEP_address_1_to[0][7:0] = 0x%0h @ \"%0t\"", DEP_address_1_to[0][7:0], DEP_time_1_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_120"(W:SV4-4) -> "ap_enable_operation_97"(R:SV2-3) @ `AUTOTB_DUT_INST.MergeFilter_U0
                    end
                end
                if (DEP_address_1_to[1][8]) begin
                    DEP_error_1 = (DEP_address_1_to[1][7:0] == DEP_address_1_from[DEP_i_1][7:0]);
                    if (DEP_error_1) begin
                        $display("//Critical WARNING: Due to pragma (canny/canny.cpp:45:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.MergeFilter_U0\"");
                        $display("//                : From memory access \"LineBuff_address0\" = 0x%0h @ \"%0t\"", DEP_address_1_from[DEP_i_1][7:0], DEP_time_1_from[DEP_i_1]);
                        $display("//                : To memory access \"LineBuff_address1\" = DEP_address_1_to[1][7:0] = 0x%0h @ \"%0t\"", DEP_address_1_to[1][7:0], DEP_time_1_to[1]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_120"(W:SV4-4) -> "ap_enable_operation_97"(R:SV2-3) @ `AUTOTB_DUT_INST.MergeFilter_U0
                    end
                end
                DEP_address_1_from[DEP_i_1] = {1'b0, 8'b0};
                DEP_time_1_from[DEP_i_1] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAR) "ap_enable_operation_62"(R:SV1-2) -> "ap_enable_operation_103"(W:SV3-3) @ `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74

// Dependence Check (WAR) "ap_enable_operation_64"(R:SV1-2) -> "ap_enable_operation_105"(W:SV3-3) @ `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74

// Dependence Check (WAR) "ap_enable_operation_65"(R:SV1-2) -> "ap_enable_operation_107"(W:SV3-3) @ `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74

// Dependence Check (WAR) "ap_enable_operation_66"(R:SV1-2) -> "ap_enable_operation_109"(W:SV3-3) @ `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74

// Dependence Check (RAW) "ap_enable_operation_103"(W:SV3-3) -> "ap_enable_operation_40"(R:SV1-2) @ `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74
reg [7:0] DEP_address_6_to [2 - 1:0];
time DEP_time_6_to [2 - 1:0];
reg [7:0] DEP_address_6_from [1 - 1:0];
time DEP_time_6_from [1 - 1:0];
reg DEP_error_6 = 0;
integer DEP_i_6;

initial begin
    DEP_address_6_to[0] = 0;
    DEP_time_6_to[0] = 0;
    DEP_address_6_to[1] = 0;
    DEP_time_6_to[1] = 0;
    DEP_address_6_from[0] = 0;
    DEP_time_6_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state2_pp0_iter1_stage0
            &&  `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_reg_pp0_iter1) begin 
            DEP_address_6_to[1] = DEP_address_6_to[0];
            DEP_time_6_to[1] = DEP_time_6_to[0];
            if (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_operation_40) begin
                DEP_address_6_to[0] = {1'b1, `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.LineBuff_mag_address1};
                DEP_time_6_to[0] = $time;
            end else begin
                DEP_address_6_to[0] = {1'b0, 7'b0};
                DEP_time_6_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state2_pp0_iter1_stage0||
            `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state2_pp0_iter1_stage0||
            `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state3_pp0_iter2_stage0||
            `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state4_pp0_iter3_stage0)
            &&  ~`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_reg_pp0_iter1) begin
            DEP_address_6_to[1] = DEP_address_6_to[0];
            DEP_time_6_to[1] = DEP_time_6_to[0];
            DEP_address_6_to[0] = {1'b0, 7'b0};
            DEP_time_6_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state4_pp0_iter3_stage0
            &&  `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_reg_pp0_iter3) begin
            if (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_operation_103) begin
                if (DEP_address_6_from[0][7]) begin
                    $display("// ERROR : \"DEP_address_6_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_6_from[0] = {1'b1, `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.LineBuff_mag_address0};
                DEP_time_6_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state4_pp0_iter3_stage0
            &&  `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_reg_pp0_iter3) begin
            if (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_operation_103) begin
                DEP_i_6 = 0;
                if (DEP_address_6_to[0][7]) begin
                    DEP_error_6 = (DEP_address_6_to[0][6:0] == DEP_address_6_from[DEP_i_6][6:0]);
                    if (DEP_error_6) begin
                        $display("//Critical WARNING: Due to pragma (canny/canny.cpp:183:9), dependence access (loop distance = 2) is detected in \"`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74\"");
                        $display("//                : From memory access \"LineBuff_mag_address0\" = 0x%0h @ \"%0t\"", DEP_address_6_from[DEP_i_6][6:0], DEP_time_6_from[DEP_i_6]);
                        $display("//                : To memory access \"LineBuff_mag_address1\" = DEP_address_6_to[0][6:0] = 0x%0h @ \"%0t\"", DEP_address_6_to[0][6:0], DEP_time_6_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_103"(W:SV3-3) -> "ap_enable_operation_40"(R:SV1-2) @ `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74
                    end
                end
                if (DEP_address_6_to[1][7]) begin
                    DEP_error_6 = (DEP_address_6_to[1][6:0] == DEP_address_6_from[DEP_i_6][6:0]);
                    if (DEP_error_6) begin
                        $display("//Critical WARNING: Due to pragma (canny/canny.cpp:183:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74\"");
                        $display("//                : From memory access \"LineBuff_mag_address0\" = 0x%0h @ \"%0t\"", DEP_address_6_from[DEP_i_6][6:0], DEP_time_6_from[DEP_i_6]);
                        $display("//                : To memory access \"LineBuff_mag_address1\" = DEP_address_6_to[1][6:0] = 0x%0h @ \"%0t\"", DEP_address_6_to[1][6:0], DEP_time_6_to[1]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_103"(W:SV3-3) -> "ap_enable_operation_40"(R:SV1-2) @ `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74
                    end
                end
                DEP_address_6_from[DEP_i_6] = {1'b0, 7'b0};
                DEP_time_6_from[DEP_i_6] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_105"(W:SV3-3) -> "ap_enable_operation_42"(R:SV1-2) @ `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74
reg [7:0] DEP_address_7_to [2 - 1:0];
time DEP_time_7_to [2 - 1:0];
reg [7:0] DEP_address_7_from [1 - 1:0];
time DEP_time_7_from [1 - 1:0];
reg DEP_error_7 = 0;
integer DEP_i_7;

initial begin
    DEP_address_7_to[0] = 0;
    DEP_time_7_to[0] = 0;
    DEP_address_7_to[1] = 0;
    DEP_time_7_to[1] = 0;
    DEP_address_7_from[0] = 0;
    DEP_time_7_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state2_pp0_iter1_stage0
            &&  `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_reg_pp0_iter1) begin 
            DEP_address_7_to[1] = DEP_address_7_to[0];
            DEP_time_7_to[1] = DEP_time_7_to[0];
            if (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_operation_42) begin
                DEP_address_7_to[0] = {1'b1, `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.LineBuff_tan_y_address1};
                DEP_time_7_to[0] = $time;
            end else begin
                DEP_address_7_to[0] = {1'b0, 7'b0};
                DEP_time_7_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state2_pp0_iter1_stage0||
            `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state2_pp0_iter1_stage0||
            `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state3_pp0_iter2_stage0||
            `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state4_pp0_iter3_stage0)
            &&  ~`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_reg_pp0_iter1) begin
            DEP_address_7_to[1] = DEP_address_7_to[0];
            DEP_time_7_to[1] = DEP_time_7_to[0];
            DEP_address_7_to[0] = {1'b0, 7'b0};
            DEP_time_7_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state4_pp0_iter3_stage0
            &&  `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_reg_pp0_iter3) begin
            if (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_operation_105) begin
                if (DEP_address_7_from[0][7]) begin
                    $display("// ERROR : \"DEP_address_7_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_7_from[0] = {1'b1, `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.LineBuff_tan_y_address0};
                DEP_time_7_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state4_pp0_iter3_stage0
            &&  `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_reg_pp0_iter3) begin
            if (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_operation_105) begin
                DEP_i_7 = 0;
                if (DEP_address_7_to[0][7]) begin
                    DEP_error_7 = (DEP_address_7_to[0][6:0] == DEP_address_7_from[DEP_i_7][6:0]);
                    if (DEP_error_7) begin
                        $display("//Critical WARNING: Due to pragma (canny/canny.cpp:185:9), dependence access (loop distance = 2) is detected in \"`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74\"");
                        $display("//                : From memory access \"LineBuff_tan_y_address0\" = 0x%0h @ \"%0t\"", DEP_address_7_from[DEP_i_7][6:0], DEP_time_7_from[DEP_i_7]);
                        $display("//                : To memory access \"LineBuff_tan_y_address1\" = DEP_address_7_to[0][6:0] = 0x%0h @ \"%0t\"", DEP_address_7_to[0][6:0], DEP_time_7_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_105"(W:SV3-3) -> "ap_enable_operation_42"(R:SV1-2) @ `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74
                    end
                end
                if (DEP_address_7_to[1][7]) begin
                    DEP_error_7 = (DEP_address_7_to[1][6:0] == DEP_address_7_from[DEP_i_7][6:0]);
                    if (DEP_error_7) begin
                        $display("//Critical WARNING: Due to pragma (canny/canny.cpp:185:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74\"");
                        $display("//                : From memory access \"LineBuff_tan_y_address0\" = 0x%0h @ \"%0t\"", DEP_address_7_from[DEP_i_7][6:0], DEP_time_7_from[DEP_i_7]);
                        $display("//                : To memory access \"LineBuff_tan_y_address1\" = DEP_address_7_to[1][6:0] = 0x%0h @ \"%0t\"", DEP_address_7_to[1][6:0], DEP_time_7_to[1]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_105"(W:SV3-3) -> "ap_enable_operation_42"(R:SV1-2) @ `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74
                    end
                end
                DEP_address_7_from[DEP_i_7] = {1'b0, 7'b0};
                DEP_time_7_from[DEP_i_7] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_107"(W:SV3-3) -> "ap_enable_operation_44"(R:SV1-2) @ `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74
reg [7:0] DEP_address_8_to [2 - 1:0];
time DEP_time_8_to [2 - 1:0];
reg [7:0] DEP_address_8_from [1 - 1:0];
time DEP_time_8_from [1 - 1:0];
reg DEP_error_8 = 0;
integer DEP_i_8;

initial begin
    DEP_address_8_to[0] = 0;
    DEP_time_8_to[0] = 0;
    DEP_address_8_to[1] = 0;
    DEP_time_8_to[1] = 0;
    DEP_address_8_from[0] = 0;
    DEP_time_8_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state2_pp0_iter1_stage0
            &&  `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_reg_pp0_iter1) begin 
            DEP_address_8_to[1] = DEP_address_8_to[0];
            DEP_time_8_to[1] = DEP_time_8_to[0];
            if (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_operation_44) begin
                DEP_address_8_to[0] = {1'b1, `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.LineBuff_tan_x_225_address1};
                DEP_time_8_to[0] = $time;
            end else begin
                DEP_address_8_to[0] = {1'b0, 7'b0};
                DEP_time_8_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state2_pp0_iter1_stage0||
            `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state2_pp0_iter1_stage0||
            `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state3_pp0_iter2_stage0||
            `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state4_pp0_iter3_stage0)
            &&  ~`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_reg_pp0_iter1) begin
            DEP_address_8_to[1] = DEP_address_8_to[0];
            DEP_time_8_to[1] = DEP_time_8_to[0];
            DEP_address_8_to[0] = {1'b0, 7'b0};
            DEP_time_8_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state4_pp0_iter3_stage0
            &&  `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_reg_pp0_iter3) begin
            if (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_operation_107) begin
                if (DEP_address_8_from[0][7]) begin
                    $display("// ERROR : \"DEP_address_8_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_8_from[0] = {1'b1, `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.LineBuff_tan_x_225_address0};
                DEP_time_8_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state4_pp0_iter3_stage0
            &&  `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_reg_pp0_iter3) begin
            if (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_operation_107) begin
                DEP_i_8 = 0;
                if (DEP_address_8_to[0][7]) begin
                    DEP_error_8 = (DEP_address_8_to[0][6:0] == DEP_address_8_from[DEP_i_8][6:0]);
                    if (DEP_error_8) begin
                        $display("//Critical WARNING: Due to pragma (canny/canny.cpp:187:9), dependence access (loop distance = 2) is detected in \"`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74\"");
                        $display("//                : From memory access \"LineBuff_tan_x_225_address0\" = 0x%0h @ \"%0t\"", DEP_address_8_from[DEP_i_8][6:0], DEP_time_8_from[DEP_i_8]);
                        $display("//                : To memory access \"LineBuff_tan_x_225_address1\" = DEP_address_8_to[0][6:0] = 0x%0h @ \"%0t\"", DEP_address_8_to[0][6:0], DEP_time_8_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_107"(W:SV3-3) -> "ap_enable_operation_44"(R:SV1-2) @ `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74
                    end
                end
                if (DEP_address_8_to[1][7]) begin
                    DEP_error_8 = (DEP_address_8_to[1][6:0] == DEP_address_8_from[DEP_i_8][6:0]);
                    if (DEP_error_8) begin
                        $display("//Critical WARNING: Due to pragma (canny/canny.cpp:187:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74\"");
                        $display("//                : From memory access \"LineBuff_tan_x_225_address0\" = 0x%0h @ \"%0t\"", DEP_address_8_from[DEP_i_8][6:0], DEP_time_8_from[DEP_i_8]);
                        $display("//                : To memory access \"LineBuff_tan_x_225_address1\" = DEP_address_8_to[1][6:0] = 0x%0h @ \"%0t\"", DEP_address_8_to[1][6:0], DEP_time_8_to[1]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_107"(W:SV3-3) -> "ap_enable_operation_44"(R:SV1-2) @ `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74
                    end
                end
                DEP_address_8_from[DEP_i_8] = {1'b0, 7'b0};
                DEP_time_8_from[DEP_i_8] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_109"(W:SV3-3) -> "ap_enable_operation_46"(R:SV1-2) @ `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74
reg [7:0] DEP_address_9_to [2 - 1:0];
time DEP_time_9_to [2 - 1:0];
reg [7:0] DEP_address_9_from [1 - 1:0];
time DEP_time_9_from [1 - 1:0];
reg DEP_error_9 = 0;
integer DEP_i_9;

initial begin
    DEP_address_9_to[0] = 0;
    DEP_time_9_to[0] = 0;
    DEP_address_9_to[1] = 0;
    DEP_time_9_to[1] = 0;
    DEP_address_9_from[0] = 0;
    DEP_time_9_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state2_pp0_iter1_stage0
            &&  `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_reg_pp0_iter1) begin 
            DEP_address_9_to[1] = DEP_address_9_to[0];
            DEP_time_9_to[1] = DEP_time_9_to[0];
            if (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_operation_46) begin
                DEP_address_9_to[0] = {1'b1, `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.LineBuff_tan_x_675_address1};
                DEP_time_9_to[0] = $time;
            end else begin
                DEP_address_9_to[0] = {1'b0, 7'b0};
                DEP_time_9_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state2_pp0_iter1_stage0||
            `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state2_pp0_iter1_stage0||
            `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state3_pp0_iter2_stage0||
            `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state4_pp0_iter3_stage0)
            &&  ~`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_reg_pp0_iter1) begin
            DEP_address_9_to[1] = DEP_address_9_to[0];
            DEP_time_9_to[1] = DEP_time_9_to[0];
            DEP_address_9_to[0] = {1'b0, 7'b0};
            DEP_time_9_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state4_pp0_iter3_stage0
            &&  `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_reg_pp0_iter3) begin
            if (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_operation_109) begin
                if (DEP_address_9_from[0][7]) begin
                    $display("// ERROR : \"DEP_address_9_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_9_from[0] = {1'b1, `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.LineBuff_tan_x_675_address0};
                DEP_time_9_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_state4_pp0_iter3_stage0
            &&  `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_reg_pp0_iter3) begin
            if (`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.ap_enable_operation_109) begin
                DEP_i_9 = 0;
                if (DEP_address_9_to[0][7]) begin
                    DEP_error_9 = (DEP_address_9_to[0][6:0] == DEP_address_9_from[DEP_i_9][6:0]);
                    if (DEP_error_9) begin
                        $display("//Critical WARNING: Due to pragma (canny/canny.cpp:189:9), dependence access (loop distance = 2) is detected in \"`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74\"");
                        $display("//                : From memory access \"LineBuff_tan_x_675_address0\" = 0x%0h @ \"%0t\"", DEP_address_9_from[DEP_i_9][6:0], DEP_time_9_from[DEP_i_9]);
                        $display("//                : To memory access \"LineBuff_tan_x_675_address1\" = DEP_address_9_to[0][6:0] = 0x%0h @ \"%0t\"", DEP_address_9_to[0][6:0], DEP_time_9_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_109"(W:SV3-3) -> "ap_enable_operation_46"(R:SV1-2) @ `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74
                    end
                end
                if (DEP_address_9_to[1][7]) begin
                    DEP_error_9 = (DEP_address_9_to[1][6:0] == DEP_address_9_from[DEP_i_9][6:0]);
                    if (DEP_error_9) begin
                        $display("//Critical WARNING: Due to pragma (canny/canny.cpp:189:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74\"");
                        $display("//                : From memory access \"LineBuff_tan_x_675_address0\" = 0x%0h @ \"%0t\"", DEP_address_9_from[DEP_i_9][6:0], DEP_time_9_from[DEP_i_9]);
                        $display("//                : To memory access \"LineBuff_tan_x_675_address1\" = DEP_address_9_to[1][6:0] = 0x%0h @ \"%0t\"", DEP_address_9_to[1][6:0], DEP_time_9_to[1]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_109"(W:SV3-3) -> "ap_enable_operation_46"(R:SV1-2) @ `AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74
                    end
                end
                DEP_address_9_from[DEP_i_9] = {1'b0, 7'b0};
                DEP_time_9_from[DEP_i_9] = 0;
            end
        end // of check access
    end 
end

`endif

AESL_deadlock_detector deadlock_detector(
    .dl_reset(~AESL_reset),
    .all_finish(all_finish),
    .dl_clock(AESL_clock));

///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(rst),
    .finish(all_finish));

`include "fifo_para.vh"
///////////////////////////////////////////////////////
// fifo sizing process
///////////////////////////////////////////////////////
`include "fifo_para.vh"
fifo_monitor U_fifo_monitor(
    .clk(AESL_clock),
    .rst(rst),
    .lat_total(lat_total),
    .finish(all_finish));

endmodule
