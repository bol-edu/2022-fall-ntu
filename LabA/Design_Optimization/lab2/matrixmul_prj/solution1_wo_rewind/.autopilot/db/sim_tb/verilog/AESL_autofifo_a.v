// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps

module AESL_autofifo_a (
    clk,
    reset,
    if_empty_n,
    if_read,
    if_dout,
    if_full_n,
    if_write,
    if_din,
    ready,
    done
);

//------------------------Parameter----------------------
localparam
	TV_IN	=	"c.matrixmul.autotvin_a.dat";

//------------------------Local signal-------------------
parameter DATA_WIDTH = 32'd 24;
parameter ADDR_WIDTH = 32'd 3;
parameter DEPTH = 32'd 3;

// Input and Output
input clk;
input reset;
input if_write;
input [DATA_WIDTH - 1 : 0] if_din;
output if_full_n;
input if_read;
output [DATA_WIDTH - 1 : 0] if_dout;
output if_empty_n;
input ready;
input done;

// Inner signals
reg   [DATA_WIDTH - 1 : 0]  mem [0 : DEPTH - 1];
initial begin : initialize_mem
  integer i;
  for (i = 0; i < DEPTH; i = i + 1) begin
      mem[i] = 0;
  end
end
reg   [ADDR_WIDTH : 0]  mInPtr  =   0;
reg   [ADDR_WIDTH : 0]  mOutPtr =   0;
reg   mFlag_hint;  // 0: empty hint, 1: full hint

assign    if_dout =   mem[mOutPtr];
assign	if_empty_n	=	((mInPtr == mOutPtr) && mFlag_hint == 1'b0)? 1'b 0: 1'b 1;
assign	if_full_n	=	((mInPtr == mOutPtr) && mFlag_hint == 1'b1)? 1'b 0: 1'b 1;

//------------------------Task and function--------------
task read_token;
	input integer fp;
	output reg [127 :0] token;
  integer ret;
	begin
	    token = "";
	    ret = 0;
      ret = $fscanf(fp,"%s",token);
	end
endtask

//------------------------Read-only fifo-------------------

// Write operation for read_only fifo
initial begin : read_file_process
  integer fp;
  integer err;
  integer ret;
  integer transaction_idx;
  reg [127 : 0] token;
  reg [ 8*5 : 1] str;
  reg [ DATA_WIDTH - 1 : 0] mem_tmp;
  mInPtr = 0;
  mFlag_hint = 0;
  transaction_idx = 0;
  fp = $fopen(TV_IN,"r");
  if(fp == 0) begin       // Failed to open file
	    $display("Failed to open file \"%s\"!", TV_IN);
	    $finish;
  end
  read_token(fp, token);
  if (token != "[[[runtime]]]") begin             // Illegal format
      $display("ERROR: Simulation using HLS TB failed.");
	    $finish;
  end
  read_token(fp, token);
  while (token != "[[[/runtime]]]") begin
      if (token != "[[transaction]]") begin
      $display("ERROR: Simulation using HLS TB failed.");
          $finish;
      end
      read_token(fp, token);              // skip transaction number

      @(posedge clk);
      # 0.2;
      while(ready !== 1) begin
          @(posedge clk);
          # 0.2;
      end
      read_token(fp,token);
      mInPtr = 0;
      while(token != "[[/transaction]]") begin
          if (mInPtr >= DEPTH) begin
              $display("Fifo overflow!");
  	        $finish;
          end
          ret = $sscanf(token, "0x%x", mem_tmp);
          mem[mInPtr] = mem_tmp;
          if (ret != 1) begin
              $display("Failed to parse token!");
              $finish;
          end
          mInPtr = mInPtr + 1;
          read_token(fp, token);
      end
      mFlag_hint = 0;
      read_token(fp, token);
      transaction_idx = transaction_idx + 1;
  end
  $fclose(fp);
  @(posedge clk);
  # 0.2;
  while(ready !== 1) begin
      @(posedge clk);
      # 0.2;
  end
  mFlag_hint = 1;
end

// Read operation for read_only fifo
always @ (posedge clk) begin
    if (reset === 1) begin
	    mOutPtr = 0;
  end
  else if(if_read === 1) begin
	    if(mOutPtr < mInPtr)
	        mOutPtr <= mOutPtr + 1;
  end
end

// Reset mOutPtr when done is pulled up
initial begin : done_reset_mOutPtr_process
  while(1) begin
      @(posedge clk);
      # 0.1;
      while(ready !== 1) begin
          @(posedge clk);
          # 0.1;
      end
      mOutPtr = 0;
  end
end

endmodule
