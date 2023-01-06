-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
-- 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity canny_fifo_w32_d16384_A is
    generic (
        MEM_STYLE         : string  := "auto";
        DATA_WIDTH        : integer := 32;
        ADDR_WIDTH        : integer := 14;
        DEPTH             : integer := 16383);
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

architecture arch of canny_fifo_w32_d16384_A is

    -- component
    component canny_fifo_w32_d16384_A_ram is
    generic (
        MEM_STYLE  : string  := "auto";
        DATA_WIDTH : natural := 32;
        ADDR_WIDTH : natural := 14;
        DEPTH      : natural := 16383);
    port (
        clk        : in std_logic;
        reset      : in std_logic;
        we         : in std_logic;
        waddr      : in std_logic_vector(ADDR_WIDTH - 1 downto 0);
        din        : in std_logic_vector(DATA_WIDTH - 1 downto 0);
        raddr      : in std_logic_vector(ADDR_WIDTH - 1 downto 0);
        rden       : in std_logic;
        dout       : out std_logic_vector(DATA_WIDTH - 1 downto 0));
    end component;

    -- signals
    signal waddr    : unsigned(ADDR_WIDTH - 1 downto 0) := (others => '0');
    signal raddr    : unsigned(ADDR_WIDTH - 1 downto 0) := (others => '0');
    signal wnext    : unsigned(ADDR_WIDTH - 1 downto 0);
    signal rnext    : unsigned(ADDR_WIDTH - 1 downto 0);
    signal push     : std_logic;
    signal pop      : std_logic;
    signal mOutPtr  : unsigned(ADDR_WIDTH downto 0) := (others => '0');
    signal empty_n  : std_logic := '0';
    signal full_n   : std_logic := '1';
    -- has almost full?  no 
    -- has output register? 
    signal dout_vld : std_logic := '0'; -- yes 
begin
----------------------- Instantiation -----------------------
    U_canny_fifo_w32_d16384_A_ram : canny_fifo_w32_d16384_A_ram
    generic map (
        MEM_STYLE  => MEM_STYLE,
        DATA_WIDTH => DATA_WIDTH,
        ADDR_WIDTH => ADDR_WIDTH,
        DEPTH => DEPTH)
    port map (
        clk   => clk,
        reset => reset,
        we    => push,
        waddr => std_logic_vector(waddr),
        din   => if_din,
        raddr => std_logic_vector(rnext),
        rden  => pop,
        dout  => if_dout);

--------------------------- Body ----------------------------
    -- has num_data_valid ?  
    if_fifo_cap       <= STD_LOGIC_VECTOR(TO_UNSIGNED(DEPTH + 1, ADDR_WIDTH + 1)); -- yes 

    -- has almost full ? 
    if_full_n  <= full_n; -- no 

    -- has output register? 
    if_empty_n <= dout_vld; -- yes
    pop        <= empty_n and if_read_ce and (not dout_vld or if_read); -- yes 
    push       <= full_n and if_write_ce and if_write;
    wnext      <= waddr           when push = '0'        else
                  (others => '0') when waddr = DEPTH - 1 else
                  waddr + 1;
    rnext      <= raddr           when pop = '0'         else
                  (others => '0') when raddr = DEPTH - 1 else
                  raddr + 1;

    -- waddr
    process (clk ) begin
        -- reset  sync
        if clk'event and clk = '1' then
            if reset = '1' then
                waddr <= (others => '0');
            else
                waddr <= wnext;
            end if;
        end if; -- sync end
    end process;

    -- raddr
    process (clk ) begin
        -- reset  sync
        if clk'event and clk = '1' then
            if reset = '1' then
                raddr <= (others => '0');
            else
                raddr <= rnext;
            end if;
        end if; -- sync end
    end process;

    -- mOutPtr
    process (clk ) begin
        -- reset  sync 
        if clk'event and clk = '1' then
            if reset = '1' then
                mOutPtr <= (others => '0');
            elsif push = '1' and pop = '0' then
                mOutPtr <= mOutPtr + 1;
            elsif push = '0' and pop = '1' then
                mOutPtr <= mOutPtr - 1;
            end if;
        end if; -- sync end 
    end process;

    -- full_n
    process (clk ) begin
        -- reset  sync
        if clk'event and clk = '1' then
            if reset = '1' then
                full_n <= '1';
            elsif push = '1' and pop = '0' then
                if mOutPtr = DEPTH - 1 then
                    full_n <= '0';
                else
                    full_n <= '1';
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
                if mOutPtr = 1 then
                    empty_n <= '0';
                else
                    empty_n <= '1';
                end if;
            end if;
        end if; -- sync end 
    end process;

    -- if_num_data_valid  
    process (clk ) begin
        -- reset  sync
        if clk'event and clk = '1' then
            if reset = '1' then
                if_num_data_valid <= (others => '0');
            elsif pop = '1' then
                if (push = '1' ) then
                    if_num_data_valid <= STD_LOGIC_VECTOR(mOutPtr+1);
                else
                    if_num_data_valid <= STD_LOGIC_VECTOR(mOutPtr);
                end if;
            elsif not (if_read_ce = '1' and if_read = '1') and dout_vld = '1' then
                if (push = '1' ) then
                    if_num_data_valid <= STD_LOGIC_VECTOR(mOutPtr+2);
                else
                    if_num_data_valid <= STD_LOGIC_VECTOR(mOutPtr+1);
                end if;
            else
                if_num_data_valid <= (others=>'0');
            end if;
        end if; -- sync end 
    end process; -- 

    -- dout_vld  
    process (clk ) begin
        -- reset  sync
        if clk'event and clk = '1' then
            if reset = '1' then
                dout_vld <= '0';
            elsif pop = '1' then
                dout_vld <= '1';
            elsif if_read_ce = '1' and if_read = '1' then
                dout_vld <= '0';
            end if;
        end if; -- sync end 
    end process; -- 
end architecture;


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity canny_fifo_w32_d16384_A_ram is
    generic (
        MEM_STYLE   : string  := "auto";
        DATA_WIDTH  : integer := 32;
        ADDR_WIDTH  : integer := 14;
        DEPTH       : integer := 16383);
    port (
        clk         : in std_logic;
        reset       : in std_logic;
        we          : in std_logic;
        waddr       : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        din         : in std_logic_vector(DATA_WIDTH-1 downto 0);
        raddr       : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        rden        : in std_logic;
        dout        : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end entity;

architecture arch of canny_fifo_w32_d16384_A_ram is
    type memtype is array (0 to DEPTH - 1) of std_logic_vector(DATA_WIDTH - 1 downto 0);
    signal mem : memtype;
    attribute ram_style: string;
    attribute ram_style of mem: signal is MEM_STYLE;
    attribute rw_addr_collision : string;
    attribute rw_addr_collision of mem : signal is "yes";
    signal raddr_reg : std_logic_vector(ADDR_WIDTH - 1 downto 0) := (others => '0');

begin
    -- read from mem 
    process (clk ) begin
        -- reset  sync
        if clk'event and clk = '1' then
            if reset = '1' then
                dout <= ( others=> '0');
            elsif (rden = '1') then
                dout <= mem(conv_integer(raddr_reg));
            end if;
        end if; -- sync end 
    end process; 

    -- write to mem
    process (clk) begin
        if clk'event and clk = '1' then
            if we = '1' then
                mem(conv_integer(waddr)) <= din;
            end if;
        end if;
    end process;

    -- buffer the raddr
    process (clk) begin
        if clk'event and clk = '1' then
            raddr_reg <= raddr;
        end if;
    end process;
end architecture;
