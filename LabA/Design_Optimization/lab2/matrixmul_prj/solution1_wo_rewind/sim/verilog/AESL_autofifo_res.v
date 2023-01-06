// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps

module AESL_autofifo_res (
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
	TV_IN	=	"../tv/cdatafile/c.matrixmul.autotvin_res.dat",
	TV_OUT	=	"../tv/rtldatafile/rtl.matrixmul.autotvout_res.dat";

//------------------------Local signal-------------------
parameter DATA_WIDTH = 32'd 16;
parameter ADDR_WIDTH = 32'd 5;
parameter DEPTH = 32'd 9;

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

//------------------------Write-only fifo-------------------

// Write operation for write-only fifo
always @ (posedge clk) begin
    if (reset === 1) begin
	    mInPtr = 0;
  end
  else if(if_write) begin
	    if(mInPtr < DEPTH) begin
          mem[mInPtr] = if_din;
	        mInPtr <= mInPtr + 1;
	    end
  end
end

// Reset mInPtr when done is pulled up
initial begin : done_reset_mInPtr_process
  while(1) begin
      @(posedge clk);
      # 0.2;
      while(done !== 1) begin
          @(posedge clk);
          # 0.2;
      end
      mInPtr = 0;
  end
end

// Read operation for write-only fifo
initial begin : write_file_process
  integer fp;
  integer transaction_idx;
  reg [ 8*5 : 1] str;
  integer idx;
  transaction_idx = 0;
  mOutPtr = DEPTH;
  mFlag_hint = 1;
  while(1) begin
      @(posedge clk);
      # 0.1;
      while(done !== 1) begin
          @(posedge clk);
          # 0.1;
      end
	    fp = $fopen(TV_OUT, "a");
	    if(fp == 0) begin       // Failed to open file
	        $display("Failed to open file \"%s\"!", TV_OUT);
	        $finish;
	    end
	    $fdisplay(fp, "[[transaction]] %d", transaction_idx);
	    for (idx = 0; idx < mInPtr; idx = idx + 1) begin
	        $fdisplay(fp,"0x%x",mem[idx]);
	    end
	    $fdisplay(fp, "[[/transaction]]");
	    transaction_idx = transaction_idx + 1;
	    $fclose(fp);
  end
end

endmodule
