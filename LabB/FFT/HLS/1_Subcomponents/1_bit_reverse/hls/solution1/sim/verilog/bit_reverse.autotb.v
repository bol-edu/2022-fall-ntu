// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      bit_reverse
`define AUTOTB_DUT_INST AESL_inst_bit_reverse
`define AUTOTB_TOP      apatb_bit_reverse_top
`define AUTOTB_LAT_RESULT_FILE "bit_reverse.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "bit_reverse.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_bit_reverse_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_MEM_X_R AESL_automem_X_R
`define AESL_MEM_INST_X_R mem_inst_X_R
`define AESL_MEM_X_I AESL_automem_X_I
`define AESL_MEM_INST_X_I mem_inst_X_I
`define AUTOTB_TVIN_X_R  "../tv/cdatafile/c.bit_reverse.autotvin_X_R.dat"
`define AUTOTB_TVIN_X_I  "../tv/cdatafile/c.bit_reverse.autotvin_X_I.dat"
`define AUTOTB_TVIN_X_R_out_wrapc  "../tv/rtldatafile/rtl.bit_reverse.autotvin_X_R.dat"
`define AUTOTB_TVIN_X_I_out_wrapc  "../tv/rtldatafile/rtl.bit_reverse.autotvin_X_I.dat"
`define AUTOTB_TVOUT_X_R  "../tv/cdatafile/c.bit_reverse.autotvout_X_R.dat"
`define AUTOTB_TVOUT_X_I  "../tv/cdatafile/c.bit_reverse.autotvout_X_I.dat"
`define AUTOTB_TVOUT_X_R_out_wrapc  "../tv/rtldatafile/rtl.bit_reverse.autotvout_X_R.dat"
`define AUTOTB_TVOUT_X_I_out_wrapc  "../tv/rtldatafile/rtl.bit_reverse.autotvout_X_I.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 996;
parameter LENGTH_X_R = 1024;
parameter LENGTH_X_I = 1024;

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
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [9 : 0] X_R_address0;
wire  X_R_ce0;
wire  X_R_we0;
wire [31 : 0] X_R_d0;
wire [31 : 0] X_R_q0;
wire [9 : 0] X_R_address1;
wire  X_R_ce1;
wire  X_R_we1;
wire [31 : 0] X_R_d1;
wire [31 : 0] X_R_q1;
wire [9 : 0] X_I_address0;
wire  X_I_ce0;
wire  X_I_we0;
wire [31 : 0] X_I_d0;
wire [31 : 0] X_I_q0;
wire [9 : 0] X_I_address1;
wire  X_I_ce1;
wire  X_I_we1;
wire [31 : 0] X_I_d1;
wire [31 : 0] X_I_q1;
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
    .X_R_address0(X_R_address0),
    .X_R_ce0(X_R_ce0),
    .X_R_we0(X_R_we0),
    .X_R_d0(X_R_d0),
    .X_R_q0(X_R_q0),
    .X_R_address1(X_R_address1),
    .X_R_ce1(X_R_ce1),
    .X_R_we1(X_R_we1),
    .X_R_d1(X_R_d1),
    .X_R_q1(X_R_q1),
    .X_I_address0(X_I_address0),
    .X_I_ce0(X_I_ce0),
    .X_I_we0(X_I_we0),
    .X_I_d0(X_I_d0),
    .X_I_q0(X_I_q0),
    .X_I_address1(X_I_address1),
    .X_I_ce1(X_I_ce1),
    .X_I_we1(X_I_we1),
    .X_I_d1(X_I_d1),
    .X_I_q1(X_I_q1));

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
//------------------------arrayX_R Instantiation--------------

// The input and output of arrayX_R
wire    arrayX_R_ce0, arrayX_R_ce1;
wire [4 - 1 : 0]    arrayX_R_we0, arrayX_R_we1;
wire    [9 : 0]    arrayX_R_address0, arrayX_R_address1;
wire    [31 : 0]    arrayX_R_din0, arrayX_R_din1;
wire    [31 : 0]    arrayX_R_dout0, arrayX_R_dout1;
wire    arrayX_R_ready;
wire    arrayX_R_done;

`AESL_MEM_X_R `AESL_MEM_INST_X_R(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayX_R_ce0),
    .we0        (arrayX_R_we0),
    .address0   (arrayX_R_address0),
    .din0       (arrayX_R_din0),
    .dout0      (arrayX_R_dout0),
    .ce1        (arrayX_R_ce1),
    .we1        (arrayX_R_we1),
    .address1   (arrayX_R_address1),
    .din1       (arrayX_R_din1),
    .dout1      (arrayX_R_dout1),
    .ready      (arrayX_R_ready),
    .done    (arrayX_R_done)
);

// Assignment between dut and arrayX_R
assign arrayX_R_address0 = X_R_address0;
assign arrayX_R_ce0 = X_R_ce0;
assign X_R_q0 = arrayX_R_dout0;
assign arrayX_R_we0[0] = X_R_we0;
assign arrayX_R_we0[1] = X_R_we0;
assign arrayX_R_we0[2] = X_R_we0;
assign arrayX_R_we0[3] = X_R_we0;
assign arrayX_R_din0 = X_R_d0;
assign arrayX_R_address1 = X_R_address1;
assign arrayX_R_ce1 = X_R_ce1;
assign X_R_q1 = arrayX_R_dout1;
assign arrayX_R_we1[0] = X_R_we1;
assign arrayX_R_we1[1] = X_R_we1;
assign arrayX_R_we1[2] = X_R_we1;
assign arrayX_R_we1[3] = X_R_we1;
assign arrayX_R_din1 = X_R_d1;
assign arrayX_R_ready= ready;
assign arrayX_R_done = interface_done;


//------------------------arrayX_I Instantiation--------------

// The input and output of arrayX_I
wire    arrayX_I_ce0, arrayX_I_ce1;
wire [4 - 1 : 0]    arrayX_I_we0, arrayX_I_we1;
wire    [9 : 0]    arrayX_I_address0, arrayX_I_address1;
wire    [31 : 0]    arrayX_I_din0, arrayX_I_din1;
wire    [31 : 0]    arrayX_I_dout0, arrayX_I_dout1;
wire    arrayX_I_ready;
wire    arrayX_I_done;

`AESL_MEM_X_I `AESL_MEM_INST_X_I(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayX_I_ce0),
    .we0        (arrayX_I_we0),
    .address0   (arrayX_I_address0),
    .din0       (arrayX_I_din0),
    .dout0      (arrayX_I_dout0),
    .ce1        (arrayX_I_ce1),
    .we1        (arrayX_I_we1),
    .address1   (arrayX_I_address1),
    .din1       (arrayX_I_din1),
    .dout1      (arrayX_I_dout1),
    .ready      (arrayX_I_ready),
    .done    (arrayX_I_done)
);

// Assignment between dut and arrayX_I
assign arrayX_I_address0 = X_I_address0;
assign arrayX_I_ce0 = X_I_ce0;
assign X_I_q0 = arrayX_I_dout0;
assign arrayX_I_we0[0] = X_I_we0;
assign arrayX_I_we0[1] = X_I_we0;
assign arrayX_I_we0[2] = X_I_we0;
assign arrayX_I_we0[3] = X_I_we0;
assign arrayX_I_din0 = X_I_d0;
assign arrayX_I_address1 = X_I_address1;
assign arrayX_I_ce1 = X_I_ce1;
assign X_I_q1 = arrayX_I_dout1;
assign arrayX_I_we1[0] = X_I_we1;
assign arrayX_I_we1[1] = X_I_we1;
assign arrayX_I_we1[2] = X_I_we1;
assign arrayX_I_we1[3] = X_I_we1;
assign arrayX_I_din1 = X_I_d1;
assign arrayX_I_ready= ready;
assign arrayX_I_done = interface_done;


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


reg end_X_R;
reg [31:0] size_X_R;
reg [31:0] size_X_R_backup;
reg end_X_I;
reg [31:0] size_X_I;
reg [31:0] size_X_I_backup;

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
    start = 0;
    ce = 1;
    wait(AESL_reset === 0);
    @ (posedge AESL_clock);
    while (1) begin
        if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
        #0 start = 1;
        end
        @ (posedge AESL_clock);
        while (AESL_ready !== 1) begin
            @ (posedge AESL_clock);
        end
        if (AESL_done !== 1) begin
            #0 start = 0;
            while (AESL_done !== 1) begin
                @ (posedge AESL_clock);
            end
            @ (posedge AESL_clock);
        end
        #0 start = 0;
        @ (negedge AESL_clock);
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

initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

assign ready = (ready_initial | AESL_done_delay);
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready_wire = (ready_initial | AESL_done_delay);
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

reg dump_tvout_finish_X_R;

initial begin : dump_tvout_runtime_sign_X_R
    integer fp;
    dump_tvout_finish_X_R = 0;
    fp = $fopen(`AUTOTB_TVOUT_X_R_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X_R_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_X_R_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X_R_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_X_R = 1;
end


reg dump_tvout_finish_X_I;

initial begin : dump_tvout_runtime_sign_X_I
    integer fp;
    dump_tvout_finish_X_I = 0;
    fp = $fopen(`AUTOTB_TVOUT_X_I_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X_I_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_X_I_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_X_I_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_X_I = 1;
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

// Dependence Check (WAR) "ap_enable_operation_39"(R:SV1-2) -> "ap_enable_operation_41"(W:SV2-2) @ `AUTOTB_DUT_INST

// Dependence Check (WAR) "ap_enable_operation_39"(R:SV1-2) -> "ap_enable_operation_47"(W:SV4-4) @ `AUTOTB_DUT_INST

// Dependence Check (WAR) "ap_enable_operation_40"(R:SV1-2) -> "ap_enable_operation_41"(W:SV2-2) @ `AUTOTB_DUT_INST

// Dependence Check (WAR) "ap_enable_operation_40"(R:SV1-2) -> "ap_enable_operation_47"(W:SV4-4) @ `AUTOTB_DUT_INST

// Dependence Check (RAW) "ap_enable_operation_41"(W:SV2-2) -> "ap_enable_operation_31"(R:SV1-2) @ `AUTOTB_DUT_INST

// Dependence Check (RAW) "ap_enable_operation_41"(W:SV2-2) -> "ap_enable_operation_34"(R:SV1-2) @ `AUTOTB_DUT_INST

// Dependence Check (WAW) "ap_enable_operation_41"(W:SV2-2) -> "ap_enable_operation_47"(W:SV4-4) @ `AUTOTB_DUT_INST

// Dependence Check (WAR) "ap_enable_operation_42"(R:SV1-2) -> "ap_enable_operation_44"(W:SV2-2) @ `AUTOTB_DUT_INST

// Dependence Check (WAR) "ap_enable_operation_42"(R:SV1-2) -> "ap_enable_operation_48"(W:SV4-4) @ `AUTOTB_DUT_INST

// Dependence Check (WAR) "ap_enable_operation_43"(R:SV1-2) -> "ap_enable_operation_44"(W:SV2-2) @ `AUTOTB_DUT_INST

// Dependence Check (WAR) "ap_enable_operation_43"(R:SV1-2) -> "ap_enable_operation_48"(W:SV4-4) @ `AUTOTB_DUT_INST

// Dependence Check (RAW) "ap_enable_operation_44"(W:SV2-2) -> "ap_enable_operation_36"(R:SV1-2) @ `AUTOTB_DUT_INST

// Dependence Check (RAW) "ap_enable_operation_44"(W:SV2-2) -> "ap_enable_operation_38"(R:SV1-2) @ `AUTOTB_DUT_INST

// Dependence Check (WAW) "ap_enable_operation_44"(W:SV2-2) -> "ap_enable_operation_48"(W:SV4-4) @ `AUTOTB_DUT_INST

// Dependence Check (RAW) "ap_enable_operation_47"(W:SV4-4) -> "ap_enable_operation_31"(R:SV1-2) @ `AUTOTB_DUT_INST
reg [10:0] DEP_address_14_to [1 - 1:0];
time DEP_time_14_to [1 - 1:0];
reg [10:0] DEP_address_14_from [1 - 1:0];
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
    if (~`AUTOTB_DUT_INST.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.ap_enable_state2_pp0_iter0_stage1
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_31) begin
                DEP_address_14_to[0] = {1'b1, `AUTOTB_DUT_INST.X_R_address1};
                DEP_time_14_to[0] = $time;
            end else begin
                DEP_address_14_to[0] = {1'b0, 10'b0};
                DEP_time_14_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.ap_enable_state2_pp0_iter0_stage1||
            `AUTOTB_DUT_INST.ap_enable_state2_pp0_iter0_stage1)
            &&  ~`AUTOTB_DUT_INST.ap_enable_reg_pp0_iter0) begin
            DEP_address_14_to[0] = {1'b0, 10'b0};
            DEP_time_14_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.ap_enable_state5_pp0_iter2_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter2) begin
            if (`AUTOTB_DUT_INST.ap_enable_operation_47) begin
                if (DEP_address_14_from[0][10]) begin
                    $display("// ERROR : \"DEP_address_14_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_14_from[0] = {1'b1, `AUTOTB_DUT_INST.X_R_address0};
                DEP_time_14_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.ap_enable_state5_pp0_iter2_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter2) begin
            if (`AUTOTB_DUT_INST.ap_enable_operation_47) begin
                DEP_i_14 = 0;
                if (DEP_address_14_to[0][10]) begin
                    DEP_error_14 = (DEP_address_14_to[0][9:0] == DEP_address_14_from[DEP_i_14][9:0]);
                    if (DEP_error_14) begin
                        $display("//Critical WARNING: Due to pragma (bit_reverse.cpp:15:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//                : From memory access \"X_R_address0\" = 0x%0h @ \"%0t\"", DEP_address_14_from[DEP_i_14][9:0], DEP_time_14_from[DEP_i_14]);
                        $display("//                : To memory access \"X_R_address1\" = DEP_address_14_to[0][9:0] = 0x%0h @ \"%0t\"", DEP_address_14_to[0][9:0], DEP_time_14_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_47"(W:SV4-4) -> "ap_enable_operation_31"(R:SV1-2) @ `AUTOTB_DUT_INST
                    end
                end
                DEP_address_14_from[DEP_i_14] = {1'b0, 10'b0};
                DEP_time_14_from[DEP_i_14] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_47"(W:SV4-4) -> "ap_enable_operation_34"(R:SV1-2) @ `AUTOTB_DUT_INST
reg [10:0] DEP_address_15_to [1 - 1:0];
time DEP_time_15_to [1 - 1:0];
reg [10:0] DEP_address_15_from [1 - 1:0];
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
    if (~`AUTOTB_DUT_INST.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.ap_enable_state2_pp0_iter0_stage1
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_34) begin
                DEP_address_15_to[0] = {1'b1, `AUTOTB_DUT_INST.X_R_address0};
                DEP_time_15_to[0] = $time;
            end else begin
                DEP_address_15_to[0] = {1'b0, 10'b0};
                DEP_time_15_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.ap_enable_state2_pp0_iter0_stage1||
            `AUTOTB_DUT_INST.ap_enable_state2_pp0_iter0_stage1)
            &&  ~`AUTOTB_DUT_INST.ap_enable_reg_pp0_iter0) begin
            DEP_address_15_to[0] = {1'b0, 10'b0};
            DEP_time_15_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.ap_enable_state5_pp0_iter2_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter2) begin
            if (`AUTOTB_DUT_INST.ap_enable_operation_47) begin
                if (DEP_address_15_from[0][10]) begin
                    $display("// ERROR : \"DEP_address_15_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_15_from[0] = {1'b1, `AUTOTB_DUT_INST.X_R_address0};
                DEP_time_15_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.ap_enable_state5_pp0_iter2_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter2) begin
            if (`AUTOTB_DUT_INST.ap_enable_operation_47) begin
                DEP_i_15 = 0;
                if (DEP_address_15_to[0][10]) begin
                    DEP_error_15 = (DEP_address_15_to[0][9:0] == DEP_address_15_from[DEP_i_15][9:0]);
                    if (DEP_error_15) begin
                        $display("//Critical WARNING: Due to pragma (bit_reverse.cpp:15:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//                : From memory access \"X_R_address0\" = 0x%0h @ \"%0t\"", DEP_address_15_from[DEP_i_15][9:0], DEP_time_15_from[DEP_i_15]);
                        $display("//                : To memory access \"X_R_address0\" = DEP_address_15_to[0][9:0] = 0x%0h @ \"%0t\"", DEP_address_15_to[0][9:0], DEP_time_15_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_47"(W:SV4-4) -> "ap_enable_operation_34"(R:SV1-2) @ `AUTOTB_DUT_INST
                    end
                end
                DEP_address_15_from[DEP_i_15] = {1'b0, 10'b0};
                DEP_time_15_from[DEP_i_15] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_47"(W:SV4-4) -> "ap_enable_operation_41"(W:SV2-2) @ `AUTOTB_DUT_INST

// Dependence Check (RAW) "ap_enable_operation_48"(W:SV4-4) -> "ap_enable_operation_36"(R:SV1-2) @ `AUTOTB_DUT_INST
reg [10:0] DEP_address_17_to [1 - 1:0];
time DEP_time_17_to [1 - 1:0];
reg [10:0] DEP_address_17_from [1 - 1:0];
time DEP_time_17_from [1 - 1:0];
reg DEP_error_17 = 0;
integer DEP_i_17;

initial begin
    DEP_address_17_to[0] = 0;
    DEP_time_17_to[0] = 0;
    DEP_address_17_from[0] = 0;
    DEP_time_17_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.ap_enable_state2_pp0_iter0_stage1
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_36) begin
                DEP_address_17_to[0] = {1'b1, `AUTOTB_DUT_INST.X_I_address1};
                DEP_time_17_to[0] = $time;
            end else begin
                DEP_address_17_to[0] = {1'b0, 10'b0};
                DEP_time_17_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.ap_enable_state2_pp0_iter0_stage1||
            `AUTOTB_DUT_INST.ap_enable_state2_pp0_iter0_stage1)
            &&  ~`AUTOTB_DUT_INST.ap_enable_reg_pp0_iter0) begin
            DEP_address_17_to[0] = {1'b0, 10'b0};
            DEP_time_17_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.ap_enable_state5_pp0_iter2_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter2) begin
            if (`AUTOTB_DUT_INST.ap_enable_operation_48) begin
                if (DEP_address_17_from[0][10]) begin
                    $display("// ERROR : \"DEP_address_17_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_17_from[0] = {1'b1, `AUTOTB_DUT_INST.X_I_address0};
                DEP_time_17_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.ap_enable_state5_pp0_iter2_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter2) begin
            if (`AUTOTB_DUT_INST.ap_enable_operation_48) begin
                DEP_i_17 = 0;
                if (DEP_address_17_to[0][10]) begin
                    DEP_error_17 = (DEP_address_17_to[0][9:0] == DEP_address_17_from[DEP_i_17][9:0]);
                    if (DEP_error_17) begin
                        $display("//Critical WARNING: Due to pragma (bit_reverse.cpp:14:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//                : From memory access \"X_I_address0\" = 0x%0h @ \"%0t\"", DEP_address_17_from[DEP_i_17][9:0], DEP_time_17_from[DEP_i_17]);
                        $display("//                : To memory access \"X_I_address1\" = DEP_address_17_to[0][9:0] = 0x%0h @ \"%0t\"", DEP_address_17_to[0][9:0], DEP_time_17_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_48"(W:SV4-4) -> "ap_enable_operation_36"(R:SV1-2) @ `AUTOTB_DUT_INST
                    end
                end
                DEP_address_17_from[DEP_i_17] = {1'b0, 10'b0};
                DEP_time_17_from[DEP_i_17] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_48"(W:SV4-4) -> "ap_enable_operation_38"(R:SV1-2) @ `AUTOTB_DUT_INST
reg [10:0] DEP_address_18_to [1 - 1:0];
time DEP_time_18_to [1 - 1:0];
reg [10:0] DEP_address_18_from [1 - 1:0];
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
    if (~`AUTOTB_DUT_INST.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.ap_enable_state2_pp0_iter0_stage1
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_38) begin
                DEP_address_18_to[0] = {1'b1, `AUTOTB_DUT_INST.X_I_address0};
                DEP_time_18_to[0] = $time;
            end else begin
                DEP_address_18_to[0] = {1'b0, 10'b0};
                DEP_time_18_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.ap_enable_state2_pp0_iter0_stage1||
            `AUTOTB_DUT_INST.ap_enable_state2_pp0_iter0_stage1)
            &&  ~`AUTOTB_DUT_INST.ap_enable_reg_pp0_iter0) begin
            DEP_address_18_to[0] = {1'b0, 10'b0};
            DEP_time_18_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.ap_enable_state5_pp0_iter2_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter2) begin
            if (`AUTOTB_DUT_INST.ap_enable_operation_48) begin
                if (DEP_address_18_from[0][10]) begin
                    $display("// ERROR : \"DEP_address_18_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_18_from[0] = {1'b1, `AUTOTB_DUT_INST.X_I_address0};
                DEP_time_18_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.ap_enable_state5_pp0_iter2_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter2) begin
            if (`AUTOTB_DUT_INST.ap_enable_operation_48) begin
                DEP_i_18 = 0;
                if (DEP_address_18_to[0][10]) begin
                    DEP_error_18 = (DEP_address_18_to[0][9:0] == DEP_address_18_from[DEP_i_18][9:0]);
                    if (DEP_error_18) begin
                        $display("//Critical WARNING: Due to pragma (bit_reverse.cpp:14:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//                : From memory access \"X_I_address0\" = 0x%0h @ \"%0t\"", DEP_address_18_from[DEP_i_18][9:0], DEP_time_18_from[DEP_i_18]);
                        $display("//                : To memory access \"X_I_address0\" = DEP_address_18_to[0][9:0] = 0x%0h @ \"%0t\"", DEP_address_18_to[0][9:0], DEP_time_18_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_48"(W:SV4-4) -> "ap_enable_operation_38"(R:SV1-2) @ `AUTOTB_DUT_INST
                    end
                end
                DEP_address_18_from[DEP_i_18] = {1'b0, 10'b0};
                DEP_time_18_from[DEP_i_18] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_48"(W:SV4-4) -> "ap_enable_operation_44"(W:SV2-2) @ `AUTOTB_DUT_INST

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
