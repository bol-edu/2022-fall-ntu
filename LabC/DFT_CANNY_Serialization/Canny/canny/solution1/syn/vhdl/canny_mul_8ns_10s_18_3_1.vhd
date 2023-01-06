-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity canny_mul_8ns_10s_18_3_1 is
generic (
    ID : INTEGER := 1;
    NUM_STAGE : INTEGER := 2;
    din0_WIDTH : INTEGER := 14;
    din1_WIDTH : INTEGER := 12;
    dout_WIDTH : INTEGER := 26);
port (
    clk: in std_logic;
    ce: in std_logic;
    reset: in std_logic;
    din0: in std_logic_vector(din0_WIDTH - 1 downto 0);
    din1: in std_logic_vector(din1_WIDTH - 1 downto 0);
    dout: out std_logic_vector(dout_WIDTH - 1 downto 0));

    attribute use_dsp : string;
    attribute use_dsp of canny_mul_8ns_10s_18_3_1 : entity is "yes";

end entity;

architecture behav of canny_mul_8ns_10s_18_3_1 is
    signal tmp_product : std_logic_vector(dout_WIDTH - 1 downto 0);
    signal a_i : std_logic_vector(din0_WIDTH - 1 downto 0);
    signal b_i : std_logic_vector(din1_WIDTH - 1 downto 0);
    signal p_tmp : std_logic_vector(dout_WIDTH - 1 downto 0);
    signal a_reg0 : std_logic_vector(din0_WIDTH - 1 downto 0);
    signal b_reg0 : std_logic_vector(din1_WIDTH - 1 downto 0);

    signal buff0 : std_logic_vector(dout_WIDTH - 1 downto 0);
begin
    a_i <= din0;
    b_i <= din1;
    dout <= p_tmp;

    p_tmp <= buff0;
    tmp_product <= std_logic_vector(resize(unsigned(std_logic_vector(signed('0' & a_reg0) * signed(b_reg0))), dout_WIDTH));

    process(clk)
    begin
        if (clk'event and clk = '1') then
            if (ce = '1') then
                a_reg0 <= a_i;
                b_reg0 <= b_i;
                buff0 <= tmp_product;
            end if;
        end if;
    end process;
end architecture;
