-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
--
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nms_predictions_V_RAM_1WNR_AUTO_1R1W is 
    generic(
            MEM_TYPE    : string := "auto"; 
            DataWidth     : integer := 26; 
            AddressWidth     : integer := 9; 
            AddressRange    : integer := 270
    ); 
    port (
          address0     : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          d0        : in std_logic_vector(DataWidth-1 downto 0); 
          we0       : in std_logic; 
          q0        : out std_logic_vector(DataWidth-1 downto 0);
          address1     : in std_logic_vector(AddressWidth-1 downto 0); 
          ce1       : in std_logic; 
          q1        : out std_logic_vector(DataWidth-1 downto 0);
          address2     : in std_logic_vector(AddressWidth-1 downto 0); 
          ce2       : in std_logic; 
          q2        : out std_logic_vector(DataWidth-1 downto 0);
          address3     : in std_logic_vector(AddressWidth-1 downto 0); 
          ce3       : in std_logic; 
          q3        : out std_logic_vector(DataWidth-1 downto 0);
          address4     : in std_logic_vector(AddressWidth-1 downto 0); 
          ce4       : in std_logic; 
          q4        : out std_logic_vector(DataWidth-1 downto 0);
          address5     : in std_logic_vector(AddressWidth-1 downto 0); 
          ce5       : in std_logic; 
          q5        : out std_logic_vector(DataWidth-1 downto 0);
          address6     : in std_logic_vector(AddressWidth-1 downto 0); 
          ce6       : in std_logic; 
          q6        : out std_logic_vector(DataWidth-1 downto 0);
          address7     : in std_logic_vector(AddressWidth-1 downto 0); 
          ce7       : in std_logic; 
          q7        : out std_logic_vector(DataWidth-1 downto 0);
          address8     : in std_logic_vector(AddressWidth-1 downto 0); 
          ce8       : in std_logic; 
          q8        : out std_logic_vector(DataWidth-1 downto 0);
          reset      : in std_logic; 
          clk        : in std_logic 
    ); 
end entity; 


architecture rtl of nms_predictions_V_RAM_1WNR_AUTO_1R1W is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address1_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address2_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address3_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address4_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address5_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address6_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address7_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address8_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
shared variable ram0 : mem_array;

attribute syn_ramstyle : string; 
attribute syn_ramstyle of ram0 : variable is "auto";
attribute ram_style : string;
attribute ram_style of ram0 : variable is MEM_TYPE;
shared variable ram1 : mem_array;

attribute syn_ramstyle of ram1 : variable is "auto";
attribute ram_style of ram1 : variable is MEM_TYPE;
shared variable ram2 : mem_array;

attribute syn_ramstyle of ram2 : variable is "auto";
attribute ram_style of ram2 : variable is MEM_TYPE;
shared variable ram3 : mem_array;

attribute syn_ramstyle of ram3 : variable is "auto";
attribute ram_style of ram3 : variable is MEM_TYPE;
shared variable ram4 : mem_array;

attribute syn_ramstyle of ram4 : variable is "auto";
attribute ram_style of ram4 : variable is MEM_TYPE;
shared variable ram5 : mem_array;

attribute syn_ramstyle of ram5 : variable is "auto";
attribute ram_style of ram5 : variable is MEM_TYPE;
shared variable ram6 : mem_array;

attribute syn_ramstyle of ram6 : variable is "auto";
attribute ram_style of ram6 : variable is MEM_TYPE;
shared variable ram7 : mem_array;

attribute syn_ramstyle of ram7 : variable is "auto";
attribute ram_style of ram7 : variable is MEM_TYPE;

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

p_memory_access_0: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= ram0(CONV_INTEGER(address0_tmp));
            if (we0 = '1') then 
                ram0(CONV_INTEGER(address0_tmp)) := d0; 
            end if;
        end if;
    end if;
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

p_memory_access_1: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce1 = '1') then 
            q1 <= ram0(CONV_INTEGER(address1_tmp));
        end if;
    end if;
end process;

memory_access_guard_2: process (address2) 
begin
      address2_tmp <= address2;
--synthesis translate_off
      if (CONV_INTEGER(address2) > AddressRange-1) then
           address2_tmp <= (others => '0');
      else 
           address2_tmp <= address2;
      end if;
--synthesis translate_on
end process;

p_memory_access_2: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce2 = '1') then 
            q2 <= ram1(CONV_INTEGER(address2_tmp));
        end if;
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram1(CONV_INTEGER(address0)) := d0; 
            end if;
        end if;
    end if;
end process;

memory_access_guard_3: process (address3) 
begin
      address3_tmp <= address3;
--synthesis translate_off
      if (CONV_INTEGER(address3) > AddressRange-1) then
           address3_tmp <= (others => '0');
      else 
           address3_tmp <= address3;
      end if;
--synthesis translate_on
end process;

p_memory_access_3: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce3 = '1') then 
            q3 <= ram2(CONV_INTEGER(address3_tmp));
        end if;
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram2(CONV_INTEGER(address0)) := d0; 
            end if;
        end if;
    end if;
end process;

memory_access_guard_4: process (address4) 
begin
      address4_tmp <= address4;
--synthesis translate_off
      if (CONV_INTEGER(address4) > AddressRange-1) then
           address4_tmp <= (others => '0');
      else 
           address4_tmp <= address4;
      end if;
--synthesis translate_on
end process;

p_memory_access_4: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce4 = '1') then 
            q4 <= ram3(CONV_INTEGER(address4_tmp));
        end if;
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram3(CONV_INTEGER(address0)) := d0; 
            end if;
        end if;
    end if;
end process;

memory_access_guard_5: process (address5) 
begin
      address5_tmp <= address5;
--synthesis translate_off
      if (CONV_INTEGER(address5) > AddressRange-1) then
           address5_tmp <= (others => '0');
      else 
           address5_tmp <= address5;
      end if;
--synthesis translate_on
end process;

p_memory_access_5: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce5 = '1') then 
            q5 <= ram4(CONV_INTEGER(address5_tmp));
        end if;
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram4(CONV_INTEGER(address0)) := d0; 
            end if;
        end if;
    end if;
end process;

memory_access_guard_6: process (address6) 
begin
      address6_tmp <= address6;
--synthesis translate_off
      if (CONV_INTEGER(address6) > AddressRange-1) then
           address6_tmp <= (others => '0');
      else 
           address6_tmp <= address6;
      end if;
--synthesis translate_on
end process;

p_memory_access_6: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce6 = '1') then 
            q6 <= ram5(CONV_INTEGER(address6_tmp));
        end if;
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram5(CONV_INTEGER(address0)) := d0; 
            end if;
        end if;
    end if;
end process;

memory_access_guard_7: process (address7) 
begin
      address7_tmp <= address7;
--synthesis translate_off
      if (CONV_INTEGER(address7) > AddressRange-1) then
           address7_tmp <= (others => '0');
      else 
           address7_tmp <= address7;
      end if;
--synthesis translate_on
end process;

p_memory_access_7: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce7 = '1') then 
            q7 <= ram6(CONV_INTEGER(address7_tmp));
        end if;
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram6(CONV_INTEGER(address0)) := d0; 
            end if;
        end if;
    end if;
end process;

memory_access_guard_8: process (address8) 
begin
      address8_tmp <= address8;
--synthesis translate_off
      if (CONV_INTEGER(address8) > AddressRange-1) then
           address8_tmp <= (others => '0');
      else 
           address8_tmp <= address8;
      end if;
--synthesis translate_on
end process;

p_memory_access_8: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce8 = '1') then 
            q8 <= ram7(CONV_INTEGER(address8_tmp));
        end if;
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram7(CONV_INTEGER(address0)) := d0; 
            end if;
        end if;
    end if;
end process;


end rtl;

