// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps

module AESL_automem_sk (
    clk,
    rst,
    ce0,
    we0,
    address0,
    din0,
    dout0,
    ce1,
    we1,
    address1,
    din1,
    dout1,
    ready,
    done
);

//------------------------Parameter----------------------
localparam
    TV_IN  = "../tv/cdatafile/c.dpu_keygen.autotvin_sk.dat", 
    TV_OUT = "../tv/rtldatafile/rtl.dpu_keygen.autotvout_sk.dat"; 
//------------------------Local signal-------------------
parameter DATA_WIDTH = 32'd 8;
parameter ADDR_WIDTH = 32'd 12;
parameter DEPTH = 32'd 4016;
parameter DLY = 0.1;

// Input and Output
input clk;
input rst;
input ce0, ce1;
//KF: byte width will be 1
input [1 -1 : 0] we0, we1;
input [ADDR_WIDTH - 1 : 0] address0, address1;
input [DATA_WIDTH - 1 : 0] din0, din1;
output reg [DATA_WIDTH - 1 : 0] dout0, dout1;
input ready;
input done;

// Inner signals
event initialed;
event dut2tb_ap_ready;
event dut2tb_ap_done;
event finished;
reg [DATA_WIDTH - 1 : 0] mem [0 : DEPTH - 1];
initial begin : initialize_mem
    integer i;
    for (i = 0; i < DEPTH; i = i + 1) begin
        mem[i] = 0;
    end
end
reg writed_flag;
event write_process_done;
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

//------------------------Read array-------------------

// Read data form file to array
initial begin : read_file_process
    integer fp;
    integer err;
    integer ret;
    reg [127 : 0] token;
    reg [ 8*5 : 1] str;
    reg [ DATA_WIDTH - 1 : 0 ] mem_tmp;
    reg [63:0] trans_depth;
    reg [8 -1:0] bin_data;
    integer transaction_idx;
    integer i;
    transaction_idx = 0;

    wait(rst === 0);
    @(write_process_done);
    fp = $fopen(TV_IN,"rb");
    if (fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", TV_IN);
        $finish;
    end
  ret = $fread(trans_depth,fp);
  while (trans_depth != 64'h5a5aa5a50f0ff0f0)  begin
        while(ready == 0) begin
            @(write_process_done);
        end
        for(i = 0; i < DEPTH; i = i + 1) begin
            ret = $fread(bin_data,fp);
            mem[i] = bin_data;
        end
        @(write_process_done);
        ret = $fread(trans_depth,fp);
        transaction_idx = transaction_idx + 1;
    end
    $fclose(fp);
end

// Read data from array to RTL
always @ (posedge clk or rst) begin
    if(rst === 1) begin
        dout0 <= 0;
    end
    else begin
	  if((we0[0] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[0] == 1) && (address0 == address1))
	      dout0[0*8+7:0*8] <= #DLY din1[0*8+7:0*8];
	  else if (ce0 == 1)
	      dout0[0*8+7:0*8] <= #DLY mem[address0][0*8+7:0*8];
        else ;
    end
end

always @ (posedge clk or rst) begin
    if(rst === 1) begin
        dout1 <= 0;
    end
    else begin
	  if((we0[0] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[0] == 0) && (address0 == address1))
            dout1[0*8+7:0*8] <= #DLY din0[0*8+7:0*8];
	  else if (ce1 == 1)
            dout1[0*8+7:0*8] <= #DLY mem[address1][0*8+7:0*8];
        else ;
    end
end

//------------------------Write array-------------------

// Write data from RTL to array
//write process for byte 0
always @ (posedge clk) begin
    if((we0[0] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[0] == 1) && (address0 == address1))
        mem[address0][0*8+7:0*8] <= #DLY din1[0*8+7:0*8];
    else if ((we0[0] == 1) && (ce0 == 1))
        mem[address0][0*8+7:0*8] <= #DLY din0[0*8+7:0*8];
end

always @ (posedge clk) begin
    if ((ce1 == 1) && (we1[0] == 1))
        mem[address1][0*8+7:0*8] <= #DLY din1[0*8+7:0*8];
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

// Write data from array to file
initial begin : write_file_proc
    integer fp;
    integer transaction_num;
    reg [ 8*5 : 1] str;
  reg [63:0] bin_data;
    integer i;
    transaction_num = 0;
    writed_flag = 1;
    wait(rst === 0);
    @(negedge clk);
    while (1) begin
        while(done == 0) begin
            -> write_process_done;
            @(negedge clk);
        end
        fp = $fopen(TV_OUT, "ab");
        if (fp == 0) begin       // Failed to open file
            $display("Failed to open file \"%s\"!", TV_OUT);
            $finish;
        end
        bin_data = DEPTH;
        write_binary(fp,bin_data,64);
	      for (i = 0; i < DEPTH; i = i + 1) begin
            bin_data = mem[i];
            write_binary(fp,bin_data,8);
        end
        transaction_num = transaction_num + 1;
        $fclose(fp);
        writed_flag = 1;
        -> write_process_done;
        @(negedge clk);
    end
end

//------------------------conflict check-------------------
always @ (posedge clk) begin
    if ((we0[0] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[0] == 1) && (address0 == address1))
        $display($time,"WARNING:write conflict----port0 and port1 write to the same address:%h at the same clock. Port1 has the high priority.",address0);
end

always @ (posedge clk) begin
    if ((we0[0] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[0] == 0) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 write and port1 read to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[0] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[0] == 1) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 read and port1 write to the same address:%h at the same clock. Write first Mode.",address0);
end

endmodule
