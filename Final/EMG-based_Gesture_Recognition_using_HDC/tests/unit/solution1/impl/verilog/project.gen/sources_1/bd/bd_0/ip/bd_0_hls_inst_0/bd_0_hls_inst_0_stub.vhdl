-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Thu Jan  5 05:33:58 2023
-- Host        : DESKTOP-B6S694L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/kevin/Desktop/AAHLS_Final_Project_deploy/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_0_hls_inst_0 is
  Port ( 
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    test_data_TVALID : in STD_LOGIC;
    test_data_TREADY : out STD_LOGIC;
    test_data_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    test_data_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    test_data_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    test_data_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    test_data_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    test_data_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    test_data_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    test_label_out_TVALID : out STD_LOGIC;
    test_label_out_TREADY : in STD_LOGIC;
    test_label_out_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_label_out_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 );
    test_label_out_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    test_label_out_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    test_label_out_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    test_label_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    test_label_out_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    IM_TVALID : in STD_LOGIC;
    IM_TREADY : out STD_LOGIC;
    IM_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IM_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    IM_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IM_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IM_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    IM_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    IM_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    AM_out_TVALID : in STD_LOGIC;
    AM_out_TREADY : out STD_LOGIC;
    AM_out_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AM_out_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    AM_out_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AM_out_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AM_out_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    AM_out_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    AM_out_TID : in STD_LOGIC_VECTOR ( 0 to 0 )
  );

end bd_0_hls_inst_0;

architecture stub of bd_0_hls_inst_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_control_AWADDR[3:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[3:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,test_data_TVALID,test_data_TREADY,test_data_TDATA[31:0],test_data_TDEST[0:0],test_data_TKEEP[3:0],test_data_TSTRB[3:0],test_data_TUSER[0:0],test_data_TLAST[0:0],test_data_TID[0:0],test_label_out_TVALID,test_label_out_TREADY,test_label_out_TDATA[31:0],test_label_out_TDEST[0:0],test_label_out_TKEEP[3:0],test_label_out_TSTRB[3:0],test_label_out_TUSER[0:0],test_label_out_TLAST[0:0],test_label_out_TID[0:0],IM_TVALID,IM_TREADY,IM_TDATA[31:0],IM_TDEST[0:0],IM_TKEEP[3:0],IM_TSTRB[3:0],IM_TUSER[0:0],IM_TLAST[0:0],IM_TID[0:0],AM_out_TVALID,AM_out_TREADY,AM_out_TDATA[31:0],AM_out_TDEST[0:0],AM_out_TKEEP[3:0],AM_out_TSTRB[3:0],AM_out_TUSER[0:0],AM_out_TLAST[0:0],AM_out_TID[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "hdc_maxi,Vivado 2022.1";
begin
end;
