-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
-- 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity canny_fifo_w32_d4_S is 
    generic (
        MEM_STYLE         : string  := "shiftReg"; 
        DATA_WIDTH        : integer := 32;
        ADDR_WIDTH        : integer := 2;
        DEPTH             : integer := 4);
    port (
        clk               : in  std_logic;
        reset             : in  std_logic;

        -- write
        if_full_n         : out std_logic;
        if_write_ce       : in  std_logic;
        if_write          : in  std_logic;
        if_din            : in  std_logic_vector(DATA_WIDTH - 1 downto 0);

        -- read 
        if_num_data_valid : out std_logic_vector(ADDR_WIDTH downto 0); -- for FRP
        if_fifo_cap       : out std_logic_vector(ADDR_WIDTH downto 0); -- for FRP
        if_empty_n        : out std_logic;
        if_read_ce        : in  std_logic;
        if_read           : in  std_logic;
        if_dout           : out std_logic_vector(DATA_WIDTH - 1 downto 0)
    );
end entity;

architecture rtl of canny_fifo_w32_d4_S is

    component canny_fifo_w32_d4_S_ShiftReg is
    generic (
        DATA_WIDTH : integer := 32;
        ADDR_WIDTH : integer := 2;
        DEPTH      : integer := 4);
    port (
        clk        : in std_logic;
        we         : in std_logic;
        addr       : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        din        : in std_logic_vector(DATA_WIDTH-1 downto 0);
        dout       : out std_logic_vector(DATA_WIDTH-1 downto 0));
    end component;

    signal addr    : SIGNED(ADDR_WIDTH - 1 downto 0);
    signal push    : STD_LOGIC;
    signal pop     : STD_LOGIC;
    signal mOutPtr : SIGNED(ADDR_WIDTH downto 0) := (others => '1');
    signal empty_n : STD_LOGIC := '0';
    signal full_n  : STD_LOGIC := '1';
    -- with almost full?  no 
begin
----------------------- Instantiation -----------------------
    U_canny_fifo_w32_d4_S_ShiftReg : canny_fifo_w32_d4_S_ShiftReg
    generic map (
        DATA_WIDTH => DATA_WIDTH,
        ADDR_WIDTH => ADDR_WIDTH,
        DEPTH      => DEPTH)
    port map (
        clk        => clk,
        we         => push,
        addr       => STD_LOGIC_VECTOR(addr),
        din        => if_din,
        dout       => if_dout);
--------------------------- Body ----------------------------
    -- has num_data_valid ? 
    if_num_data_valid <= STD_LOGIC_VECTOR(mOutPtr + 1); -- yes
    if_fifo_cap <= STD_LOGIC_VECTOR(TO_UNSIGNED(DEPTH, ADDR_WIDTH + 1)); --yes 

    -- has almost full ? 
    if_full_n  <= full_n; -- no 
    if_empty_n <= empty_n;

    push       <= full_n and if_write_ce and if_write;
    pop        <= empty_n and if_read_ce and if_read;
    addr       <= (others => '0') when mOutPtr(ADDR_WIDTH) = '1' else mOutPtr(ADDR_WIDTH-1 downto 0);

    -- full_n
    process (clk ) begin
        -- reset  sync
        if clk'event and clk = '1' then
            if reset = '1' then
                full_n <= '1';
            elsif push = '1' and pop = '0' then
                if mOutPtr = DEPTH - 2 then
                    full_n <= '0';
                end if;
            elsif push = '0' and pop = '1' then
                full_n <= '1';
            end if;
        end if; -- sync end
    end process;

    -- almost_full_n 

    -- empty_n
    process (clk ) begin
        -- reset  sync
        if clk'event and clk = '1' then
            if reset = '1' then
                empty_n <= '0';
            elsif push = '1' and pop = '0' then
                empty_n <= '1';
            elsif push = '0' and pop = '1' then
                if mOutPtr = 0 then
                    empty_n <= '0';
                end if;
            end if;
        end if; -- sync end 
    end process;

    -- mOutPtr
    process (clk ) begin
        -- reset  sync 
        if clk'event and clk = '1' then
            if reset = '1' then
                mOutPtr <= (others => '1');
            elsif push = '1' and pop = '0' then
                mOutPtr <= mOutPtr + 1;
            elsif push = '0' and pop = '1' then
                mOutPtr <= mOutPtr - 1;
            end if;
        end if; -- sync end 
    end process;

end rtl;


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity canny_fifo_w32_d4_S_ShiftReg is
    generic (
        DATA_WIDTH : integer := 32;
        ADDR_WIDTH : integer := 2;
        DEPTH      : integer := 4);
    port (
        clk        : in std_logic;
        we         : in std_logic;
        addr       : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        din        : in std_logic_vector(DATA_WIDTH-1 downto 0);
        dout       : out std_logic_vector(DATA_WIDTH-1 downto 0));
end canny_fifo_w32_d4_S_ShiftReg;

architecture rtl of canny_fifo_w32_d4_S_ShiftReg is
type SRL_ARRAY is array (0 to DEPTH-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
signal SRL_SIG : SRL_ARRAY;

begin
p_shift: process (clk)
begin
    if (clk'event and clk = '1') then
        if (we = '1') then
            SRL_SIG <= din & SRL_SIG(0 to DEPTH-2);
        end if;
    end if;
end process;

dout <= SRL_SIG(conv_integer(addr));

end rtl;