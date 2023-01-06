-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity adders_io_regslice_forward is
GENERIC (DataWidth : INTEGER := 32);
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;

    data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
    vld_in : IN STD_LOGIC;
    ack_in : OUT STD_LOGIC;
    data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
    vld_out : OUT STD_LOGIC;
    ack_out : IN STD_LOGIC;
    apdone_blk : OUT STD_LOGIC );
end;

architecture behav of adders_io_regslice_forward is
    constant W : INTEGER := DataWidth+1;
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    signal idata : STD_LOGIC_VECTOR (W-1 downto 0);
    signal istop : STD_LOGIC;
    signal odata : STD_LOGIC_VECTOR (W-1 downto 0);
    signal ostop : STD_LOGIC;
    
    signal vld_out_int : STD_LOGIC;

    component adders_io_regslice_obuf IS
    generic (
        W : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        cdata : IN STD_LOGIC_VECTOR (W-1 downto 0);
        cstop : OUT STD_LOGIC;
        odata : OUT STD_LOGIC_VECTOR (W-1 downto 0);
        ostop : IN STD_LOGIC );
    end component;

begin

    regslice_obuf_inst : component adders_io_regslice_obuf
    generic map (
        W => W)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        cdata => idata,
        cstop => istop,
        odata => odata,
        ostop => ostop);

    idata <= (vld_in & data_in);
    ack_in <= not(istop);

    vld_out_int <= odata(W-1);
    vld_out <= vld_out_int;
    data_out <= odata(W-2 downto 0);
    ostop <= not(ack_out);

    apdone_blk_assign_proc : process(ap_rst, ack_out, vld_out_int)
    begin
        if((ap_rst = ap_const_logic_0) and (ack_out = ap_const_logic_0) and (vld_out_int = ap_const_logic_1)) then
            apdone_blk <= ap_const_logic_1;
        else
            apdone_blk <= ap_const_logic_0;   
        end if; 
    end process;

end behav;


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity adders_io_regslice_forward_w1 is
GENERIC (DataWidth : INTEGER := 1);
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;

    data_in : IN STD_LOGIC;
    vld_in : IN STD_LOGIC;
    ack_in : OUT STD_LOGIC;
    data_out : OUT STD_LOGIC;
    vld_out : OUT STD_LOGIC;
    ack_out : IN STD_LOGIC;
    apdone_blk : OUT STD_LOGIC );
end;

architecture behav of adders_io_regslice_forward_w1 is
    constant W : INTEGER := 2;
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    signal idata : STD_LOGIC_VECTOR (W-1 downto 0);
    signal istop : STD_LOGIC;
    signal odata : STD_LOGIC_VECTOR (W-1 downto 0);
    signal ostop : STD_LOGIC;

    signal vld_out_int : STD_LOGIC;

    component adders_io_regslice_obuf IS
    generic (
        W : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        cdata : IN STD_LOGIC_VECTOR (W-1 downto 0);
        cstop : OUT STD_LOGIC;
        odata : OUT STD_LOGIC_VECTOR (W-1 downto 0);
        ostop : IN STD_LOGIC );
    end component;

begin

    regslice_obuf_inst : component adders_io_regslice_obuf
    generic map (
        W => W)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        cdata => idata,
        cstop => istop,
        odata => odata,
        ostop => ostop);

    idata <= (vld_in & data_in);
    ack_in <= not(istop);

    vld_out_int <= odata(W-1);
    vld_out <= vld_out_int;
    data_out <= odata(0);
    ostop <= not(ack_out);

    apdone_blk_assign_proc : process(ap_rst, ack_out, vld_out_int)
    begin
        if((ap_rst = ap_const_logic_0) and (ack_out = ap_const_logic_0) and (vld_out_int = ap_const_logic_1)) then
            apdone_blk <= ap_const_logic_1;
        else
            apdone_blk <= ap_const_logic_0;   
        end if; 
    end process;

end behav;



library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity adders_io_regslice_obuf is
GENERIC (W : INTEGER := 32);
port (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;

    cdata : IN STD_LOGIC_VECTOR (W-1 downto 0);
    cstop : OUT STD_LOGIC;
    odata : OUT STD_LOGIC_VECTOR (W-1 downto 0);
    ostop : IN STD_LOGIC );
end;

architecture behav of adders_io_regslice_obuf is
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal cstop_int : STD_LOGIC;
    signal odata_int : STD_LOGIC_VECTOR (W-1 downto 0); 
begin
    cstop_int <= ap_const_logic_1 when (reset = '1') else (odata_int(W-1) and ostop); ---??? output

    odata_proc : process(clk)
    begin
        if (clk'event and clk =  '1') then
            if (reset = '1') then
                odata_int <= (others=>'0');
            else
                if (cstop_int = '0') then
                    odata_int <= cdata; --- Yes: load buffer
                end if;
            end if;
        end if;
    end process;

    odata <= odata_int;
    cstop <= cstop_int;
end behav; 
    
    
