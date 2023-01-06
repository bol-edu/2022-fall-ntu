-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity example is
port (
    A_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    A_empty_n : IN STD_LOGIC;
    A_read : OUT STD_LOGIC;
    B_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    B_full_n : IN STD_LOGIC;
    B_write : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC );
end;


architecture behav of example is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "example_example,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu9p-flga2104-2-i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=3.706000,HLS_SYN_LAT=34,HLS_SYN_TPT=29,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=580,HLS_SYN_LUT=1178,HLS_VERSION=2022_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal proc_1_U0_ap_start : STD_LOGIC;
    signal proc_1_U0_start_out : STD_LOGIC;
    signal proc_1_U0_start_write : STD_LOGIC;
    signal proc_1_U0_A_read : STD_LOGIC;
    signal proc_1_U0_data_channel12_din : STD_LOGIC_VECTOR (31 downto 0);
    signal proc_1_U0_data_channel12_write : STD_LOGIC;
    signal proc_1_U0_data_channel23_din : STD_LOGIC_VECTOR (31 downto 0);
    signal proc_1_U0_data_channel23_write : STD_LOGIC;
    signal proc_1_U0_ap_done : STD_LOGIC;
    signal proc_1_U0_ap_ready : STD_LOGIC;
    signal proc_1_U0_ap_idle : STD_LOGIC;
    signal proc_1_U0_ap_continue : STD_LOGIC;
    signal proc_2_U0_data_channel12_read : STD_LOGIC;
    signal proc_2_U0_data_channel23_read : STD_LOGIC;
    signal proc_2_U0_B1_din : STD_LOGIC_VECTOR (31 downto 0);
    signal proc_2_U0_B1_write : STD_LOGIC;
    signal proc_2_U0_ap_start : STD_LOGIC;
    signal proc_2_U0_ap_done : STD_LOGIC;
    signal proc_2_U0_ap_ready : STD_LOGIC;
    signal proc_2_U0_ap_idle : STD_LOGIC;
    signal proc_2_U0_ap_continue : STD_LOGIC;
    signal data_channel1_full_n : STD_LOGIC;
    signal data_channel1_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal data_channel1_num_data_valid : STD_LOGIC_VECTOR (1 downto 0);
    signal data_channel1_fifo_cap : STD_LOGIC_VECTOR (1 downto 0);
    signal data_channel1_empty_n : STD_LOGIC;
    signal data_channel2_full_n : STD_LOGIC;
    signal data_channel2_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal data_channel2_num_data_valid : STD_LOGIC_VECTOR (1 downto 0);
    signal data_channel2_fifo_cap : STD_LOGIC_VECTOR (1 downto 0);
    signal data_channel2_empty_n : STD_LOGIC;
    signal start_for_proc_2_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_proc_2_U0_full_n : STD_LOGIC;
    signal start_for_proc_2_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_proc_2_U0_empty_n : STD_LOGIC;

    component example_proc_1 IS
    port (
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        A_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        A_empty_n : IN STD_LOGIC;
        A_read : OUT STD_LOGIC;
        data_channel12_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        data_channel12_full_n : IN STD_LOGIC;
        data_channel12_write : OUT STD_LOGIC;
        data_channel23_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        data_channel23_full_n : IN STD_LOGIC;
        data_channel23_write : OUT STD_LOGIC;
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;


    component example_proc_2 IS
    port (
        data_channel12_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        data_channel12_empty_n : IN STD_LOGIC;
        data_channel12_read : OUT STD_LOGIC;
        data_channel23_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        data_channel23_empty_n : IN STD_LOGIC;
        data_channel23_read : OUT STD_LOGIC;
        B1_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        B1_full_n : IN STD_LOGIC;
        B1_write : OUT STD_LOGIC;
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;


    component example_fifo_w32_d2_S_x0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_num_data_valid : OUT STD_LOGIC_VECTOR (1 downto 0);
        if_fifo_cap : OUT STD_LOGIC_VECTOR (1 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component example_start_for_proc_2_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    proc_1_U0 : component example_proc_1
    port map (
        ap_start => proc_1_U0_ap_start,
        start_full_n => start_for_proc_2_U0_full_n,
        start_out => proc_1_U0_start_out,
        start_write => proc_1_U0_start_write,
        A_dout => A_dout,
        A_empty_n => A_empty_n,
        A_read => proc_1_U0_A_read,
        data_channel12_din => proc_1_U0_data_channel12_din,
        data_channel12_full_n => data_channel1_full_n,
        data_channel12_write => proc_1_U0_data_channel12_write,
        data_channel23_din => proc_1_U0_data_channel23_din,
        data_channel23_full_n => data_channel2_full_n,
        data_channel23_write => proc_1_U0_data_channel23_write,
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_done => proc_1_U0_ap_done,
        ap_ready => proc_1_U0_ap_ready,
        ap_idle => proc_1_U0_ap_idle,
        ap_continue => proc_1_U0_ap_continue);

    proc_2_U0 : component example_proc_2
    port map (
        data_channel12_dout => data_channel1_dout,
        data_channel12_empty_n => data_channel1_empty_n,
        data_channel12_read => proc_2_U0_data_channel12_read,
        data_channel23_dout => data_channel2_dout,
        data_channel23_empty_n => data_channel2_empty_n,
        data_channel23_read => proc_2_U0_data_channel23_read,
        B1_din => proc_2_U0_B1_din,
        B1_full_n => B_full_n,
        B1_write => proc_2_U0_B1_write,
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => proc_2_U0_ap_start,
        ap_done => proc_2_U0_ap_done,
        ap_ready => proc_2_U0_ap_ready,
        ap_idle => proc_2_U0_ap_idle,
        ap_continue => proc_2_U0_ap_continue);

    data_channel1_U : component example_fifo_w32_d2_S_x0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => proc_1_U0_data_channel12_din,
        if_full_n => data_channel1_full_n,
        if_write => proc_1_U0_data_channel12_write,
        if_dout => data_channel1_dout,
        if_num_data_valid => data_channel1_num_data_valid,
        if_fifo_cap => data_channel1_fifo_cap,
        if_empty_n => data_channel1_empty_n,
        if_read => proc_2_U0_data_channel12_read);

    data_channel2_U : component example_fifo_w32_d2_S_x0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => proc_1_U0_data_channel23_din,
        if_full_n => data_channel2_full_n,
        if_write => proc_1_U0_data_channel23_write,
        if_dout => data_channel2_dout,
        if_num_data_valid => data_channel2_num_data_valid,
        if_fifo_cap => data_channel2_fifo_cap,
        if_empty_n => data_channel2_empty_n,
        if_read => proc_2_U0_data_channel23_read);

    start_for_proc_2_U0_U : component example_start_for_proc_2_U0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_proc_2_U0_din,
        if_full_n => start_for_proc_2_U0_full_n,
        if_write => proc_1_U0_start_write,
        if_dout => start_for_proc_2_U0_dout,
        if_empty_n => start_for_proc_2_U0_empty_n,
        if_read => proc_2_U0_ap_ready);




    A_read <= proc_1_U0_A_read;
    B_din <= proc_2_U0_B1_din;
    B_write <= proc_2_U0_B1_write;
    ap_done <= proc_2_U0_ap_done;
    ap_idle <= (proc_2_U0_ap_idle and proc_1_U0_ap_idle);
    ap_ready <= proc_1_U0_ap_ready;
    proc_1_U0_ap_continue <= ap_const_logic_1;
    proc_1_U0_ap_start <= ap_start;
    proc_2_U0_ap_continue <= ap_const_logic_1;
    proc_2_U0_ap_start <= start_for_proc_2_U0_empty_n;
    start_for_proc_2_U0_din <= (0=>ap_const_logic_1, others=>'-');
end behav;
