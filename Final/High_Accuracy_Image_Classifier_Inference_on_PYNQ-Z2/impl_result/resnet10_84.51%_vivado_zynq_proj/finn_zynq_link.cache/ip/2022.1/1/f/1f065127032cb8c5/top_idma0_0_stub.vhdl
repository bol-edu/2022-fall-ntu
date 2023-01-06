-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Wed Dec 28 09:41:36 2022
-- Host        : finn_dev_yhp running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_idma0_0_stub.vhdl
-- Design      : top_idma0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    m_axi_gmem0_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem0_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem0_arready : in STD_LOGIC;
    m_axi_gmem0_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem0_arvalid : out STD_LOGIC;
    m_axi_gmem0_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem0_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem0_awready : in STD_LOGIC;
    m_axi_gmem0_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem0_awvalid : out STD_LOGIC;
    m_axi_gmem0_bready : out STD_LOGIC;
    m_axi_gmem0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem0_bvalid : in STD_LOGIC;
    m_axi_gmem0_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem0_rlast : in STD_LOGIC;
    m_axi_gmem0_rready : out STD_LOGIC;
    m_axi_gmem0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem0_rvalid : in STD_LOGIC;
    m_axi_gmem0_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem0_wlast : out STD_LOGIC;
    m_axi_gmem0_wready : in STD_LOGIC;
    m_axi_gmem0_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem0_wvalid : out STD_LOGIC;
    m_axis_0_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_0_tready : in STD_LOGIC;
    m_axis_0_tvalid : out STD_LOGIC;
    s_axi_control_0_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_0_arready : out STD_LOGIC;
    s_axi_control_0_arvalid : in STD_LOGIC;
    s_axi_control_0_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_0_awready : out STD_LOGIC;
    s_axi_control_0_awvalid : in STD_LOGIC;
    s_axi_control_0_bready : in STD_LOGIC;
    s_axi_control_0_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_0_bvalid : out STD_LOGIC;
    s_axi_control_0_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_0_rready : in STD_LOGIC;
    s_axi_control_0_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_0_rvalid : out STD_LOGIC;
    s_axi_control_0_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_0_wready : out STD_LOGIC;
    s_axi_control_0_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_0_wvalid : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,m_axi_gmem0_araddr[63:0],m_axi_gmem0_arburst[1:0],m_axi_gmem0_arcache[3:0],m_axi_gmem0_arlen[7:0],m_axi_gmem0_arlock[1:0],m_axi_gmem0_arprot[2:0],m_axi_gmem0_arqos[3:0],m_axi_gmem0_arready,m_axi_gmem0_arregion[3:0],m_axi_gmem0_arsize[2:0],m_axi_gmem0_arvalid,m_axi_gmem0_awaddr[63:0],m_axi_gmem0_awburst[1:0],m_axi_gmem0_awcache[3:0],m_axi_gmem0_awlen[7:0],m_axi_gmem0_awlock[1:0],m_axi_gmem0_awprot[2:0],m_axi_gmem0_awqos[3:0],m_axi_gmem0_awready,m_axi_gmem0_awregion[3:0],m_axi_gmem0_awsize[2:0],m_axi_gmem0_awvalid,m_axi_gmem0_bready,m_axi_gmem0_bresp[1:0],m_axi_gmem0_bvalid,m_axi_gmem0_rdata[63:0],m_axi_gmem0_rlast,m_axi_gmem0_rready,m_axi_gmem0_rresp[1:0],m_axi_gmem0_rvalid,m_axi_gmem0_wdata[63:0],m_axi_gmem0_wlast,m_axi_gmem0_wready,m_axi_gmem0_wstrb[7:0],m_axi_gmem0_wvalid,m_axis_0_tdata[7:0],m_axis_0_tready,m_axis_0_tvalid,s_axi_control_0_araddr[5:0],s_axi_control_0_arready,s_axi_control_0_arvalid,s_axi_control_0_awaddr[5:0],s_axi_control_0_awready,s_axi_control_0_awvalid,s_axi_control_0_bready,s_axi_control_0_bresp[1:0],s_axi_control_0_bvalid,s_axi_control_0_rdata[31:0],s_axi_control_0_rready,s_axi_control_0_rresp[1:0],s_axi_control_0_rvalid,s_axi_control_0_wdata[31:0],s_axi_control_0_wready,s_axi_control_0_wstrb[3:0],s_axi_control_0_wvalid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "StreamingDataflowPartition_0,Vivado 2022.1";
begin
end;
