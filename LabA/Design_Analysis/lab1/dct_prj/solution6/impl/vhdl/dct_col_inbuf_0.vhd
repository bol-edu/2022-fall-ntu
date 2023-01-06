-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dct_col_inbuf_0  is
    generic (
        DataWidth    : integer := 16;
        AddressRange : integer := 32;
        AddressWidth : integer := 3;
        BufferCount  : integer := 2;
        IndexWidth   : integer := 1
    );
    port (
        -- system signals
        clk        : in std_logic;
        reset      : in std_logic;
        -- initiator
        i_ce       : in  std_logic;
        i_write    : in  std_logic;
        i_full_n   : out std_logic;
        i_ce0      : in  std_logic;
        i_we0      : in  std_logic;
        i_address0 : in  std_logic_vector(AddressWidth-1 downto 0);
        i_d0       : in  std_logic_vector(DataWidth-1 downto 0);
        i_q0       : out std_logic_vector(DataWidth-1 downto 0);
        -- target
        t_ce       : in  std_logic;
        t_read     : in  std_logic;
        t_empty_n  : out std_logic;
        t_ce0      : in  std_logic;
        t_we0      : in  std_logic;
        t_address0 : in  std_logic_vector(AddressWidth-1 downto 0);
        t_d0       : in  std_logic_vector(DataWidth-1 downto 0);
        t_q0       : out std_logic_vector(DataWidth-1 downto 0)
    );
end entity;

architecture rtl of dct_col_inbuf_0 is

component dct_col_inbuf_0_memcore is
port (
    clk      : in  std_logic;
    reset    : in  std_logic;
    ce0      : in  std_logic;
    we0      : in  std_logic;
    address0 : in  std_logic_vector(3 downto 0);
    d0       : in  std_logic_vector(15 downto 0);
    q0       : out std_logic_vector(15 downto 0);
    ce1      : in  std_logic;
    we1      : in  std_logic;
    address1 : in  std_logic_vector(3 downto 0);
    d1       : in  std_logic_vector(15 downto 0);
    q1       : out std_logic_vector(15 downto 0)
);
end component;

-- control/status
signal iptr     : unsigned(IndexWidth-1 downto 0) := (others => '0'); -- initiator index
signal tptr     : unsigned(IndexWidth-1 downto 0) := (others => '0'); -- target index
signal count    : unsigned(IndexWidth downto 0)   := (others => '0'); -- count of written buffers
signal full_n   : std_logic := '1'; -- whether all buffers are written
signal empty_n  : std_logic := '0'; -- whether none of the buffers is written
signal push_buf : std_logic;        -- finish writing a buffer
signal pop_buf  : std_logic;        -- finish reading a buffer
signal memcore_iaddr: std_logic_vector(AddressWidth+IndexWidth-1 downto 0);
signal memcore_taddr: std_logic_vector(AddressWidth+IndexWidth-1 downto 0);

begin

    memcore_iaddr <= i_address0 & std_logic_vector(iptr);
    memcore_taddr <= t_address0 & std_logic_vector(tptr);
    dct_col_inbuf_0_memcore_U : component dct_col_inbuf_0_memcore
    port map (
        clk      => clk,
        reset    => reset,
        ce0      => i_ce0,
        we0      => i_we0,
        address0 => memcore_iaddr,
        d0       => i_d0,
        q0       => i_q0,

        ce1      => t_ce0,
        we1      => t_we0,
        address1 => memcore_taddr,
        d1       => t_d0,
        q1       => t_q0
        );

    ----------------- output ------------------------------
    i_full_n  <= full_n;
    t_empty_n <= empty_n;

    ----------------- control/status ----------------------
    push_buf <= i_ce and i_write and full_n;
    pop_buf  <= t_ce and t_read and empty_n;

    -- iptr
    process(clk) begin
        if (clk'event and clk='1') then
            if (reset = '1') then
                iptr <= (others => '0');
            elsif (push_buf = '1') then
                if (iptr = BufferCount - 1) then
                    iptr <= (others => '0');
                else
                    iptr <= iptr + 1;
                end if;
            end if;
        end if;
    end process;

    -- tptr
    process(clk) begin
        if (clk'event and clk='1') then
            if (reset = '1') then
                tptr <= (others => '0');
            elsif (pop_buf = '1') then
                if (tptr = BufferCount - 1) then
                    tptr <= (others => '0');
                else
                    tptr <= tptr + 1;
                end if;
            end if;
        end if;
    end process;

    -- count
    process(clk) begin
        if (clk'event and clk='1') then
            if (reset = '1') then
                count <= (others => '0');
            elsif (push_buf = '1' and pop_buf = '0') then
                count <= count + 1;
            elsif (push_buf = '0' and pop_buf = '1') then
                count <= count - 1;
            end if;
        end if;
    end process;

    -- full_n
    process(clk) begin
        if (clk'event and clk='1') then
            if (reset = '1') then
                full_n <= '1';
            elsif (push_buf = '1' and pop_buf = '0' and count = BufferCount - 2) then
                full_n <= '0';
            elsif (push_buf = '0' and pop_buf = '1') then
                full_n <= '1';
            end if;
        end if;
    end process;

    -- empty_n
    process(clk) begin
        if (clk'event and clk='1') then
            if (reset = '1') then
                empty_n <= '0';
            elsif (push_buf = '1' and pop_buf = '0') then
                empty_n <= '1';
            elsif (push_buf = '0' and pop_buf = '1' and count = 1) then
                empty_n <= '0';
            end if;
        end if;
    end process;

end architecture;

