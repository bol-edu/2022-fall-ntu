-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Fri Oct 21 23:36:47 2022
-- Host        : BenWang running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/User/Documents/HLS/LabB/FFT/Vivado/FFT.gen/sources_1/bd/fft/ip/fft_fft_0_0/fft_fft_0_0_stub.vhdl
-- Design      : fft_fft_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fft_fft_0_0 is
  Port ( 
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_input_1_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_input_1_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_input_1_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_input_1_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_input_1_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_input_1_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_input_1_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_input_1_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_input_1_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_input_1_AWVALID : out STD_LOGIC;
    m_axi_input_1_AWREADY : in STD_LOGIC;
    m_axi_input_1_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_input_1_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_input_1_WLAST : out STD_LOGIC;
    m_axi_input_1_WVALID : out STD_LOGIC;
    m_axi_input_1_WREADY : in STD_LOGIC;
    m_axi_input_1_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_input_1_BVALID : in STD_LOGIC;
    m_axi_input_1_BREADY : out STD_LOGIC;
    m_axi_input_1_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_input_1_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_input_1_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_input_1_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_input_1_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_input_1_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_input_1_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_input_1_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_input_1_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_input_1_ARVALID : out STD_LOGIC;
    m_axi_input_1_ARREADY : in STD_LOGIC;
    m_axi_input_1_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_input_1_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_input_1_RLAST : in STD_LOGIC;
    m_axi_input_1_RVALID : in STD_LOGIC;
    m_axi_input_1_RREADY : out STD_LOGIC;
    m_axi_input_0_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_input_0_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_input_0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_input_0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_input_0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_input_0_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_input_0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_input_0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_input_0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_input_0_AWVALID : out STD_LOGIC;
    m_axi_input_0_AWREADY : in STD_LOGIC;
    m_axi_input_0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_input_0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_input_0_WLAST : out STD_LOGIC;
    m_axi_input_0_WVALID : out STD_LOGIC;
    m_axi_input_0_WREADY : in STD_LOGIC;
    m_axi_input_0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_input_0_BVALID : in STD_LOGIC;
    m_axi_input_0_BREADY : out STD_LOGIC;
    m_axi_input_0_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_input_0_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_input_0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_input_0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_input_0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_input_0_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_input_0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_input_0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_input_0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_input_0_ARVALID : out STD_LOGIC;
    m_axi_input_0_ARREADY : in STD_LOGIC;
    m_axi_input_0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_input_0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_input_0_RLAST : in STD_LOGIC;
    m_axi_input_0_RVALID : in STD_LOGIC;
    m_axi_input_0_RREADY : out STD_LOGIC;
    m_axi_output_1_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_output_1_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_output_1_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_output_1_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_output_1_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_output_1_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_output_1_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_output_1_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_output_1_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_output_1_AWVALID : out STD_LOGIC;
    m_axi_output_1_AWREADY : in STD_LOGIC;
    m_axi_output_1_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_output_1_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_output_1_WLAST : out STD_LOGIC;
    m_axi_output_1_WVALID : out STD_LOGIC;
    m_axi_output_1_WREADY : in STD_LOGIC;
    m_axi_output_1_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_output_1_BVALID : in STD_LOGIC;
    m_axi_output_1_BREADY : out STD_LOGIC;
    m_axi_output_1_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_output_1_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_output_1_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_output_1_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_output_1_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_output_1_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_output_1_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_output_1_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_output_1_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_output_1_ARVALID : out STD_LOGIC;
    m_axi_output_1_ARREADY : in STD_LOGIC;
    m_axi_output_1_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_output_1_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_output_1_RLAST : in STD_LOGIC;
    m_axi_output_1_RVALID : in STD_LOGIC;
    m_axi_output_1_RREADY : out STD_LOGIC;
    m_axi_output_0_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_output_0_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_output_0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_output_0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_output_0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_output_0_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_output_0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_output_0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_output_0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_output_0_AWVALID : out STD_LOGIC;
    m_axi_output_0_AWREADY : in STD_LOGIC;
    m_axi_output_0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_output_0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_output_0_WLAST : out STD_LOGIC;
    m_axi_output_0_WVALID : out STD_LOGIC;
    m_axi_output_0_WREADY : in STD_LOGIC;
    m_axi_output_0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_output_0_BVALID : in STD_LOGIC;
    m_axi_output_0_BREADY : out STD_LOGIC;
    m_axi_output_0_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_output_0_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_output_0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_output_0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_output_0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_output_0_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_output_0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_output_0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_output_0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_output_0_ARVALID : out STD_LOGIC;
    m_axi_output_0_ARREADY : in STD_LOGIC;
    m_axi_output_0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_output_0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_output_0_RLAST : in STD_LOGIC;
    m_axi_output_0_RVALID : in STD_LOGIC;
    m_axi_output_0_RREADY : out STD_LOGIC
  );

end fft_fft_0_0;

architecture stub of fft_fft_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_control_AWADDR[5:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[5:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_input_1_AWADDR[63:0],m_axi_input_1_AWLEN[7:0],m_axi_input_1_AWSIZE[2:0],m_axi_input_1_AWBURST[1:0],m_axi_input_1_AWLOCK[1:0],m_axi_input_1_AWREGION[3:0],m_axi_input_1_AWCACHE[3:0],m_axi_input_1_AWPROT[2:0],m_axi_input_1_AWQOS[3:0],m_axi_input_1_AWVALID,m_axi_input_1_AWREADY,m_axi_input_1_WDATA[31:0],m_axi_input_1_WSTRB[3:0],m_axi_input_1_WLAST,m_axi_input_1_WVALID,m_axi_input_1_WREADY,m_axi_input_1_BRESP[1:0],m_axi_input_1_BVALID,m_axi_input_1_BREADY,m_axi_input_1_ARADDR[63:0],m_axi_input_1_ARLEN[7:0],m_axi_input_1_ARSIZE[2:0],m_axi_input_1_ARBURST[1:0],m_axi_input_1_ARLOCK[1:0],m_axi_input_1_ARREGION[3:0],m_axi_input_1_ARCACHE[3:0],m_axi_input_1_ARPROT[2:0],m_axi_input_1_ARQOS[3:0],m_axi_input_1_ARVALID,m_axi_input_1_ARREADY,m_axi_input_1_RDATA[31:0],m_axi_input_1_RRESP[1:0],m_axi_input_1_RLAST,m_axi_input_1_RVALID,m_axi_input_1_RREADY,m_axi_input_0_AWADDR[63:0],m_axi_input_0_AWLEN[7:0],m_axi_input_0_AWSIZE[2:0],m_axi_input_0_AWBURST[1:0],m_axi_input_0_AWLOCK[1:0],m_axi_input_0_AWREGION[3:0],m_axi_input_0_AWCACHE[3:0],m_axi_input_0_AWPROT[2:0],m_axi_input_0_AWQOS[3:0],m_axi_input_0_AWVALID,m_axi_input_0_AWREADY,m_axi_input_0_WDATA[31:0],m_axi_input_0_WSTRB[3:0],m_axi_input_0_WLAST,m_axi_input_0_WVALID,m_axi_input_0_WREADY,m_axi_input_0_BRESP[1:0],m_axi_input_0_BVALID,m_axi_input_0_BREADY,m_axi_input_0_ARADDR[63:0],m_axi_input_0_ARLEN[7:0],m_axi_input_0_ARSIZE[2:0],m_axi_input_0_ARBURST[1:0],m_axi_input_0_ARLOCK[1:0],m_axi_input_0_ARREGION[3:0],m_axi_input_0_ARCACHE[3:0],m_axi_input_0_ARPROT[2:0],m_axi_input_0_ARQOS[3:0],m_axi_input_0_ARVALID,m_axi_input_0_ARREADY,m_axi_input_0_RDATA[31:0],m_axi_input_0_RRESP[1:0],m_axi_input_0_RLAST,m_axi_input_0_RVALID,m_axi_input_0_RREADY,m_axi_output_1_AWADDR[63:0],m_axi_output_1_AWLEN[7:0],m_axi_output_1_AWSIZE[2:0],m_axi_output_1_AWBURST[1:0],m_axi_output_1_AWLOCK[1:0],m_axi_output_1_AWREGION[3:0],m_axi_output_1_AWCACHE[3:0],m_axi_output_1_AWPROT[2:0],m_axi_output_1_AWQOS[3:0],m_axi_output_1_AWVALID,m_axi_output_1_AWREADY,m_axi_output_1_WDATA[31:0],m_axi_output_1_WSTRB[3:0],m_axi_output_1_WLAST,m_axi_output_1_WVALID,m_axi_output_1_WREADY,m_axi_output_1_BRESP[1:0],m_axi_output_1_BVALID,m_axi_output_1_BREADY,m_axi_output_1_ARADDR[63:0],m_axi_output_1_ARLEN[7:0],m_axi_output_1_ARSIZE[2:0],m_axi_output_1_ARBURST[1:0],m_axi_output_1_ARLOCK[1:0],m_axi_output_1_ARREGION[3:0],m_axi_output_1_ARCACHE[3:0],m_axi_output_1_ARPROT[2:0],m_axi_output_1_ARQOS[3:0],m_axi_output_1_ARVALID,m_axi_output_1_ARREADY,m_axi_output_1_RDATA[31:0],m_axi_output_1_RRESP[1:0],m_axi_output_1_RLAST,m_axi_output_1_RVALID,m_axi_output_1_RREADY,m_axi_output_0_AWADDR[63:0],m_axi_output_0_AWLEN[7:0],m_axi_output_0_AWSIZE[2:0],m_axi_output_0_AWBURST[1:0],m_axi_output_0_AWLOCK[1:0],m_axi_output_0_AWREGION[3:0],m_axi_output_0_AWCACHE[3:0],m_axi_output_0_AWPROT[2:0],m_axi_output_0_AWQOS[3:0],m_axi_output_0_AWVALID,m_axi_output_0_AWREADY,m_axi_output_0_WDATA[31:0],m_axi_output_0_WSTRB[3:0],m_axi_output_0_WLAST,m_axi_output_0_WVALID,m_axi_output_0_WREADY,m_axi_output_0_BRESP[1:0],m_axi_output_0_BVALID,m_axi_output_0_BREADY,m_axi_output_0_ARADDR[63:0],m_axi_output_0_ARLEN[7:0],m_axi_output_0_ARSIZE[2:0],m_axi_output_0_ARBURST[1:0],m_axi_output_0_ARLOCK[1:0],m_axi_output_0_ARREGION[3:0],m_axi_output_0_ARCACHE[3:0],m_axi_output_0_ARPROT[2:0],m_axi_output_0_ARQOS[3:0],m_axi_output_0_ARVALID,m_axi_output_0_ARREADY,m_axi_output_0_RDATA[31:0],m_axi_output_0_RRESP[1:0],m_axi_output_0_RLAST,m_axi_output_0_RVALID,m_axi_output_0_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fft,Vivado 2022.1";
begin
end;
