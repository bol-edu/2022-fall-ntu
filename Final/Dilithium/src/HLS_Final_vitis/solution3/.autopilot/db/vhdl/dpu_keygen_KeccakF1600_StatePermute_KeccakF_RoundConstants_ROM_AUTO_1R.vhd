-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity dpu_keygen_KeccakF1600_StatePermute_KeccakF_RoundConstants_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 64; 
             AddressWidth     : integer := 5; 
             AddressRange    : integer := 24
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          address1      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce1       : in std_logic; 
          q1         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of dpu_keygen_KeccakF1600_StatePermute_KeccakF_RoundConstants_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address1_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "0000000000000000000000000000000000000000000000000000000000000001", 
    1 => "0000000000000000000000000000000000000000000000001000000010000010", 
    2 => "1000000000000000000000000000000000000000000000001000000010001010", 
    3 => "1000000000000000000000000000000010000000000000001000000000000000", 
    4 => "0000000000000000000000000000000000000000000000001000000010001011", 
    5 => "0000000000000000000000000000000010000000000000000000000000000001", 
    6 => "1000000000000000000000000000000010000000000000001000000010000001", 
    7 => "1000000000000000000000000000000000000000000000001000000000001001", 
    8 => "0000000000000000000000000000000000000000000000000000000010001010", 
    9 => "0000000000000000000000000000000000000000000000000000000010001000", 
    10 => "0000000000000000000000000000000010000000000000001000000000001001", 
    11 => "0000000000000000000000000000000010000000000000000000000000001010", 
    12 => "0000000000000000000000000000000010000000000000001000000010001011", 
    13 => "1000000000000000000000000000000000000000000000000000000010001011", 
    14 => "1000000000000000000000000000000000000000000000001000000010001001", 
    15 => "1000000000000000000000000000000000000000000000001000000000000011", 
    16 => "1000000000000000000000000000000000000000000000001000000000000010", 
    17 => "1000000000000000000000000000000000000000000000000000000010000000", 
    18 => "0000000000000000000000000000000000000000000000001000000000001010", 
    19 => "1000000000000000000000000000000010000000000000000000000000001010", 
    20 => "1000000000000000000000000000000010000000000000001000000010000001", 
    21 => "1000000000000000000000000000000000000000000000001000000010000000", 
    22 => "0000000000000000000000000000000010000000000000000000000000000001", 
    23 => "1000000000000000000000000000000010000000000000001000000000001000" );


begin 


memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

memory_access_guard_1: process (address1) 
begin
      address1_tmp <= address1;
--synthesis translate_off
      if (CONV_INTEGER(address1) > AddressRange-1) then
           address1_tmp <= (others => '0');
      else 
           address1_tmp <= address1;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(address0_tmp)); 
        end if;
        if (ce1 = '1') then 
            q1 <= mem(CONV_INTEGER(address1_tmp)); 
        end if;
    end if;
end process;

end rtl;

