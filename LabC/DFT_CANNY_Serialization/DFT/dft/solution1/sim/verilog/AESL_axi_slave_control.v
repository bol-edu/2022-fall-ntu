// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_control (
    clk,
    reset,
    TRAN_s_axi_control_AWADDR,
    TRAN_s_axi_control_AWVALID,
    TRAN_s_axi_control_AWREADY,
    TRAN_s_axi_control_WVALID,
    TRAN_s_axi_control_WREADY,
    TRAN_s_axi_control_WDATA,
    TRAN_s_axi_control_WSTRB,
    TRAN_s_axi_control_ARADDR,
    TRAN_s_axi_control_ARVALID,
    TRAN_s_axi_control_ARREADY,
    TRAN_s_axi_control_RVALID,
    TRAN_s_axi_control_RREADY,
    TRAN_s_axi_control_RDATA,
    TRAN_s_axi_control_RRESP,
    TRAN_s_axi_control_BVALID,
    TRAN_s_axi_control_BREADY,
    TRAN_s_axi_control_BRESP,
    TRAN_control_read_data_finish,
    TRAN_control_start_in,
    TRAN_control_idle_out,
    TRAN_control_ready_out,
    TRAN_control_ready_in,
    TRAN_control_done_out,
    TRAN_control_write_start_in   ,
    TRAN_control_write_start_finish,
    TRAN_control_interrupt,
    TRAN_control_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_OUT_OUT_R_0 "../tv/rtldatafile/rtl.dft.autotvout_OUT_R_0.dat"
`define TV_OUT_OUT_I_0 "../tv/rtldatafile/rtl.dft.autotvout_OUT_I_0.dat"
parameter ADDR_WIDTH = 12;
parameter DATA_WIDTH = 32;
parameter OUT_R_0_DEPTH = 256;
reg [31 : 0] OUT_R_0_OPERATE_DEPTH = 0;
parameter OUT_R_0_c_bitwidth = 32;
parameter OUT_I_0_DEPTH = 256;
reg [31 : 0] OUT_I_0_OPERATE_DEPTH = 0;
parameter OUT_I_0_c_bitwidth = 32;
parameter START_ADDR = 0;
parameter dft_continue_addr = 0;
parameter dft_auto_start_addr = 0;
parameter OUT_R_0_data_out_addr = 1024;
parameter OUT_I_0_data_out_addr = 2048;
parameter STATUS_ADDR = 0;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_AWADDR;
output  TRAN_s_axi_control_AWVALID;
input  TRAN_s_axi_control_AWREADY;
output  TRAN_s_axi_control_WVALID;
input  TRAN_s_axi_control_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_control_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_ARADDR;
output  TRAN_s_axi_control_ARVALID;
input  TRAN_s_axi_control_ARREADY;
input  TRAN_s_axi_control_RVALID;
output  TRAN_s_axi_control_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_RDATA;
input [2 - 1 : 0] TRAN_s_axi_control_RRESP;
input  TRAN_s_axi_control_BVALID;
output  TRAN_s_axi_control_BREADY;
input [2 - 1 : 0] TRAN_s_axi_control_BRESP;
output TRAN_control_read_data_finish;
input     clk;
input     reset;
input     TRAN_control_start_in;
output    TRAN_control_done_out;
output    TRAN_control_ready_out;
input     TRAN_control_ready_in;
output    TRAN_control_idle_out;
input  TRAN_control_write_start_in   ;
output TRAN_control_write_start_finish;
input     TRAN_control_interrupt;
input     TRAN_control_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] mem_OUT_R_0 [OUT_R_0_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_OUT_R_0 [ (OUT_R_0_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * OUT_R_0_DEPTH -1 : 0] = '{default : 'hz};
reg OUT_R_0_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_OUT_I_0 [OUT_I_0_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_OUT_I_0 [ (OUT_I_0_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * OUT_I_0_DEPTH -1 : 0] = '{default : 'hz};
reg OUT_I_0_read_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
//read OUT_R_0 reg
reg [31 : 0] read_OUT_R_0_count = 0;
reg read_OUT_R_0_run_flag = 0;
reg read_one_OUT_R_0_data_done = 0;
//read OUT_I_0 reg
reg [31 : 0] read_OUT_I_0_count = 0;
reg read_OUT_I_0_run_flag = 0;
reg read_one_OUT_I_0_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_control_AWADDR = AWADDR_reg;
assign TRAN_s_axi_control_AWVALID = AWVALID_reg;
assign TRAN_s_axi_control_WVALID = WVALID_reg;
assign TRAN_s_axi_control_WDATA = WDATA_reg;
assign TRAN_s_axi_control_WSTRB = WSTRB_reg;
assign TRAN_s_axi_control_ARADDR = ARADDR_reg;
assign TRAN_s_axi_control_ARVALID = ARVALID_reg;
assign TRAN_s_axi_control_RREADY = RREADY_reg;
assign TRAN_s_axi_control_BREADY = BREADY_reg;
assign TRAN_control_write_start_finish = AESL_write_start_finish;
assign TRAN_control_done_out = AESL_done_index_reg;
assign TRAN_control_ready_out = AESL_ready_out_index_reg;
assign TRAN_control_idle_out = AESL_idle_index_reg;
assign TRAN_control_read_data_finish = 1 & OUT_R_0_read_data_finish & OUT_I_0_read_data_finish;
always @(TRAN_control_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_control_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 1024; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_control_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_control_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_control_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_control_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_control_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_control_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_control_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_control_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

initial begin : update_status
    integer process_num ;
    integer read_status_resp;
    integer write_continue_tmp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 0;
    write_continue_tmp = 0;
    while (1) begin
        process_0_finish = 0;
        AESL_done_index_reg         <= 0;
        AESL_ready_out_index_reg        <= 0;
        if (ongoing_process_number === process_num && process_busy === 0) begin
            process_busy = 1;
            read (STATUS_ADDR, RDATA_reg, read_status_resp);
                AESL_ready_out_index_reg    <= RDATA_reg[1 : 1];
                AESL_idle_index_reg         <= RDATA_reg[2 : 2];
                if (RDATA_reg[1 : 1] == 1) begin
                    @(posedge clk);
                    AESL_ready_out_index_reg    <= 0;
                    write_continue_tmp=0;
                    write_continue_tmp[4 : 4] = 1;
                    write (STATUS_ADDR, write_continue_tmp, read_status_resp);
                    AESL_done_index_reg         <= 1;
                    @(posedge clk);
                    AESL_done_index_reg         <= 0;
                end 
            process_0_finish = 1;
            process_busy = 0;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_start_run_flag <= 0; 
        write_start_count <= 0;
    end
    else begin
        if (write_start_count >= 1) begin
            write_start_run_flag <= 0; 
        end
        else if (TRAN_control_write_start_in === 1) begin
            write_start_run_flag <= 1; 
        end
        if (AESL_write_start_finish === 1) begin
            write_start_count <= write_start_count + 1;
            write_start_run_flag <= 0; 
        end
    end
end

initial begin : write_start
    reg [DATA_WIDTH - 1 : 0] write_start_tmp;
    integer process_num;
    integer write_start_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 1;
    while (1) begin
        process_1_finish = 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (write_start_run_flag === 1) begin
                process_busy = 1;
                write_start_tmp=0;
                write_start_tmp[0 : 0] = 1;
                write (START_ADDR, write_start_tmp, write_start_resp);
                process_busy = 0;
                AESL_write_start_finish <= 1;
                @(posedge clk);
                AESL_write_start_finish <= 0;
            end
            process_1_finish <= 1;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        OUT_R_0_read_data_finish <= 0;
        read_OUT_R_0_run_flag <= 0; 
        read_OUT_R_0_count = 0;
        count_operate_depth_by_bitwidth_and_depth (OUT_R_0_c_bitwidth, OUT_R_0_DEPTH, OUT_R_0_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_OUT_R_0_run_flag = 1; 
        end
        if (TRAN_control_transaction_done_in === 1) begin
            OUT_R_0_read_data_finish <= 0;
            read_OUT_R_0_count = 0; 
        end
        if (read_one_OUT_R_0_data_done === 1) begin
            read_OUT_R_0_count = read_OUT_R_0_count + 1;
            if (read_OUT_R_0_count == OUT_R_0_OPERATE_DEPTH) begin
                read_OUT_R_0_run_flag <= 0; 
                OUT_R_0_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_OUT_R_0
    integer read_OUT_R_0_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = OUT_R_0_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_2_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_OUT_R_0_run_flag === 1) begin
                process_busy = 1;
                get_vld = 1;
                if (get_vld == 1) begin
                    //read OUT_R_0 data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (OUT_R_0_data_out_addr + read_OUT_R_0_count * four_byte_num * 4 + i * 4, RDATA_reg, read_OUT_R_0_resp);
                        if (OUT_R_0_c_bitwidth < 32) begin
                            mem_OUT_R_0[read_OUT_R_0_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < OUT_R_0_c_bitwidth) begin
                                    mem_OUT_R_0[read_OUT_R_0_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_OUT_R_0_data_done <= 1;
                    @(posedge clk);
                    read_one_OUT_R_0_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_2_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        OUT_I_0_read_data_finish <= 0;
        read_OUT_I_0_run_flag <= 0; 
        read_OUT_I_0_count = 0;
        count_operate_depth_by_bitwidth_and_depth (OUT_I_0_c_bitwidth, OUT_I_0_DEPTH, OUT_I_0_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_OUT_I_0_run_flag = 1; 
        end
        if (TRAN_control_transaction_done_in === 1) begin
            OUT_I_0_read_data_finish <= 0;
            read_OUT_I_0_count = 0; 
        end
        if (read_one_OUT_I_0_data_done === 1) begin
            read_OUT_I_0_count = read_OUT_I_0_count + 1;
            if (read_OUT_I_0_count == OUT_I_0_OPERATE_DEPTH) begin
                read_OUT_I_0_run_flag <= 0; 
                OUT_I_0_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_OUT_I_0
    integer read_OUT_I_0_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = OUT_I_0_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_3_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_OUT_I_0_run_flag === 1) begin
                process_busy = 1;
                get_vld = 1;
                if (get_vld == 1) begin
                    //read OUT_I_0 data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (OUT_I_0_data_out_addr + read_OUT_I_0_count * four_byte_num * 4 + i * 4, RDATA_reg, read_OUT_I_0_resp);
                        if (OUT_I_0_c_bitwidth < 32) begin
                            mem_OUT_I_0[read_OUT_I_0_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < OUT_I_0_c_bitwidth) begin
                                    mem_OUT_I_0[read_OUT_I_0_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_OUT_I_0_data_done <= 1;
                    @(posedge clk);
                    read_one_OUT_I_0_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_3_finish <= 1;
        end
        @(posedge clk);
    end    
end
//------------------------Task and function-------------- 
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
 
task write_binary_OUT_R_0;
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
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_OUT_R_0_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [OUT_R_0_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (OUT_R_0_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (OUT_R_0_read_data_finish !== 1 || TRAN_control_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
    fp = $fopen(`TV_OUT_OUT_R_0, "ab"); 
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", str);
        $finish;
    end
        bin_data = OUT_R_0_DEPTH;
        write_binary(fp,bin_data,64);
      for (i = 0; i < (OUT_R_0_DEPTH - OUT_R_0_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_OUT_R_0[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_OUT_R_0[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_OUT_R_0[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_OUT_R_0[i/factor][31:24];
              end
              bin_data = tmp_cache_mem;
              write_binary_OUT_R_0(fp,bin_data,8);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_OUT_R_0[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_OUT_R_0[i/factor][31:16];
              end
              bin_data = tmp_cache_mem;
              write_binary_OUT_R_0(fp,bin_data,16);
          end
          if (factor == 1) begin
              bin_data = mem_OUT_R_0[i];
              write_binary_OUT_R_0(fp,bin_data,32);
          end
      end 
      if (factor == 4) begin
          if ((OUT_R_0_DEPTH - 1) % factor == 2) begin
              bin_data = mem_OUT_R_0[OUT_R_0_DEPTH / factor][7:0];
              write_binary_OUT_R_0(fp,bin_data,8);
              bin_data = mem_OUT_R_0[OUT_R_0_DEPTH / factor][15:8];
              write_binary_OUT_R_0(fp,bin_data,8);
              bin_data = mem_OUT_R_0[OUT_R_0_DEPTH / factor][23:16];
              write_binary_OUT_R_0(fp,bin_data,8);
          end
          if ((OUT_R_0_DEPTH - 1) % factor == 1) begin
              bin_data = mem_OUT_R_0[OUT_R_0_DEPTH / factor][7:0];
              write_binary_OUT_R_0(fp,bin_data,8);
              bin_data = mem_OUT_R_0[OUT_R_0_DEPTH / factor][15:8];
              write_binary_OUT_R_0(fp,bin_data,8);
          end
          if ((OUT_R_0_DEPTH - 1) % factor == 0) begin
              bin_data = mem_OUT_R_0[OUT_R_0_DEPTH / factor][7:0];
              write_binary_OUT_R_0(fp,bin_data,8);
          end
      end
      if (factor == 2) begin
          if ((OUT_R_0_DEPTH - 1) % factor == 0) begin
              bin_data = mem_OUT_R_0[OUT_R_0_DEPTH / factor][15:0];
              write_binary_OUT_R_0(fp,bin_data,16);
          end
      end
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_control_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
task write_binary_OUT_I_0;
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
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_OUT_I_0_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [OUT_I_0_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (OUT_I_0_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (OUT_I_0_read_data_finish !== 1 || TRAN_control_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
    fp = $fopen(`TV_OUT_OUT_I_0, "ab"); 
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", str);
        $finish;
    end
        bin_data = OUT_I_0_DEPTH;
        write_binary(fp,bin_data,64);
      for (i = 0; i < (OUT_I_0_DEPTH - OUT_I_0_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_OUT_I_0[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_OUT_I_0[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_OUT_I_0[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_OUT_I_0[i/factor][31:24];
              end
              bin_data = tmp_cache_mem;
              write_binary_OUT_I_0(fp,bin_data,8);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_OUT_I_0[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_OUT_I_0[i/factor][31:16];
              end
              bin_data = tmp_cache_mem;
              write_binary_OUT_I_0(fp,bin_data,16);
          end
          if (factor == 1) begin
              bin_data = mem_OUT_I_0[i];
              write_binary_OUT_I_0(fp,bin_data,32);
          end
      end 
      if (factor == 4) begin
          if ((OUT_I_0_DEPTH - 1) % factor == 2) begin
              bin_data = mem_OUT_I_0[OUT_I_0_DEPTH / factor][7:0];
              write_binary_OUT_I_0(fp,bin_data,8);
              bin_data = mem_OUT_I_0[OUT_I_0_DEPTH / factor][15:8];
              write_binary_OUT_I_0(fp,bin_data,8);
              bin_data = mem_OUT_I_0[OUT_I_0_DEPTH / factor][23:16];
              write_binary_OUT_I_0(fp,bin_data,8);
          end
          if ((OUT_I_0_DEPTH - 1) % factor == 1) begin
              bin_data = mem_OUT_I_0[OUT_I_0_DEPTH / factor][7:0];
              write_binary_OUT_I_0(fp,bin_data,8);
              bin_data = mem_OUT_I_0[OUT_I_0_DEPTH / factor][15:8];
              write_binary_OUT_I_0(fp,bin_data,8);
          end
          if ((OUT_I_0_DEPTH - 1) % factor == 0) begin
              bin_data = mem_OUT_I_0[OUT_I_0_DEPTH / factor][7:0];
              write_binary_OUT_I_0(fp,bin_data,8);
          end
      end
      if (factor == 2) begin
          if ((OUT_I_0_DEPTH - 1) % factor == 0) begin
              bin_data = mem_OUT_I_0[OUT_I_0_DEPTH / factor][15:0];
              write_binary_OUT_I_0(fp,bin_data,16);
          end
      end
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_control_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
endmodule
