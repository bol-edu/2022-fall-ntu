-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Thu Dec 29 11:24:29 2022
-- Host        : BenWang running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/User/Documents/HLS/Final/Final/Final/QOI/imp/imp.gen/sources_1/bd/design_1/ip/design_1_auto_us_0/design_1_auto_us_0_sim_netlist.vhdl
-- Design      : design_1_auto_us_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_0_axi_dwidth_converter_v2_1_26_r_upsizer is
  port (
    first_word : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    use_wrap_buffer : out STD_LOGIC;
    \USE_RTL_LENGTH.first_mi_word_q\ : out STD_LOGIC;
    wrap_buffer_available : out STD_LOGIC;
    \last_beat__6\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \sel_first_word__0\ : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \pre_next_word_1_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \current_word_1_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    first_word_reg_0 : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \USE_RTL_LENGTH.first_mi_word_q_reg_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \USE_READ.rd_cmd_valid\ : in STD_LOGIC;
    mr_rvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    \USE_RTL_LENGTH.length_counter_q_reg[2]_0\ : in STD_LOGIC;
    \USE_RTL_LENGTH.length_counter_q_reg[2]_1\ : in STD_LOGIC;
    p_13_in : in STD_LOGIC;
    use_wrap_buffer_reg_0 : in STD_LOGIC;
    \rresp_wrap_buffer_reg[1]_0\ : in STD_LOGIC_VECTOR ( 65 downto 0 );
    \MULTIPLE_WORD.current_index\ : in STD_LOGIC;
    use_wrap_buffer_reg_1 : in STD_LOGIC;
    use_wrap_buffer_reg_2 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \current_word_1_reg[2]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_r_upsizer : entity is "axi_dwidth_converter_v2_1_26_r_upsizer";
end design_1_auto_us_0_axi_dwidth_converter_v2_1_26_r_upsizer;

architecture STRUCTURE of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_r_upsizer is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M_AXI_RDATA_I : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^use_rtl_length.first_mi_word_q\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[5]_i_2_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^first_word\ : STD_LOGIC;
  signal \^last_beat__6\ : STD_LOGIC;
  signal \length_counter__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_7_in : STD_LOGIC;
  signal rresp_wrap_buffer : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_rlast_INST_0_i_6_n_0 : STD_LOGIC;
  signal \^use_wrap_buffer\ : STD_LOGIC;
  signal use_wrap_buffer_i_1_n_0 : STD_LOGIC;
  signal \^wrap_buffer_available\ : STD_LOGIC;
  signal \wrap_buffer_available_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \USE_RTL_LENGTH.length_counter_q[1]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \USE_RTL_LENGTH.length_counter_q[1]_i_3\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \USE_RTL_LENGTH.length_counter_q[2]_i_2__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \USE_RTL_LENGTH.length_counter_q[3]_i_3\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \USE_RTL_LENGTH.length_counter_q[5]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \USE_RTL_LENGTH.length_counter_q[7]_i_2__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_axi_rresp[0]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \s_axi_rresp[1]_INST_0\ : label is "soft_lutpair36";
begin
  E(0) <= \^e\(0);
  \USE_RTL_LENGTH.first_mi_word_q\ <= \^use_rtl_length.first_mi_word_q\;
  first_word <= \^first_word\;
  \last_beat__6\ <= \^last_beat__6\;
  use_wrap_buffer <= \^use_wrap_buffer\;
  wrap_buffer_available <= \^wrap_buffer_available\;
\M_AXI_RDATA_I[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \^use_rtl_length.first_mi_word_q\,
      I1 => Q(4),
      I2 => \^use_wrap_buffer\,
      I3 => \USE_READ.rd_cmd_valid\,
      I4 => mr_rvalid,
      O => p_7_in
    );
\M_AXI_RDATA_I_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(0),
      Q => M_AXI_RDATA_I(0),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(10),
      Q => M_AXI_RDATA_I(10),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(11),
      Q => M_AXI_RDATA_I(11),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(12),
      Q => M_AXI_RDATA_I(12),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(13),
      Q => M_AXI_RDATA_I(13),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(14),
      Q => M_AXI_RDATA_I(14),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(15),
      Q => M_AXI_RDATA_I(15),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(16),
      Q => M_AXI_RDATA_I(16),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(17),
      Q => M_AXI_RDATA_I(17),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(18),
      Q => M_AXI_RDATA_I(18),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(19),
      Q => M_AXI_RDATA_I(19),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(1),
      Q => M_AXI_RDATA_I(1),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(20),
      Q => M_AXI_RDATA_I(20),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(21),
      Q => M_AXI_RDATA_I(21),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(22),
      Q => M_AXI_RDATA_I(22),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(23),
      Q => M_AXI_RDATA_I(23),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(24),
      Q => M_AXI_RDATA_I(24),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(25),
      Q => M_AXI_RDATA_I(25),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(26),
      Q => M_AXI_RDATA_I(26),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(27),
      Q => M_AXI_RDATA_I(27),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(28),
      Q => M_AXI_RDATA_I(28),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(29),
      Q => M_AXI_RDATA_I(29),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(2),
      Q => M_AXI_RDATA_I(2),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(30),
      Q => M_AXI_RDATA_I(30),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(31),
      Q => M_AXI_RDATA_I(31),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(32),
      Q => M_AXI_RDATA_I(32),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(33),
      Q => M_AXI_RDATA_I(33),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(34),
      Q => M_AXI_RDATA_I(34),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(35),
      Q => M_AXI_RDATA_I(35),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(36),
      Q => M_AXI_RDATA_I(36),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(37),
      Q => M_AXI_RDATA_I(37),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(38),
      Q => M_AXI_RDATA_I(38),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(39),
      Q => M_AXI_RDATA_I(39),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(3),
      Q => M_AXI_RDATA_I(3),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(40),
      Q => M_AXI_RDATA_I(40),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(41),
      Q => M_AXI_RDATA_I(41),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(42),
      Q => M_AXI_RDATA_I(42),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(43),
      Q => M_AXI_RDATA_I(43),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(44),
      Q => M_AXI_RDATA_I(44),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(45),
      Q => M_AXI_RDATA_I(45),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(46),
      Q => M_AXI_RDATA_I(46),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(47),
      Q => M_AXI_RDATA_I(47),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(48),
      Q => M_AXI_RDATA_I(48),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(49),
      Q => M_AXI_RDATA_I(49),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(4),
      Q => M_AXI_RDATA_I(4),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(50),
      Q => M_AXI_RDATA_I(50),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(51),
      Q => M_AXI_RDATA_I(51),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(52),
      Q => M_AXI_RDATA_I(52),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(53),
      Q => M_AXI_RDATA_I(53),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(54),
      Q => M_AXI_RDATA_I(54),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(55),
      Q => M_AXI_RDATA_I(55),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(56),
      Q => M_AXI_RDATA_I(56),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(57),
      Q => M_AXI_RDATA_I(57),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(58),
      Q => M_AXI_RDATA_I(58),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(59),
      Q => M_AXI_RDATA_I(59),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(5),
      Q => M_AXI_RDATA_I(5),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(60),
      Q => M_AXI_RDATA_I(60),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(61),
      Q => M_AXI_RDATA_I(61),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(62),
      Q => M_AXI_RDATA_I(62),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(63),
      Q => M_AXI_RDATA_I(63),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(6),
      Q => M_AXI_RDATA_I(6),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(7),
      Q => M_AXI_RDATA_I(7),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(8),
      Q => M_AXI_RDATA_I(8),
      R => SR(0)
    );
\M_AXI_RDATA_I_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(9),
      Q => M_AXI_RDATA_I(9),
      R => SR(0)
    );
\USE_RTL_LENGTH.first_mi_word_q_reg\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.first_mi_word_q_reg_0\,
      Q => \^use_rtl_length.first_mi_word_q\,
      S => SR(0)
    );
\USE_RTL_LENGTH.length_counter_q[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FFFFFFF70000000"
    )
        port map (
      I0 => \^use_rtl_length.first_mi_word_q\,
      I1 => Q(0),
      I2 => \USE_RTL_LENGTH.length_counter_q_reg[2]_1\,
      I3 => s_axi_rready,
      I4 => p_13_in,
      I5 => \USE_RTL_LENGTH.length_counter_q_reg\(0),
      O => \USE_RTL_LENGTH.length_counter_q[0]_i_1__0_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAA2AAA2AAAEAAA"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q_reg\(1),
      I1 => \USE_RTL_LENGTH.length_counter_q_reg[2]_1\,
      I2 => s_axi_rready,
      I3 => p_13_in,
      I4 => \length_counter__0\(0),
      I5 => \length_counter__0\(1),
      O => \USE_RTL_LENGTH.length_counter_q[1]_i_1__0_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(0),
      I1 => \^use_rtl_length.first_mi_word_q\,
      I2 => \USE_RTL_LENGTH.length_counter_q_reg\(0),
      O => \length_counter__0\(0)
    );
\USE_RTL_LENGTH.length_counter_q[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(1),
      I1 => \^use_rtl_length.first_mi_word_q\,
      I2 => \USE_RTL_LENGTH.length_counter_q_reg\(1),
      O => \length_counter__0\(1)
    );
\USE_RTL_LENGTH.length_counter_q[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACCCCCCC5CCC3CC"
    )
        port map (
      I0 => Q(2),
      I1 => \USE_RTL_LENGTH.length_counter_q_reg\(2),
      I2 => \USE_RTL_LENGTH.length_counter_q_reg[2]_0\,
      I3 => \USE_RTL_LENGTH.length_counter_q_reg[2]_1\,
      I4 => \^use_rtl_length.first_mi_word_q\,
      I5 => \USE_RTL_LENGTH.length_counter_q[2]_i_2__0_n_0\,
      O => \USE_RTL_LENGTH.length_counter_q[2]_i_1__0_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q_reg\(0),
      I1 => Q(0),
      I2 => \USE_RTL_LENGTH.length_counter_q_reg\(1),
      I3 => \^use_rtl_length.first_mi_word_q\,
      I4 => Q(1),
      O => \USE_RTL_LENGTH.length_counter_q[2]_i_2__0_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAA2AAA2AAAEAAA"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q_reg\(3),
      I1 => \USE_RTL_LENGTH.length_counter_q_reg[2]_1\,
      I2 => s_axi_rready,
      I3 => p_13_in,
      I4 => \USE_RTL_LENGTH.length_counter_q[3]_i_2__0_n_0\,
      I5 => \length_counter__0\(3),
      O => \USE_RTL_LENGTH.length_counter_q[3]_i_1__0_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE2"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q_reg\(2),
      I1 => \^use_rtl_length.first_mi_word_q\,
      I2 => Q(2),
      I3 => \USE_RTL_LENGTH.length_counter_q[2]_i_2__0_n_0\,
      O => \USE_RTL_LENGTH.length_counter_q[3]_i_2__0_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(3),
      I1 => \^use_rtl_length.first_mi_word_q\,
      I2 => \USE_RTL_LENGTH.length_counter_q_reg\(3),
      O => \length_counter__0\(3)
    );
\USE_RTL_LENGTH.length_counter_q[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFF7F00800080"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q_reg[2]_1\,
      I1 => s_axi_rready,
      I2 => p_13_in,
      I3 => \USE_RTL_LENGTH.length_counter_q[4]_i_2__0_n_0\,
      I4 => \^use_rtl_length.first_mi_word_q\,
      I5 => \USE_RTL_LENGTH.length_counter_q_reg\(4),
      O => \USE_RTL_LENGTH.length_counter_q[4]_i_1__0_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFAEEEEFFFA"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q[2]_i_2__0_n_0\,
      I1 => Q(2),
      I2 => \USE_RTL_LENGTH.length_counter_q_reg\(2),
      I3 => \USE_RTL_LENGTH.length_counter_q_reg\(3),
      I4 => \^use_rtl_length.first_mi_word_q\,
      I5 => Q(3),
      O => \USE_RTL_LENGTH.length_counter_q[4]_i_2__0_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AAAAAAA9AAAAAAA"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q_reg\(5),
      I1 => \USE_RTL_LENGTH.length_counter_q[5]_i_2_n_0\,
      I2 => p_13_in,
      I3 => s_axi_rready,
      I4 => \USE_RTL_LENGTH.length_counter_q_reg[2]_1\,
      I5 => \^use_rtl_length.first_mi_word_q\,
      O => \USE_RTL_LENGTH.length_counter_q[5]_i_1__0_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q[4]_i_2__0_n_0\,
      I1 => \^use_rtl_length.first_mi_word_q\,
      I2 => \USE_RTL_LENGTH.length_counter_q_reg\(4),
      O => \USE_RTL_LENGTH.length_counter_q[5]_i_2_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59CCCCCCCCCCCCCC"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q[7]_i_2__0_n_0\,
      I1 => \USE_RTL_LENGTH.length_counter_q_reg\(6),
      I2 => \^use_rtl_length.first_mi_word_q\,
      I3 => p_13_in,
      I4 => s_axi_rready,
      I5 => \USE_RTL_LENGTH.length_counter_q_reg[2]_1\,
      O => \USE_RTL_LENGTH.length_counter_q[6]_i_1__0_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC55C9CCCCCCCC"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q[7]_i_2__0_n_0\,
      I1 => \USE_RTL_LENGTH.length_counter_q_reg\(7),
      I2 => \USE_RTL_LENGTH.length_counter_q_reg\(6),
      I3 => \^use_rtl_length.first_mi_word_q\,
      I4 => \USE_RTL_LENGTH.length_counter_q_reg[2]_0\,
      I5 => \USE_RTL_LENGTH.length_counter_q_reg[2]_1\,
      O => \USE_RTL_LENGTH.length_counter_q[7]_i_1__0_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[7]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^use_rtl_length.first_mi_word_q\,
      I1 => \USE_RTL_LENGTH.length_counter_q_reg\(5),
      I2 => \USE_RTL_LENGTH.length_counter_q[5]_i_2_n_0\,
      O => \USE_RTL_LENGTH.length_counter_q[7]_i_2__0_n_0\
    );
\USE_RTL_LENGTH.length_counter_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.length_counter_q[0]_i_1__0_n_0\,
      Q => \USE_RTL_LENGTH.length_counter_q_reg\(0),
      R => SR(0)
    );
\USE_RTL_LENGTH.length_counter_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.length_counter_q[1]_i_1__0_n_0\,
      Q => \USE_RTL_LENGTH.length_counter_q_reg\(1),
      R => SR(0)
    );
\USE_RTL_LENGTH.length_counter_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.length_counter_q[2]_i_1__0_n_0\,
      Q => \USE_RTL_LENGTH.length_counter_q_reg\(2),
      R => SR(0)
    );
\USE_RTL_LENGTH.length_counter_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.length_counter_q[3]_i_1__0_n_0\,
      Q => \USE_RTL_LENGTH.length_counter_q_reg\(3),
      R => SR(0)
    );
\USE_RTL_LENGTH.length_counter_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.length_counter_q[4]_i_1__0_n_0\,
      Q => \USE_RTL_LENGTH.length_counter_q_reg\(4),
      R => SR(0)
    );
\USE_RTL_LENGTH.length_counter_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.length_counter_q[5]_i_1__0_n_0\,
      Q => \USE_RTL_LENGTH.length_counter_q_reg\(5),
      R => SR(0)
    );
\USE_RTL_LENGTH.length_counter_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.length_counter_q[6]_i_1__0_n_0\,
      Q => \USE_RTL_LENGTH.length_counter_q_reg\(6),
      R => SR(0)
    );
\USE_RTL_LENGTH.length_counter_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.length_counter_q[7]_i_1__0_n_0\,
      Q => \USE_RTL_LENGTH.length_counter_q_reg\(7),
      R => SR(0)
    );
\current_word_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \current_word_1_reg[2]_1\(0),
      Q => \current_word_1_reg[2]_0\(0),
      R => SR(0)
    );
\current_word_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \current_word_1_reg[2]_1\(1),
      Q => \current_word_1_reg[2]_0\(1),
      R => SR(0)
    );
\current_word_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \current_word_1_reg[2]_1\(2),
      Q => \current_word_1_reg[2]_0\(2),
      R => SR(0)
    );
first_word_reg: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => first_word_reg_0,
      Q => \^first_word\,
      S => SR(0)
    );
\pre_next_word_1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => \^use_wrap_buffer\,
      I1 => mr_rvalid,
      I2 => \USE_READ.rd_cmd_valid\,
      I3 => s_axi_rready,
      O => \^e\(0)
    );
\pre_next_word_1[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^first_word\,
      I1 => Q(5),
      O => \sel_first_word__0\
    );
\pre_next_word_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(0),
      Q => \pre_next_word_1_reg[2]_0\(0),
      R => SR(0)
    );
\pre_next_word_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(1),
      Q => \pre_next_word_1_reg[2]_0\(1),
      R => SR(0)
    );
\pre_next_word_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(2),
      Q => \pre_next_word_1_reg[2]_0\(2),
      R => SR(0)
    );
\rresp_wrap_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(64),
      Q => rresp_wrap_buffer(0),
      R => SR(0)
    );
\rresp_wrap_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => p_7_in,
      D => \rresp_wrap_buffer_reg[1]_0\(65),
      Q => rresp_wrap_buffer(1),
      R => SR(0)
    );
\s_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(32),
      I1 => M_AXI_RDATA_I(32),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(0),
      I5 => M_AXI_RDATA_I(0),
      O => s_axi_rdata(0)
    );
\s_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(42),
      I1 => M_AXI_RDATA_I(42),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(10),
      I5 => M_AXI_RDATA_I(10),
      O => s_axi_rdata(10)
    );
\s_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(43),
      I1 => M_AXI_RDATA_I(43),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(11),
      I5 => M_AXI_RDATA_I(11),
      O => s_axi_rdata(11)
    );
\s_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(44),
      I1 => M_AXI_RDATA_I(44),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(12),
      I5 => M_AXI_RDATA_I(12),
      O => s_axi_rdata(12)
    );
\s_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(45),
      I1 => M_AXI_RDATA_I(45),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(13),
      I5 => M_AXI_RDATA_I(13),
      O => s_axi_rdata(13)
    );
\s_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(46),
      I1 => M_AXI_RDATA_I(46),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(14),
      I5 => M_AXI_RDATA_I(14),
      O => s_axi_rdata(14)
    );
\s_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(47),
      I1 => M_AXI_RDATA_I(47),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(15),
      I5 => M_AXI_RDATA_I(15),
      O => s_axi_rdata(15)
    );
\s_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(48),
      I1 => M_AXI_RDATA_I(48),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(16),
      I5 => M_AXI_RDATA_I(16),
      O => s_axi_rdata(16)
    );
\s_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(49),
      I1 => M_AXI_RDATA_I(49),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(17),
      I5 => M_AXI_RDATA_I(17),
      O => s_axi_rdata(17)
    );
\s_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(50),
      I1 => M_AXI_RDATA_I(50),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(18),
      I5 => M_AXI_RDATA_I(18),
      O => s_axi_rdata(18)
    );
\s_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(51),
      I1 => M_AXI_RDATA_I(51),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(19),
      I5 => M_AXI_RDATA_I(19),
      O => s_axi_rdata(19)
    );
\s_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(33),
      I1 => M_AXI_RDATA_I(33),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(1),
      I5 => M_AXI_RDATA_I(1),
      O => s_axi_rdata(1)
    );
\s_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(52),
      I1 => M_AXI_RDATA_I(52),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(20),
      I5 => M_AXI_RDATA_I(20),
      O => s_axi_rdata(20)
    );
\s_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(53),
      I1 => M_AXI_RDATA_I(53),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(21),
      I5 => M_AXI_RDATA_I(21),
      O => s_axi_rdata(21)
    );
\s_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(54),
      I1 => M_AXI_RDATA_I(54),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(22),
      I5 => M_AXI_RDATA_I(22),
      O => s_axi_rdata(22)
    );
\s_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(55),
      I1 => M_AXI_RDATA_I(55),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(23),
      I5 => M_AXI_RDATA_I(23),
      O => s_axi_rdata(23)
    );
\s_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(56),
      I1 => M_AXI_RDATA_I(56),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(24),
      I5 => M_AXI_RDATA_I(24),
      O => s_axi_rdata(24)
    );
\s_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(57),
      I1 => M_AXI_RDATA_I(57),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(25),
      I5 => M_AXI_RDATA_I(25),
      O => s_axi_rdata(25)
    );
\s_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(58),
      I1 => M_AXI_RDATA_I(58),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(26),
      I5 => M_AXI_RDATA_I(26),
      O => s_axi_rdata(26)
    );
\s_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(59),
      I1 => M_AXI_RDATA_I(59),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(27),
      I5 => M_AXI_RDATA_I(27),
      O => s_axi_rdata(27)
    );
\s_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(60),
      I1 => M_AXI_RDATA_I(60),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(28),
      I5 => M_AXI_RDATA_I(28),
      O => s_axi_rdata(28)
    );
\s_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(61),
      I1 => M_AXI_RDATA_I(61),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(29),
      I5 => M_AXI_RDATA_I(29),
      O => s_axi_rdata(29)
    );
\s_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(34),
      I1 => M_AXI_RDATA_I(34),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(2),
      I5 => M_AXI_RDATA_I(2),
      O => s_axi_rdata(2)
    );
\s_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(62),
      I1 => M_AXI_RDATA_I(62),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(30),
      I5 => M_AXI_RDATA_I(30),
      O => s_axi_rdata(30)
    );
\s_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(63),
      I1 => M_AXI_RDATA_I(63),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(31),
      I5 => M_AXI_RDATA_I(31),
      O => s_axi_rdata(31)
    );
\s_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(35),
      I1 => M_AXI_RDATA_I(35),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(3),
      I5 => M_AXI_RDATA_I(3),
      O => s_axi_rdata(3)
    );
\s_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(36),
      I1 => M_AXI_RDATA_I(36),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(4),
      I5 => M_AXI_RDATA_I(4),
      O => s_axi_rdata(4)
    );
\s_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(37),
      I1 => M_AXI_RDATA_I(37),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(5),
      I5 => M_AXI_RDATA_I(5),
      O => s_axi_rdata(5)
    );
\s_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(38),
      I1 => M_AXI_RDATA_I(38),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(6),
      I5 => M_AXI_RDATA_I(6),
      O => s_axi_rdata(6)
    );
\s_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(39),
      I1 => M_AXI_RDATA_I(39),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(7),
      I5 => M_AXI_RDATA_I(7),
      O => s_axi_rdata(7)
    );
\s_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(40),
      I1 => M_AXI_RDATA_I(40),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(8),
      I5 => M_AXI_RDATA_I(8),
      O => s_axi_rdata(8)
    );
\s_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(41),
      I1 => M_AXI_RDATA_I(41),
      I2 => \^use_wrap_buffer\,
      I3 => \MULTIPLE_WORD.current_index\,
      I4 => \rresp_wrap_buffer_reg[1]_0\(9),
      I5 => M_AXI_RDATA_I(9),
      O => s_axi_rdata(9)
    );
s_axi_rlast_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAAA"
    )
        port map (
      I0 => use_wrap_buffer_reg_0,
      I1 => \USE_RTL_LENGTH.length_counter_q_reg\(1),
      I2 => \USE_RTL_LENGTH.length_counter_q_reg\(0),
      I3 => \^use_rtl_length.first_mi_word_q\,
      I4 => s_axi_rlast_INST_0_i_6_n_0,
      O => \^last_beat__6\
    );
s_axi_rlast_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q_reg\(2),
      I1 => \USE_RTL_LENGTH.length_counter_q_reg\(3),
      I2 => \USE_RTL_LENGTH.length_counter_q_reg\(4),
      I3 => \USE_RTL_LENGTH.length_counter_q_reg\(5),
      I4 => \USE_RTL_LENGTH.length_counter_q_reg\(7),
      I5 => \USE_RTL_LENGTH.length_counter_q_reg\(6),
      O => s_axi_rlast_INST_0_i_6_n_0
    );
\s_axi_rresp[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rresp_wrap_buffer(0),
      I1 => \^use_wrap_buffer\,
      I2 => \rresp_wrap_buffer_reg[1]_0\(64),
      O => s_axi_rresp(0)
    );
\s_axi_rresp[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rresp_wrap_buffer(1),
      I1 => \^use_wrap_buffer\,
      I2 => \rresp_wrap_buffer_reg[1]_0\(65),
      O => s_axi_rresp(1)
    );
use_wrap_buffer_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8080"
    )
        port map (
      I0 => use_wrap_buffer_reg_1,
      I1 => \^last_beat__6\,
      I2 => \^wrap_buffer_available\,
      I3 => use_wrap_buffer_reg_2,
      I4 => \^use_wrap_buffer\,
      O => use_wrap_buffer_i_1_n_0
    );
use_wrap_buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => use_wrap_buffer_i_1_n_0,
      Q => \^use_wrap_buffer\,
      R => SR(0)
    );
\wrap_buffer_available_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFA0"
    )
        port map (
      I0 => p_7_in,
      I1 => \^last_beat__6\,
      I2 => use_wrap_buffer_reg_1,
      I3 => \^wrap_buffer_available\,
      O => \wrap_buffer_available_i_1__0_n_0\
    );
wrap_buffer_available_reg: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \wrap_buffer_available_i_1__0_n_0\,
      Q => \^wrap_buffer_available\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_0_axi_dwidth_converter_v2_1_26_w_upsizer is
  port (
    \USE_RTL_CURR_WORD.first_word_q\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \USE_RTL_LENGTH.length_counter_q_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \USE_REGISTER.M_AXI_WVALID_q_reg_0\ : out STD_LOGIC;
    \USE_RTL_LENGTH.first_mi_word_q\ : out STD_LOGIC;
    wrap_buffer_available : out STD_LOGIC;
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wready_0 : out STD_LOGIC;
    \USE_RTL_CURR_WORD.current_word_q_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \USE_RTL_LENGTH.length_counter_q_reg[1]_1\ : out STD_LOGIC;
    \sel_first_word__0\ : out STD_LOGIC;
    \USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \USE_RTL_LENGTH.length_counter_q_reg[1]_2\ : in STD_LOGIC;
    \USE_REGISTER.M_AXI_WVALID_q_reg_1\ : in STD_LOGIC;
    \USE_RTL_LENGTH.first_mi_word_q_reg_0\ : in STD_LOGIC;
    wrap_buffer_available_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_89_in : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \USE_WRITE.wr_cmd_valid\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p_79_in : in STD_LOGIC;
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0\ : in STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_2\ : in STD_LOGIC;
    \USE_RTL_LENGTH.length_counter_q_reg[0]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \USE_RTL_CURR_WORD.current_word_q_reg[2]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_w_upsizer : entity is "axi_dwidth_converter_v2_1_26_w_upsizer";
end design_1_auto_us_0_axi_dwidth_converter_v2_1_26_w_upsizer;

architecture STRUCTURE of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_w_upsizer is
  signal \M_AXI_WDATA_I118_out__2\ : STD_LOGIC;
  signal \M_AXI_WDATA_I129_out__2\ : STD_LOGIC;
  signal \M_AXI_WDATA_I140_out__2\ : STD_LOGIC;
  signal \M_AXI_WDATA_I150_out__2\ : STD_LOGIC;
  signal \M_AXI_WDATA_I160_out__2\ : STD_LOGIC;
  signal \M_AXI_WDATA_I170_out__2\ : STD_LOGIC;
  signal \M_AXI_WDATA_I17_out__2\ : STD_LOGIC;
  signal \M_AXI_WDATA_I185_out__2\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \USE_REGISTER.M_AXI_WLAST_q_i_1_n_0\ : STD_LOGIC;
  signal \USE_REGISTER.M_AXI_WVALID_q_i_9_n_0\ : STD_LOGIC;
  signal \^use_register.m_axi_wvalid_q_reg_0\ : STD_LOGIC;
  signal \^use_rtl_curr_word.current_word_q_reg[2]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^use_rtl_curr_word.first_word_q\ : STD_LOGIC;
  signal \^use_rtl_length.first_mi_word_q\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[2]_i_2_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[3]_i_1_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[3]_i_2_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[4]_i_1_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[4]_i_2_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[5]_i_1_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[6]_i_1_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[7]_i_1_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[7]_i_2_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q_reg\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \^use_rtl_length.length_counter_q_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[0]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[10]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[11]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[12]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[13]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[14]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_2_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[8]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[9]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[1]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[16]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[17]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[18]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[19]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[20]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[21]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[22]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_2_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[2]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[24]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[25]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[26]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[27]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[28]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[29]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[30]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_2_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[32]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[33]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[34]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[35]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[36]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[37]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[38]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_2_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[4]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[40]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[41]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[42]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[43]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[44]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[45]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[46]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_2_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[5]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[48]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[49]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[50]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[51]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[52]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[53]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[54]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_2_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[6]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[56]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[57]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[58]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[59]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[60]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[61]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[62]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_3_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_2_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_4_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^m_axi_wlast\ : STD_LOGIC;
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^wrap_buffer_available\ : STD_LOGIC;
  signal wstrb_wrap_buffer_1 : STD_LOGIC;
  signal wstrb_wrap_buffer_2 : STD_LOGIC;
  signal wstrb_wrap_buffer_3 : STD_LOGIC;
  signal wstrb_wrap_buffer_4 : STD_LOGIC;
  signal wstrb_wrap_buffer_5 : STD_LOGIC;
  signal wstrb_wrap_buffer_6 : STD_LOGIC;
  signal wstrb_wrap_buffer_7 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \USE_REGISTER.M_AXI_WLAST_q_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \USE_RTL_LENGTH.length_counter_q[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \USE_RTL_LENGTH.length_counter_q[3]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \USE_RTL_LENGTH.length_counter_q[4]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \USE_RTL_LENGTH.length_counter_q[5]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \USE_RTL_LENGTH.length_counter_q[6]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \USE_RTL_LENGTH.length_counter_q[7]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_3\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_3\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_3\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_3\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_3\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_4\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3\ : label is "soft_lutpair47";
begin
  SR(0) <= \^sr\(0);
  \USE_REGISTER.M_AXI_WVALID_q_reg_0\ <= \^use_register.m_axi_wvalid_q_reg_0\;
  \USE_RTL_CURR_WORD.current_word_q_reg[2]_0\(2 downto 0) <= \^use_rtl_curr_word.current_word_q_reg[2]_0\(2 downto 0);
  \USE_RTL_CURR_WORD.first_word_q\ <= \^use_rtl_curr_word.first_word_q\;
  \USE_RTL_LENGTH.first_mi_word_q\ <= \^use_rtl_length.first_mi_word_q\;
  \USE_RTL_LENGTH.length_counter_q_reg[1]_0\(1 downto 0) <= \^use_rtl_length.length_counter_q_reg[1]_0\(1 downto 0);
  m_axi_wlast <= \^m_axi_wlast\;
  m_axi_wstrb(7 downto 0) <= \^m_axi_wstrb\(7 downto 0);
  wrap_buffer_available <= \^wrap_buffer_available\;
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B000B0B000000000"
    )
        port map (
      I0 => m_axi_wready,
      I1 => \^use_register.m_axi_wvalid_q_reg_0\,
      I2 => s_axi_wvalid,
      I3 => \^wrap_buffer_available\,
      I4 => Q(7),
      I5 => \USE_WRITE.wr_cmd_valid\,
      O => m_axi_wready_0
    );
\USE_REGISTER.M_AXI_WLAST_q_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axi_wlast,
      I1 => m_axi_wready,
      I2 => \^use_register.m_axi_wvalid_q_reg_0\,
      I3 => \^m_axi_wlast\,
      O => \USE_REGISTER.M_AXI_WLAST_q_i_1_n_0\
    );
\USE_REGISTER.M_AXI_WLAST_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \USE_REGISTER.M_AXI_WLAST_q_i_1_n_0\,
      Q => \^m_axi_wlast\,
      R => \^sr\(0)
    );
\USE_REGISTER.M_AXI_WVALID_q_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => \^use_rtl_length.length_counter_q_reg[1]_0\(1),
      I1 => \^use_rtl_length.length_counter_q_reg[1]_0\(0),
      I2 => \^use_rtl_length.first_mi_word_q\,
      I3 => \USE_REGISTER.M_AXI_WVALID_q_i_9_n_0\,
      I4 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_2\,
      O => \USE_RTL_LENGTH.length_counter_q_reg[1]_1\
    );
\USE_REGISTER.M_AXI_WVALID_q_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q_reg\(2),
      I1 => \USE_RTL_LENGTH.length_counter_q_reg\(3),
      I2 => \USE_RTL_LENGTH.length_counter_q_reg\(4),
      I3 => \USE_RTL_LENGTH.length_counter_q_reg\(5),
      I4 => \USE_RTL_LENGTH.length_counter_q_reg\(7),
      I5 => \USE_RTL_LENGTH.length_counter_q_reg\(6),
      O => \USE_REGISTER.M_AXI_WVALID_q_i_9_n_0\
    );
\USE_REGISTER.M_AXI_WVALID_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \USE_REGISTER.M_AXI_WVALID_q_reg_1\,
      Q => \^use_register.m_axi_wvalid_q_reg_0\,
      R => \^sr\(0)
    );
\USE_RTL_CURR_WORD.current_word_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => \USE_RTL_CURR_WORD.current_word_q_reg[2]_1\(0),
      Q => \^use_rtl_curr_word.current_word_q_reg[2]_0\(0),
      R => \^sr\(0)
    );
\USE_RTL_CURR_WORD.current_word_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => \USE_RTL_CURR_WORD.current_word_q_reg[2]_1\(1),
      Q => \^use_rtl_curr_word.current_word_q_reg[2]_0\(1),
      R => \^sr\(0)
    );
\USE_RTL_CURR_WORD.current_word_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => \USE_RTL_CURR_WORD.current_word_q_reg[2]_1\(2),
      Q => \^use_rtl_curr_word.current_word_q_reg[2]_0\(2),
      R => \^sr\(0)
    );
\USE_RTL_CURR_WORD.first_word_q_reg\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => E(0),
      D => s_axi_wlast,
      Q => \^use_rtl_curr_word.first_word_q\,
      S => \^sr\(0)
    );
\USE_RTL_CURR_WORD.pre_next_word_q[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^use_rtl_curr_word.first_word_q\,
      I1 => Q(8),
      O => \sel_first_word__0\
    );
\USE_RTL_CURR_WORD.pre_next_word_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => D(0),
      Q => \USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_0\(0),
      R => \^sr\(0)
    );
\USE_RTL_CURR_WORD.pre_next_word_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => D(1),
      Q => \USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_0\(1),
      R => \^sr\(0)
    );
\USE_RTL_CURR_WORD.pre_next_word_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => D(2),
      Q => \USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_0\(2),
      R => \^sr\(0)
    );
\USE_RTL_LENGTH.first_mi_word_q_reg\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.first_mi_word_q_reg_0\,
      Q => \^use_rtl_length.first_mi_word_q\,
      S => \^sr\(0)
    );
\USE_RTL_LENGTH.length_counter_q[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F70"
    )
        port map (
      I0 => \^use_rtl_length.first_mi_word_q\,
      I1 => Q(0),
      I2 => p_89_in,
      I3 => \^use_rtl_length.length_counter_q_reg[1]_0\(0),
      O => \USE_RTL_LENGTH.length_counter_q[0]_i_1_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCC5C3C"
    )
        port map (
      I0 => Q(2),
      I1 => \USE_RTL_LENGTH.length_counter_q_reg\(2),
      I2 => p_89_in,
      I3 => \^use_rtl_length.first_mi_word_q\,
      I4 => \USE_RTL_LENGTH.length_counter_q[2]_i_2_n_0\,
      O => \USE_RTL_LENGTH.length_counter_q[2]_i_1_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \^use_rtl_length.length_counter_q_reg[1]_0\(0),
      I1 => Q(0),
      I2 => \^use_rtl_length.length_counter_q_reg[1]_0\(1),
      I3 => \^use_rtl_length.first_mi_word_q\,
      I4 => Q(1),
      O => \USE_RTL_LENGTH.length_counter_q[2]_i_2_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D8D272D2"
    )
        port map (
      I0 => p_89_in,
      I1 => \USE_RTL_LENGTH.length_counter_q[3]_i_2_n_0\,
      I2 => \USE_RTL_LENGTH.length_counter_q_reg\(3),
      I3 => \^use_rtl_length.first_mi_word_q\,
      I4 => Q(3),
      O => \USE_RTL_LENGTH.length_counter_q[3]_i_1_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE2"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q_reg\(2),
      I1 => \^use_rtl_length.first_mi_word_q\,
      I2 => Q(2),
      I3 => \USE_RTL_LENGTH.length_counter_q[2]_i_2_n_0\,
      O => \USE_RTL_LENGTH.length_counter_q[3]_i_2_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D8D272D2"
    )
        port map (
      I0 => p_89_in,
      I1 => \USE_RTL_LENGTH.length_counter_q[4]_i_2_n_0\,
      I2 => \USE_RTL_LENGTH.length_counter_q_reg\(4),
      I3 => \^use_rtl_length.first_mi_word_q\,
      I4 => Q(4),
      O => \USE_RTL_LENGTH.length_counter_q[4]_i_1_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFAEEEEFFFA"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q[2]_i_2_n_0\,
      I1 => Q(2),
      I2 => \USE_RTL_LENGTH.length_counter_q_reg\(2),
      I3 => \USE_RTL_LENGTH.length_counter_q_reg\(3),
      I4 => \^use_rtl_length.first_mi_word_q\,
      I5 => Q(3),
      O => \USE_RTL_LENGTH.length_counter_q[4]_i_2_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3A9A"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q_reg\(5),
      I1 => \USE_RTL_LENGTH.length_counter_q[7]_i_2_n_0\,
      I2 => p_89_in,
      I3 => \^use_rtl_length.first_mi_word_q\,
      O => \USE_RTL_LENGTH.length_counter_q[5]_i_1_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7070F8DA"
    )
        port map (
      I0 => p_89_in,
      I1 => \^use_rtl_length.first_mi_word_q\,
      I2 => \USE_RTL_LENGTH.length_counter_q_reg\(6),
      I3 => \USE_RTL_LENGTH.length_counter_q_reg\(5),
      I4 => \USE_RTL_LENGTH.length_counter_q[7]_i_2_n_0\,
      O => \USE_RTL_LENGTH.length_counter_q[6]_i_1_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333F0E1F0F0F0F0"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q_reg\(5),
      I1 => \USE_RTL_LENGTH.length_counter_q[7]_i_2_n_0\,
      I2 => \USE_RTL_LENGTH.length_counter_q_reg\(7),
      I3 => \USE_RTL_LENGTH.length_counter_q_reg\(6),
      I4 => \^use_rtl_length.first_mi_word_q\,
      I5 => p_89_in,
      O => \USE_RTL_LENGTH.length_counter_q[7]_i_1_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q[4]_i_2_n_0\,
      I1 => \USE_RTL_LENGTH.length_counter_q_reg\(4),
      I2 => \^use_rtl_length.first_mi_word_q\,
      I3 => Q(4),
      O => \USE_RTL_LENGTH.length_counter_q[7]_i_2_n_0\
    );
\USE_RTL_LENGTH.length_counter_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.length_counter_q[0]_i_1_n_0\,
      Q => \^use_rtl_length.length_counter_q_reg[1]_0\(0),
      R => \^sr\(0)
    );
\USE_RTL_LENGTH.length_counter_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.length_counter_q_reg[1]_2\,
      Q => \^use_rtl_length.length_counter_q_reg[1]_0\(1),
      R => \^sr\(0)
    );
\USE_RTL_LENGTH.length_counter_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.length_counter_q[2]_i_1_n_0\,
      Q => \USE_RTL_LENGTH.length_counter_q_reg\(2),
      R => \^sr\(0)
    );
\USE_RTL_LENGTH.length_counter_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.length_counter_q[3]_i_1_n_0\,
      Q => \USE_RTL_LENGTH.length_counter_q_reg\(3),
      R => \^sr\(0)
    );
\USE_RTL_LENGTH.length_counter_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.length_counter_q[4]_i_1_n_0\,
      Q => \USE_RTL_LENGTH.length_counter_q_reg\(4),
      R => \^sr\(0)
    );
\USE_RTL_LENGTH.length_counter_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.length_counter_q[5]_i_1_n_0\,
      Q => \USE_RTL_LENGTH.length_counter_q_reg\(5),
      R => \^sr\(0)
    );
\USE_RTL_LENGTH.length_counter_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.length_counter_q[6]_i_1_n_0\,
      Q => \USE_RTL_LENGTH.length_counter_q_reg\(6),
      R => \^sr\(0)
    );
\USE_RTL_LENGTH.length_counter_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.length_counter_q[7]_i_1_n_0\,
      Q => \USE_RTL_LENGTH.length_counter_q_reg\(7),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(0),
      I2 => p_79_in,
      I3 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg_n_0_[0]\,
      I4 => \M_AXI_WDATA_I185_out__2\,
      O => p_1_in(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(1),
      I2 => p_79_in,
      I3 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg_n_0_[0]\,
      I4 => \M_AXI_WDATA_I185_out__2\,
      O => p_1_in(1)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(2),
      I2 => p_79_in,
      I3 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg_n_0_[0]\,
      I4 => \M_AXI_WDATA_I185_out__2\,
      O => p_1_in(2)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(3),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(3),
      I2 => p_79_in,
      I3 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg_n_0_[0]\,
      I4 => \M_AXI_WDATA_I185_out__2\,
      O => p_1_in(3)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(4),
      I2 => p_79_in,
      I3 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg_n_0_[0]\,
      I4 => \M_AXI_WDATA_I185_out__2\,
      O => p_1_in(4)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(5),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(5),
      I2 => p_79_in,
      I3 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg_n_0_[0]\,
      I4 => \M_AXI_WDATA_I185_out__2\,
      O => p_1_in(5)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(6),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(6),
      I2 => p_79_in,
      I3 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg_n_0_[0]\,
      I4 => \M_AXI_WDATA_I185_out__2\,
      O => p_1_in(6)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \M_AXI_WDATA_I185_out__2\,
      I1 => m_axi_wready,
      I2 => \^use_register.m_axi_wvalid_q_reg_0\,
      I3 => p_79_in,
      I4 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg_n_0_[0]\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(7),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(7),
      I2 => p_79_in,
      I3 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg_n_0_[0]\,
      I4 => \M_AXI_WDATA_I185_out__2\,
      O => p_1_in(7)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0\,
      I2 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0\,
      O => \M_AXI_WDATA_I185_out__2\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0\,
      D => p_1_in(0),
      Q => m_axi_wdata(0),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0\,
      D => p_1_in(1),
      Q => m_axi_wdata(1),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0\,
      D => p_1_in(2),
      Q => m_axi_wdata(2),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0\,
      D => p_1_in(3),
      Q => m_axi_wdata(3),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0\,
      D => p_1_in(4),
      Q => m_axi_wdata(4),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0\,
      D => p_1_in(5),
      Q => m_axi_wdata(5),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0\,
      D => p_1_in(6),
      Q => m_axi_wdata(6),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[7]_i_1_n_0\,
      D => p_1_in(7),
      Q => m_axi_wdata(7),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F888"
    )
        port map (
      I0 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg_n_0_[0]\,
      I1 => p_79_in,
      I2 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0\,
      I3 => s_axi_wstrb(0),
      I4 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0\,
      I5 => \^m_axi_wstrb\(0),
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[0]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[0]_i_1_n_0\,
      Q => \^m_axi_wstrb\(0),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1\(0),
      D => s_axi_wdata(0),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(0),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1\(0),
      D => s_axi_wdata(1),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(1),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1\(0),
      D => s_axi_wdata(2),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(2),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1\(0),
      D => s_axi_wdata(3),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(3),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1\(0),
      D => s_axi_wdata(4),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(4),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1\(0),
      D => s_axi_wdata(5),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(5),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1\(0),
      D => s_axi_wdata(6),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(6),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1\(0),
      D => s_axi_wdata(7),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(7),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1\(0),
      D => s_axi_wstrb(0),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg_n_0_[0]\,
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(10),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(2),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_1,
      I4 => \M_AXI_WDATA_I170_out__2\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[10]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(11),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(3),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_1,
      I4 => \M_AXI_WDATA_I170_out__2\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[11]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(12),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(4),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_1,
      I4 => \M_AXI_WDATA_I170_out__2\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[12]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(13),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(5),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_1,
      I4 => \M_AXI_WDATA_I170_out__2\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[13]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(14),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(6),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_1,
      I4 => \M_AXI_WDATA_I170_out__2\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[14]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \M_AXI_WDATA_I170_out__2\,
      I1 => m_axi_wready,
      I2 => \^use_register.m_axi_wvalid_q_reg_0\,
      I3 => p_79_in,
      I4 => wstrb_wrap_buffer_1,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(15),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(7),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_1,
      I4 => \M_AXI_WDATA_I170_out__2\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_2_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0\,
      I2 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0\,
      O => \M_AXI_WDATA_I170_out__2\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(8),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(0),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_1,
      I4 => \M_AXI_WDATA_I170_out__2\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[8]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(9),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(1),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_1,
      I4 => \M_AXI_WDATA_I170_out__2\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[9]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0\,
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[10]_i_1_n_0\,
      Q => m_axi_wdata(10),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0\,
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[11]_i_1_n_0\,
      Q => m_axi_wdata(11),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0\,
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[12]_i_1_n_0\,
      Q => m_axi_wdata(12),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0\,
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[13]_i_1_n_0\,
      Q => m_axi_wdata(13),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0\,
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[14]_i_1_n_0\,
      Q => m_axi_wdata(14),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0\,
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_2_n_0\,
      Q => m_axi_wdata(15),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0\,
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[8]_i_1_n_0\,
      Q => m_axi_wdata(8),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[15]_i_1_n_0\,
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[9]_i_1_n_0\,
      Q => m_axi_wdata(9),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F888"
    )
        port map (
      I0 => wstrb_wrap_buffer_1,
      I1 => p_79_in,
      I2 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0\,
      I3 => s_axi_wstrb(1),
      I4 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0\,
      I5 => \^m_axi_wstrb\(1),
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[1]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[1]_i_1_n_0\,
      Q => \^m_axi_wstrb\(1),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0\(0),
      D => s_axi_wdata(10),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(2),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0\(0),
      D => s_axi_wdata(11),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(3),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0\(0),
      D => s_axi_wdata(12),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(4),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0\(0),
      D => s_axi_wdata(13),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(5),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0\(0),
      D => s_axi_wdata(14),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(6),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0\(0),
      D => s_axi_wdata(15),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(7),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0\(0),
      D => s_axi_wdata(8),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(0),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0\(0),
      D => s_axi_wdata(9),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(1),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0\(0),
      D => s_axi_wstrb(1),
      Q => wstrb_wrap_buffer_1,
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(16),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(0),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_2,
      I4 => \M_AXI_WDATA_I160_out__2\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[16]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(17),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(1),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_2,
      I4 => \M_AXI_WDATA_I160_out__2\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[17]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(18),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(2),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_2,
      I4 => \M_AXI_WDATA_I160_out__2\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[18]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(19),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(3),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_2,
      I4 => \M_AXI_WDATA_I160_out__2\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[19]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(20),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(4),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_2,
      I4 => \M_AXI_WDATA_I160_out__2\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[20]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(21),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(5),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_2,
      I4 => \M_AXI_WDATA_I160_out__2\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[21]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(22),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(6),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_2,
      I4 => \M_AXI_WDATA_I160_out__2\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[22]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \M_AXI_WDATA_I160_out__2\,
      I1 => m_axi_wready,
      I2 => \^use_register.m_axi_wvalid_q_reg_0\,
      I3 => p_79_in,
      I4 => wstrb_wrap_buffer_2,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(23),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(7),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_2,
      I4 => \M_AXI_WDATA_I160_out__2\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_2_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0\,
      I2 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0\,
      O => \M_AXI_WDATA_I160_out__2\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0\,
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[16]_i_1_n_0\,
      Q => m_axi_wdata(16),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0\,
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[17]_i_1_n_0\,
      Q => m_axi_wdata(17),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0\,
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[18]_i_1_n_0\,
      Q => m_axi_wdata(18),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0\,
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[19]_i_1_n_0\,
      Q => m_axi_wdata(19),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0\,
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[20]_i_1_n_0\,
      Q => m_axi_wdata(20),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0\,
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[21]_i_1_n_0\,
      Q => m_axi_wdata(21),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0\,
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[22]_i_1_n_0\,
      Q => m_axi_wdata(22),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_1_n_0\,
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[23]_i_2_n_0\,
      Q => m_axi_wdata(23),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F888"
    )
        port map (
      I0 => wstrb_wrap_buffer_2,
      I1 => p_79_in,
      I2 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0\,
      I3 => s_axi_wstrb(2),
      I4 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0\,
      I5 => \^m_axi_wstrb\(2),
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[2]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[2]_i_1_n_0\,
      Q => \^m_axi_wstrb\(2),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0\(0),
      D => s_axi_wdata(16),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(0),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0\(0),
      D => s_axi_wdata(17),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(1),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0\(0),
      D => s_axi_wdata(18),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(2),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0\(0),
      D => s_axi_wdata(19),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(3),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0\(0),
      D => s_axi_wdata(20),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(4),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0\(0),
      D => s_axi_wdata(21),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(5),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0\(0),
      D => s_axi_wdata(22),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(6),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0\(0),
      D => s_axi_wdata(23),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(7),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0\(0),
      D => s_axi_wstrb(2),
      Q => wstrb_wrap_buffer_2,
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(24),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(0),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_3,
      I4 => \M_AXI_WDATA_I150_out__2\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[24]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(25),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(1),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_3,
      I4 => \M_AXI_WDATA_I150_out__2\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[25]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(26),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(2),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_3,
      I4 => \M_AXI_WDATA_I150_out__2\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[26]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(27),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(3),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_3,
      I4 => \M_AXI_WDATA_I150_out__2\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[27]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(28),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(4),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_3,
      I4 => \M_AXI_WDATA_I150_out__2\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[28]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(29),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(5),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_3,
      I4 => \M_AXI_WDATA_I150_out__2\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[29]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(30),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(6),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_3,
      I4 => \M_AXI_WDATA_I150_out__2\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[30]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \M_AXI_WDATA_I150_out__2\,
      I1 => m_axi_wready,
      I2 => \^use_register.m_axi_wvalid_q_reg_0\,
      I3 => p_79_in,
      I4 => wstrb_wrap_buffer_3,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(31),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(7),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_3,
      I4 => \M_AXI_WDATA_I150_out__2\,
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_2_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0\,
      I2 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0\,
      O => \M_AXI_WDATA_I150_out__2\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0\,
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[24]_i_1_n_0\,
      Q => m_axi_wdata(24),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0\,
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[25]_i_1_n_0\,
      Q => m_axi_wdata(25),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0\,
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[26]_i_1_n_0\,
      Q => m_axi_wdata(26),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0\,
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[27]_i_1_n_0\,
      Q => m_axi_wdata(27),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0\,
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[28]_i_1_n_0\,
      Q => m_axi_wdata(28),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0\,
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[29]_i_1_n_0\,
      Q => m_axi_wdata(29),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0\,
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[30]_i_1_n_0\,
      Q => m_axi_wdata(30),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_1_n_0\,
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[31]_i_2_n_0\,
      Q => m_axi_wdata(31),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F888"
    )
        port map (
      I0 => wstrb_wrap_buffer_3,
      I1 => p_79_in,
      I2 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0\,
      I3 => s_axi_wstrb(3),
      I4 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0\,
      I5 => \^m_axi_wstrb\(3),
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002220222A"
    )
        port map (
      I0 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_4_n_0\,
      I1 => Q(6),
      I2 => \^use_rtl_curr_word.first_word_q\,
      I3 => Q(8),
      I4 => \^use_rtl_curr_word.current_word_q_reg[2]_0\(2),
      I5 => Q(5),
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_2_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_1_n_0\,
      Q => \^m_axi_wstrb\(3),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0\(0),
      D => s_axi_wdata(24),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(0),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0\(0),
      D => s_axi_wdata(25),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(1),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0\(0),
      D => s_axi_wdata(26),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(2),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0\(0),
      D => s_axi_wdata(27),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(3),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0\(0),
      D => s_axi_wdata(28),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(4),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0\(0),
      D => s_axi_wdata(29),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(5),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0\(0),
      D => s_axi_wdata(30),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(6),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0\(0),
      D => s_axi_wdata(31),
      Q => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(7),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0\(0),
      D => s_axi_wstrb(3),
      Q => wstrb_wrap_buffer_3,
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(0),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_4,
      I4 => \M_AXI_WDATA_I140_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[32]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(1),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_4,
      I4 => \M_AXI_WDATA_I140_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[33]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(2),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_4,
      I4 => \M_AXI_WDATA_I140_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[34]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(3),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(3),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_4,
      I4 => \M_AXI_WDATA_I140_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[35]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(4),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_4,
      I4 => \M_AXI_WDATA_I140_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[36]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(5),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(5),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_4,
      I4 => \M_AXI_WDATA_I140_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[37]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(6),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(6),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_4,
      I4 => \M_AXI_WDATA_I140_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[38]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \M_AXI_WDATA_I140_out__2\,
      I1 => m_axi_wready,
      I2 => \^use_register.m_axi_wvalid_q_reg_0\,
      I3 => p_79_in,
      I4 => wstrb_wrap_buffer_4,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(7),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(7),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_4,
      I4 => \M_AXI_WDATA_I140_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_2_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_2_n_0\,
      I2 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0\,
      O => \M_AXI_WDATA_I140_out__2\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[32]_i_1_n_0\,
      Q => m_axi_wdata(32),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[33]_i_1_n_0\,
      Q => m_axi_wdata(33),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[34]_i_1_n_0\,
      Q => m_axi_wdata(34),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[35]_i_1_n_0\,
      Q => m_axi_wdata(35),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[36]_i_1_n_0\,
      Q => m_axi_wdata(36),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[37]_i_1_n_0\,
      Q => m_axi_wdata(37),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[38]_i_1_n_0\,
      Q => m_axi_wdata(38),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_1_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[39]_i_2_n_0\,
      Q => m_axi_wdata(39),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F888"
    )
        port map (
      I0 => wstrb_wrap_buffer_4,
      I1 => p_79_in,
      I2 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_2_n_0\,
      I3 => s_axi_wstrb(0),
      I4 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0\,
      I5 => \^m_axi_wstrb\(4),
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[4]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[4]_i_1_n_0\,
      Q => \^m_axi_wstrb\(4),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0\(0),
      D => s_axi_wdata(0),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(0),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0\(0),
      D => s_axi_wdata(1),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(1),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0\(0),
      D => s_axi_wdata(2),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(2),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0\(0),
      D => s_axi_wdata(3),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(3),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0\(0),
      D => s_axi_wdata(4),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(4),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0\(0),
      D => s_axi_wdata(5),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(5),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0\(0),
      D => s_axi_wdata(6),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(6),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0\(0),
      D => s_axi_wdata(7),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(7),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0\(0),
      D => s_axi_wstrb(0),
      Q => wstrb_wrap_buffer_4,
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(8),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(0),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_5,
      I4 => \M_AXI_WDATA_I129_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[40]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(9),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(1),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_5,
      I4 => \M_AXI_WDATA_I129_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[41]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(10),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(2),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_5,
      I4 => \M_AXI_WDATA_I129_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[42]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(11),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(3),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_5,
      I4 => \M_AXI_WDATA_I129_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[43]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(12),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(4),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_5,
      I4 => \M_AXI_WDATA_I129_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[44]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(13),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(5),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_5,
      I4 => \M_AXI_WDATA_I129_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[45]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(14),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(6),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_5,
      I4 => \M_AXI_WDATA_I129_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[46]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \M_AXI_WDATA_I129_out__2\,
      I1 => m_axi_wready,
      I2 => \^use_register.m_axi_wvalid_q_reg_0\,
      I3 => p_79_in,
      I4 => wstrb_wrap_buffer_5,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(15),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(7),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_5,
      I4 => \M_AXI_WDATA_I129_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_2_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_2_n_0\,
      I2 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0\,
      O => \M_AXI_WDATA_I129_out__2\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[40]_i_1_n_0\,
      Q => m_axi_wdata(40),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[41]_i_1_n_0\,
      Q => m_axi_wdata(41),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[42]_i_1_n_0\,
      Q => m_axi_wdata(42),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[43]_i_1_n_0\,
      Q => m_axi_wdata(43),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[44]_i_1_n_0\,
      Q => m_axi_wdata(44),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[45]_i_1_n_0\,
      Q => m_axi_wdata(45),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[46]_i_1_n_0\,
      Q => m_axi_wdata(46),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_1_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[47]_i_2_n_0\,
      Q => m_axi_wdata(47),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F888"
    )
        port map (
      I0 => wstrb_wrap_buffer_5,
      I1 => p_79_in,
      I2 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_2_n_0\,
      I3 => s_axi_wstrb(1),
      I4 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0\,
      I5 => \^m_axi_wstrb\(5),
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[5]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[5]_i_1_n_0\,
      Q => \^m_axi_wstrb\(5),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0\(0),
      D => s_axi_wdata(8),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(0),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0\(0),
      D => s_axi_wdata(9),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(1),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0\(0),
      D => s_axi_wdata(10),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(2),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0\(0),
      D => s_axi_wdata(11),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(3),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0\(0),
      D => s_axi_wdata(12),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(4),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0\(0),
      D => s_axi_wdata(13),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(5),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0\(0),
      D => s_axi_wdata(14),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(6),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0\(0),
      D => s_axi_wdata(15),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(7),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0\(0),
      D => s_axi_wstrb(1),
      Q => wstrb_wrap_buffer_5,
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(16),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(0),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_6,
      I4 => \M_AXI_WDATA_I118_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[48]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(17),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(1),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_6,
      I4 => \M_AXI_WDATA_I118_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[49]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(18),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(2),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_6,
      I4 => \M_AXI_WDATA_I118_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[50]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(19),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(3),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_6,
      I4 => \M_AXI_WDATA_I118_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[51]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(20),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(4),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_6,
      I4 => \M_AXI_WDATA_I118_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[52]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[53]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(21),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(5),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_6,
      I4 => \M_AXI_WDATA_I118_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[53]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[54]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(22),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(6),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_6,
      I4 => \M_AXI_WDATA_I118_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[54]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \M_AXI_WDATA_I118_out__2\,
      I1 => m_axi_wready,
      I2 => \^use_register.m_axi_wvalid_q_reg_0\,
      I3 => p_79_in,
      I4 => wstrb_wrap_buffer_6,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(23),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(7),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_6,
      I4 => \M_AXI_WDATA_I118_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_2_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_2_n_0\,
      I2 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0\,
      O => \M_AXI_WDATA_I118_out__2\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[48]_i_1_n_0\,
      Q => m_axi_wdata(48),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[49]_i_1_n_0\,
      Q => m_axi_wdata(49),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[50]_i_1_n_0\,
      Q => m_axi_wdata(50),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[51]_i_1_n_0\,
      Q => m_axi_wdata(51),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[52]_i_1_n_0\,
      Q => m_axi_wdata(52),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[53]_i_1_n_0\,
      Q => m_axi_wdata(53),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[54]_i_1_n_0\,
      Q => m_axi_wdata(54),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_1_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[55]_i_2_n_0\,
      Q => m_axi_wdata(55),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F888"
    )
        port map (
      I0 => wstrb_wrap_buffer_6,
      I1 => p_79_in,
      I2 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_2_n_0\,
      I3 => s_axi_wstrb(2),
      I4 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0\,
      I5 => \^m_axi_wstrb\(6),
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[6]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[6]_i_1_n_0\,
      Q => \^m_axi_wstrb\(6),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0\(0),
      D => s_axi_wdata(16),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(0),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0\(0),
      D => s_axi_wdata(17),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(1),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0\(0),
      D => s_axi_wdata(18),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(2),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0\(0),
      D => s_axi_wdata(19),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(3),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0\(0),
      D => s_axi_wdata(20),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(4),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0\(0),
      D => s_axi_wdata(21),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(5),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0\(0),
      D => s_axi_wdata(22),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(6),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0\(0),
      D => s_axi_wdata(23),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(7),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0\(0),
      D => s_axi_wstrb(2),
      Q => wstrb_wrap_buffer_6,
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(24),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(0),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_7,
      I4 => \M_AXI_WDATA_I17_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[56]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(25),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(1),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_7,
      I4 => \M_AXI_WDATA_I17_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[57]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(26),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(2),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_7,
      I4 => \M_AXI_WDATA_I17_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[58]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[59]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(27),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(3),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_7,
      I4 => \M_AXI_WDATA_I17_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[59]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(28),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(4),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_7,
      I4 => \M_AXI_WDATA_I17_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[60]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(29),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(5),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_7,
      I4 => \M_AXI_WDATA_I17_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[61]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(30),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(6),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_7,
      I4 => \M_AXI_WDATA_I17_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[62]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q_reg[0]_0\,
      O => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \M_AXI_WDATA_I17_out__2\,
      I1 => m_axi_wready,
      I2 => \^use_register.m_axi_wvalid_q_reg_0\,
      I3 => p_79_in,
      I4 => wstrb_wrap_buffer_7,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => s_axi_wdata(31),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(7),
      I2 => p_79_in,
      I3 => wstrb_wrap_buffer_7,
      I4 => \M_AXI_WDATA_I17_out__2\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_3_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_2_n_0\,
      I2 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0\,
      O => \M_AXI_WDATA_I17_out__2\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[56]_i_1_n_0\,
      Q => m_axi_wdata(56),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[57]_i_1_n_0\,
      Q => m_axi_wdata(57),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[58]_i_1_n_0\,
      Q => m_axi_wdata(58),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[59]_i_1_n_0\,
      Q => m_axi_wdata(59),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[60]_i_1_n_0\,
      Q => m_axi_wdata(60),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[61]_i_1_n_0\,
      Q => m_axi_wdata(61),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[62]_i_1_n_0\,
      Q => m_axi_wdata(62),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_2_n_0\,
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_3_n_0\,
      Q => m_axi_wdata(63),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F888"
    )
        port map (
      I0 => wstrb_wrap_buffer_7,
      I1 => p_79_in,
      I2 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_2_n_0\,
      I3 => s_axi_wstrb(3),
      I4 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0\,
      I5 => \^m_axi_wstrb\(7),
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA888A8880"
    )
        port map (
      I0 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_4_n_0\,
      I1 => Q(6),
      I2 => \^use_rtl_curr_word.first_word_q\,
      I3 => Q(8),
      I4 => \^use_rtl_curr_word.current_word_q_reg[2]_0\(2),
      I5 => Q(5),
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_2_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axi_wready,
      I1 => \^use_register.m_axi_wvalid_q_reg_0\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D000D0000000D000"
    )
        port map (
      I0 => \^use_register.m_axi_wvalid_q_reg_0\,
      I1 => m_axi_wready,
      I2 => s_axi_wvalid,
      I3 => \USE_WRITE.wr_cmd_valid\,
      I4 => Q(7),
      I5 => \^wrap_buffer_available\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_4_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_1_n_0\,
      Q => \^m_axi_wstrb\(7),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0\(0),
      D => s_axi_wdata(24),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(0),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0\(0),
      D => s_axi_wdata(25),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(1),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0\(0),
      D => s_axi_wdata(26),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(2),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0\(0),
      D => s_axi_wdata(27),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(3),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0\(0),
      D => s_axi_wdata(28),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(4),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0\(0),
      D => s_axi_wdata(29),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(5),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0\(0),
      D => s_axi_wdata(30),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(6),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0\(0),
      D => s_axi_wdata(31),
      Q => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg\(7),
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0\(0),
      D => s_axi_wstrb(3),
      Q => wstrb_wrap_buffer_7,
      R => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0)
    );
wrap_buffer_available_reg: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => wrap_buffer_available_reg_0,
      Q => \^wrap_buffer_available\,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_auto_us_0_axi_register_slice_v2_1_26_axic_register_slice__parameterized2\ is
  port (
    s_ready_i_reg_0 : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC;
    m_valid_i_reg_1 : out STD_LOGIC;
    \m_payload_i_reg[66]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 65 downto 0 );
    \out\ : in STD_LOGIC;
    \USE_READ.rd_cmd_valid\ : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rready : in STD_LOGIC;
    p_13_in : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_valid_i_reg_2 : in STD_LOGIC;
    s_ready_i_reg_1 : in STD_LOGIC;
    \USE_RTL_LENGTH.first_mi_word_q\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_auto_us_0_axi_register_slice_v2_1_26_axic_register_slice__parameterized2\ : entity is "axi_register_slice_v2_1_26_axic_register_slice";
end \design_1_auto_us_0_axi_register_slice_v2_1_26_axic_register_slice__parameterized2\;

architecture STRUCTURE of \design_1_auto_us_0_axi_register_slice_v2_1_26_axic_register_slice__parameterized2\ is
  signal \^m_axi_rlast\ : STD_LOGIC;
  signal m_valid_i_i_1_n_0 : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal s_ready_i_i_1_n_0 : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal skid_buffer : STD_LOGIC_VECTOR ( 66 downto 0 );
  signal \skid_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[37]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[38]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[39]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[40]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[41]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[42]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[43]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[44]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[45]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[46]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[47]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[48]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[49]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[50]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[51]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[52]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[53]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[54]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[55]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[56]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[57]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[58]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[59]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[60]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[61]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[62]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[63]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[64]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[65]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[66]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_payload_i[10]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_payload_i[11]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_payload_i[12]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_payload_i[13]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_payload_i[14]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_payload_i[15]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_payload_i[16]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_payload_i[17]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_payload_i[18]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_payload_i[19]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_payload_i[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_payload_i[20]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_payload_i[21]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_payload_i[22]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_payload_i[23]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_payload_i[24]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_payload_i[25]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_payload_i[26]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_payload_i[27]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_payload_i[28]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_payload_i[29]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_payload_i[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_payload_i[30]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_payload_i[31]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_payload_i[33]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_payload_i[34]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_payload_i[35]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_payload_i[36]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_payload_i[37]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_payload_i[38]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_payload_i[39]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_payload_i[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_payload_i[40]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_payload_i[41]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_payload_i[42]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_payload_i[43]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_payload_i[44]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_payload_i[45]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_payload_i[46]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_payload_i[47]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_payload_i[48]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_payload_i[49]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_payload_i[4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_payload_i[50]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_payload_i[51]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_payload_i[52]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_payload_i[53]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_payload_i[54]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_payload_i[55]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_payload_i[56]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_payload_i[57]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_payload_i[58]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_payload_i[59]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_payload_i[5]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_payload_i[60]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_payload_i[61]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_payload_i[62]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_payload_i[63]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_payload_i[64]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_payload_i[65]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_payload_i[66]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_payload_i[7]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_payload_i[8]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_payload_i[9]_i_1\ : label is "soft_lutpair28";
begin
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
\USE_RTL_LENGTH.first_mi_word_q_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => \^m_axi_rlast\,
      I1 => \USE_READ.rd_cmd_valid\,
      I2 => \^m_valid_i_reg_0\,
      I3 => s_axi_rready,
      I4 => p_13_in,
      I5 => \USE_RTL_LENGTH.first_mi_word_q\,
      O => \m_payload_i_reg[66]_0\
    );
\USE_RTL_LENGTH.length_counter_q[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => \USE_READ.rd_cmd_valid\,
      O => m_valid_i_reg_1
    );
\m_payload_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[0]\,
      O => skid_buffer(0)
    );
\m_payload_i[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(10),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[10]\,
      O => skid_buffer(10)
    );
\m_payload_i[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(11),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[11]\,
      O => skid_buffer(11)
    );
\m_payload_i[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(12),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[12]\,
      O => skid_buffer(12)
    );
\m_payload_i[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(13),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[13]\,
      O => skid_buffer(13)
    );
\m_payload_i[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(14),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[14]\,
      O => skid_buffer(14)
    );
\m_payload_i[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(15),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[15]\,
      O => skid_buffer(15)
    );
\m_payload_i[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(16),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[16]\,
      O => skid_buffer(16)
    );
\m_payload_i[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(17),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[17]\,
      O => skid_buffer(17)
    );
\m_payload_i[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(18),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[18]\,
      O => skid_buffer(18)
    );
\m_payload_i[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(19),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[19]\,
      O => skid_buffer(19)
    );
\m_payload_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[1]\,
      O => skid_buffer(1)
    );
\m_payload_i[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(20),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[20]\,
      O => skid_buffer(20)
    );
\m_payload_i[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(21),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[21]\,
      O => skid_buffer(21)
    );
\m_payload_i[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(22),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[22]\,
      O => skid_buffer(22)
    );
\m_payload_i[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(23),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[23]\,
      O => skid_buffer(23)
    );
\m_payload_i[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(24),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[24]\,
      O => skid_buffer(24)
    );
\m_payload_i[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(25),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[25]\,
      O => skid_buffer(25)
    );
\m_payload_i[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(26),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[26]\,
      O => skid_buffer(26)
    );
\m_payload_i[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(27),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[27]\,
      O => skid_buffer(27)
    );
\m_payload_i[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(28),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[28]\,
      O => skid_buffer(28)
    );
\m_payload_i[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(29),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[29]\,
      O => skid_buffer(29)
    );
\m_payload_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[2]\,
      O => skid_buffer(2)
    );
\m_payload_i[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(30),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[30]\,
      O => skid_buffer(30)
    );
\m_payload_i[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(31),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[31]\,
      O => skid_buffer(31)
    );
\m_payload_i[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(32),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[32]\,
      O => skid_buffer(32)
    );
\m_payload_i[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(33),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[33]\,
      O => skid_buffer(33)
    );
\m_payload_i[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(34),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[34]\,
      O => skid_buffer(34)
    );
\m_payload_i[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(35),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[35]\,
      O => skid_buffer(35)
    );
\m_payload_i[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(36),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[36]\,
      O => skid_buffer(36)
    );
\m_payload_i[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(37),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[37]\,
      O => skid_buffer(37)
    );
\m_payload_i[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(38),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[38]\,
      O => skid_buffer(38)
    );
\m_payload_i[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(39),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[39]\,
      O => skid_buffer(39)
    );
\m_payload_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[3]\,
      O => skid_buffer(3)
    );
\m_payload_i[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(40),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[40]\,
      O => skid_buffer(40)
    );
\m_payload_i[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(41),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[41]\,
      O => skid_buffer(41)
    );
\m_payload_i[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(42),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[42]\,
      O => skid_buffer(42)
    );
\m_payload_i[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(43),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[43]\,
      O => skid_buffer(43)
    );
\m_payload_i[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(44),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[44]\,
      O => skid_buffer(44)
    );
\m_payload_i[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(45),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[45]\,
      O => skid_buffer(45)
    );
\m_payload_i[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(46),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[46]\,
      O => skid_buffer(46)
    );
\m_payload_i[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(47),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[47]\,
      O => skid_buffer(47)
    );
\m_payload_i[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(48),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[48]\,
      O => skid_buffer(48)
    );
\m_payload_i[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(49),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[49]\,
      O => skid_buffer(49)
    );
\m_payload_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(4),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[4]\,
      O => skid_buffer(4)
    );
\m_payload_i[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(50),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[50]\,
      O => skid_buffer(50)
    );
\m_payload_i[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(51),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[51]\,
      O => skid_buffer(51)
    );
\m_payload_i[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(52),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[52]\,
      O => skid_buffer(52)
    );
\m_payload_i[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(53),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[53]\,
      O => skid_buffer(53)
    );
\m_payload_i[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(54),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[54]\,
      O => skid_buffer(54)
    );
\m_payload_i[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(55),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[55]\,
      O => skid_buffer(55)
    );
\m_payload_i[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(56),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[56]\,
      O => skid_buffer(56)
    );
\m_payload_i[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(57),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[57]\,
      O => skid_buffer(57)
    );
\m_payload_i[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(58),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[58]\,
      O => skid_buffer(58)
    );
\m_payload_i[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(59),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[59]\,
      O => skid_buffer(59)
    );
\m_payload_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(5),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[5]\,
      O => skid_buffer(5)
    );
\m_payload_i[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(60),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[60]\,
      O => skid_buffer(60)
    );
\m_payload_i[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(61),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[61]\,
      O => skid_buffer(61)
    );
\m_payload_i[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(62),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[62]\,
      O => skid_buffer(62)
    );
\m_payload_i[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(63),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[63]\,
      O => skid_buffer(63)
    );
\m_payload_i[64]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rresp(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[64]\,
      O => skid_buffer(64)
    );
\m_payload_i[65]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rresp(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[65]\,
      O => skid_buffer(65)
    );
\m_payload_i[66]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rlast,
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[66]\,
      O => skid_buffer(66)
    );
\m_payload_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(6),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[6]\,
      O => skid_buffer(6)
    );
\m_payload_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(7),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[7]\,
      O => skid_buffer(7)
    );
\m_payload_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(8),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[8]\,
      O => skid_buffer(8)
    );
\m_payload_i[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(9),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[9]\,
      O => skid_buffer(9)
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(0),
      Q => Q(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(10),
      Q => Q(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(11),
      Q => Q(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(12),
      Q => Q(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(13),
      Q => Q(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(14),
      Q => Q(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(15),
      Q => Q(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(16),
      Q => Q(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(17),
      Q => Q(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(18),
      Q => Q(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(19),
      Q => Q(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(1),
      Q => Q(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(20),
      Q => Q(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(21),
      Q => Q(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(22),
      Q => Q(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(23),
      Q => Q(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(24),
      Q => Q(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(25),
      Q => Q(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(26),
      Q => Q(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(27),
      Q => Q(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(28),
      Q => Q(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(29),
      Q => Q(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(2),
      Q => Q(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(30),
      Q => Q(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(31),
      Q => Q(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(32),
      Q => Q(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(33),
      Q => Q(33),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(34),
      Q => Q(34),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(35),
      Q => Q(35),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(36),
      Q => Q(36),
      R => '0'
    );
\m_payload_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(37),
      Q => Q(37),
      R => '0'
    );
\m_payload_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(38),
      Q => Q(38),
      R => '0'
    );
\m_payload_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(39),
      Q => Q(39),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(3),
      Q => Q(3),
      R => '0'
    );
\m_payload_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(40),
      Q => Q(40),
      R => '0'
    );
\m_payload_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(41),
      Q => Q(41),
      R => '0'
    );
\m_payload_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(42),
      Q => Q(42),
      R => '0'
    );
\m_payload_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(43),
      Q => Q(43),
      R => '0'
    );
\m_payload_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(44),
      Q => Q(44),
      R => '0'
    );
\m_payload_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(45),
      Q => Q(45),
      R => '0'
    );
\m_payload_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(46),
      Q => Q(46),
      R => '0'
    );
\m_payload_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(47),
      Q => Q(47),
      R => '0'
    );
\m_payload_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(48),
      Q => Q(48),
      R => '0'
    );
\m_payload_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(49),
      Q => Q(49),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(4),
      Q => Q(4),
      R => '0'
    );
\m_payload_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(50),
      Q => Q(50),
      R => '0'
    );
\m_payload_i_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(51),
      Q => Q(51),
      R => '0'
    );
\m_payload_i_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(52),
      Q => Q(52),
      R => '0'
    );
\m_payload_i_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(53),
      Q => Q(53),
      R => '0'
    );
\m_payload_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(54),
      Q => Q(54),
      R => '0'
    );
\m_payload_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(55),
      Q => Q(55),
      R => '0'
    );
\m_payload_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(56),
      Q => Q(56),
      R => '0'
    );
\m_payload_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(57),
      Q => Q(57),
      R => '0'
    );
\m_payload_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(58),
      Q => Q(58),
      R => '0'
    );
\m_payload_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(59),
      Q => Q(59),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(5),
      Q => Q(5),
      R => '0'
    );
\m_payload_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(60),
      Q => Q(60),
      R => '0'
    );
\m_payload_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(61),
      Q => Q(61),
      R => '0'
    );
\m_payload_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(62),
      Q => Q(62),
      R => '0'
    );
\m_payload_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(63),
      Q => Q(63),
      R => '0'
    );
\m_payload_i_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(64),
      Q => Q(64),
      R => '0'
    );
\m_payload_i_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(65),
      Q => Q(65),
      R => '0'
    );
\m_payload_i_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(66),
      Q => \^m_axi_rlast\,
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(6),
      Q => Q(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(7),
      Q => Q(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(8),
      Q => Q(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(9),
      Q => Q(9),
      R => '0'
    );
m_valid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF70FFFF00000000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => p_13_in,
      I2 => \^m_valid_i_reg_0\,
      I3 => m_axi_rvalid,
      I4 => \^s_ready_i_reg_0\,
      I5 => m_valid_i_reg_2,
      O => m_valid_i_i_1_n_0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => m_valid_i_i_1_n_0,
      Q => \^m_valid_i_reg_0\,
      R => '0'
    );
s_ready_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFF00000000"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => \^s_ready_i_reg_0\,
      I2 => s_axi_rready,
      I3 => p_13_in,
      I4 => \^m_valid_i_reg_0\,
      I5 => s_ready_i_reg_1,
      O => s_ready_i_i_1_n_0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => s_ready_i_i_1_n_0,
      Q => \^s_ready_i_reg_0\,
      R => '0'
    );
\skid_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(0),
      Q => \skid_buffer_reg_n_0_[0]\,
      R => '0'
    );
\skid_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(10),
      Q => \skid_buffer_reg_n_0_[10]\,
      R => '0'
    );
\skid_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(11),
      Q => \skid_buffer_reg_n_0_[11]\,
      R => '0'
    );
\skid_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(12),
      Q => \skid_buffer_reg_n_0_[12]\,
      R => '0'
    );
\skid_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(13),
      Q => \skid_buffer_reg_n_0_[13]\,
      R => '0'
    );
\skid_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(14),
      Q => \skid_buffer_reg_n_0_[14]\,
      R => '0'
    );
\skid_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(15),
      Q => \skid_buffer_reg_n_0_[15]\,
      R => '0'
    );
\skid_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(16),
      Q => \skid_buffer_reg_n_0_[16]\,
      R => '0'
    );
\skid_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(17),
      Q => \skid_buffer_reg_n_0_[17]\,
      R => '0'
    );
\skid_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(18),
      Q => \skid_buffer_reg_n_0_[18]\,
      R => '0'
    );
\skid_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(19),
      Q => \skid_buffer_reg_n_0_[19]\,
      R => '0'
    );
\skid_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(1),
      Q => \skid_buffer_reg_n_0_[1]\,
      R => '0'
    );
\skid_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(20),
      Q => \skid_buffer_reg_n_0_[20]\,
      R => '0'
    );
\skid_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(21),
      Q => \skid_buffer_reg_n_0_[21]\,
      R => '0'
    );
\skid_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(22),
      Q => \skid_buffer_reg_n_0_[22]\,
      R => '0'
    );
\skid_buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(23),
      Q => \skid_buffer_reg_n_0_[23]\,
      R => '0'
    );
\skid_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(24),
      Q => \skid_buffer_reg_n_0_[24]\,
      R => '0'
    );
\skid_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(25),
      Q => \skid_buffer_reg_n_0_[25]\,
      R => '0'
    );
\skid_buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(26),
      Q => \skid_buffer_reg_n_0_[26]\,
      R => '0'
    );
\skid_buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(27),
      Q => \skid_buffer_reg_n_0_[27]\,
      R => '0'
    );
\skid_buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(28),
      Q => \skid_buffer_reg_n_0_[28]\,
      R => '0'
    );
\skid_buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(29),
      Q => \skid_buffer_reg_n_0_[29]\,
      R => '0'
    );
\skid_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(2),
      Q => \skid_buffer_reg_n_0_[2]\,
      R => '0'
    );
\skid_buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(30),
      Q => \skid_buffer_reg_n_0_[30]\,
      R => '0'
    );
\skid_buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(31),
      Q => \skid_buffer_reg_n_0_[31]\,
      R => '0'
    );
\skid_buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(32),
      Q => \skid_buffer_reg_n_0_[32]\,
      R => '0'
    );
\skid_buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(33),
      Q => \skid_buffer_reg_n_0_[33]\,
      R => '0'
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(34),
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(35),
      Q => \skid_buffer_reg_n_0_[35]\,
      R => '0'
    );
\skid_buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(36),
      Q => \skid_buffer_reg_n_0_[36]\,
      R => '0'
    );
\skid_buffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(37),
      Q => \skid_buffer_reg_n_0_[37]\,
      R => '0'
    );
\skid_buffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(38),
      Q => \skid_buffer_reg_n_0_[38]\,
      R => '0'
    );
\skid_buffer_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(39),
      Q => \skid_buffer_reg_n_0_[39]\,
      R => '0'
    );
\skid_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(3),
      Q => \skid_buffer_reg_n_0_[3]\,
      R => '0'
    );
\skid_buffer_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(40),
      Q => \skid_buffer_reg_n_0_[40]\,
      R => '0'
    );
\skid_buffer_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(41),
      Q => \skid_buffer_reg_n_0_[41]\,
      R => '0'
    );
\skid_buffer_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(42),
      Q => \skid_buffer_reg_n_0_[42]\,
      R => '0'
    );
\skid_buffer_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(43),
      Q => \skid_buffer_reg_n_0_[43]\,
      R => '0'
    );
\skid_buffer_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(44),
      Q => \skid_buffer_reg_n_0_[44]\,
      R => '0'
    );
\skid_buffer_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(45),
      Q => \skid_buffer_reg_n_0_[45]\,
      R => '0'
    );
\skid_buffer_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(46),
      Q => \skid_buffer_reg_n_0_[46]\,
      R => '0'
    );
\skid_buffer_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(47),
      Q => \skid_buffer_reg_n_0_[47]\,
      R => '0'
    );
\skid_buffer_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(48),
      Q => \skid_buffer_reg_n_0_[48]\,
      R => '0'
    );
\skid_buffer_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(49),
      Q => \skid_buffer_reg_n_0_[49]\,
      R => '0'
    );
\skid_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(4),
      Q => \skid_buffer_reg_n_0_[4]\,
      R => '0'
    );
\skid_buffer_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(50),
      Q => \skid_buffer_reg_n_0_[50]\,
      R => '0'
    );
\skid_buffer_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(51),
      Q => \skid_buffer_reg_n_0_[51]\,
      R => '0'
    );
\skid_buffer_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(52),
      Q => \skid_buffer_reg_n_0_[52]\,
      R => '0'
    );
\skid_buffer_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(53),
      Q => \skid_buffer_reg_n_0_[53]\,
      R => '0'
    );
\skid_buffer_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(54),
      Q => \skid_buffer_reg_n_0_[54]\,
      R => '0'
    );
\skid_buffer_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(55),
      Q => \skid_buffer_reg_n_0_[55]\,
      R => '0'
    );
\skid_buffer_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(56),
      Q => \skid_buffer_reg_n_0_[56]\,
      R => '0'
    );
\skid_buffer_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(57),
      Q => \skid_buffer_reg_n_0_[57]\,
      R => '0'
    );
\skid_buffer_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(58),
      Q => \skid_buffer_reg_n_0_[58]\,
      R => '0'
    );
\skid_buffer_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(59),
      Q => \skid_buffer_reg_n_0_[59]\,
      R => '0'
    );
\skid_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(5),
      Q => \skid_buffer_reg_n_0_[5]\,
      R => '0'
    );
\skid_buffer_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(60),
      Q => \skid_buffer_reg_n_0_[60]\,
      R => '0'
    );
\skid_buffer_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(61),
      Q => \skid_buffer_reg_n_0_[61]\,
      R => '0'
    );
\skid_buffer_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(62),
      Q => \skid_buffer_reg_n_0_[62]\,
      R => '0'
    );
\skid_buffer_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(63),
      Q => \skid_buffer_reg_n_0_[63]\,
      R => '0'
    );
\skid_buffer_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rresp(0),
      Q => \skid_buffer_reg_n_0_[64]\,
      R => '0'
    );
\skid_buffer_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rresp(1),
      Q => \skid_buffer_reg_n_0_[65]\,
      R => '0'
    );
\skid_buffer_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rlast,
      Q => \skid_buffer_reg_n_0_[66]\,
      R => '0'
    );
\skid_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(6),
      Q => \skid_buffer_reg_n_0_[6]\,
      R => '0'
    );
\skid_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(7),
      Q => \skid_buffer_reg_n_0_[7]\,
      R => '0'
    );
\skid_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(8),
      Q => \skid_buffer_reg_n_0_[8]\,
      R => '0'
    );
\skid_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(9),
      Q => \skid_buffer_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_auto_us_0_axi_register_slice_v2_1_26_axic_register_slice__parameterized3\ is
  port (
    \aresetn_d_reg[1]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[70]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arready : out STD_LOGIC;
    \m_payload_i_reg[86]_0\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \aresetn_d_reg[1]_1\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_valid_i_reg_inv_0 : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_valid_i_reg_inv_1 : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    \m_payload_i_reg[86]_1\ : in STD_LOGIC_VECTOR ( 85 downto 0 );
    s_ready_i_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_auto_us_0_axi_register_slice_v2_1_26_axic_register_slice__parameterized3\ : entity is "axi_register_slice_v2_1_26_axic_register_slice";
end \design_1_auto_us_0_axi_register_slice_v2_1_26_axic_register_slice__parameterized3\;

architecture STRUCTURE of \design_1_auto_us_0_axi_register_slice_v2_1_26_axic_register_slice__parameterized3\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \USE_RTL_FIFO.data_srl_reg[31][18]_srl32_i_2_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_2__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_3_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][24]_srl32_i_2_n_0\ : STD_LOGIC;
  signal \^aresetn_d_reg[1]_0\ : STD_LOGIC;
  signal \m_axi_araddr[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_araddr[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_araddr[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \m_axi_araddr[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \m_axi_araddr[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \m_axi_araddr[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \m_axi_araddr[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \m_axi_arlen[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_arlen[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_arlen[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_arlen[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \m_axi_arlen[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \m_axi_arlen[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_arlen[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_arlen[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \m_axi_arlen[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \m_axi_arlen[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \m_axi_arlen[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \m_axi_arlen[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \m_axi_arlen[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \m_axi_arlen[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[70]_0\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^m_payload_i_reg[86]_0\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal m_valid_i_inv_i_1_n_0 : STD_LOGIC;
  signal s_axi_arlen_ii : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_arready\ : STD_LOGIC;
  signal s_ready_i_i_1_n_0 : STD_LOGIC;
  signal sr_araddr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sr_arburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sr_arsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][10]_srl32_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][11]_srl32_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][16]_srl32_i_1__0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][19]_srl32_i_1__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_1__0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_2__0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_3\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][24]_srl32_i_2\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][25]_srl32_i_1__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][27]_srl32_i_1__0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][29]_srl32_i_1__0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][9]_srl32_i_1__0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \m_axi_araddr[0]_INST_0_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \m_axi_araddr[1]_INST_0_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_axi_araddr[2]_INST_0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \m_axi_araddr[2]_INST_0_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \m_axi_araddr[2]_INST_0_i_3\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \m_axi_araddr[2]_INST_0_i_7\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \m_axi_araddr[2]_INST_0_i_8\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_axi_arburst[0]_INST_0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \m_axi_arburst[1]_INST_0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \m_axi_arlen[0]_INST_0_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \m_axi_arlen[1]_INST_0_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \m_axi_arlen[1]_INST_0_i_2\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \m_axi_arlen[3]_INST_0_i_10\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \m_axi_arlen[3]_INST_0_i_3\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \m_axi_arlen[3]_INST_0_i_5\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \m_axi_arlen[3]_INST_0_i_7\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \m_axi_arlen[3]_INST_0_i_8\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \m_axi_arsize[0]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \m_axi_arsize[1]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \m_axi_arsize[2]_INST_0\ : label is "soft_lutpair75";
  attribute inverted : string;
  attribute inverted of m_valid_i_reg_inv : label is "yes";
begin
  E(0) <= \^e\(0);
  \aresetn_d_reg[1]_0\ <= \^aresetn_d_reg[1]_0\;
  \m_payload_i_reg[70]_0\(23 downto 0) <= \^m_payload_i_reg[70]_0\(23 downto 0);
  \m_payload_i_reg[86]_0\(12 downto 0) <= \^m_payload_i_reg[86]_0\(12 downto 0);
  s_axi_arready <= \^s_axi_arready\;
\USE_RTL_FIFO.data_srl_reg[31][10]_srl32_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => sr_arsize(1),
      I1 => sr_arsize(2),
      I2 => sr_arsize(0),
      O => \^m_payload_i_reg[70]_0\(6)
    );
\USE_RTL_FIFO.data_srl_reg[31][11]_srl32_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBFBFB"
    )
        port map (
      I0 => sr_arburst(0),
      I1 => sr_arburst(1),
      I2 => \m_axi_araddr[2]_INST_0_i_5_n_0\,
      I3 => \^m_payload_i_reg[70]_0\(4),
      I4 => s_axi_arlen_ii(0),
      O => \^m_payload_i_reg[70]_0\(7)
    );
\USE_RTL_FIFO.data_srl_reg[31][12]_srl32_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03020002FFFFFFFF"
    )
        port map (
      I0 => s_axi_arlen_ii(1),
      I1 => sr_arsize(1),
      I2 => sr_arsize(2),
      I3 => sr_arsize(0),
      I4 => s_axi_arlen_ii(0),
      I5 => \m_axi_araddr[2]_INST_0_i_1_n_0\,
      O => \^m_payload_i_reg[70]_0\(8)
    );
\USE_RTL_FIFO.data_srl_reg[31][13]_srl32_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \m_axi_araddr[2]_INST_0_i_3_n_0\,
      O => \^m_payload_i_reg[70]_0\(9)
    );
\USE_RTL_FIFO.data_srl_reg[31][16]_srl32_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axi_araddr[2]_INST_0_i_3_n_0\,
      I1 => sr_araddr(2),
      O => \^m_payload_i_reg[70]_0\(10)
    );
\USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"520052005200A200"
    )
        port map (
      I0 => sr_araddr(0),
      I1 => \m_axi_araddr[2]_INST_0_i_1_n_0\,
      I2 => s_axi_arlen_ii(0),
      I3 => \^m_payload_i_reg[70]_0\(4),
      I4 => sr_arburst(0),
      I5 => sr_arburst(1),
      O => \^m_payload_i_reg[70]_0\(11)
    );
\USE_RTL_FIFO.data_srl_reg[31][18]_srl32_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A95556AA"
    )
        port map (
      I0 => sr_araddr(1),
      I1 => sr_arburst(0),
      I2 => sr_arburst(1),
      I3 => \m_axi_araddr[1]_INST_0_i_1_n_0\,
      I4 => \m_axi_arlen[3]_INST_0_i_5_n_0\,
      I5 => \USE_RTL_FIFO.data_srl_reg[31][18]_srl32_i_2_n_0\,
      O => \^m_payload_i_reg[70]_0\(12)
    );
\USE_RTL_FIFO.data_srl_reg[31][18]_srl32_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEFEEEE"
    )
        port map (
      I0 => sr_arsize(1),
      I1 => sr_arsize(2),
      I2 => \m_axi_araddr[1]_INST_0_i_1_n_0\,
      I3 => \m_axi_araddr[2]_INST_0_i_5_n_0\,
      I4 => sr_arburst(1),
      I5 => sr_arburst(0),
      O => \USE_RTL_FIFO.data_srl_reg[31][18]_srl32_i_2_n_0\
    );
\USE_RTL_FIFO.data_srl_reg[31][19]_srl32_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0906"
    )
        port map (
      I0 => \m_axi_arlen[1]_INST_0_i_1_n_0\,
      I1 => sr_araddr(2),
      I2 => \m_axi_araddr[2]_INST_0_i_3_n_0\,
      I3 => \m_axi_arlen[1]_INST_0_i_2_n_0\,
      O => \^m_payload_i_reg[70]_0\(13)
    );
\USE_RTL_FIFO.data_srl_reg[31][20]_srl32_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000030001"
    )
        port map (
      I0 => \m_axi_araddr[2]_INST_0_i_1_n_0\,
      I1 => sr_arsize(0),
      I2 => sr_arsize(1),
      I3 => sr_arsize(2),
      I4 => s_axi_arlen_ii(0),
      I5 => sr_araddr(0),
      O => \^m_payload_i_reg[70]_0\(14)
    );
\USE_RTL_FIFO.data_srl_reg[31][21]_srl32_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555550100000054"
    )
        port map (
      I0 => \USE_RTL_FIFO.data_srl_reg[31][18]_srl32_i_2_n_0\,
      I1 => sr_araddr(0),
      I2 => sr_arsize(0),
      I3 => sr_arsize(2),
      I4 => sr_arsize(1),
      I5 => sr_araddr(1),
      O => \^m_payload_i_reg[70]_0\(15)
    );
\USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009699"
    )
        port map (
      I0 => sr_araddr(2),
      I1 => \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_2__0_n_0\,
      I2 => \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_3_n_0\,
      I3 => sr_araddr(1),
      I4 => \m_axi_araddr[2]_INST_0_i_3_n_0\,
      O => \^m_payload_i_reg[70]_0\(16)
    );
\USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => sr_arsize(0),
      I1 => sr_arsize(2),
      I2 => sr_arsize(1),
      O => \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_2__0_n_0\
    );
\USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF1"
    )
        port map (
      I0 => sr_araddr(0),
      I1 => sr_arsize(0),
      I2 => sr_arsize(2),
      I3 => sr_arsize(1),
      O => \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_3_n_0\
    );
\USE_RTL_FIFO.data_srl_reg[31][23]_srl32_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF000000000000"
    )
        port map (
      I0 => s_axi_arlen_ii(0),
      I1 => \m_axi_araddr[2]_INST_0_i_5_n_0\,
      I2 => sr_arburst(1),
      I3 => sr_arburst(0),
      I4 => \^m_payload_i_reg[70]_0\(4),
      I5 => sr_araddr(0),
      O => \^m_payload_i_reg[70]_0\(17)
    );
\USE_RTL_FIFO.data_srl_reg[31][24]_srl32_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAA8A"
    )
        port map (
      I0 => sr_araddr(1),
      I1 => sr_arburst(0),
      I2 => sr_arburst(1),
      I3 => \m_axi_araddr[2]_INST_0_i_5_n_0\,
      I4 => \m_axi_araddr[1]_INST_0_i_1_n_0\,
      I5 => \USE_RTL_FIFO.data_srl_reg[31][24]_srl32_i_2_n_0\,
      O => \^m_payload_i_reg[70]_0\(18)
    );
\USE_RTL_FIFO.data_srl_reg[31][24]_srl32_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sr_arsize(2),
      I1 => sr_arsize(1),
      O => \USE_RTL_FIFO.data_srl_reg[31][24]_srl32_i_2_n_0\
    );
\USE_RTL_FIFO.data_srl_reg[31][25]_srl32_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sr_araddr(2),
      I1 => \m_axi_araddr[2]_INST_0_i_3_n_0\,
      O => \^m_payload_i_reg[70]_0\(19)
    );
\USE_RTL_FIFO.data_srl_reg[31][27]_srl32_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axi_araddr[2]_INST_0_i_1_n_0\,
      I1 => \^m_payload_i_reg[70]_0\(22),
      O => \^m_payload_i_reg[70]_0\(21)
    );
\USE_RTL_FIFO.data_srl_reg[31][29]_srl32_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sr_arburst(0),
      I1 => sr_arburst(1),
      O => \^m_payload_i_reg[70]_0\(23)
    );
\USE_RTL_FIFO.data_srl_reg[31][9]_srl32_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => sr_arsize(0),
      I1 => sr_arsize(2),
      I2 => sr_arsize(1),
      O => \^m_payload_i_reg[70]_0\(5)
    );
\aresetn_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \aresetn_d_reg[1]_1\,
      Q => \^aresetn_d_reg[1]_0\,
      R => SR(0)
    );
\m_axi_araddr[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAA22222AAAAAAA"
    )
        port map (
      I0 => sr_araddr(0),
      I1 => \^m_payload_i_reg[70]_0\(22),
      I2 => s_axi_arlen_ii(0),
      I3 => \^m_payload_i_reg[70]_0\(4),
      I4 => \m_axi_araddr[2]_INST_0_i_1_n_0\,
      I5 => \^m_payload_i_reg[70]_0\(20),
      O => m_axi_araddr(0)
    );
\m_axi_araddr[0]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => sr_arsize(0),
      I1 => sr_arsize(1),
      I2 => sr_arsize(2),
      O => \^m_payload_i_reg[70]_0\(4)
    );
\m_axi_araddr[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20AA2AAA"
    )
        port map (
      I0 => sr_araddr(1),
      I1 => \m_axi_araddr[1]_INST_0_i_1_n_0\,
      I2 => \m_axi_araddr[2]_INST_0_i_1_n_0\,
      I3 => \^m_payload_i_reg[70]_0\(22),
      I4 => \^m_payload_i_reg[70]_0\(20),
      O => m_axi_araddr(1)
    );
\m_axi_araddr[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03020002"
    )
        port map (
      I0 => s_axi_arlen_ii(1),
      I1 => sr_arsize(1),
      I2 => sr_arsize(2),
      I3 => sr_arsize(0),
      I4 => s_axi_arlen_ii(0),
      O => \m_axi_araddr[1]_INST_0_i_1_n_0\
    );
\m_axi_araddr[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8000F700"
    )
        port map (
      I0 => \m_axi_araddr[2]_INST_0_i_1_n_0\,
      I1 => \^m_payload_i_reg[70]_0\(22),
      I2 => \m_axi_araddr[2]_INST_0_i_3_n_0\,
      I3 => sr_araddr(2),
      I4 => \^m_payload_i_reg[70]_0\(20),
      O => m_axi_araddr(2)
    );
\m_axi_araddr[2]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \m_axi_araddr[2]_INST_0_i_5_n_0\,
      I1 => sr_arburst(1),
      I2 => sr_arburst(0),
      O => \m_axi_araddr[2]_INST_0_i_1_n_0\
    );
\m_axi_araddr[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0000"
    )
        port map (
      I0 => s_axi_arlen_ii(2),
      I1 => s_axi_arlen_ii(3),
      I2 => s_axi_arlen_ii(1),
      I3 => s_axi_arlen_ii(0),
      I4 => \^m_payload_i_reg[86]_0\(4),
      I5 => \^m_payload_i_reg[70]_0\(23),
      O => \^m_payload_i_reg[70]_0\(22)
    );
\m_axi_araddr[2]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sr_arburst(0),
      I1 => sr_arburst(1),
      I2 => \m_axi_araddr[2]_INST_0_i_5_n_0\,
      I3 => \m_axi_araddr[2]_INST_0_i_6_n_0\,
      O => \m_axi_araddr[2]_INST_0_i_3_n_0\
    );
\m_axi_araddr[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA800000000"
    )
        port map (
      I0 => \m_axi_araddr[2]_INST_0_i_5_n_0\,
      I1 => sr_araddr(2),
      I2 => sr_araddr(1),
      I3 => sr_araddr(0),
      I4 => \m_axi_araddr[2]_INST_0_i_7_n_0\,
      I5 => \^m_payload_i_reg[70]_0\(22),
      O => \^m_payload_i_reg[70]_0\(20)
    );
\m_axi_araddr[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAA8FFFFFFFF"
    )
        port map (
      I0 => s_axi_arlen_ii(2),
      I1 => sr_arsize(2),
      I2 => sr_arsize(1),
      I3 => sr_arsize(0),
      I4 => s_axi_arlen_ii(3),
      I5 => \m_axi_araddr[2]_INST_0_i_8_n_0\,
      O => \m_axi_araddr[2]_INST_0_i_5_n_0\
    );
\m_axi_araddr[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F00CA000000CA"
    )
        port map (
      I0 => s_axi_arlen_ii(2),
      I1 => s_axi_arlen_ii(0),
      I2 => sr_arsize(1),
      I3 => sr_arsize(2),
      I4 => sr_arsize(0),
      I5 => s_axi_arlen_ii(1),
      O => \m_axi_araddr[2]_INST_0_i_6_n_0\
    );
\m_axi_araddr[2]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sr_arburst(0),
      I1 => sr_arburst(1),
      O => \m_axi_araddr[2]_INST_0_i_7_n_0\
    );
\m_axi_araddr[2]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0505373F"
    )
        port map (
      I0 => sr_arsize(1),
      I1 => s_axi_arlen_ii(0),
      I2 => sr_arsize(2),
      I3 => sr_arsize(0),
      I4 => s_axi_arlen_ii(1),
      O => \m_axi_araddr[2]_INST_0_i_8_n_0\
    );
\m_axi_arburst[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \m_axi_araddr[2]_INST_0_i_1_n_0\,
      I1 => \^m_payload_i_reg[70]_0\(22),
      I2 => sr_arburst(0),
      O => m_axi_arburst(0)
    );
\m_axi_arburst[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \m_axi_araddr[2]_INST_0_i_1_n_0\,
      I1 => \^m_payload_i_reg[70]_0\(22),
      I2 => sr_arburst(1),
      O => m_axi_arburst(1)
    );
\m_axi_arlen[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6566AAAA66AA"
    )
        port map (
      I0 => \m_axi_arlen[3]_INST_0_i_3_n_0\,
      I1 => \m_axi_arlen[1]_INST_0_i_2_n_0\,
      I2 => \m_axi_araddr[2]_INST_0_i_3_n_0\,
      I3 => sr_araddr(2),
      I4 => \m_axi_arlen[0]_INST_0_i_1_n_0\,
      I5 => \m_axi_arlen[1]_INST_0_i_1_n_0\,
      O => \^m_payload_i_reg[70]_0\(0)
    );
\m_axi_arlen[0]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^m_payload_i_reg[70]_0\(22),
      I1 => sr_arburst(1),
      I2 => sr_arburst(0),
      O => \m_axi_arlen[0]_INST_0_i_1_n_0\
    );
\m_axi_arlen[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EA0000FF15FFFF"
    )
        port map (
      I0 => \m_axi_arlen[1]_INST_0_i_1_n_0\,
      I1 => \m_axi_arlen[1]_INST_0_i_2_n_0\,
      I2 => sr_araddr(2),
      I3 => \m_axi_arlen[1]_INST_0_i_3_n_0\,
      I4 => \m_axi_arlen[3]_INST_0_i_3_n_0\,
      I5 => \m_axi_arlen[3]_INST_0_i_4_n_0\,
      O => \^m_payload_i_reg[70]_0\(1)
    );
\m_axi_arlen[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8E8E888"
    )
        port map (
      I0 => \^m_payload_i_reg[70]_0\(18),
      I1 => \m_axi_arlen[3]_INST_0_i_5_n_0\,
      I2 => \m_axi_araddr[1]_INST_0_i_1_n_0\,
      I3 => sr_arburst(1),
      I4 => sr_arburst(0),
      O => \m_axi_arlen[1]_INST_0_i_1_n_0\
    );
\m_axi_arlen[1]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \m_axi_araddr[2]_INST_0_i_6_n_0\,
      I1 => sr_arburst(1),
      I2 => sr_arburst(0),
      O => \m_axi_arlen[1]_INST_0_i_2_n_0\
    );
\m_axi_arlen[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF45FFFFFFFFFF"
    )
        port map (
      I0 => \m_axi_arlen[1]_INST_0_i_2_n_0\,
      I1 => \m_axi_araddr[2]_INST_0_i_3_n_0\,
      I2 => sr_araddr(2),
      I3 => sr_arburst(0),
      I4 => sr_arburst(1),
      I5 => \^m_payload_i_reg[70]_0\(22),
      O => \m_axi_arlen[1]_INST_0_i_3_n_0\
    );
\m_axi_arlen[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40BF"
    )
        port map (
      I0 => \m_axi_arlen[3]_INST_0_i_4_n_0\,
      I1 => \m_axi_arlen[3]_INST_0_i_3_n_0\,
      I2 => \m_axi_arlen[3]_INST_0_i_2_n_0\,
      I3 => \m_axi_arlen[3]_INST_0_i_1_n_0\,
      O => \^m_payload_i_reg[70]_0\(2)
    );
\m_axi_arlen[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400040"
    )
        port map (
      I0 => \m_axi_arlen[3]_INST_0_i_1_n_0\,
      I1 => \m_axi_arlen[3]_INST_0_i_2_n_0\,
      I2 => \m_axi_arlen[3]_INST_0_i_3_n_0\,
      I3 => \m_axi_arlen[3]_INST_0_i_4_n_0\,
      I4 => \^m_payload_i_reg[70]_0\(22),
      I5 => s_axi_arlen_ii(3),
      O => \^m_payload_i_reg[70]_0\(3)
    );
\m_axi_arlen[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFF0000FDFFFFFF"
    )
        port map (
      I0 => sr_arsize(1),
      I1 => sr_arsize(2),
      I2 => sr_arsize(0),
      I3 => s_axi_arlen_ii(3),
      I4 => \^m_payload_i_reg[70]_0\(22),
      I5 => s_axi_arlen_ii(2),
      O => \m_axi_arlen[3]_INST_0_i_1_n_0\
    );
\m_axi_arlen[3]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCF7FFF7"
    )
        port map (
      I0 => s_axi_arlen_ii(2),
      I1 => sr_arsize(1),
      I2 => sr_arsize(2),
      I3 => sr_arsize(0),
      I4 => s_axi_arlen_ii(3),
      O => \m_axi_arlen[3]_INST_0_i_10_n_0\
    );
\m_axi_arlen[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFE8"
    )
        port map (
      I0 => \^m_payload_i_reg[70]_0\(18),
      I1 => \m_axi_arlen[3]_INST_0_i_5_n_0\,
      I2 => \m_axi_arlen[3]_INST_0_i_6_n_0\,
      I3 => \m_axi_arlen[3]_INST_0_i_7_n_0\,
      I4 => \m_axi_arlen[0]_INST_0_i_1_n_0\,
      I5 => \m_axi_arlen[3]_INST_0_i_8_n_0\,
      O => \m_axi_arlen[3]_INST_0_i_2_n_0\
    );
\m_axi_arlen[3]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axi_arlen[3]_INST_0_i_9_n_0\,
      I1 => \^m_payload_i_reg[70]_0\(22),
      I2 => s_axi_arlen_ii(0),
      O => \m_axi_arlen[3]_INST_0_i_3_n_0\
    );
\m_axi_arlen[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0FF0000E0FFE0FF"
    )
        port map (
      I0 => sr_arburst(1),
      I1 => sr_arburst(0),
      I2 => \^m_payload_i_reg[86]_0\(4),
      I3 => s_axi_arlen_ii(1),
      I4 => \m_axi_arlen[3]_INST_0_i_10_n_0\,
      I5 => \^m_payload_i_reg[70]_0\(22),
      O => \m_axi_arlen[3]_INST_0_i_4_n_0\
    );
\m_axi_arlen[3]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808000"
    )
        port map (
      I0 => sr_araddr(0),
      I1 => s_axi_arlen_ii(0),
      I2 => \^m_payload_i_reg[70]_0\(4),
      I3 => sr_arburst(0),
      I4 => sr_arburst(1),
      O => \m_axi_arlen[3]_INST_0_i_5_n_0\
    );
\m_axi_arlen[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000B0008"
    )
        port map (
      I0 => s_axi_arlen_ii(0),
      I1 => sr_arsize(0),
      I2 => sr_arsize(2),
      I3 => sr_arsize(1),
      I4 => s_axi_arlen_ii(1),
      I5 => \^m_payload_i_reg[70]_0\(23),
      O => \m_axi_arlen[3]_INST_0_i_6_n_0\
    );
\m_axi_arlen[3]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => sr_arburst(0),
      I1 => sr_arburst(1),
      I2 => \m_axi_araddr[2]_INST_0_i_6_n_0\,
      I3 => sr_araddr(2),
      O => \m_axi_arlen[3]_INST_0_i_7_n_0\
    );
\m_axi_arlen[3]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00055755"
    )
        port map (
      I0 => sr_araddr(2),
      I1 => \m_axi_araddr[2]_INST_0_i_5_n_0\,
      I2 => sr_arburst(0),
      I3 => sr_arburst(1),
      I4 => \m_axi_araddr[2]_INST_0_i_6_n_0\,
      O => \m_axi_arlen[3]_INST_0_i_8_n_0\
    );
\m_axi_arlen[3]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => s_axi_arlen_ii(3),
      I1 => sr_arsize(1),
      I2 => s_axi_arlen_ii(1),
      I3 => sr_arsize(0),
      I4 => s_axi_arlen_ii(2),
      I5 => sr_arsize(2),
      O => \m_axi_arlen[3]_INST_0_i_9_n_0\
    );
\m_axi_arsize[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sr_arsize(0),
      I1 => \^m_payload_i_reg[70]_0\(22),
      O => m_axi_arsize(0)
    );
\m_axi_arsize[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sr_arsize(1),
      I1 => \^m_payload_i_reg[70]_0\(22),
      O => m_axi_arsize(1)
    );
\m_axi_arsize[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sr_arsize(2),
      I1 => \^m_payload_i_reg[70]_0\(22),
      O => m_axi_arsize(2)
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(0),
      Q => sr_araddr(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(10),
      Q => m_axi_araddr(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(11),
      Q => m_axi_araddr(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(12),
      Q => m_axi_araddr(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(13),
      Q => m_axi_araddr(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(14),
      Q => m_axi_araddr(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(15),
      Q => m_axi_araddr(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(16),
      Q => m_axi_araddr(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(17),
      Q => m_axi_araddr(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(18),
      Q => m_axi_araddr(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(19),
      Q => m_axi_araddr(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(1),
      Q => sr_araddr(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(20),
      Q => m_axi_araddr(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(21),
      Q => m_axi_araddr(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(22),
      Q => m_axi_araddr(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(23),
      Q => m_axi_araddr(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(24),
      Q => m_axi_araddr(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(25),
      Q => m_axi_araddr(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(26),
      Q => m_axi_araddr(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(27),
      Q => m_axi_araddr(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(28),
      Q => m_axi_araddr(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(29),
      Q => m_axi_araddr(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(2),
      Q => sr_araddr(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(30),
      Q => m_axi_araddr(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(31),
      Q => m_axi_araddr(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(32),
      Q => m_axi_araddr(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(33),
      Q => m_axi_araddr(33),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(34),
      Q => m_axi_araddr(34),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(35),
      Q => m_axi_araddr(35),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(36),
      Q => m_axi_araddr(36),
      R => '0'
    );
\m_payload_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(37),
      Q => m_axi_araddr(37),
      R => '0'
    );
\m_payload_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(38),
      Q => m_axi_araddr(38),
      R => '0'
    );
\m_payload_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(39),
      Q => m_axi_araddr(39),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(3),
      Q => m_axi_araddr(3),
      R => '0'
    );
\m_payload_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(40),
      Q => m_axi_araddr(40),
      R => '0'
    );
\m_payload_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(41),
      Q => m_axi_araddr(41),
      R => '0'
    );
\m_payload_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(42),
      Q => m_axi_araddr(42),
      R => '0'
    );
\m_payload_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(43),
      Q => m_axi_araddr(43),
      R => '0'
    );
\m_payload_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(44),
      Q => m_axi_araddr(44),
      R => '0'
    );
\m_payload_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(45),
      Q => m_axi_araddr(45),
      R => '0'
    );
\m_payload_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(46),
      Q => m_axi_araddr(46),
      R => '0'
    );
\m_payload_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(47),
      Q => m_axi_araddr(47),
      R => '0'
    );
\m_payload_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(48),
      Q => m_axi_araddr(48),
      R => '0'
    );
\m_payload_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(49),
      Q => m_axi_araddr(49),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(4),
      Q => m_axi_araddr(4),
      R => '0'
    );
\m_payload_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(50),
      Q => m_axi_araddr(50),
      R => '0'
    );
\m_payload_i_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(51),
      Q => m_axi_araddr(51),
      R => '0'
    );
\m_payload_i_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(52),
      Q => m_axi_araddr(52),
      R => '0'
    );
\m_payload_i_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(53),
      Q => m_axi_araddr(53),
      R => '0'
    );
\m_payload_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(54),
      Q => m_axi_araddr(54),
      R => '0'
    );
\m_payload_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(55),
      Q => m_axi_araddr(55),
      R => '0'
    );
\m_payload_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(56),
      Q => m_axi_araddr(56),
      R => '0'
    );
\m_payload_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(57),
      Q => m_axi_araddr(57),
      R => '0'
    );
\m_payload_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(58),
      Q => m_axi_araddr(58),
      R => '0'
    );
\m_payload_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(59),
      Q => m_axi_araddr(59),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(5),
      Q => m_axi_araddr(5),
      R => '0'
    );
\m_payload_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(60),
      Q => m_axi_araddr(60),
      R => '0'
    );
\m_payload_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(61),
      Q => m_axi_araddr(61),
      R => '0'
    );
\m_payload_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(62),
      Q => m_axi_araddr(62),
      R => '0'
    );
\m_payload_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(63),
      Q => m_axi_araddr(63),
      R => '0'
    );
\m_payload_i_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(64),
      Q => \^m_payload_i_reg[86]_0\(0),
      R => '0'
    );
\m_payload_i_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(65),
      Q => \^m_payload_i_reg[86]_0\(1),
      R => '0'
    );
\m_payload_i_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(66),
      Q => \^m_payload_i_reg[86]_0\(2),
      R => '0'
    );
\m_payload_i_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(67),
      Q => sr_arsize(0),
      R => '0'
    );
\m_payload_i_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(68),
      Q => sr_arsize(1),
      R => '0'
    );
\m_payload_i_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(69),
      Q => sr_arsize(2),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(6),
      Q => m_axi_araddr(6),
      R => '0'
    );
\m_payload_i_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(70),
      Q => sr_arburst(0),
      R => '0'
    );
\m_payload_i_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(71),
      Q => sr_arburst(1),
      R => '0'
    );
\m_payload_i_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(72),
      Q => \^m_payload_i_reg[86]_0\(3),
      R => '0'
    );
\m_payload_i_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(73),
      Q => \^m_payload_i_reg[86]_0\(4),
      R => '0'
    );
\m_payload_i_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(74),
      Q => \^m_payload_i_reg[86]_0\(5),
      R => '0'
    );
\m_payload_i_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(75),
      Q => \^m_payload_i_reg[86]_0\(6),
      R => '0'
    );
\m_payload_i_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(76),
      Q => s_axi_arlen_ii(0),
      R => '0'
    );
\m_payload_i_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(77),
      Q => s_axi_arlen_ii(1),
      R => '0'
    );
\m_payload_i_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(78),
      Q => s_axi_arlen_ii(2),
      R => '0'
    );
\m_payload_i_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(79),
      Q => s_axi_arlen_ii(3),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(7),
      Q => m_axi_araddr(7),
      R => '0'
    );
\m_payload_i_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(80),
      Q => \^m_payload_i_reg[86]_0\(7),
      R => '0'
    );
\m_payload_i_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(81),
      Q => \^m_payload_i_reg[86]_0\(8),
      R => '0'
    );
\m_payload_i_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(82),
      Q => \^m_payload_i_reg[86]_0\(9),
      R => '0'
    );
\m_payload_i_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(83),
      Q => \^m_payload_i_reg[86]_0\(10),
      R => '0'
    );
\m_payload_i_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(84),
      Q => \^m_payload_i_reg[86]_0\(11),
      R => '0'
    );
\m_payload_i_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(85),
      Q => \^m_payload_i_reg[86]_0\(12),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(8),
      Q => m_axi_araddr(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[86]_1\(9),
      Q => m_axi_araddr(9),
      R => '0'
    );
m_valid_i_inv_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FF80FFFFFFFF"
    )
        port map (
      I0 => m_valid_i_reg_inv_0,
      I1 => m_axi_arready,
      I2 => m_valid_i_reg_inv_1,
      I3 => \^s_axi_arready\,
      I4 => s_axi_arvalid,
      I5 => \^aresetn_d_reg[1]_0\,
      O => m_valid_i_inv_i_1_n_0
    );
m_valid_i_reg_inv: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => \out\,
      CE => '1',
      D => m_valid_i_inv_i_1_n_0,
      Q => \^e\(0),
      R => '0'
    );
s_ready_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57F70000"
    )
        port map (
      I0 => \^aresetn_d_reg[1]_0\,
      I1 => s_ready_i_reg_0,
      I2 => \^e\(0),
      I3 => s_axi_arvalid,
      I4 => \aresetn_d_reg[1]_1\,
      O => s_ready_i_i_1_n_0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => s_ready_i_i_1_n_0,
      Q => \^s_axi_arready\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_auto_us_0_axi_register_slice_v2_1_26_axic_register_slice__parameterized3_0\ is
  port (
    \aresetn_d_reg[0]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \in\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 70 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC;
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    m_valid_i_reg_inv_0 : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_valid_i_reg_inv_1 : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_ready_i_reg_0 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 85 downto 0 );
    s_ready_i_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_auto_us_0_axi_register_slice_v2_1_26_axic_register_slice__parameterized3_0\ : entity is "axi_register_slice_v2_1_26_axic_register_slice";
end \design_1_auto_us_0_axi_register_slice_v2_1_26_axic_register_slice__parameterized3_0\;

architecture STRUCTURE of \design_1_auto_us_0_axi_register_slice_v2_1_26_axic_register_slice__parameterized3_0\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 70 downto 0 );
  signal \USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_2_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][19]_srl32_i_2_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][21]_srl32_i_2_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_2_n_0\ : STD_LOGIC;
  signal \^aresetn_d_reg[0]_0\ : STD_LOGIC;
  signal \^in\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \m_axi_awaddr[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \m_valid_i_inv_i_1__0_n_0\ : STD_LOGIC;
  signal s_axi_awlen_ii : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_awready\ : STD_LOGIC;
  signal s_ready_i_i_1_n_0 : STD_LOGIC;
  signal sr_awaddr : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal sr_awburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sr_awsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][16]_srl32_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_2\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][19]_srl32_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][20]_srl32_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][21]_srl32_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_2\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][23]_srl32_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][25]_srl32_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][27]_srl32_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][29]_srl32_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][8]_srl32_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][9]_srl32_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \m_axi_awaddr[0]_INST_0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \m_axi_awaddr[0]_INST_0_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \m_axi_awaddr[2]_INST_0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \m_axi_awaddr[2]_INST_0_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \m_axi_awaddr[3]_INST_0_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \m_axi_awaddr[3]_INST_0_i_2\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \m_axi_awaddr[5]_INST_0_i_3\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \m_axi_awburst[0]_INST_0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \m_axi_awburst[1]_INST_0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \m_axi_awlen[1]_INST_0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \m_axi_awlen[2]_INST_0_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \m_axi_awlen[2]_INST_0_i_5\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \m_axi_awlen[2]_INST_0_i_6\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \m_axi_awlen[3]_INST_0_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \m_axi_awlen[3]_INST_0_i_3\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \m_axi_awlen[3]_INST_0_i_4\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \m_axi_awlen[3]_INST_0_i_5\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \m_axi_awsize[0]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \m_axi_awsize[1]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \m_axi_awsize[2]_INST_0\ : label is "soft_lutpair91";
  attribute inverted : string;
  attribute inverted of m_valid_i_reg_inv : label is "yes";
begin
  E(0) <= \^e\(0);
  Q(70 downto 0) <= \^q\(70 downto 0);
  \aresetn_d_reg[0]_0\ <= \^aresetn_d_reg[0]_0\;
  \in\(23 downto 0) <= \^in\(23 downto 0);
  s_axi_awready <= \^s_axi_awready\;
\USE_RTL_FIFO.data_srl_reg[31][12]_srl32_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF11100010"
    )
        port map (
      I0 => sr_awsize(1),
      I1 => sr_awsize(2),
      I2 => s_axi_awlen_ii(1),
      I3 => sr_awsize(0),
      I4 => s_axi_awlen_ii(0),
      I5 => \m_axi_awaddr[2]_INST_0_i_1_n_0\,
      O => \^in\(8)
    );
\USE_RTL_FIFO.data_srl_reg[31][13]_srl32_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \m_axi_awaddr[2]_INST_0_i_3_n_0\,
      O => \^in\(9)
    );
\USE_RTL_FIFO.data_srl_reg[31][16]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axi_awaddr[2]_INST_0_i_3_n_0\,
      I1 => sr_awaddr(2),
      O => \^in\(10)
    );
\USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008A000000300000"
    )
        port map (
      I0 => \^in\(7),
      I1 => \^in\(23),
      I2 => s_axi_awlen_ii(0),
      I3 => sr_awsize(0),
      I4 => \USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_2_n_0\,
      I5 => sr_awaddr(0),
      O => \^in\(11)
    );
\USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sr_awsize(2),
      I1 => sr_awsize(1),
      O => \USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_2_n_0\
    );
\USE_RTL_FIFO.data_srl_reg[31][18]_srl32_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C08030803020C020"
    )
        port map (
      I0 => \m_axi_awaddr[2]_INST_0_i_1_n_0\,
      I1 => sr_awaddr(1),
      I2 => \USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_2_n_0\,
      I3 => \m_axi_awaddr[3]_INST_0_i_1_n_0\,
      I4 => \^in\(23),
      I5 => \m_axi_awlen[3]_INST_0_i_7_n_0\,
      O => \^in\(12)
    );
\USE_RTL_FIFO.data_srl_reg[31][19]_srl32_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6512"
    )
        port map (
      I0 => \USE_RTL_FIFO.data_srl_reg[31][19]_srl32_i_2_n_0\,
      I1 => \m_axi_awaddr[2]_INST_0_i_3_n_0\,
      I2 => sr_awaddr(2),
      I3 => \m_axi_awlen[2]_INST_0_i_6_n_0\,
      O => \^in\(13)
    );
\USE_RTL_FIFO.data_srl_reg[31][19]_srl32_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44C4004040C00040"
    )
        port map (
      I0 => \m_axi_awlen[3]_INST_0_i_7_n_0\,
      I1 => \USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_2_n_0\,
      I2 => \m_axi_awaddr[3]_INST_0_i_1_n_0\,
      I3 => \^in\(23),
      I4 => sr_awaddr(1),
      I5 => \m_axi_awaddr[2]_INST_0_i_1_n_0\,
      O => \USE_RTL_FIFO.data_srl_reg[31][19]_srl32_i_2_n_0\
    );
\USE_RTL_FIFO.data_srl_reg[31][20]_srl32_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^in\(7),
      I1 => sr_awsize(0),
      I2 => sr_awaddr(0),
      I3 => sr_awsize(2),
      I4 => sr_awsize(1),
      O => \^in\(14)
    );
\USE_RTL_FIFO.data_srl_reg[31][21]_srl32_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"001E"
    )
        port map (
      I0 => sr_awsize(0),
      I1 => sr_awaddr(0),
      I2 => sr_awaddr(1),
      I3 => \USE_RTL_FIFO.data_srl_reg[31][21]_srl32_i_2_n_0\,
      O => \^in\(15)
    );
\USE_RTL_FIFO.data_srl_reg[31][21]_srl32_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0010"
    )
        port map (
      I0 => \m_axi_awaddr[3]_INST_0_i_1_n_0\,
      I1 => \m_axi_awaddr[5]_INST_0_i_3_n_0\,
      I2 => sr_awburst(1),
      I3 => sr_awburst(0),
      I4 => sr_awsize(1),
      I5 => sr_awsize(2),
      O => \USE_RTL_FIFO.data_srl_reg[31][21]_srl32_i_2_n_0\
    );
\USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000066966666"
    )
        port map (
      I0 => sr_awaddr(2),
      I1 => \^in\(6),
      I2 => sr_awaddr(1),
      I3 => \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_2_n_0\,
      I4 => \USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_2_n_0\,
      I5 => \m_axi_awaddr[2]_INST_0_i_3_n_0\,
      O => \^in\(16)
    );
\USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sr_awsize(0),
      I1 => sr_awaddr(0),
      O => \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_i_2_n_0\
    );
\USE_RTL_FIFO.data_srl_reg[31][23]_srl32_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \^in\(7),
      I1 => sr_awaddr(0),
      I2 => sr_awsize(0),
      I3 => sr_awsize(1),
      I4 => sr_awsize(2),
      O => \^in\(17)
    );
\USE_RTL_FIFO.data_srl_reg[31][24]_srl32_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888088"
    )
        port map (
      I0 => sr_awaddr(1),
      I1 => \USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_2_n_0\,
      I2 => sr_awburst(0),
      I3 => sr_awburst(1),
      I4 => \m_axi_awaddr[5]_INST_0_i_3_n_0\,
      I5 => \m_axi_awaddr[3]_INST_0_i_1_n_0\,
      O => \^in\(18)
    );
\USE_RTL_FIFO.data_srl_reg[31][25]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sr_awaddr(2),
      I1 => \m_axi_awaddr[2]_INST_0_i_3_n_0\,
      O => \^in\(19)
    );
\USE_RTL_FIFO.data_srl_reg[31][27]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^in\(22),
      I1 => \m_axi_awaddr[2]_INST_0_i_1_n_0\,
      O => \^in\(21)
    );
\USE_RTL_FIFO.data_srl_reg[31][29]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sr_awburst(0),
      I1 => sr_awburst(1),
      O => \^in\(23)
    );
\USE_RTL_FIFO.data_srl_reg[31][8]_srl32_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => sr_awsize(2),
      I1 => sr_awsize(1),
      I2 => sr_awsize(0),
      O => \^in\(4)
    );
\USE_RTL_FIFO.data_srl_reg[31][9]_srl32_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => sr_awsize(0),
      I1 => sr_awsize(1),
      I2 => sr_awsize(2),
      O => \^in\(5)
    );
\aresetn_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => '1',
      Q => \^aresetn_d_reg[0]_0\,
      R => SR(0)
    );
\m_axi_awaddr[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B00FF00"
    )
        port map (
      I0 => \m_axi_awaddr[2]_INST_0_i_1_n_0\,
      I1 => \^in\(22),
      I2 => \^in\(20),
      I3 => sr_awaddr(0),
      I4 => \^in\(7),
      O => m_axi_awaddr(0)
    );
\m_axi_awaddr[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAE"
    )
        port map (
      I0 => \m_axi_awaddr[2]_INST_0_i_1_n_0\,
      I1 => s_axi_awlen_ii(0),
      I2 => sr_awsize(0),
      I3 => sr_awsize(1),
      I4 => sr_awsize(2),
      O => \^in\(7)
    );
\m_axi_awaddr[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF000B00"
    )
        port map (
      I0 => \m_axi_awaddr[2]_INST_0_i_1_n_0\,
      I1 => \^in\(22),
      I2 => \^in\(20),
      I3 => sr_awaddr(1),
      I4 => \m_axi_awaddr[1]_INST_0_i_1_n_0\,
      O => m_axi_awaddr(1)
    );
\m_axi_awaddr[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040404040004"
    )
        port map (
      I0 => sr_awburst(0),
      I1 => sr_awburst(1),
      I2 => \m_axi_awaddr[5]_INST_0_i_3_n_0\,
      I3 => \m_axi_awaddr[3]_INST_0_i_1_n_0\,
      I4 => sr_awsize(2),
      I5 => sr_awsize(1),
      O => \m_axi_awaddr[1]_INST_0_i_1_n_0\
    );
\m_axi_awaddr[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF000B00"
    )
        port map (
      I0 => \m_axi_awaddr[2]_INST_0_i_1_n_0\,
      I1 => \^in\(22),
      I2 => \^in\(20),
      I3 => sr_awaddr(2),
      I4 => \m_axi_awaddr[2]_INST_0_i_3_n_0\,
      O => m_axi_awaddr(2)
    );
\m_axi_awaddr[2]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \m_axi_awaddr[5]_INST_0_i_3_n_0\,
      I1 => sr_awburst(1),
      I2 => sr_awburst(0),
      O => \m_axi_awaddr[2]_INST_0_i_1_n_0\
    );
\m_axi_awaddr[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => \^in\(23),
      I1 => s_axi_awlen_ii(1),
      I2 => s_axi_awlen_ii(2),
      I3 => s_axi_awlen_ii(0),
      I4 => s_axi_awlen_ii(3),
      I5 => \^q\(62),
      O => \^in\(22)
    );
\m_axi_awaddr[2]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \m_axi_awaddr[2]_INST_0_i_4_n_0\,
      I1 => \m_axi_awaddr[2]_INST_0_i_1_n_0\,
      O => \m_axi_awaddr[2]_INST_0_i_3_n_0\
    );
\m_axi_awaddr[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF5F5FFFF303F"
    )
        port map (
      I0 => s_axi_awlen_ii(0),
      I1 => s_axi_awlen_ii(1),
      I2 => sr_awsize(0),
      I3 => s_axi_awlen_ii(2),
      I4 => sr_awsize(2),
      I5 => sr_awsize(1),
      O => \m_axi_awaddr[2]_INST_0_i_4_n_0\
    );
\m_axi_awaddr[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555AA6AAAAAAAAA"
    )
        port map (
      I0 => sr_awaddr(3),
      I1 => \m_axi_awaddr[3]_INST_0_i_1_n_0\,
      I2 => sr_awsize(1),
      I3 => sr_awsize(2),
      I4 => \m_axi_awaddr[3]_INST_0_i_2_n_0\,
      I5 => \^in\(20),
      O => m_axi_awaddr(3)
    );
\m_axi_awaddr[3]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen_ii(0),
      I1 => sr_awsize(0),
      I2 => s_axi_awlen_ii(1),
      O => \m_axi_awaddr[3]_INST_0_i_1_n_0\
    );
\m_axi_awaddr[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11100010"
    )
        port map (
      I0 => sr_awsize(1),
      I1 => sr_awsize(2),
      I2 => s_axi_awlen_ii(3),
      I3 => sr_awsize(0),
      I4 => s_axi_awlen_ii(2),
      O => \m_axi_awaddr[3]_INST_0_i_2_n_0\
    );
\m_axi_awaddr[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => sr_awaddr(4),
      I1 => \m_axi_awaddr[4]_INST_0_i_1_n_0\,
      I2 => sr_awaddr(3),
      I3 => \^in\(20),
      O => m_axi_awaddr(4)
    );
\m_axi_awaddr[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A28AAAAAAA8AAA"
    )
        port map (
      I0 => \m_axi_awlen[2]_INST_0_i_1_n_0\,
      I1 => sr_awsize(1),
      I2 => sr_awsize(2),
      I3 => s_axi_awlen_ii(0),
      I4 => sr_awsize(0),
      I5 => s_axi_awlen_ii(1),
      O => \m_axi_awaddr[4]_INST_0_i_1_n_0\
    );
\m_axi_awaddr[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => sr_awaddr(5),
      I1 => sr_awaddr(4),
      I2 => \m_axi_awaddr[5]_INST_0_i_1_n_0\,
      I3 => sr_awaddr(3),
      I4 => \^in\(20),
      O => m_axi_awaddr(5)
    );
\m_axi_awaddr[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAAACFC00000"
    )
        port map (
      I0 => \m_axi_awaddr[3]_INST_0_i_1_n_0\,
      I1 => s_axi_awlen_ii(2),
      I2 => sr_awsize(0),
      I3 => s_axi_awlen_ii(3),
      I4 => sr_awsize(1),
      I5 => sr_awsize(2),
      O => \m_axi_awaddr[5]_INST_0_i_1_n_0\
    );
\m_axi_awaddr[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222220"
    )
        port map (
      I0 => \m_axi_awaddr[5]_INST_0_i_3_n_0\,
      I1 => \m_axi_awaddr[5]_INST_0_i_4_n_0\,
      I2 => sr_awaddr(2),
      I3 => sr_awaddr(1),
      I4 => sr_awaddr(0),
      I5 => \m_axi_awaddr[5]_INST_0_i_5_n_0\,
      O => \^in\(20)
    );
\m_axi_awaddr[5]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF800"
    )
        port map (
      I0 => sr_awsize(0),
      I1 => sr_awsize(1),
      I2 => sr_awsize(2),
      I3 => s_axi_awlen_ii(0),
      I4 => \m_axi_awaddr[5]_INST_0_i_6_n_0\,
      O => \m_axi_awaddr[5]_INST_0_i_3_n_0\
    );
\m_axi_awaddr[5]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sr_awburst(0),
      I1 => sr_awburst(1),
      O => \m_axi_awaddr[5]_INST_0_i_4_n_0\
    );
\m_axi_awaddr[5]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555557"
    )
        port map (
      I0 => \^q\(62),
      I1 => s_axi_awlen_ii(3),
      I2 => s_axi_awlen_ii(0),
      I3 => s_axi_awlen_ii(2),
      I4 => s_axi_awlen_ii(1),
      O => \m_axi_awaddr[5]_INST_0_i_5_n_0\
    );
\m_axi_awaddr[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFFFEAAAA"
    )
        port map (
      I0 => s_axi_awlen_ii(3),
      I1 => sr_awsize(1),
      I2 => sr_awsize(2),
      I3 => sr_awsize(0),
      I4 => s_axi_awlen_ii(2),
      I5 => s_axi_awlen_ii(1),
      O => \m_axi_awaddr[5]_INST_0_i_6_n_0\
    );
\m_axi_awburst[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \^in\(22),
      I1 => \m_axi_awaddr[2]_INST_0_i_1_n_0\,
      I2 => sr_awburst(0),
      O => m_axi_awburst(0)
    );
\m_axi_awburst[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^in\(22),
      I1 => \m_axi_awaddr[2]_INST_0_i_1_n_0\,
      I2 => sr_awburst(1),
      O => m_axi_awburst(1)
    );
\m_axi_awlen[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5656565656A6A6A6"
    )
        port map (
      I0 => \m_axi_awlen[2]_INST_0_i_3_n_0\,
      I1 => s_axi_awlen_ii(0),
      I2 => \^in\(22),
      I3 => \^in\(6),
      I4 => s_axi_awlen_ii(1),
      I5 => \m_axi_awaddr[3]_INST_0_i_2_n_0\,
      O => \^in\(0)
    );
\m_axi_awlen[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22D2DDD2"
    )
        port map (
      I0 => \m_axi_awlen[2]_INST_0_i_3_n_0\,
      I1 => \m_axi_awlen[2]_INST_0_i_2_n_0\,
      I2 => s_axi_awlen_ii(1),
      I3 => \^in\(22),
      I4 => \m_axi_awlen[2]_INST_0_i_1_n_0\,
      O => \^in\(1)
    );
\m_axi_awlen[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00740000FF8BFFFF"
    )
        port map (
      I0 => \m_axi_awlen[2]_INST_0_i_1_n_0\,
      I1 => \^in\(22),
      I2 => s_axi_awlen_ii(1),
      I3 => \m_axi_awlen[2]_INST_0_i_2_n_0\,
      I4 => \m_axi_awlen[2]_INST_0_i_3_n_0\,
      I5 => \m_axi_awlen[2]_INST_0_i_4_n_0\,
      O => \^in\(2)
    );
\m_axi_awlen[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF5F3FF"
    )
        port map (
      I0 => s_axi_awlen_ii(3),
      I1 => s_axi_awlen_ii(2),
      I2 => sr_awsize(2),
      I3 => sr_awsize(1),
      I4 => sr_awsize(0),
      O => \m_axi_awlen[2]_INST_0_i_1_n_0\
    );
\m_axi_awlen[2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"150015FF"
    )
        port map (
      I0 => \m_axi_awaddr[3]_INST_0_i_2_n_0\,
      I1 => s_axi_awlen_ii(1),
      I2 => \^in\(6),
      I3 => \^in\(22),
      I4 => s_axi_awlen_ii(0),
      O => \m_axi_awlen[2]_INST_0_i_2_n_0\
    );
\m_axi_awlen[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF007100710000"
    )
        port map (
      I0 => \m_axi_awlen[3]_INST_0_i_7_n_0\,
      I1 => \m_axi_awlen[3]_INST_0_i_6_n_0\,
      I2 => \^in\(18),
      I3 => \m_axi_awlen[2]_INST_0_i_5_n_0\,
      I4 => sr_awaddr(2),
      I5 => \m_axi_awlen[2]_INST_0_i_6_n_0\,
      O => \m_axi_awlen[2]_INST_0_i_3_n_0\
    );
\m_axi_awlen[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDF0000FFDFFFFF"
    )
        port map (
      I0 => s_axi_awlen_ii(3),
      I1 => sr_awsize(0),
      I2 => sr_awsize(1),
      I3 => sr_awsize(2),
      I4 => \^in\(22),
      I5 => s_axi_awlen_ii(2),
      O => \m_axi_awlen[2]_INST_0_i_4_n_0\
    );
\m_axi_awlen[2]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \m_axi_awaddr[5]_INST_0_i_5_n_0\,
      I1 => sr_awburst(0),
      I2 => sr_awburst(1),
      O => \m_axi_awlen[2]_INST_0_i_5_n_0\
    );
\m_axi_awlen[2]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => sr_awburst(1),
      I1 => sr_awburst(0),
      I2 => \m_axi_awaddr[2]_INST_0_i_4_n_0\,
      O => \m_axi_awlen[2]_INST_0_i_6_n_0\
    );
\m_axi_awlen[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A0A0A0A8F8A"
    )
        port map (
      I0 => s_axi_awlen_ii(3),
      I1 => \^in\(6),
      I2 => \^in\(22),
      I3 => s_axi_awlen_ii(2),
      I4 => \m_axi_awlen[3]_INST_0_i_2_n_0\,
      I5 => \m_axi_awlen[3]_INST_0_i_3_n_0\,
      O => \^in\(3)
    );
\m_axi_awlen[3]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => sr_awsize(2),
      I1 => sr_awsize(1),
      I2 => sr_awsize(0),
      O => \^in\(6)
    );
\m_axi_awlen[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEEEFEEEFEEEE"
    )
        port map (
      I0 => \m_axi_awlen[2]_INST_0_i_2_n_0\,
      I1 => \m_axi_awlen[3]_INST_0_i_4_n_0\,
      I2 => \m_axi_awlen[3]_INST_0_i_5_n_0\,
      I3 => \^in\(18),
      I4 => \m_axi_awlen[3]_INST_0_i_6_n_0\,
      I5 => \m_axi_awlen[3]_INST_0_i_7_n_0\,
      O => \m_axi_awlen[3]_INST_0_i_2_n_0\
    );
\m_axi_awlen[3]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \m_axi_awlen[2]_INST_0_i_1_n_0\,
      I1 => \^in\(22),
      I2 => s_axi_awlen_ii(1),
      O => \m_axi_awlen[3]_INST_0_i_3_n_0\
    );
\m_axi_awlen[3]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF2FF"
    )
        port map (
      I0 => \m_axi_awaddr[2]_INST_0_i_4_n_0\,
      I1 => sr_awaddr(2),
      I2 => sr_awburst(1),
      I3 => sr_awburst(0),
      I4 => \m_axi_awaddr[5]_INST_0_i_5_n_0\,
      O => \m_axi_awlen[3]_INST_0_i_4_n_0\
    );
\m_axi_awlen[3]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5400"
    )
        port map (
      I0 => \m_axi_awaddr[2]_INST_0_i_4_n_0\,
      I1 => sr_awburst(0),
      I2 => sr_awburst(1),
      I3 => sr_awaddr(2),
      O => \m_axi_awlen[3]_INST_0_i_5_n_0\
    );
\m_axi_awlen[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F111FFFFFFFFFFF"
    )
        port map (
      I0 => sr_awburst(1),
      I1 => sr_awburst(0),
      I2 => s_axi_awlen_ii(0),
      I3 => sr_awsize(0),
      I4 => s_axi_awlen_ii(1),
      I5 => \USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_2_n_0\,
      O => \m_axi_awlen[3]_INST_0_i_6_n_0\
    );
\m_axi_awlen[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDFFFFFFFFFFF"
    )
        port map (
      I0 => \USE_RTL_FIFO.data_srl_reg[31][17]_srl32_i_2_n_0\,
      I1 => sr_awsize(0),
      I2 => s_axi_awlen_ii(0),
      I3 => sr_awburst(0),
      I4 => sr_awburst(1),
      I5 => sr_awaddr(0),
      O => \m_axi_awlen[3]_INST_0_i_7_n_0\
    );
\m_axi_awsize[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sr_awsize(0),
      I1 => \^in\(22),
      O => m_axi_awsize(0)
    );
\m_axi_awsize[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sr_awsize(1),
      I1 => \^in\(22),
      O => m_axi_awsize(1)
    );
\m_axi_awsize[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sr_awsize(2),
      I1 => \^in\(22),
      O => m_axi_awsize(2)
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(0),
      Q => sr_awaddr(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(10),
      Q => \^q\(4),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(11),
      Q => \^q\(5),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(12),
      Q => \^q\(6),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(13),
      Q => \^q\(7),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(14),
      Q => \^q\(8),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(15),
      Q => \^q\(9),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(16),
      Q => \^q\(10),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(17),
      Q => \^q\(11),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(18),
      Q => \^q\(12),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(19),
      Q => \^q\(13),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(1),
      Q => sr_awaddr(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(20),
      Q => \^q\(14),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(21),
      Q => \^q\(15),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(22),
      Q => \^q\(16),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(23),
      Q => \^q\(17),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(24),
      Q => \^q\(18),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(25),
      Q => \^q\(19),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(26),
      Q => \^q\(20),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(27),
      Q => \^q\(21),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(28),
      Q => \^q\(22),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(29),
      Q => \^q\(23),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(2),
      Q => sr_awaddr(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(30),
      Q => \^q\(24),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(31),
      Q => \^q\(25),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(32),
      Q => \^q\(26),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(33),
      Q => \^q\(27),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(34),
      Q => \^q\(28),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(35),
      Q => \^q\(29),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(36),
      Q => \^q\(30),
      R => '0'
    );
\m_payload_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(37),
      Q => \^q\(31),
      R => '0'
    );
\m_payload_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(38),
      Q => \^q\(32),
      R => '0'
    );
\m_payload_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(39),
      Q => \^q\(33),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(3),
      Q => sr_awaddr(3),
      R => '0'
    );
\m_payload_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(40),
      Q => \^q\(34),
      R => '0'
    );
\m_payload_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(41),
      Q => \^q\(35),
      R => '0'
    );
\m_payload_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(42),
      Q => \^q\(36),
      R => '0'
    );
\m_payload_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(43),
      Q => \^q\(37),
      R => '0'
    );
\m_payload_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(44),
      Q => \^q\(38),
      R => '0'
    );
\m_payload_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(45),
      Q => \^q\(39),
      R => '0'
    );
\m_payload_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(46),
      Q => \^q\(40),
      R => '0'
    );
\m_payload_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(47),
      Q => \^q\(41),
      R => '0'
    );
\m_payload_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(48),
      Q => \^q\(42),
      R => '0'
    );
\m_payload_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(49),
      Q => \^q\(43),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(4),
      Q => sr_awaddr(4),
      R => '0'
    );
\m_payload_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(50),
      Q => \^q\(44),
      R => '0'
    );
\m_payload_i_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(51),
      Q => \^q\(45),
      R => '0'
    );
\m_payload_i_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(52),
      Q => \^q\(46),
      R => '0'
    );
\m_payload_i_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(53),
      Q => \^q\(47),
      R => '0'
    );
\m_payload_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(54),
      Q => \^q\(48),
      R => '0'
    );
\m_payload_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(55),
      Q => \^q\(49),
      R => '0'
    );
\m_payload_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(56),
      Q => \^q\(50),
      R => '0'
    );
\m_payload_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(57),
      Q => \^q\(51),
      R => '0'
    );
\m_payload_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(58),
      Q => \^q\(52),
      R => '0'
    );
\m_payload_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(59),
      Q => \^q\(53),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(5),
      Q => sr_awaddr(5),
      R => '0'
    );
\m_payload_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(60),
      Q => \^q\(54),
      R => '0'
    );
\m_payload_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(61),
      Q => \^q\(55),
      R => '0'
    );
\m_payload_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(62),
      Q => \^q\(56),
      R => '0'
    );
\m_payload_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(63),
      Q => \^q\(57),
      R => '0'
    );
\m_payload_i_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(64),
      Q => \^q\(58),
      R => '0'
    );
\m_payload_i_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(65),
      Q => \^q\(59),
      R => '0'
    );
\m_payload_i_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(66),
      Q => \^q\(60),
      R => '0'
    );
\m_payload_i_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(67),
      Q => sr_awsize(0),
      R => '0'
    );
\m_payload_i_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(68),
      Q => sr_awsize(1),
      R => '0'
    );
\m_payload_i_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(69),
      Q => sr_awsize(2),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(6),
      Q => \^q\(0),
      R => '0'
    );
\m_payload_i_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(70),
      Q => sr_awburst(0),
      R => '0'
    );
\m_payload_i_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(71),
      Q => sr_awburst(1),
      R => '0'
    );
\m_payload_i_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(72),
      Q => \^q\(61),
      R => '0'
    );
\m_payload_i_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(73),
      Q => \^q\(62),
      R => '0'
    );
\m_payload_i_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(74),
      Q => \^q\(63),
      R => '0'
    );
\m_payload_i_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(75),
      Q => \^q\(64),
      R => '0'
    );
\m_payload_i_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(76),
      Q => s_axi_awlen_ii(0),
      R => '0'
    );
\m_payload_i_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(77),
      Q => s_axi_awlen_ii(1),
      R => '0'
    );
\m_payload_i_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(78),
      Q => s_axi_awlen_ii(2),
      R => '0'
    );
\m_payload_i_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(79),
      Q => s_axi_awlen_ii(3),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(7),
      Q => \^q\(1),
      R => '0'
    );
\m_payload_i_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(80),
      Q => \^q\(65),
      R => '0'
    );
\m_payload_i_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(81),
      Q => \^q\(66),
      R => '0'
    );
\m_payload_i_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(82),
      Q => \^q\(67),
      R => '0'
    );
\m_payload_i_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(83),
      Q => \^q\(68),
      R => '0'
    );
\m_payload_i_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(84),
      Q => \^q\(69),
      R => '0'
    );
\m_payload_i_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(85),
      Q => \^q\(70),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(8),
      Q => \^q\(2),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(9),
      Q => \^q\(3),
      R => '0'
    );
\m_valid_i_inv_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FF80FFFFFFFF"
    )
        port map (
      I0 => m_valid_i_reg_inv_0,
      I1 => m_axi_awready,
      I2 => m_valid_i_reg_inv_1,
      I3 => \^s_axi_awready\,
      I4 => s_axi_awvalid,
      I5 => s_ready_i_reg_0,
      O => \m_valid_i_inv_i_1__0_n_0\
    );
m_valid_i_reg_inv: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \m_valid_i_inv_i_1__0_n_0\,
      Q => \^e\(0),
      R => '0'
    );
s_ready_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57F70000"
    )
        port map (
      I0 => s_ready_i_reg_0,
      I1 => s_ready_i_reg_1,
      I2 => \^e\(0),
      I3 => s_axi_awvalid,
      I4 => \^aresetn_d_reg[0]_0\,
      O => s_ready_i_i_1_n_0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => s_ready_i_i_1_n_0,
      Q => \^s_axi_awready\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_0_generic_baseblocks_v2_1_0_command_fifo is
  port (
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\ : out STD_LOGIC;
    s_axi_wlast_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[29]_0\ : out STD_LOGIC;
    \USE_RTL_LENGTH.length_counter_q_reg[0]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28]_0\ : out STD_LOGIC;
    s_axi_wvalid_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_5 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC;
    p_79_in : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \USE_RTL_CURR_WORD.pre_next_word_q_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_aresetn : out STD_LOGIC;
    cmd_push_block0 : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    cmd_push_block_reg : out STD_LOGIC;
    s_axi_wlast_1 : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1\ : out STD_LOGIC;
    s_axi_wlast_2 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]\ : in STD_LOGIC;
    cmd_push_block : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \USE_RTL_LENGTH.length_counter_q_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \USE_RTL_LENGTH.first_mi_word_q\ : in STD_LOGIC;
    \USE_RTL_LENGTH.length_counter_q_reg[1]_0\ : in STD_LOGIC;
    \USE_REGISTER.M_AXI_WVALID_q_reg\ : in STD_LOGIC;
    wrap_buffer_available : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready : in STD_LOGIC;
    \USE_REGISTER.M_AXI_WVALID_q_reg_0\ : in STD_LOGIC;
    \USE_RTL_CURR_WORD.current_word_q_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \sel_first_word__0\ : in STD_LOGIC;
    \USE_RTL_CURR_WORD.first_word_q\ : in STD_LOGIC;
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awready : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_us_0_generic_baseblocks_v2_1_0_command_fifo : entity is "generic_baseblocks_v2_1_0_command_fifo";
end design_1_auto_us_0_generic_baseblocks_v2_1_0_command_fifo;

architecture STRUCTURE of design_1_auto_us_0_generic_baseblocks_v2_1_0_command_fifo is
  signal M_READY_I : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[29]_0\ : STD_LOGIC;
  signal \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20]\ : STD_LOGIC;
  signal \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[21]\ : STD_LOGIC;
  signal \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[22]\ : STD_LOGIC;
  signal \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\ : STD_LOGIC;
  signal \USE_REGISTER.M_AXI_WVALID_q_i_4_n_0\ : STD_LOGIC;
  signal \USE_REGISTER.M_AXI_WVALID_q_i_5_n_0\ : STD_LOGIC;
  signal \USE_REGISTER.M_AXI_WVALID_q_i_7_n_0\ : STD_LOGIC;
  signal \USE_REGISTER.M_AXI_WVALID_q_i_8_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[1]_i_1_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[3]_i_1_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[4]_i_2_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[4]_i_3_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \USE_RTL_CURR_WORD.pre_next_word_q[1]_i_2_n_0\ : STD_LOGIC;
  signal \USE_RTL_CURR_WORD.pre_next_word_q[2]_i_2_n_0\ : STD_LOGIC;
  signal \^use_rtl_curr_word.pre_next_word_q_reg[2]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][10]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][11]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][12]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][13]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][16]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][17]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][18]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][19]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][1]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][20]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][21]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][23]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][24]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][25]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][26]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][27]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][28]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][29]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][2]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][3]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][4]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][8]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][9]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_VALID_WRITE.buffer_Full_q\ : STD_LOGIC;
  signal \USE_RTL_VALID_WRITE.buffer_Full_q_i_1_n_0\ : STD_LOGIC;
  signal \USE_RTL_VALID_WRITE.buffer_Full_q_i_2_n_0\ : STD_LOGIC;
  signal \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/last_word0__4\ : STD_LOGIC;
  signal \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/next_word_i__2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_1_in\ : STD_LOGIC;
  signal \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_86_in\ : STD_LOGIC;
  signal \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/store_in_wrap_buffer_enabled__1\ : STD_LOGIC;
  signal \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/word_completed__7\ : STD_LOGIC;
  signal \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/wrap_buffer_available0\ : STD_LOGIC;
  signal \USE_WRITE.wr_cmd_complete_wrap\ : STD_LOGIC;
  signal \USE_WRITE.wr_cmd_first_word\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \USE_WRITE.wr_cmd_mask\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \USE_WRITE.wr_cmd_modified\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_8_n_0\ : STD_LOGIC;
  signal \buffer_Empty__3\ : STD_LOGIC;
  signal cmd_last_word : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cmd_step : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal data_Exists_I : STD_LOGIC;
  signal next_Data_Exists : STD_LOGIC;
  signal \^s_axi_wvalid_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal valid_Write : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][10]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][11]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][12]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][13]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][16]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][17]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][18]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][19]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][20]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][21]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][22]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][23]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][24]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][25]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][26]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][27]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][28]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][29]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][2]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][3]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][4]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][8]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][9]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \USE_REGISTER.M_AXI_WVALID_q_i_11\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \USE_REGISTER.M_AXI_WVALID_q_i_12\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \USE_REGISTER.M_AXI_WVALID_q_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \USE_REGISTER.M_AXI_WVALID_q_i_5\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \USE_RTL_ADDR.addr_q[0]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \USE_RTL_ADDR.addr_q[2]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \USE_RTL_CURR_WORD.current_word_q[1]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \USE_RTL_CURR_WORD.pre_next_word_q[1]_i_2\ : label is "soft_lutpair56";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][0]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name : string;
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][0]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][0]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][10]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][10]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][10]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][11]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][11]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][11]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][12]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][12]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][12]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][13]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][13]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][13]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][16]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][16]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][16]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][17]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][17]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][17]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][18]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][18]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][18]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][19]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][19]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][19]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][1]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][1]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][1]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][20]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][20]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][20]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][21]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][21]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][21]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][22]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][22]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][22]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][23]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][23]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][23]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][24]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][24]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][24]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][25]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][25]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][25]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][26]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][26]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][26]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][27]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][27]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][27]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][28]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][28]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][28]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][29]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][29]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][29]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][2]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][2]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][2]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][3]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][3]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][3]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][4]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][4]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][4]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][8]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][8]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][8]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][9]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][9]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][9]_srl32 ";
  attribute SOFT_HLUTNM of \USE_RTL_LENGTH.first_mi_word_q_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \USE_RTL_VALID_WRITE.buffer_Full_q_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q[0]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_8\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of cmd_push_block_i_1 : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of data_Exists_I_i_2 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of m_axi_awvalid_INST_0 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of m_valid_i_inv_i_2 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of s_ready_i_i_2 : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of wrap_buffer_available_i_2 : label is "soft_lutpair54";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
  \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[29]_0\ <= \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[29]_0\;
  \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\ <= \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\;
  \USE_RTL_CURR_WORD.pre_next_word_q_reg[2]\(2 downto 0) <= \^use_rtl_curr_word.pre_next_word_q_reg[2]\(2 downto 0);
  s_axi_wvalid_0(0) <= \^s_axi_wvalid_0\(0);
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[29]_0\,
      I1 => s_axi_wlast,
      I2 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      O => M_READY_I
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA8AAA8AAA8A"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q_reg[1]_0\,
      I1 => \^q\(8),
      I2 => \USE_WRITE.wr_cmd_modified\,
      I3 => \USE_REGISTER.M_AXI_WVALID_q_i_7_n_0\,
      I4 => \USE_REGISTER.M_AXI_WVALID_q_reg\,
      I5 => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/last_word0__4\,
      O => \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[29]_0\
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A80802A200000000"
    )
        port map (
      I0 => \USE_REGISTER.M_AXI_WVALID_q_i_8_n_0\,
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0),
      I2 => \sel_first_word__0\,
      I3 => \USE_WRITE.wr_cmd_first_word\(0),
      I4 => cmd_last_word(0),
      I5 => \USE_REGISTER.M_AXI_WVALID_q_i_5_n_0\,
      O => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/last_word0__4\
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][10]_srl32_n_0\,
      Q => cmd_step(2),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][11]_srl32_n_0\,
      Q => \USE_WRITE.wr_cmd_mask\(0),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][12]_srl32_n_0\,
      Q => \USE_WRITE.wr_cmd_mask\(1),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][13]_srl32_n_0\,
      Q => \USE_WRITE.wr_cmd_mask\(2),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][16]_srl32_n_0\,
      Q => \^q\(5),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][17]_srl32_n_0\,
      Q => cmd_last_word(0),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][18]_srl32_n_0\,
      Q => cmd_last_word(1),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][19]_srl32_n_0\,
      Q => cmd_last_word(2),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][1]_srl32_n_0\,
      Q => \^q\(1),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][20]_srl32_n_0\,
      Q => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20]\,
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][21]_srl32_n_0\,
      Q => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[21]\,
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_n_0\,
      Q => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[22]\,
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][23]_srl32_n_0\,
      Q => \USE_WRITE.wr_cmd_first_word\(0),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][24]_srl32_n_0\,
      Q => \USE_WRITE.wr_cmd_first_word\(1),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][25]_srl32_n_0\,
      Q => \^q\(6),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][26]_srl32_n_0\,
      Q => \^q\(7),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][27]_srl32_n_0\,
      Q => \USE_WRITE.wr_cmd_complete_wrap\,
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][28]_srl32_n_0\,
      Q => \USE_WRITE.wr_cmd_modified\,
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][29]_srl32_n_0\,
      Q => \^q\(8),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][2]_srl32_n_0\,
      Q => \^q\(2),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][3]_srl32_n_0\,
      Q => \^q\(3),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][4]_srl32_n_0\,
      Q => \^q\(4),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][8]_srl32_n_0\,
      Q => cmd_step(0),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][9]_srl32_n_0\,
      Q => cmd_step(1),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => M_READY_I,
      D => data_Exists_I,
      Q => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      R => SR(0)
    );
\USE_REGISTER.M_AXI_WVALID_q_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40004000"
    )
        port map (
      I0 => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/store_in_wrap_buffer_enabled__1\,
      I1 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I2 => s_axi_wvalid,
      I3 => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/word_completed__7\,
      I4 => m_axi_wready,
      I5 => \USE_REGISTER.M_AXI_WVALID_q_reg_0\,
      O => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1\
    );
\USE_REGISTER.M_AXI_WVALID_q_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \USE_RTL_LENGTH.first_mi_word_q\,
      I3 => \^q\(0),
      I4 => \^q\(4),
      I5 => \^q\(3),
      O => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_0\
    );
\USE_REGISTER.M_AXI_WVALID_q_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[21]\,
      I1 => \USE_RTL_CURR_WORD.first_word_q\,
      I2 => \^q\(8),
      I3 => \USE_RTL_CURR_WORD.current_word_q_reg[2]\(1),
      O => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/next_word_i__2\(1)
    );
\USE_REGISTER.M_AXI_WVALID_q_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20]\,
      I1 => \USE_RTL_CURR_WORD.first_word_q\,
      I2 => \^q\(8),
      I3 => \USE_RTL_CURR_WORD.current_word_q_reg[2]\(0),
      O => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/next_word_i__2\(0)
    );
\USE_REGISTER.M_AXI_WVALID_q_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I1 => \^q\(7),
      I2 => wrap_buffer_available,
      O => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/store_in_wrap_buffer_enabled__1\
    );
\USE_REGISTER.M_AXI_WVALID_q_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF80FFFF"
    )
        port map (
      I0 => \USE_REGISTER.M_AXI_WVALID_q_i_4_n_0\,
      I1 => \USE_REGISTER.M_AXI_WVALID_q_i_5_n_0\,
      I2 => \USE_REGISTER.M_AXI_WVALID_q_reg\,
      I3 => \USE_REGISTER.M_AXI_WVALID_q_i_7_n_0\,
      I4 => \USE_WRITE.wr_cmd_modified\,
      I5 => \^q\(8),
      O => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/word_completed__7\
    );
\USE_REGISTER.M_AXI_WVALID_q_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999A999500000000"
    )
        port map (
      I0 => cmd_last_word(0),
      I1 => \USE_WRITE.wr_cmd_first_word\(0),
      I2 => \USE_RTL_CURR_WORD.first_word_q\,
      I3 => \^q\(8),
      I4 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0),
      I5 => \USE_REGISTER.M_AXI_WVALID_q_i_8_n_0\,
      O => \USE_REGISTER.M_AXI_WVALID_q_i_4_n_0\
    );
\USE_REGISTER.M_AXI_WVALID_q_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE0201FD"
    )
        port map (
      I0 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(2),
      I1 => \^q\(8),
      I2 => \USE_RTL_CURR_WORD.first_word_q\,
      I3 => \^q\(6),
      I4 => cmd_last_word(2),
      O => \USE_REGISTER.M_AXI_WVALID_q_i_5_n_0\
    );
\USE_REGISTER.M_AXI_WVALID_q_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001500150015"
    )
        port map (
      I0 => \USE_WRITE.wr_cmd_complete_wrap\,
      I1 => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/next_word_i__2\(1),
      I2 => \USE_WRITE.wr_cmd_mask\(1),
      I3 => \^use_rtl_curr_word.pre_next_word_q_reg[2]\(2),
      I4 => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/next_word_i__2\(0),
      I5 => \USE_WRITE.wr_cmd_mask\(0),
      O => \USE_REGISTER.M_AXI_WVALID_q_i_7_n_0\
    );
\USE_REGISTER.M_AXI_WVALID_q_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE0201FD"
    )
        port map (
      I0 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(1),
      I1 => \^q\(8),
      I2 => \USE_RTL_CURR_WORD.first_word_q\,
      I3 => \USE_WRITE.wr_cmd_first_word\(1),
      I4 => cmd_last_word(1),
      O => \USE_REGISTER.M_AXI_WVALID_q_i_8_n_0\
    );
\USE_RTL_ADDR.addr_q[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(0),
      O => \USE_RTL_ADDR.addr_q[0]_i_1_n_0\
    );
\USE_RTL_ADDR.addr_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999996"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(1),
      I1 => \USE_RTL_ADDR.addr_q_reg\(0),
      I2 => cmd_push_block,
      I3 => E(0),
      I4 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I5 => M_READY_I,
      O => \USE_RTL_ADDR.addr_q[1]_i_1_n_0\
    );
\USE_RTL_ADDR.addr_q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9A96AA9"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(2),
      I1 => \USE_RTL_ADDR.addr_q_reg\(0),
      I2 => \USE_RTL_ADDR.addr_q_reg\(1),
      I3 => valid_Write,
      I4 => M_READY_I,
      O => \USE_RTL_ADDR.addr_q[2]_i_1_n_0\
    );
\USE_RTL_ADDR.addr_q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAA9A9AAA9"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(3),
      I1 => \USE_RTL_ADDR.addr_q_reg\(0),
      I2 => \USE_RTL_ADDR.addr_q_reg\(1),
      I3 => valid_Write,
      I4 => M_READY_I,
      I5 => \USE_RTL_ADDR.addr_q_reg\(2),
      O => \USE_RTL_ADDR.addr_q[3]_i_1_n_0\
    );
\USE_RTL_ADDR.addr_q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444300000000"
    )
        port map (
      I0 => \buffer_Empty__3\,
      I1 => M_READY_I,
      I2 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I3 => E(0),
      I4 => cmd_push_block,
      I5 => data_Exists_I,
      O => \USE_RTL_ADDR.addr_q\
    );
\USE_RTL_ADDR.addr_q[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAA9AA"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(4),
      I1 => \USE_RTL_ADDR.addr_q_reg\(0),
      I2 => \USE_RTL_ADDR.addr_q_reg\(1),
      I3 => \USE_RTL_ADDR.addr_q[4]_i_3_n_0\,
      I4 => \USE_RTL_ADDR.addr_q_reg\(2),
      I5 => \USE_RTL_ADDR.addr_q_reg\(3),
      O => \USE_RTL_ADDR.addr_q[4]_i_2_n_0\
    );
\USE_RTL_ADDR.addr_q[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFD5"
    )
        port map (
      I0 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I1 => s_axi_wlast,
      I2 => \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[29]_0\,
      I3 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I4 => E(0),
      I5 => cmd_push_block,
      O => \USE_RTL_ADDR.addr_q[4]_i_3_n_0\
    );
\USE_RTL_ADDR.addr_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[0]_i_1_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(0),
      R => SR(0)
    );
\USE_RTL_ADDR.addr_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[1]_i_1_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(1),
      R => SR(0)
    );
\USE_RTL_ADDR.addr_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[2]_i_1_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(2),
      R => SR(0)
    );
\USE_RTL_ADDR.addr_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[3]_i_1_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(3),
      R => SR(0)
    );
\USE_RTL_ADDR.addr_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[4]_i_2_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(4),
      R => SR(0)
    );
\USE_RTL_CURR_WORD.current_word_q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE020000"
    )
        port map (
      I0 => \USE_RTL_CURR_WORD.current_word_q_reg[2]\(0),
      I1 => \^q\(8),
      I2 => \USE_RTL_CURR_WORD.first_word_q\,
      I3 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20]\,
      I4 => \USE_WRITE.wr_cmd_mask\(0),
      O => \^use_rtl_curr_word.pre_next_word_q_reg[2]\(0)
    );
\USE_RTL_CURR_WORD.current_word_q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888A8880"
    )
        port map (
      I0 => \USE_WRITE.wr_cmd_mask\(1),
      I1 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[21]\,
      I2 => \USE_RTL_CURR_WORD.first_word_q\,
      I3 => \^q\(8),
      I4 => \USE_RTL_CURR_WORD.current_word_q_reg[2]\(1),
      O => \^use_rtl_curr_word.pre_next_word_q_reg[2]\(1)
    );
\USE_RTL_CURR_WORD.current_word_q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE020000"
    )
        port map (
      I0 => \USE_RTL_CURR_WORD.current_word_q_reg[2]\(2),
      I1 => \^q\(8),
      I2 => \USE_RTL_CURR_WORD.first_word_q\,
      I3 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[22]\,
      I4 => \USE_WRITE.wr_cmd_mask\(2),
      O => \^use_rtl_curr_word.pre_next_word_q_reg[2]\(2)
    );
\USE_RTL_CURR_WORD.first_word_q_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888008088888888"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I2 => \^q\(7),
      I3 => wrap_buffer_available,
      I4 => m_axi_wready,
      I5 => \USE_REGISTER.M_AXI_WVALID_q_reg_0\,
      O => \^s_axi_wvalid_0\(0)
    );
\USE_RTL_CURR_WORD.pre_next_word_q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54570000ABA80000"
    )
        port map (
      I0 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20]\,
      I1 => \USE_RTL_CURR_WORD.first_word_q\,
      I2 => \^q\(8),
      I3 => \USE_RTL_CURR_WORD.current_word_q_reg[2]\(0),
      I4 => \USE_WRITE.wr_cmd_mask\(0),
      I5 => cmd_step(0),
      O => D(0)
    );
\USE_RTL_CURR_WORD.pre_next_word_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56A60000A9590000"
    )
        port map (
      I0 => cmd_step(1),
      I1 => \USE_RTL_CURR_WORD.current_word_q_reg[2]\(1),
      I2 => \sel_first_word__0\,
      I3 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[21]\,
      I4 => \USE_WRITE.wr_cmd_mask\(1),
      I5 => \USE_RTL_CURR_WORD.pre_next_word_q[1]_i_2_n_0\,
      O => D(1)
    );
\USE_RTL_CURR_WORD.pre_next_word_q[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5557FFF7"
    )
        port map (
      I0 => cmd_step(0),
      I1 => \USE_RTL_CURR_WORD.current_word_q_reg[2]\(0),
      I2 => \^q\(8),
      I3 => \USE_RTL_CURR_WORD.first_word_q\,
      I4 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20]\,
      O => \USE_RTL_CURR_WORD.pre_next_word_q[1]_i_2_n_0\
    );
\USE_RTL_CURR_WORD.pre_next_word_q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A95656A00000000"
    )
        port map (
      I0 => \USE_RTL_CURR_WORD.pre_next_word_q[2]_i_2_n_0\,
      I1 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[22]\,
      I2 => \sel_first_word__0\,
      I3 => \USE_RTL_CURR_WORD.current_word_q_reg[2]\(2),
      I4 => cmd_step(2),
      I5 => \USE_WRITE.wr_cmd_mask\(2),
      O => D(2)
    );
\USE_RTL_CURR_WORD.pre_next_word_q[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2B2B2BBB2B2B222"
    )
        port map (
      I0 => cmd_step(1),
      I1 => \USE_RTL_CURR_WORD.pre_next_word_q[1]_i_2_n_0\,
      I2 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[21]\,
      I3 => \USE_RTL_CURR_WORD.first_word_q\,
      I4 => \^q\(8),
      I5 => \USE_RTL_CURR_WORD.current_word_q_reg[2]\(1),
      O => \USE_RTL_CURR_WORD.pre_next_word_q[2]_i_2_n_0\
    );
\USE_RTL_FIFO.data_srl_reg[31][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(0),
      Q => \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][0]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cmd_push_block,
      I1 => E(0),
      I2 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      O => valid_Write
    );
\USE_RTL_FIFO.data_srl_reg[31][10]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(6),
      Q => \USE_RTL_FIFO.data_srl_reg[31][10]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][10]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][11]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(7),
      Q => \USE_RTL_FIFO.data_srl_reg[31][11]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][11]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][12]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(8),
      Q => \USE_RTL_FIFO.data_srl_reg[31][12]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][12]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][13]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(9),
      Q => \USE_RTL_FIFO.data_srl_reg[31][13]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][13]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][16]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(10),
      Q => \USE_RTL_FIFO.data_srl_reg[31][16]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][16]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][17]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(11),
      Q => \USE_RTL_FIFO.data_srl_reg[31][17]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][17]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][18]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(12),
      Q => \USE_RTL_FIFO.data_srl_reg[31][18]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][18]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][19]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(13),
      Q => \USE_RTL_FIFO.data_srl_reg[31][19]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][19]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(1),
      Q => \USE_RTL_FIFO.data_srl_reg[31][1]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][1]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][20]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(14),
      Q => \USE_RTL_FIFO.data_srl_reg[31][20]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][20]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][21]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(15),
      Q => \USE_RTL_FIFO.data_srl_reg[31][21]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][21]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][22]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(16),
      Q => \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][22]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][23]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(17),
      Q => \USE_RTL_FIFO.data_srl_reg[31][23]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][23]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][24]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(18),
      Q => \USE_RTL_FIFO.data_srl_reg[31][24]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][24]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][25]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(19),
      Q => \USE_RTL_FIFO.data_srl_reg[31][25]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][25]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][26]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(20),
      Q => \USE_RTL_FIFO.data_srl_reg[31][26]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][26]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][27]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(21),
      Q => \USE_RTL_FIFO.data_srl_reg[31][27]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][27]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][28]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(22),
      Q => \USE_RTL_FIFO.data_srl_reg[31][28]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][28]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][29]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(23),
      Q => \USE_RTL_FIFO.data_srl_reg[31][29]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][29]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][2]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(2),
      Q => \USE_RTL_FIFO.data_srl_reg[31][2]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][2]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][3]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(3),
      Q => \USE_RTL_FIFO.data_srl_reg[31][3]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][3]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][4]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => '0',
      Q => \USE_RTL_FIFO.data_srl_reg[31][4]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][4]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][8]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(4),
      Q => \USE_RTL_FIFO.data_srl_reg[31][8]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][8]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][9]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(5),
      Q => \USE_RTL_FIFO.data_srl_reg[31][9]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][9]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_LENGTH.first_mi_word_q_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wlast,
      I1 => \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[29]_0\,
      I2 => \USE_RTL_LENGTH.first_mi_word_q\,
      O => s_axi_wlast_2
    );
\USE_RTL_LENGTH.length_counter_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5A0DD225F0ADD22"
    )
        port map (
      I0 => \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[29]_0\,
      I1 => \USE_RTL_LENGTH.length_counter_q_reg[1]\(0),
      I2 => \^q\(0),
      I3 => \USE_RTL_LENGTH.length_counter_q_reg[1]\(1),
      I4 => \USE_RTL_LENGTH.first_mi_word_q\,
      I5 => \^q\(1),
      O => \USE_RTL_LENGTH.length_counter_q_reg[0]\
    );
\USE_RTL_VALID_WRITE.buffer_Full_q_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF00100000"
    )
        port map (
      I0 => E(0),
      I1 => cmd_push_block,
      I2 => \USE_RTL_VALID_WRITE.buffer_Full_q_i_2_n_0\,
      I3 => M_READY_I,
      I4 => data_Exists_I,
      I5 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      O => \USE_RTL_VALID_WRITE.buffer_Full_q_i_1_n_0\
    );
\USE_RTL_VALID_WRITE.buffer_Full_q_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(2),
      I1 => \USE_RTL_ADDR.addr_q_reg\(3),
      I2 => \USE_RTL_ADDR.addr_q_reg\(4),
      I3 => \USE_RTL_ADDR.addr_q_reg\(1),
      I4 => \USE_RTL_ADDR.addr_q_reg\(0),
      O => \USE_RTL_VALID_WRITE.buffer_Full_q_i_2_n_0\
    );
\USE_RTL_VALID_WRITE.buffer_Full_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_VALID_WRITE.buffer_Full_q_i_1_n_0\,
      Q => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      R => SR(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[29]_0\,
      I1 => s_axi_wlast,
      I2 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I3 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]\,
      O => s_axi_wlast_0(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_1_in\,
      I1 => wrap_buffer_available,
      I2 => \^q\(7),
      I3 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I4 => s_axi_wvalid,
      I5 => s_axi_wstrb(0),
      O => wrap_buffer_available_reg_6(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEAAAE"
    )
        port map (
      I0 => \^q\(5),
      I1 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(2),
      I2 => \^q\(8),
      I3 => \USE_RTL_CURR_WORD.first_word_q\,
      I4 => \^q\(6),
      O => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_1_in\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_1_in\,
      I1 => wrap_buffer_available,
      I2 => \^q\(7),
      I3 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I4 => s_axi_wvalid,
      I5 => s_axi_wstrb(1),
      O => wrap_buffer_available_reg_5(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_1_in\,
      I1 => wrap_buffer_available,
      I2 => \^q\(7),
      I3 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I4 => s_axi_wvalid,
      I5 => s_axi_wstrb(2),
      O => wrap_buffer_available_reg_4(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_1_in\,
      I1 => wrap_buffer_available,
      I2 => \^q\(7),
      I3 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I4 => s_axi_wvalid,
      I5 => s_axi_wstrb(3),
      O => wrap_buffer_available_reg_3(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => wrap_buffer_available,
      I1 => \^q\(7),
      I2 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I3 => s_axi_wvalid,
      I4 => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_1_in\,
      I5 => s_axi_wstrb(0),
      O => wrap_buffer_available_reg_2(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => wrap_buffer_available,
      I1 => \^q\(7),
      I2 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I3 => s_axi_wvalid,
      I4 => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_1_in\,
      I5 => s_axi_wstrb(1),
      O => wrap_buffer_available_reg_1(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => wrap_buffer_available,
      I1 => \^q\(7),
      I2 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I3 => s_axi_wvalid,
      I4 => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_1_in\,
      I5 => s_axi_wstrb(2),
      O => wrap_buffer_available_reg_0(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => wrap_buffer_available,
      I1 => \^s_axi_wvalid_0\(0),
      I2 => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_86_in\,
      O => p_79_in
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4500550000000000"
    )
        port map (
      I0 => \USE_WRITE.wr_cmd_modified\,
      I1 => wrap_buffer_available,
      I2 => \^q\(7),
      I3 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I4 => s_axi_wvalid,
      I5 => \^s_axi_wvalid_0\(0),
      O => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28]_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08800000"
    )
        port map (
      I0 => \USE_WRITE.wr_cmd_modified\,
      I1 => \USE_REGISTER.M_AXI_WVALID_q_i_4_n_0\,
      I2 => cmd_last_word(2),
      I3 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_8_n_0\,
      I4 => \USE_REGISTER.M_AXI_WVALID_q_reg\,
      O => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_86_in\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5457"
    )
        port map (
      I0 => \^q\(6),
      I1 => \USE_RTL_CURR_WORD.first_word_q\,
      I2 => \^q\(8),
      I3 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(2),
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_8_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => wrap_buffer_available,
      I1 => \^q\(7),
      I2 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I3 => s_axi_wvalid,
      I4 => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/p_1_in\,
      I5 => s_axi_wstrb(3),
      O => wrap_buffer_available_reg(0)
    );
cmd_push_block_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1101"
    )
        port map (
      I0 => m_axi_awready,
      I1 => E(0),
      I2 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I3 => cmd_push_block,
      O => cmd_push_block0
    );
data_Exists_I_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5557FFFF00020002"
    )
        port map (
      I0 => \buffer_Empty__3\,
      I1 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I2 => E(0),
      I3 => cmd_push_block,
      I4 => M_READY_I,
      I5 => data_Exists_I,
      O => next_Data_Exists
    );
data_Exists_I_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(0),
      I1 => \USE_RTL_ADDR.addr_q_reg\(1),
      I2 => \USE_RTL_ADDR.addr_q_reg\(2),
      I3 => \USE_RTL_ADDR.addr_q_reg\(4),
      I4 => \USE_RTL_ADDR.addr_q_reg\(3),
      O => \buffer_Empty__3\
    );
data_Exists_I_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => next_Data_Exists,
      Q => data_Exists_I,
      R => SR(0)
    );
m_axi_awvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I1 => cmd_push_block,
      I2 => E(0),
      O => m_axi_awvalid
    );
m_valid_i_inv_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => cmd_push_block,
      I1 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      O => cmd_push_block_reg
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2FF0000"
    )
        port map (
      I0 => \^q\(7),
      I1 => wrap_buffer_available,
      I2 => m_axi_wready,
      I3 => \USE_REGISTER.M_AXI_WVALID_q_reg_0\,
      I4 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      O => s_axi_wready
    );
s_ready_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"77F7"
    )
        port map (
      I0 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]\,
      I1 => m_axi_awready,
      I2 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I3 => cmd_push_block,
      O => s_axi_aresetn
    );
wrap_buffer_available_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FFF00"
    )
        port map (
      I0 => \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[29]_0\,
      I1 => s_axi_wlast,
      I2 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I3 => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/wrap_buffer_available0\,
      I4 => wrap_buffer_available,
      O => s_axi_wlast_1
    );
wrap_buffer_available_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/word_completed__7\,
      I1 => s_axi_wvalid,
      I2 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I3 => \^q\(7),
      I4 => wrap_buffer_available,
      O => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst/wrap_buffer_available0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_0_generic_baseblocks_v2_1_0_command_fifo_1 is
  port (
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\ : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1\ : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]_0\ : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_2\ : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_13_in : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_3\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \pre_next_word_1_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \MULTIPLE_WORD.current_index\ : out STD_LOGIC;
    s_axi_aresetn : out STD_LOGIC;
    cmd_push_block0 : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    cmd_push_block_reg : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    \USE_RTL_LENGTH.first_mi_word_q\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    use_wrap_buffer : in STD_LOGIC;
    mr_rvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    cmd_push_block : in STD_LOGIC;
    m_axi_arvalid_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \last_beat__6\ : in STD_LOGIC;
    wrap_buffer_available : in STD_LOGIC;
    \current_word_1_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \sel_first_word__0\ : in STD_LOGIC;
    first_word : in STD_LOGIC;
    first_word_reg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_ready_i_reg : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_us_0_generic_baseblocks_v2_1_0_command_fifo_1 : entity is "generic_baseblocks_v2_1_0_command_fifo";
end design_1_auto_us_0_generic_baseblocks_v2_1_0_command_fifo_1;

architecture STRUCTURE of design_1_auto_us_0_generic_baseblocks_v2_1_0_command_fifo_1 is
  signal M_READY_I : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[19]_0\ : STD_LOGIC;
  signal \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[10]\ : STD_LOGIC;
  signal \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[17]\ : STD_LOGIC;
  signal \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[18]\ : STD_LOGIC;
  signal \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[19]\ : STD_LOGIC;
  signal \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20]\ : STD_LOGIC;
  signal \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[21]\ : STD_LOGIC;
  signal \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[22]\ : STD_LOGIC;
  signal \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[23]\ : STD_LOGIC;
  signal \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[24]\ : STD_LOGIC;
  signal \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[25]\ : STD_LOGIC;
  signal \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[8]\ : STD_LOGIC;
  signal \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[9]\ : STD_LOGIC;
  signal \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.read_data_inst/current_word__2\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \USE_READ.gen_non_fifo_r_upsizer.read_data_inst/next_word_i__2\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \USE_READ.rd_cmd_complete_wrap\ : STD_LOGIC;
  signal \USE_READ.rd_cmd_mask\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \USE_READ.rd_cmd_modified\ : STD_LOGIC;
  signal \USE_READ.rd_cmd_offset\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \USE_RTL_ADDR.addr_q\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][10]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][11]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][12]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][13]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][16]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][17]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][18]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][19]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][1]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][20]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][21]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][23]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][24]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][25]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][26]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][27]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][28]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][29]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][2]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][3]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][8]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][9]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[7]_i_5_n_0\ : STD_LOGIC;
  signal \USE_RTL_VALID_WRITE.buffer_Full_q\ : STD_LOGIC;
  signal \USE_RTL_VALID_WRITE.buffer_Full_q_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_VALID_WRITE.buffer_Full_q_i_2__0_n_0\ : STD_LOGIC;
  signal \buffer_Empty__3\ : STD_LOGIC;
  signal data_Exists_I : STD_LOGIC;
  signal next_Data_Exists : STD_LOGIC;
  signal \^p_13_in\ : STD_LOGIC;
  signal \pre_next_word_1[1]_i_2_n_0\ : STD_LOGIC;
  signal \pre_next_word_1[2]_i_3_n_0\ : STD_LOGIC;
  signal \^pre_next_word_1_reg[2]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_axi_rlast_INST_0_i_2_n_0 : STD_LOGIC;
  signal s_axi_rlast_INST_0_i_4_n_0 : STD_LOGIC;
  signal s_ready_i_i_3_n_0 : STD_LOGIC;
  signal valid_Write : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][10]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][11]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][12]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][13]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][16]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][17]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][18]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][19]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][20]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][21]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][22]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][23]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][24]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][25]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][26]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][27]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][28]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][29]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][2]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][3]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][8]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][9]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \USE_RTL_ADDR.addr_q[0]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \USE_RTL_ADDR.addr_q[2]_i_1__0\ : label is "soft_lutpair38";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][0]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name : string;
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][0]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][0]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][10]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][10]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][10]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][11]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][11]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][11]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][12]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][12]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][12]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][13]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][13]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][13]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][16]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][16]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][16]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][17]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][17]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][17]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][18]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][18]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][18]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][19]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][19]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][19]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][1]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][1]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][1]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][20]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][20]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][20]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][21]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][21]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][21]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][22]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][22]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][22]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][23]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][23]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][23]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][24]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][24]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][24]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][25]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][25]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][25]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][26]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][26]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][26]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][27]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][27]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][27]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][28]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][28]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][28]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][29]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][29]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][29]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][2]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][2]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][2]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][3]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][3]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][3]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][8]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][8]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][8]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][9]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][9]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][9]_srl32 ";
  attribute SOFT_HLUTNM of \USE_RTL_VALID_WRITE.buffer_Full_q_i_2__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \cmd_push_block_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \current_word_1[1]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \data_Exists_I_i_2__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of m_axi_arvalid_INST_0 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m_valid_i_inv_i_2__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \s_axi_rdata[31]_INST_0_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of s_axi_rlast_INST_0_i_1 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of s_axi_rvalid_INST_0 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s_ready_i_i_2__1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of s_ready_i_i_4 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of use_wrap_buffer_i_3 : label is "soft_lutpair37";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
  \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]_0\ <= \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[19]_0\;
  \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\ <= \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\;
  p_13_in <= \^p_13_in\;
  \pre_next_word_1_reg[2]\(2 downto 0) <= \^pre_next_word_1_reg[2]\(2 downto 0);
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A800FFFF"
    )
        port map (
      I0 => \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[19]_0\,
      I1 => use_wrap_buffer,
      I2 => mr_rvalid,
      I3 => s_axi_rready,
      I4 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      O => M_READY_I
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][10]_srl32_n_0\,
      Q => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[10]\,
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][11]_srl32_n_0\,
      Q => \USE_READ.rd_cmd_mask\(0),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][12]_srl32_n_0\,
      Q => \USE_READ.rd_cmd_mask\(1),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][13]_srl32_n_0\,
      Q => \USE_READ.rd_cmd_mask\(2),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][16]_srl32_n_0\,
      Q => \USE_READ.rd_cmd_offset\(2),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][17]_srl32_n_0\,
      Q => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[17]\,
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][18]_srl32_n_0\,
      Q => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[18]\,
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][19]_srl32_n_0\,
      Q => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[19]\,
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][1]_srl32_n_0\,
      Q => \^q\(1),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][20]_srl32_n_0\,
      Q => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20]\,
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][21]_srl32_n_0\,
      Q => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[21]\,
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_n_0\,
      Q => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[22]\,
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][23]_srl32_n_0\,
      Q => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[23]\,
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][24]_srl32_n_0\,
      Q => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[24]\,
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][25]_srl32_n_0\,
      Q => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[25]\,
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][26]_srl32_n_0\,
      Q => \^q\(4),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][27]_srl32_n_0\,
      Q => \USE_READ.rd_cmd_complete_wrap\,
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][28]_srl32_n_0\,
      Q => \USE_READ.rd_cmd_modified\,
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][29]_srl32_n_0\,
      Q => \^q\(5),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][2]_srl32_n_0\,
      Q => \^q\(2),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][3]_srl32_n_0\,
      Q => \^q\(3),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][8]_srl32_n_0\,
      Q => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[8]\,
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][9]_srl32_n_0\,
      Q => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[9]\,
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => M_READY_I,
      D => data_Exists_I,
      Q => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      R => SR(0)
    );
\USE_RTL_ADDR.addr_q[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(0),
      O => \USE_RTL_ADDR.addr_q[0]_i_1__0_n_0\
    );
\USE_RTL_ADDR.addr_q[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999996"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(1),
      I1 => \USE_RTL_ADDR.addr_q_reg\(0),
      I2 => cmd_push_block,
      I3 => m_axi_arvalid_0(0),
      I4 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I5 => M_READY_I,
      O => \USE_RTL_ADDR.addr_q[1]_i_1__0_n_0\
    );
\USE_RTL_ADDR.addr_q[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9A96AA9"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(2),
      I1 => \USE_RTL_ADDR.addr_q_reg\(0),
      I2 => \USE_RTL_ADDR.addr_q_reg\(1),
      I3 => valid_Write,
      I4 => M_READY_I,
      O => \USE_RTL_ADDR.addr_q[2]_i_1__0_n_0\
    );
\USE_RTL_ADDR.addr_q[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAA9A9AAA9"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(3),
      I1 => \USE_RTL_ADDR.addr_q_reg\(0),
      I2 => \USE_RTL_ADDR.addr_q_reg\(1),
      I3 => valid_Write,
      I4 => M_READY_I,
      I5 => \USE_RTL_ADDR.addr_q_reg\(2),
      O => \USE_RTL_ADDR.addr_q[3]_i_1__0_n_0\
    );
\USE_RTL_ADDR.addr_q[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444300000000"
    )
        port map (
      I0 => \buffer_Empty__3\,
      I1 => M_READY_I,
      I2 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I3 => m_axi_arvalid_0(0),
      I4 => cmd_push_block,
      I5 => data_Exists_I,
      O => \USE_RTL_ADDR.addr_q\
    );
\USE_RTL_ADDR.addr_q[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAA9AA"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(4),
      I1 => \USE_RTL_ADDR.addr_q_reg\(0),
      I2 => \USE_RTL_ADDR.addr_q_reg\(1),
      I3 => \USE_RTL_ADDR.addr_q[4]_i_3__0_n_0\,
      I4 => \USE_RTL_ADDR.addr_q_reg\(2),
      I5 => \USE_RTL_ADDR.addr_q_reg\(3),
      O => \USE_RTL_ADDR.addr_q[4]_i_2__0_n_0\
    );
\USE_RTL_ADDR.addr_q[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD55555FFFFFFFF"
    )
        port map (
      I0 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I1 => s_axi_rready,
      I2 => mr_rvalid,
      I3 => use_wrap_buffer,
      I4 => \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[19]_0\,
      I5 => valid_Write,
      O => \USE_RTL_ADDR.addr_q[4]_i_3__0_n_0\
    );
\USE_RTL_ADDR.addr_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[0]_i_1__0_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(0),
      R => SR(0)
    );
\USE_RTL_ADDR.addr_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[1]_i_1__0_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(1),
      R => SR(0)
    );
\USE_RTL_ADDR.addr_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[2]_i_1__0_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(2),
      R => SR(0)
    );
\USE_RTL_ADDR.addr_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[3]_i_1__0_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(3),
      R => SR(0)
    );
\USE_RTL_ADDR.addr_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[4]_i_2__0_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(4),
      R => SR(0)
    );
\USE_RTL_FIFO.data_srl_reg[31][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(0),
      Q => \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][0]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cmd_push_block,
      I1 => m_axi_arvalid_0(0),
      I2 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      O => valid_Write
    );
\USE_RTL_FIFO.data_srl_reg[31][10]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(6),
      Q => \USE_RTL_FIFO.data_srl_reg[31][10]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][10]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][11]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(7),
      Q => \USE_RTL_FIFO.data_srl_reg[31][11]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][11]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][12]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(8),
      Q => \USE_RTL_FIFO.data_srl_reg[31][12]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][12]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][13]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(9),
      Q => \USE_RTL_FIFO.data_srl_reg[31][13]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][13]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][16]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(10),
      Q => \USE_RTL_FIFO.data_srl_reg[31][16]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][16]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][17]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(11),
      Q => \USE_RTL_FIFO.data_srl_reg[31][17]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][17]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][18]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(12),
      Q => \USE_RTL_FIFO.data_srl_reg[31][18]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][18]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][19]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(13),
      Q => \USE_RTL_FIFO.data_srl_reg[31][19]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][19]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(1),
      Q => \USE_RTL_FIFO.data_srl_reg[31][1]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][1]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][20]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(14),
      Q => \USE_RTL_FIFO.data_srl_reg[31][20]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][20]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][21]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(15),
      Q => \USE_RTL_FIFO.data_srl_reg[31][21]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][21]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][22]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(16),
      Q => \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][22]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][23]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(17),
      Q => \USE_RTL_FIFO.data_srl_reg[31][23]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][23]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][24]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(18),
      Q => \USE_RTL_FIFO.data_srl_reg[31][24]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][24]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][25]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(19),
      Q => \USE_RTL_FIFO.data_srl_reg[31][25]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][25]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][26]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(20),
      Q => \USE_RTL_FIFO.data_srl_reg[31][26]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][26]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][27]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(21),
      Q => \USE_RTL_FIFO.data_srl_reg[31][27]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][27]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][28]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(22),
      Q => \USE_RTL_FIFO.data_srl_reg[31][28]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][28]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][29]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(23),
      Q => \USE_RTL_FIFO.data_srl_reg[31][29]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][29]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][2]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(2),
      Q => \USE_RTL_FIFO.data_srl_reg[31][2]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][2]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][3]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(3),
      Q => \USE_RTL_FIFO.data_srl_reg[31][3]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][3]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][8]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(4),
      Q => \USE_RTL_FIFO.data_srl_reg[31][8]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][8]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][9]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(5),
      Q => \USE_RTL_FIFO.data_srl_reg[31][9]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][9]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_LENGTH.length_counter_q[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11110111FFFFFFFF"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q[7]_i_5_n_0\,
      I1 => s_ready_i_i_3_n_0,
      I2 => \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[19]_0\,
      I3 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I4 => use_wrap_buffer,
      I5 => s_axi_rready,
      O => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_3\
    );
\USE_RTL_LENGTH.length_counter_q[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => \^q\(5),
      I1 => \USE_READ.rd_cmd_modified\,
      I2 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      O => \USE_RTL_LENGTH.length_counter_q[7]_i_5_n_0\
    );
\USE_RTL_VALID_WRITE.buffer_Full_q_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF00100000"
    )
        port map (
      I0 => m_axi_arvalid_0(0),
      I1 => cmd_push_block,
      I2 => \USE_RTL_VALID_WRITE.buffer_Full_q_i_2__0_n_0\,
      I3 => M_READY_I,
      I4 => data_Exists_I,
      I5 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      O => \USE_RTL_VALID_WRITE.buffer_Full_q_i_1__0_n_0\
    );
\USE_RTL_VALID_WRITE.buffer_Full_q_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(2),
      I1 => \USE_RTL_ADDR.addr_q_reg\(3),
      I2 => \USE_RTL_ADDR.addr_q_reg\(4),
      I3 => \USE_RTL_ADDR.addr_q_reg\(1),
      I4 => \USE_RTL_ADDR.addr_q_reg\(0),
      O => \USE_RTL_VALID_WRITE.buffer_Full_q_i_2__0_n_0\
    );
\USE_RTL_VALID_WRITE.buffer_Full_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_VALID_WRITE.buffer_Full_q_i_1__0_n_0\,
      Q => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      R => SR(0)
    );
\cmd_push_block_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1101"
    )
        port map (
      I0 => m_axi_arready,
      I1 => m_axi_arvalid_0(0),
      I2 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I3 => cmd_push_block,
      O => cmd_push_block0
    );
\current_word_1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE020000"
    )
        port map (
      I0 => \current_word_1_reg[2]\(0),
      I1 => \^q\(5),
      I2 => first_word,
      I3 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20]\,
      I4 => \USE_READ.rd_cmd_mask\(0),
      O => \^pre_next_word_1_reg[2]\(0)
    );
\current_word_1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888A8880"
    )
        port map (
      I0 => \USE_READ.rd_cmd_mask\(1),
      I1 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[21]\,
      I2 => first_word,
      I3 => \^q\(5),
      I4 => \current_word_1_reg[2]\(1),
      O => \^pre_next_word_1_reg[2]\(1)
    );
\current_word_1[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE020000"
    )
        port map (
      I0 => \current_word_1_reg[2]\(2),
      I1 => \^q\(5),
      I2 => first_word,
      I3 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[22]\,
      I4 => \USE_READ.rd_cmd_mask\(2),
      O => \^pre_next_word_1_reg[2]\(2)
    );
\data_Exists_I_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5557FFFF00020002"
    )
        port map (
      I0 => \buffer_Empty__3\,
      I1 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I2 => m_axi_arvalid_0(0),
      I3 => cmd_push_block,
      I4 => M_READY_I,
      I5 => data_Exists_I,
      O => next_Data_Exists
    );
\data_Exists_I_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(0),
      I1 => \USE_RTL_ADDR.addr_q_reg\(1),
      I2 => \USE_RTL_ADDR.addr_q_reg\(2),
      I3 => \USE_RTL_ADDR.addr_q_reg\(4),
      I4 => \USE_RTL_ADDR.addr_q_reg\(3),
      O => \buffer_Empty__3\
    );
data_Exists_I_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => next_Data_Exists,
      Q => data_Exists_I,
      R => SR(0)
    );
m_axi_arvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I1 => cmd_push_block,
      I2 => m_axi_arvalid_0(0),
      O => m_axi_arvalid
    );
\m_payload_i[66]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^p_13_in\,
      I2 => mr_rvalid,
      O => s_axi_rready_0(0)
    );
\m_valid_i_inv_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => cmd_push_block,
      I1 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      O => cmd_push_block_reg
    );
\pre_next_word_1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54570000ABA80000"
    )
        port map (
      I0 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20]\,
      I1 => first_word,
      I2 => \^q\(5),
      I3 => \current_word_1_reg[2]\(0),
      I4 => \USE_READ.rd_cmd_mask\(0),
      I5 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[8]\,
      O => D(0)
    );
\pre_next_word_1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56A60000A9590000"
    )
        port map (
      I0 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[9]\,
      I1 => \current_word_1_reg[2]\(1),
      I2 => \sel_first_word__0\,
      I3 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[21]\,
      I4 => \USE_READ.rd_cmd_mask\(1),
      I5 => \pre_next_word_1[1]_i_2_n_0\,
      O => D(1)
    );
\pre_next_word_1[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5557FFF7"
    )
        port map (
      I0 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[8]\,
      I1 => \current_word_1_reg[2]\(0),
      I2 => \^q\(5),
      I3 => first_word,
      I4 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20]\,
      O => \pre_next_word_1[1]_i_2_n_0\
    );
\pre_next_word_1[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A95656A00000000"
    )
        port map (
      I0 => \pre_next_word_1[2]_i_3_n_0\,
      I1 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[22]\,
      I2 => \sel_first_word__0\,
      I3 => \current_word_1_reg[2]\(2),
      I4 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[10]\,
      I5 => \USE_READ.rd_cmd_mask\(2),
      O => D(2)
    );
\pre_next_word_1[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2B2B2BBB2B2B222"
    )
        port map (
      I0 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[9]\,
      I1 => \pre_next_word_1[1]_i_2_n_0\,
      I2 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[21]\,
      I3 => first_word,
      I4 => \^q\(5),
      I5 => \current_word_1_reg[2]\(1),
      O => \pre_next_word_1[2]_i_3_n_0\
    );
\s_axi_rdata[31]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFE02"
    )
        port map (
      I0 => first_word_reg(2),
      I1 => \^q\(5),
      I2 => first_word,
      I3 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[25]\,
      I4 => \USE_READ.rd_cmd_offset\(2),
      O => \MULTIPLE_WORD.current_index\
    );
s_axi_rlast_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000900090909000"
    )
        port map (
      I0 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[19]\,
      I1 => \USE_READ.gen_non_fifo_r_upsizer.read_data_inst/current_word__2\(2),
      I2 => s_axi_rlast_INST_0_i_2_n_0,
      I3 => use_wrap_buffer,
      I4 => \last_beat__6\,
      I5 => wrap_buffer_available,
      O => \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[19]_0\
    );
s_axi_rlast_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[25]\,
      I1 => first_word,
      I2 => \^q\(5),
      I3 => first_word_reg(2),
      O => \USE_READ.gen_non_fifo_r_upsizer.read_data_inst/current_word__2\(2)
    );
s_axi_rlast_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999A999500000000"
    )
        port map (
      I0 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[17]\,
      I1 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[23]\,
      I2 => first_word,
      I3 => \^q\(5),
      I4 => first_word_reg(0),
      I5 => s_axi_rlast_INST_0_i_4_n_0,
      O => s_axi_rlast_INST_0_i_2_n_0
    );
s_axi_rlast_INST_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE0201FD"
    )
        port map (
      I0 => first_word_reg(1),
      I1 => \^q\(5),
      I2 => first_word,
      I3 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[24]\,
      I4 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[18]\,
      O => s_axi_rlast_INST_0_i_4_n_0
    );
s_axi_rlast_INST_0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \USE_RTL_LENGTH.first_mi_word_q\,
      I3 => \^q\(0),
      I4 => \^q\(3),
      O => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_0\
    );
s_axi_rvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I1 => mr_rvalid,
      I2 => use_wrap_buffer,
      O => s_axi_rvalid
    );
\s_ready_i_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0FFF0F4F0FFF0"
    )
        port map (
      I0 => use_wrap_buffer,
      I1 => \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[19]_0\,
      I2 => s_ready_i_i_3_n_0,
      I3 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I4 => \USE_READ.rd_cmd_modified\,
      I5 => \^q\(5),
      O => \^p_13_in\
    );
\s_ready_i_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"77F7"
    )
        port map (
      I0 => s_ready_i_reg,
      I1 => m_axi_arready,
      I2 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I3 => cmd_push_block,
      O => s_axi_aresetn
    );
s_ready_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000070"
    )
        port map (
      I0 => \USE_READ.gen_non_fifo_r_upsizer.read_data_inst/next_word_i__2\(1),
      I1 => \USE_READ.rd_cmd_mask\(1),
      I2 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I3 => \USE_READ.rd_cmd_complete_wrap\,
      I4 => \^pre_next_word_1_reg[2]\(2),
      I5 => \^pre_next_word_1_reg[2]\(0),
      O => s_ready_i_i_3_n_0
    );
s_ready_i_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[21]\,
      I1 => first_word,
      I2 => \^q\(5),
      I3 => \current_word_1_reg[2]\(1),
      O => \USE_READ.gen_non_fifo_r_upsizer.read_data_inst/next_word_i__2\(1)
    );
use_wrap_buffer_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A8AAA8A8A8"
    )
        port map (
      I0 => E(0),
      I1 => \USE_RTL_LENGTH.length_counter_q[7]_i_5_n_0\,
      I2 => s_ready_i_i_3_n_0,
      I3 => \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[19]_0\,
      I4 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I5 => use_wrap_buffer,
      O => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1\
    );
use_wrap_buffer_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8000000"
    )
        port map (
      I0 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I1 => use_wrap_buffer,
      I2 => mr_rvalid,
      I3 => s_axi_rready,
      I4 => \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[19]_0\,
      O => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_0_axi_dwidth_converter_v2_1_26_a_upsizer is
  port (
    \USE_WRITE.wr_cmd_valid\ : out STD_LOGIC;
    s_axi_wlast_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_89_in : out STD_LOGIC;
    \USE_RTL_LENGTH.length_counter_q_reg[0]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28]\ : out STD_LOGIC;
    s_axi_wvalid_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_5 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC;
    p_79_in : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \USE_RTL_CURR_WORD.pre_next_word_q_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_aresetn : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    cmd_push_block_reg_0 : out STD_LOGIC;
    s_axi_wlast_1 : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\ : out STD_LOGIC;
    s_axi_wlast_2 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \USE_RTL_LENGTH.length_counter_q_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \USE_RTL_LENGTH.first_mi_word_q\ : in STD_LOGIC;
    \USE_RTL_LENGTH.length_counter_q_reg[1]_0\ : in STD_LOGIC;
    \USE_REGISTER.M_AXI_WVALID_q_reg\ : in STD_LOGIC;
    wrap_buffer_available : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready : in STD_LOGIC;
    \USE_REGISTER.M_AXI_WVALID_q_reg_0\ : in STD_LOGIC;
    \USE_RTL_CURR_WORD.current_word_q_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \sel_first_word__0\ : in STD_LOGIC;
    \USE_RTL_CURR_WORD.first_word_q\ : in STD_LOGIC;
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awready : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_a_upsizer : entity is "axi_dwidth_converter_v2_1_26_a_upsizer";
end design_1_auto_us_0_axi_dwidth_converter_v2_1_26_a_upsizer;

architecture STRUCTURE of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_a_upsizer is
  signal cmd_push_block : STD_LOGIC;
  signal cmd_push_block0 : STD_LOGIC;
begin
\GEN_CMD_QUEUE.cmd_queue\: entity work.design_1_auto_us_0_generic_baseblocks_v2_1_0_command_fifo
     port map (
      D(2 downto 0) => D(2 downto 0),
      E(0) => E(0),
      Q(8 downto 0) => Q(8 downto 0),
      SR(0) => SR(0),
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_0\ => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28]_0\ => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28]\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[29]_0\ => p_89_in,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\ => \USE_WRITE.wr_cmd_valid\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1\ => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\,
      \USE_REGISTER.M_AXI_WVALID_q_reg\ => \USE_REGISTER.M_AXI_WVALID_q_reg\,
      \USE_REGISTER.M_AXI_WVALID_q_reg_0\ => \USE_REGISTER.M_AXI_WVALID_q_reg_0\,
      \USE_RTL_CURR_WORD.current_word_q_reg[2]\(2 downto 0) => \USE_RTL_CURR_WORD.current_word_q_reg[2]\(2 downto 0),
      \USE_RTL_CURR_WORD.first_word_q\ => \USE_RTL_CURR_WORD.first_word_q\,
      \USE_RTL_CURR_WORD.pre_next_word_q_reg[2]\(2 downto 0) => \USE_RTL_CURR_WORD.pre_next_word_q_reg[2]\(2 downto 0),
      \USE_RTL_LENGTH.first_mi_word_q\ => \USE_RTL_LENGTH.first_mi_word_q\,
      \USE_RTL_LENGTH.length_counter_q_reg[0]\ => \USE_RTL_LENGTH.length_counter_q_reg[0]\,
      \USE_RTL_LENGTH.length_counter_q_reg[1]\(1 downto 0) => \USE_RTL_LENGTH.length_counter_q_reg[1]\(1 downto 0),
      \USE_RTL_LENGTH.length_counter_q_reg[1]_0\ => \USE_RTL_LENGTH.length_counter_q_reg[1]_0\,
      \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]\ => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]\,
      \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(2 downto 0) => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(2 downto 0),
      cmd_push_block => cmd_push_block,
      cmd_push_block0 => cmd_push_block0,
      cmd_push_block_reg => cmd_push_block_reg_0,
      \in\(23 downto 0) => \in\(23 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_wready => m_axi_wready,
      \out\ => \out\,
      p_79_in => p_79_in,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wlast => s_axi_wlast,
      s_axi_wlast_0(0) => s_axi_wlast_0(0),
      s_axi_wlast_1 => s_axi_wlast_1,
      s_axi_wlast_2 => s_axi_wlast_2,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wvalid_0(0) => s_axi_wvalid_0(0),
      \sel_first_word__0\ => \sel_first_word__0\,
      wrap_buffer_available => wrap_buffer_available,
      wrap_buffer_available_reg(0) => wrap_buffer_available_reg(0),
      wrap_buffer_available_reg_0(0) => wrap_buffer_available_reg_0(0),
      wrap_buffer_available_reg_1(0) => wrap_buffer_available_reg_1(0),
      wrap_buffer_available_reg_2(0) => wrap_buffer_available_reg_2(0),
      wrap_buffer_available_reg_3(0) => wrap_buffer_available_reg_3(0),
      wrap_buffer_available_reg_4(0) => wrap_buffer_available_reg_4(0),
      wrap_buffer_available_reg_5(0) => wrap_buffer_available_reg_5(0),
      wrap_buffer_available_reg_6(0) => wrap_buffer_available_reg_6(0)
    );
cmd_push_block_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => cmd_push_block0,
      Q => cmd_push_block,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_auto_us_0_axi_dwidth_converter_v2_1_26_a_upsizer__parameterized0\ is
  port (
    \USE_READ.rd_cmd_valid\ : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\ : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]\ : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\ : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_13_in : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \pre_next_word_1_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \MULTIPLE_WORD.current_index\ : out STD_LOGIC;
    s_axi_aresetn : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    cmd_push_block_reg_0 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    \USE_RTL_LENGTH.first_mi_word_q\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    use_wrap_buffer : in STD_LOGIC;
    mr_rvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arvalid_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \last_beat__6\ : in STD_LOGIC;
    wrap_buffer_available : in STD_LOGIC;
    \current_word_1_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \sel_first_word__0\ : in STD_LOGIC;
    first_word : in STD_LOGIC;
    first_word_reg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_ready_i_reg : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_auto_us_0_axi_dwidth_converter_v2_1_26_a_upsizer__parameterized0\ : entity is "axi_dwidth_converter_v2_1_26_a_upsizer";
end \design_1_auto_us_0_axi_dwidth_converter_v2_1_26_a_upsizer__parameterized0\;

architecture STRUCTURE of \design_1_auto_us_0_axi_dwidth_converter_v2_1_26_a_upsizer__parameterized0\ is
  signal cmd_push_block : STD_LOGIC;
  signal cmd_push_block0 : STD_LOGIC;
begin
\GEN_CMD_QUEUE.cmd_queue\: entity work.design_1_auto_us_0_generic_baseblocks_v2_1_0_command_fifo_1
     port map (
      D(2 downto 0) => D(2 downto 0),
      E(0) => E(0),
      \MULTIPLE_WORD.current_index\ => \MULTIPLE_WORD.current_index\,
      Q(5 downto 0) => Q(5 downto 0),
      SR(0) => SR(0),
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]_0\ => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_0\ => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\ => \USE_READ.rd_cmd_valid\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1\ => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_2\ => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_3\ => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1\,
      \USE_RTL_LENGTH.first_mi_word_q\ => \USE_RTL_LENGTH.first_mi_word_q\,
      cmd_push_block => cmd_push_block,
      cmd_push_block0 => cmd_push_block0,
      cmd_push_block_reg => cmd_push_block_reg_0,
      \current_word_1_reg[2]\(2 downto 0) => \current_word_1_reg[2]\(2 downto 0),
      first_word => first_word,
      first_word_reg(2 downto 0) => first_word_reg(2 downto 0),
      \in\(23 downto 0) => \in\(23 downto 0),
      \last_beat__6\ => \last_beat__6\,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_arvalid_0(0) => m_axi_arvalid_0(0),
      mr_rvalid => mr_rvalid,
      \out\ => \out\,
      p_13_in => p_13_in,
      \pre_next_word_1_reg[2]\(2 downto 0) => \pre_next_word_1_reg[2]\(2 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_rready => s_axi_rready,
      s_axi_rready_0(0) => s_axi_rready_0(0),
      s_axi_rvalid => s_axi_rvalid,
      s_ready_i_reg => s_ready_i_reg,
      \sel_first_word__0\ => \sel_first_word__0\,
      use_wrap_buffer => use_wrap_buffer,
      wrap_buffer_available => wrap_buffer_available
    );
cmd_push_block_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => cmd_push_block0,
      Q => cmd_push_block,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_0_axi_register_slice_v2_1_26_axi_register_slice is
  port (
    s_ready_i_reg : out STD_LOGIC;
    mr_rvalid : out STD_LOGIC;
    m_valid_i_reg : out STD_LOGIC;
    \m_payload_i_reg[66]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 65 downto 0 );
    \out\ : in STD_LOGIC;
    \USE_READ.rd_cmd_valid\ : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rready : in STD_LOGIC;
    p_13_in : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_valid_i_reg_0 : in STD_LOGIC;
    s_ready_i_reg_0 : in STD_LOGIC;
    \USE_RTL_LENGTH.first_mi_word_q\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_us_0_axi_register_slice_v2_1_26_axi_register_slice : entity is "axi_register_slice_v2_1_26_axi_register_slice";
end design_1_auto_us_0_axi_register_slice_v2_1_26_axi_register_slice;

architecture STRUCTURE of design_1_auto_us_0_axi_register_slice_v2_1_26_axi_register_slice is
begin
\r.r_pipe\: entity work.\design_1_auto_us_0_axi_register_slice_v2_1_26_axic_register_slice__parameterized2\
     port map (
      E(0) => E(0),
      Q(65 downto 0) => Q(65 downto 0),
      \USE_READ.rd_cmd_valid\ => \USE_READ.rd_cmd_valid\,
      \USE_RTL_LENGTH.first_mi_word_q\ => \USE_RTL_LENGTH.first_mi_word_q\,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      \m_payload_i_reg[66]_0\ => \m_payload_i_reg[66]\,
      m_valid_i_reg_0 => mr_rvalid,
      m_valid_i_reg_1 => m_valid_i_reg,
      m_valid_i_reg_2 => m_valid_i_reg_0,
      \out\ => \out\,
      p_13_in => p_13_in,
      s_axi_rready => s_axi_rready,
      s_ready_i_reg_0 => s_ready_i_reg,
      s_ready_i_reg_1 => s_ready_i_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_auto_us_0_axi_register_slice_v2_1_26_axi_register_slice__parameterized0\ is
  port (
    \aresetn_d_reg[1]\ : out STD_LOGIC;
    \aresetn_d_reg[0]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_inv : out STD_LOGIC_VECTOR ( 0 to 0 );
    \in\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 70 downto 0 );
    \m_payload_i_reg[70]\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    \m_payload_i_reg[86]\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    m_valid_i_reg_inv_0 : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_valid_i_reg_inv_1 : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    m_valid_i_reg_inv_2 : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 85 downto 0 );
    \m_payload_i_reg[86]_0\ : in STD_LOGIC_VECTOR ( 85 downto 0 );
    s_ready_i_reg : in STD_LOGIC;
    s_ready_i_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_auto_us_0_axi_register_slice_v2_1_26_axi_register_slice__parameterized0\ : entity is "axi_register_slice_v2_1_26_axi_register_slice";
end \design_1_auto_us_0_axi_register_slice_v2_1_26_axi_register_slice__parameterized0\;

architecture STRUCTURE of \design_1_auto_us_0_axi_register_slice_v2_1_26_axi_register_slice__parameterized0\ is
  signal \^aresetn_d_reg[0]\ : STD_LOGIC;
  signal \^aresetn_d_reg[1]\ : STD_LOGIC;
begin
  \aresetn_d_reg[0]\ <= \^aresetn_d_reg[0]\;
  \aresetn_d_reg[1]\ <= \^aresetn_d_reg[1]\;
\ar.ar_pipe\: entity work.\design_1_auto_us_0_axi_register_slice_v2_1_26_axic_register_slice__parameterized3\
     port map (
      E(0) => m_valid_i_reg_inv(0),
      SR(0) => SR(0),
      \aresetn_d_reg[1]_0\ => \^aresetn_d_reg[1]\,
      \aresetn_d_reg[1]_1\ => \^aresetn_d_reg[0]\,
      m_axi_araddr(63 downto 0) => m_axi_araddr(63 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      \m_payload_i_reg[70]_0\(23 downto 0) => \m_payload_i_reg[70]\(23 downto 0),
      \m_payload_i_reg[86]_0\(12 downto 0) => \m_payload_i_reg[86]\(12 downto 0),
      \m_payload_i_reg[86]_1\(85 downto 0) => \m_payload_i_reg[86]_0\(85 downto 0),
      m_valid_i_reg_inv_0 => m_valid_i_reg_inv_0,
      m_valid_i_reg_inv_1 => m_valid_i_reg_inv_1,
      \out\ => \out\,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_ready_i_reg_0 => s_ready_i_reg_0
    );
\aw.aw_pipe\: entity work.\design_1_auto_us_0_axi_register_slice_v2_1_26_axic_register_slice__parameterized3_0\
     port map (
      D(85 downto 0) => D(85 downto 0),
      E(0) => E(0),
      Q(70 downto 0) => Q(70 downto 0),
      SR(0) => SR(0),
      \aresetn_d_reg[0]_0\ => \^aresetn_d_reg[0]\,
      \in\(23 downto 0) => \in\(23 downto 0),
      m_axi_awaddr(5 downto 0) => m_axi_awaddr(5 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_valid_i_reg_inv_0 => m_valid_i_reg_inv_2,
      m_valid_i_reg_inv_1 => m_valid_i_reg_inv_1,
      \out\ => \out\,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_ready_i_reg_0 => \^aresetn_d_reg[1]\,
      s_ready_i_reg_1 => s_ready_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_0_axi_dwidth_converter_v2_1_26_axi_upsizer is
  port (
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 70 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_ready_i_reg : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]\ : out STD_LOGIC;
    \m_payload_i_reg[86]\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    \USE_REGISTER.M_AXI_WVALID_q_reg\ : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 85 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \m_payload_i_reg[86]_0\ : in STD_LOGIC_VECTOR ( 85 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    m_valid_i_reg_inv : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_axi_upsizer : entity is "axi_dwidth_converter_v2_1_26_axi_upsizer";
end design_1_auto_us_0_axi_dwidth_converter_v2_1_26_axi_upsizer;

architecture STRUCTURE of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_axi_upsizer is
  signal \MULTIPLE_WORD.current_index\ : STD_LOGIC;
  signal \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[19]\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_10\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_11\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_12\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_13\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_14\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_15\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_16\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_17\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_18\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_19\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_2\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_20\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_21\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_22\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_23\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_24\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_25\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_26\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_27\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_28\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_29\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_3\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_30\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_31\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_32\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_33\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_34\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_35\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_36\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_37\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_38\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_39\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_40\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_41\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_42\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_43\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_44\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_45\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_46\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_47\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_48\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_49\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_50\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_51\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_52\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_53\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_54\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_55\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_56\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_57\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_58\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_59\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_6\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_60\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_61\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_62\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_63\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_64\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_65\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_66\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_67\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_68\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_69\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_7\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_8\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_9\ : STD_LOGIC;
  signal \USE_READ.rd_cmd_fix\ : STD_LOGIC;
  signal \USE_READ.rd_cmd_packed_wrap\ : STD_LOGIC;
  signal \USE_READ.rd_cmd_valid\ : STD_LOGIC;
  signal \USE_READ.read_addr_inst_n_1\ : STD_LOGIC;
  signal \USE_READ.read_addr_inst_n_10\ : STD_LOGIC;
  signal \USE_READ.read_addr_inst_n_14\ : STD_LOGIC;
  signal \USE_READ.read_addr_inst_n_22\ : STD_LOGIC;
  signal \USE_READ.read_addr_inst_n_24\ : STD_LOGIC;
  signal \USE_READ.read_addr_inst_n_4\ : STD_LOGIC;
  signal \USE_READ.read_addr_inst_n_5\ : STD_LOGIC;
  signal \USE_READ.read_addr_inst_n_6\ : STD_LOGIC;
  signal \USE_READ.read_addr_inst_n_7\ : STD_LOGIC;
  signal \USE_READ.read_addr_inst_n_8\ : STD_LOGIC;
  signal \^use_register.m_axi_wvalid_q_reg\ : STD_LOGIC;
  signal \USE_RTL_CURR_WORD.current_word_q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \USE_RTL_CURR_WORD.first_word_q\ : STD_LOGIC;
  signal \USE_RTL_CURR_WORD.pre_next_word_q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \USE_RTL_LENGTH.first_mi_word_q\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.first_mi_word_q_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q_reg\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_1\ : STD_LOGIC;
  signal \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_16\ : STD_LOGIC;
  signal \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_20\ : STD_LOGIC;
  signal \USE_WRITE.wr_cmd_first_word\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \USE_WRITE.wr_cmd_fix\ : STD_LOGIC;
  signal \USE_WRITE.wr_cmd_offset\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \USE_WRITE.wr_cmd_packed_wrap\ : STD_LOGIC;
  signal \USE_WRITE.wr_cmd_valid\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_10\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_11\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_12\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_13\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_25\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_3\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_32\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_34\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_35\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_36\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_37\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_8\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_9\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg0\ : STD_LOGIC;
  signal cmd_complete_wrap_i : STD_LOGIC;
  signal cmd_first_word_i : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cmd_first_word_i_6 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cmd_fix_i : STD_LOGIC;
  signal cmd_fix_i_8 : STD_LOGIC;
  signal cmd_modified_i : STD_LOGIC;
  signal cmd_packed_wrap_i : STD_LOGIC;
  signal cmd_packed_wrap_i_7 : STD_LOGIC;
  signal current_word_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal first_word : STD_LOGIC;
  signal \last_beat__6\ : STD_LOGIC;
  signal \^m_axi_arlen\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_awlen\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mr_rresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mr_rvalid : STD_LOGIC;
  signal next_word : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal next_word_3 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_13_in : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 22 downto 18 );
  signal p_1_out_5 : STD_LOGIC_VECTOR ( 22 downto 17 );
  signal p_79_in : STD_LOGIC;
  signal p_89_in : STD_LOGIC;
  signal pop_si_data : STD_LOGIC;
  signal pre_next_word : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal pre_next_word_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal pre_next_word_4 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \r.r_pipe/p_1_in\ : STD_LOGIC;
  signal \sel_first_word__0\ : STD_LOGIC;
  signal \sel_first_word__0_1\ : STD_LOGIC;
  signal si_register_slice_inst_n_0 : STD_LOGIC;
  signal si_register_slice_inst_n_1 : STD_LOGIC;
  signal si_register_slice_inst_n_101 : STD_LOGIC;
  signal si_register_slice_inst_n_109 : STD_LOGIC;
  signal si_register_slice_inst_n_111 : STD_LOGIC;
  signal si_register_slice_inst_n_112 : STD_LOGIC;
  signal si_register_slice_inst_n_113 : STD_LOGIC;
  signal si_register_slice_inst_n_114 : STD_LOGIC;
  signal si_register_slice_inst_n_115 : STD_LOGIC;
  signal si_register_slice_inst_n_116 : STD_LOGIC;
  signal si_register_slice_inst_n_117 : STD_LOGIC;
  signal si_register_slice_inst_n_118 : STD_LOGIC;
  signal si_register_slice_inst_n_17 : STD_LOGIC;
  signal si_register_slice_inst_n_18 : STD_LOGIC;
  signal si_register_slice_inst_n_19 : STD_LOGIC;
  signal si_register_slice_inst_n_20 : STD_LOGIC;
  signal si_register_slice_inst_n_21 : STD_LOGIC;
  signal si_register_slice_inst_n_22 : STD_LOGIC;
  signal si_register_slice_inst_n_23 : STD_LOGIC;
  signal si_register_slice_inst_n_5 : STD_LOGIC;
  signal sr_arvalid : STD_LOGIC;
  signal sr_awvalid : STD_LOGIC;
  signal use_wrap_buffer : STD_LOGIC;
  signal wrap_buffer_available : STD_LOGIC;
  signal wrap_buffer_available_2 : STD_LOGIC;
  signal wstrb_wrap_buffer_q : STD_LOGIC;
begin
  \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]\ <= \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[19]\;
  \USE_REGISTER.M_AXI_WVALID_q_reg\ <= \^use_register.m_axi_wvalid_q_reg\;
  m_axi_arlen(3 downto 0) <= \^m_axi_arlen\(3 downto 0);
  m_axi_awlen(3 downto 0) <= \^m_axi_awlen\(3 downto 0);
\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst\: entity work.design_1_auto_us_0_axi_register_slice_v2_1_26_axi_register_slice
     port map (
      E(0) => \r.r_pipe/p_1_in\,
      Q(65 downto 64) => mr_rresp(1 downto 0),
      Q(63) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_6\,
      Q(62) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_7\,
      Q(61) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_8\,
      Q(60) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_9\,
      Q(59) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_10\,
      Q(58) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_11\,
      Q(57) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_12\,
      Q(56) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_13\,
      Q(55) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_14\,
      Q(54) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_15\,
      Q(53) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_16\,
      Q(52) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_17\,
      Q(51) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_18\,
      Q(50) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_19\,
      Q(49) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_20\,
      Q(48) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_21\,
      Q(47) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_22\,
      Q(46) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_23\,
      Q(45) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_24\,
      Q(44) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_25\,
      Q(43) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_26\,
      Q(42) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_27\,
      Q(41) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_28\,
      Q(40) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_29\,
      Q(39) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_30\,
      Q(38) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_31\,
      Q(37) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_32\,
      Q(36) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_33\,
      Q(35) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_34\,
      Q(34) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_35\,
      Q(33) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_36\,
      Q(32) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_37\,
      Q(31) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_38\,
      Q(30) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_39\,
      Q(29) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_40\,
      Q(28) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_41\,
      Q(27) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_42\,
      Q(26) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_43\,
      Q(25) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_44\,
      Q(24) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_45\,
      Q(23) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_46\,
      Q(22) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_47\,
      Q(21) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_48\,
      Q(20) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_49\,
      Q(19) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_50\,
      Q(18) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_51\,
      Q(17) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_52\,
      Q(16) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_53\,
      Q(15) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_54\,
      Q(14) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_55\,
      Q(13) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_56\,
      Q(12) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_57\,
      Q(11) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_58\,
      Q(10) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_59\,
      Q(9) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_60\,
      Q(8) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_61\,
      Q(7) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_62\,
      Q(6) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_63\,
      Q(5) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_64\,
      Q(4) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_65\,
      Q(3) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_66\,
      Q(2) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_67\,
      Q(1) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_68\,
      Q(0) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_69\,
      \USE_READ.rd_cmd_valid\ => \USE_READ.rd_cmd_valid\,
      \USE_RTL_LENGTH.first_mi_word_q\ => \USE_RTL_LENGTH.first_mi_word_q_0\,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      \m_payload_i_reg[66]\ => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_3\,
      m_valid_i_reg => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_2\,
      m_valid_i_reg_0 => si_register_slice_inst_n_0,
      mr_rvalid => mr_rvalid,
      \out\ => \out\,
      p_13_in => p_13_in,
      s_axi_rready => s_axi_rready,
      s_ready_i_reg => s_ready_i_reg,
      s_ready_i_reg_0 => si_register_slice_inst_n_1
    );
\USE_READ.gen_non_fifo_r_upsizer.read_data_inst\: entity work.design_1_auto_us_0_axi_dwidth_converter_v2_1_26_r_upsizer
     port map (
      D(2 downto 0) => pre_next_word(2 downto 0),
      E(0) => p_15_in,
      \MULTIPLE_WORD.current_index\ => \MULTIPLE_WORD.current_index\,
      Q(5) => \USE_READ.rd_cmd_fix\,
      Q(4) => \USE_READ.rd_cmd_packed_wrap\,
      Q(3) => \USE_READ.read_addr_inst_n_4\,
      Q(2) => \USE_READ.read_addr_inst_n_5\,
      Q(1) => \USE_READ.read_addr_inst_n_6\,
      Q(0) => \USE_READ.read_addr_inst_n_7\,
      SR(0) => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_1\,
      \USE_READ.rd_cmd_valid\ => \USE_READ.rd_cmd_valid\,
      \USE_RTL_LENGTH.first_mi_word_q\ => \USE_RTL_LENGTH.first_mi_word_q_0\,
      \USE_RTL_LENGTH.first_mi_word_q_reg_0\ => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_3\,
      \USE_RTL_LENGTH.length_counter_q_reg[2]_0\ => \USE_READ.read_addr_inst_n_14\,
      \USE_RTL_LENGTH.length_counter_q_reg[2]_1\ => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_2\,
      \current_word_1_reg[2]_0\(2 downto 0) => current_word_1(2 downto 0),
      \current_word_1_reg[2]_1\(2 downto 0) => next_word(2 downto 0),
      first_word => first_word,
      first_word_reg_0 => \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[19]\,
      \last_beat__6\ => \last_beat__6\,
      mr_rvalid => mr_rvalid,
      \out\ => \out\,
      p_13_in => p_13_in,
      \pre_next_word_1_reg[2]_0\(2 downto 0) => pre_next_word_1(2 downto 0),
      \rresp_wrap_buffer_reg[1]_0\(65 downto 64) => mr_rresp(1 downto 0),
      \rresp_wrap_buffer_reg[1]_0\(63) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_6\,
      \rresp_wrap_buffer_reg[1]_0\(62) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_7\,
      \rresp_wrap_buffer_reg[1]_0\(61) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_8\,
      \rresp_wrap_buffer_reg[1]_0\(60) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_9\,
      \rresp_wrap_buffer_reg[1]_0\(59) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_10\,
      \rresp_wrap_buffer_reg[1]_0\(58) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_11\,
      \rresp_wrap_buffer_reg[1]_0\(57) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_12\,
      \rresp_wrap_buffer_reg[1]_0\(56) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_13\,
      \rresp_wrap_buffer_reg[1]_0\(55) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_14\,
      \rresp_wrap_buffer_reg[1]_0\(54) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_15\,
      \rresp_wrap_buffer_reg[1]_0\(53) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_16\,
      \rresp_wrap_buffer_reg[1]_0\(52) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_17\,
      \rresp_wrap_buffer_reg[1]_0\(51) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_18\,
      \rresp_wrap_buffer_reg[1]_0\(50) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_19\,
      \rresp_wrap_buffer_reg[1]_0\(49) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_20\,
      \rresp_wrap_buffer_reg[1]_0\(48) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_21\,
      \rresp_wrap_buffer_reg[1]_0\(47) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_22\,
      \rresp_wrap_buffer_reg[1]_0\(46) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_23\,
      \rresp_wrap_buffer_reg[1]_0\(45) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_24\,
      \rresp_wrap_buffer_reg[1]_0\(44) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_25\,
      \rresp_wrap_buffer_reg[1]_0\(43) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_26\,
      \rresp_wrap_buffer_reg[1]_0\(42) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_27\,
      \rresp_wrap_buffer_reg[1]_0\(41) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_28\,
      \rresp_wrap_buffer_reg[1]_0\(40) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_29\,
      \rresp_wrap_buffer_reg[1]_0\(39) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_30\,
      \rresp_wrap_buffer_reg[1]_0\(38) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_31\,
      \rresp_wrap_buffer_reg[1]_0\(37) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_32\,
      \rresp_wrap_buffer_reg[1]_0\(36) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_33\,
      \rresp_wrap_buffer_reg[1]_0\(35) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_34\,
      \rresp_wrap_buffer_reg[1]_0\(34) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_35\,
      \rresp_wrap_buffer_reg[1]_0\(33) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_36\,
      \rresp_wrap_buffer_reg[1]_0\(32) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_37\,
      \rresp_wrap_buffer_reg[1]_0\(31) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_38\,
      \rresp_wrap_buffer_reg[1]_0\(30) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_39\,
      \rresp_wrap_buffer_reg[1]_0\(29) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_40\,
      \rresp_wrap_buffer_reg[1]_0\(28) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_41\,
      \rresp_wrap_buffer_reg[1]_0\(27) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_42\,
      \rresp_wrap_buffer_reg[1]_0\(26) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_43\,
      \rresp_wrap_buffer_reg[1]_0\(25) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_44\,
      \rresp_wrap_buffer_reg[1]_0\(24) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_45\,
      \rresp_wrap_buffer_reg[1]_0\(23) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_46\,
      \rresp_wrap_buffer_reg[1]_0\(22) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_47\,
      \rresp_wrap_buffer_reg[1]_0\(21) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_48\,
      \rresp_wrap_buffer_reg[1]_0\(20) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_49\,
      \rresp_wrap_buffer_reg[1]_0\(19) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_50\,
      \rresp_wrap_buffer_reg[1]_0\(18) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_51\,
      \rresp_wrap_buffer_reg[1]_0\(17) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_52\,
      \rresp_wrap_buffer_reg[1]_0\(16) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_53\,
      \rresp_wrap_buffer_reg[1]_0\(15) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_54\,
      \rresp_wrap_buffer_reg[1]_0\(14) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_55\,
      \rresp_wrap_buffer_reg[1]_0\(13) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_56\,
      \rresp_wrap_buffer_reg[1]_0\(12) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_57\,
      \rresp_wrap_buffer_reg[1]_0\(11) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_58\,
      \rresp_wrap_buffer_reg[1]_0\(10) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_59\,
      \rresp_wrap_buffer_reg[1]_0\(9) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_60\,
      \rresp_wrap_buffer_reg[1]_0\(8) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_61\,
      \rresp_wrap_buffer_reg[1]_0\(7) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_62\,
      \rresp_wrap_buffer_reg[1]_0\(6) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_63\,
      \rresp_wrap_buffer_reg[1]_0\(5) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_64\,
      \rresp_wrap_buffer_reg[1]_0\(4) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_65\,
      \rresp_wrap_buffer_reg[1]_0\(3) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_66\,
      \rresp_wrap_buffer_reg[1]_0\(2) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_67\,
      \rresp_wrap_buffer_reg[1]_0\(1) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_68\,
      \rresp_wrap_buffer_reg[1]_0\(0) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_69\,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      \sel_first_word__0\ => \sel_first_word__0\,
      use_wrap_buffer => use_wrap_buffer,
      use_wrap_buffer_reg_0 => \USE_READ.read_addr_inst_n_1\,
      use_wrap_buffer_reg_1 => \USE_READ.read_addr_inst_n_8\,
      use_wrap_buffer_reg_2 => \USE_READ.read_addr_inst_n_10\,
      wrap_buffer_available => wrap_buffer_available
    );
\USE_READ.read_addr_inst\: entity work.\design_1_auto_us_0_axi_dwidth_converter_v2_1_26_a_upsizer__parameterized0\
     port map (
      D(2 downto 0) => pre_next_word(2 downto 0),
      E(0) => p_15_in,
      \MULTIPLE_WORD.current_index\ => \MULTIPLE_WORD.current_index\,
      Q(5) => \USE_READ.rd_cmd_fix\,
      Q(4) => \USE_READ.rd_cmd_packed_wrap\,
      Q(3) => \USE_READ.read_addr_inst_n_4\,
      Q(2) => \USE_READ.read_addr_inst_n_5\,
      Q(1) => \USE_READ.read_addr_inst_n_6\,
      Q(0) => \USE_READ.read_addr_inst_n_7\,
      SR(0) => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_1\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]\ => \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[19]\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]\ => \USE_READ.read_addr_inst_n_1\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\ => \USE_READ.read_addr_inst_n_8\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\ => \USE_READ.read_addr_inst_n_10\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1\ => \USE_READ.read_addr_inst_n_14\,
      \USE_READ.rd_cmd_valid\ => \USE_READ.rd_cmd_valid\,
      \USE_RTL_LENGTH.first_mi_word_q\ => \USE_RTL_LENGTH.first_mi_word_q_0\,
      cmd_push_block_reg_0 => \USE_READ.read_addr_inst_n_24\,
      \current_word_1_reg[2]\(2 downto 0) => pre_next_word_1(2 downto 0),
      first_word => first_word,
      first_word_reg(2 downto 0) => current_word_1(2 downto 0),
      \in\(23) => cmd_fix_i,
      \in\(22) => cmd_modified_i,
      \in\(21) => si_register_slice_inst_n_101,
      \in\(20) => cmd_packed_wrap_i,
      \in\(19 downto 17) => cmd_first_word_i(2 downto 0),
      \in\(16 downto 14) => p_1_out(22 downto 20),
      \in\(13) => si_register_slice_inst_n_109,
      \in\(12) => p_1_out(18),
      \in\(11) => si_register_slice_inst_n_111,
      \in\(10) => si_register_slice_inst_n_112,
      \in\(9) => si_register_slice_inst_n_113,
      \in\(8) => si_register_slice_inst_n_114,
      \in\(7) => si_register_slice_inst_n_115,
      \in\(6) => si_register_slice_inst_n_116,
      \in\(5) => si_register_slice_inst_n_117,
      \in\(4) => si_register_slice_inst_n_118,
      \in\(3 downto 0) => \^m_axi_arlen\(3 downto 0),
      \last_beat__6\ => \last_beat__6\,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_arvalid_0(0) => sr_arvalid,
      mr_rvalid => mr_rvalid,
      \out\ => \out\,
      p_13_in => p_13_in,
      \pre_next_word_1_reg[2]\(2 downto 0) => next_word(2 downto 0),
      s_axi_aresetn => \USE_READ.read_addr_inst_n_22\,
      s_axi_rready => s_axi_rready,
      s_axi_rready_0(0) => \r.r_pipe/p_1_in\,
      s_axi_rvalid => s_axi_rvalid,
      s_ready_i_reg => m_valid_i_reg_inv,
      \sel_first_word__0\ => \sel_first_word__0\,
      use_wrap_buffer => use_wrap_buffer,
      wrap_buffer_available => wrap_buffer_available
    );
\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst\: entity work.design_1_auto_us_0_axi_dwidth_converter_v2_1_26_w_upsizer
     port map (
      D(2 downto 0) => pre_next_word_4(2 downto 0),
      E(0) => pop_si_data,
      Q(8) => \USE_WRITE.wr_cmd_fix\,
      Q(7) => \USE_WRITE.wr_cmd_packed_wrap\,
      Q(6) => \USE_WRITE.wr_cmd_first_word\(2),
      Q(5) => \USE_WRITE.wr_cmd_offset\(2),
      Q(4) => \USE_WRITE.write_addr_inst_n_8\,
      Q(3) => \USE_WRITE.write_addr_inst_n_9\,
      Q(2) => \USE_WRITE.write_addr_inst_n_10\,
      Q(1) => \USE_WRITE.write_addr_inst_n_11\,
      Q(0) => \USE_WRITE.write_addr_inst_n_12\,
      SR(0) => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_1\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_2\ => \USE_WRITE.write_addr_inst_n_25\,
      \USE_REGISTER.M_AXI_WVALID_q_reg_0\ => \^use_register.m_axi_wvalid_q_reg\,
      \USE_REGISTER.M_AXI_WVALID_q_reg_1\ => \USE_WRITE.write_addr_inst_n_36\,
      \USE_RTL_CURR_WORD.current_word_q_reg[2]_0\(2 downto 0) => \USE_RTL_CURR_WORD.current_word_q\(2 downto 0),
      \USE_RTL_CURR_WORD.current_word_q_reg[2]_1\(2 downto 0) => next_word_3(2 downto 0),
      \USE_RTL_CURR_WORD.first_word_q\ => \USE_RTL_CURR_WORD.first_word_q\,
      \USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_0\(2 downto 0) => \USE_RTL_CURR_WORD.pre_next_word_q\(2 downto 0),
      \USE_RTL_LENGTH.first_mi_word_q\ => \USE_RTL_LENGTH.first_mi_word_q\,
      \USE_RTL_LENGTH.first_mi_word_q_reg_0\ => \USE_WRITE.write_addr_inst_n_37\,
      \USE_RTL_LENGTH.length_counter_q_reg[0]_0\ => m_valid_i_reg_inv,
      \USE_RTL_LENGTH.length_counter_q_reg[1]_0\(1 downto 0) => \USE_RTL_LENGTH.length_counter_q_reg\(1 downto 0),
      \USE_RTL_LENGTH.length_counter_q_reg[1]_1\ => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_20\,
      \USE_RTL_LENGTH.length_counter_q_reg[1]_2\ => \USE_WRITE.write_addr_inst_n_3\,
      \USE_WRITE.wr_cmd_valid\ => \USE_WRITE.wr_cmd_valid\,
      \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0) => wstrb_wrap_buffer_q,
      \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1\(0) => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg0\,
      \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0\(0) => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg0\,
      \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0\(0) => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg0\,
      \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0\(0) => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg0\,
      \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0\(0) => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg0\,
      \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0\(0) => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg0\,
      \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0\(0) => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg0\,
      \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0\ => \USE_WRITE.write_addr_inst_n_13\,
      \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0\(0) => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg0\,
      m_axi_wdata(63 downto 0) => m_axi_wdata(63 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wready_0 => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_16\,
      m_axi_wstrb(7 downto 0) => m_axi_wstrb(7 downto 0),
      \out\ => \out\,
      p_79_in => p_79_in,
      p_89_in => p_89_in,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      \sel_first_word__0\ => \sel_first_word__0_1\,
      wrap_buffer_available => wrap_buffer_available_2,
      wrap_buffer_available_reg_0 => \USE_WRITE.write_addr_inst_n_35\
    );
\USE_WRITE.write_addr_inst\: entity work.design_1_auto_us_0_axi_dwidth_converter_v2_1_26_a_upsizer
     port map (
      D(2 downto 0) => pre_next_word_4(2 downto 0),
      E(0) => sr_awvalid,
      Q(8) => \USE_WRITE.wr_cmd_fix\,
      Q(7) => \USE_WRITE.wr_cmd_packed_wrap\,
      Q(6) => \USE_WRITE.wr_cmd_first_word\(2),
      Q(5) => \USE_WRITE.wr_cmd_offset\(2),
      Q(4) => \USE_WRITE.write_addr_inst_n_8\,
      Q(3) => \USE_WRITE.write_addr_inst_n_9\,
      Q(2) => \USE_WRITE.write_addr_inst_n_10\,
      Q(1) => \USE_WRITE.write_addr_inst_n_11\,
      Q(0) => \USE_WRITE.write_addr_inst_n_12\,
      SR(0) => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_1\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]\ => \USE_WRITE.write_addr_inst_n_25\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28]\ => \USE_WRITE.write_addr_inst_n_13\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\ => \USE_WRITE.write_addr_inst_n_36\,
      \USE_REGISTER.M_AXI_WVALID_q_reg\ => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_20\,
      \USE_REGISTER.M_AXI_WVALID_q_reg_0\ => \^use_register.m_axi_wvalid_q_reg\,
      \USE_RTL_CURR_WORD.current_word_q_reg[2]\(2 downto 0) => \USE_RTL_CURR_WORD.pre_next_word_q\(2 downto 0),
      \USE_RTL_CURR_WORD.first_word_q\ => \USE_RTL_CURR_WORD.first_word_q\,
      \USE_RTL_CURR_WORD.pre_next_word_q_reg[2]\(2 downto 0) => next_word_3(2 downto 0),
      \USE_RTL_LENGTH.first_mi_word_q\ => \USE_RTL_LENGTH.first_mi_word_q\,
      \USE_RTL_LENGTH.length_counter_q_reg[0]\ => \USE_WRITE.write_addr_inst_n_3\,
      \USE_RTL_LENGTH.length_counter_q_reg[1]\(1 downto 0) => \USE_RTL_LENGTH.length_counter_q_reg\(1 downto 0),
      \USE_RTL_LENGTH.length_counter_q_reg[1]_0\ => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_16\,
      \USE_WRITE.wr_cmd_valid\ => \USE_WRITE.wr_cmd_valid\,
      \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]\ => m_valid_i_reg_inv,
      \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(2 downto 0) => \USE_RTL_CURR_WORD.current_word_q\(2 downto 0),
      cmd_push_block_reg_0 => \USE_WRITE.write_addr_inst_n_34\,
      \in\(23) => cmd_fix_i_8,
      \in\(22) => si_register_slice_inst_n_5,
      \in\(21) => cmd_complete_wrap_i,
      \in\(20) => cmd_packed_wrap_i_7,
      \in\(19 downto 17) => cmd_first_word_i_6(2 downto 0),
      \in\(16 downto 11) => p_1_out_5(22 downto 17),
      \in\(10) => si_register_slice_inst_n_17,
      \in\(9) => si_register_slice_inst_n_18,
      \in\(8) => si_register_slice_inst_n_19,
      \in\(7) => si_register_slice_inst_n_20,
      \in\(6) => si_register_slice_inst_n_21,
      \in\(5) => si_register_slice_inst_n_22,
      \in\(4) => si_register_slice_inst_n_23,
      \in\(3 downto 0) => \^m_axi_awlen\(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_wready => m_axi_wready,
      \out\ => \out\,
      p_79_in => p_79_in,
      p_89_in => p_89_in,
      s_axi_aresetn => \USE_WRITE.write_addr_inst_n_32\,
      s_axi_wlast => s_axi_wlast,
      s_axi_wlast_0(0) => wstrb_wrap_buffer_q,
      s_axi_wlast_1 => \USE_WRITE.write_addr_inst_n_35\,
      s_axi_wlast_2 => \USE_WRITE.write_addr_inst_n_37\,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wvalid_0(0) => pop_si_data,
      \sel_first_word__0\ => \sel_first_word__0_1\,
      wrap_buffer_available => wrap_buffer_available_2,
      wrap_buffer_available_reg(0) => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg0\,
      wrap_buffer_available_reg_0(0) => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg0\,
      wrap_buffer_available_reg_1(0) => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg0\,
      wrap_buffer_available_reg_2(0) => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg0\,
      wrap_buffer_available_reg_3(0) => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wdata_wrap_buffer_q_reg0\,
      wrap_buffer_available_reg_4(0) => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wdata_wrap_buffer_q_reg0\,
      wrap_buffer_available_reg_5(0) => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wdata_wrap_buffer_q_reg0\,
      wrap_buffer_available_reg_6(0) => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wdata_wrap_buffer_q_reg0\
    );
si_register_slice_inst: entity work.\design_1_auto_us_0_axi_register_slice_v2_1_26_axi_register_slice__parameterized0\
     port map (
      D(85 downto 0) => D(85 downto 0),
      E(0) => sr_awvalid,
      Q(70 downto 0) => Q(70 downto 0),
      SR(0) => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_1\,
      \aresetn_d_reg[0]\ => si_register_slice_inst_n_1,
      \aresetn_d_reg[1]\ => si_register_slice_inst_n_0,
      \in\(23) => cmd_fix_i_8,
      \in\(22) => si_register_slice_inst_n_5,
      \in\(21) => cmd_complete_wrap_i,
      \in\(20) => cmd_packed_wrap_i_7,
      \in\(19 downto 17) => cmd_first_word_i_6(2 downto 0),
      \in\(16 downto 11) => p_1_out_5(22 downto 17),
      \in\(10) => si_register_slice_inst_n_17,
      \in\(9) => si_register_slice_inst_n_18,
      \in\(8) => si_register_slice_inst_n_19,
      \in\(7) => si_register_slice_inst_n_20,
      \in\(6) => si_register_slice_inst_n_21,
      \in\(5) => si_register_slice_inst_n_22,
      \in\(4) => si_register_slice_inst_n_23,
      \in\(3 downto 0) => \^m_axi_awlen\(3 downto 0),
      m_axi_araddr(63 downto 0) => m_axi_araddr(63 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_awaddr(5 downto 0) => m_axi_awaddr(5 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      \m_payload_i_reg[70]\(23) => cmd_fix_i,
      \m_payload_i_reg[70]\(22) => cmd_modified_i,
      \m_payload_i_reg[70]\(21) => si_register_slice_inst_n_101,
      \m_payload_i_reg[70]\(20) => cmd_packed_wrap_i,
      \m_payload_i_reg[70]\(19 downto 17) => cmd_first_word_i(2 downto 0),
      \m_payload_i_reg[70]\(16 downto 14) => p_1_out(22 downto 20),
      \m_payload_i_reg[70]\(13) => si_register_slice_inst_n_109,
      \m_payload_i_reg[70]\(12) => p_1_out(18),
      \m_payload_i_reg[70]\(11) => si_register_slice_inst_n_111,
      \m_payload_i_reg[70]\(10) => si_register_slice_inst_n_112,
      \m_payload_i_reg[70]\(9) => si_register_slice_inst_n_113,
      \m_payload_i_reg[70]\(8) => si_register_slice_inst_n_114,
      \m_payload_i_reg[70]\(7) => si_register_slice_inst_n_115,
      \m_payload_i_reg[70]\(6) => si_register_slice_inst_n_116,
      \m_payload_i_reg[70]\(5) => si_register_slice_inst_n_117,
      \m_payload_i_reg[70]\(4) => si_register_slice_inst_n_118,
      \m_payload_i_reg[70]\(3 downto 0) => \^m_axi_arlen\(3 downto 0),
      \m_payload_i_reg[86]\(12 downto 0) => \m_payload_i_reg[86]\(12 downto 0),
      \m_payload_i_reg[86]_0\(85 downto 0) => \m_payload_i_reg[86]_0\(85 downto 0),
      m_valid_i_reg_inv(0) => sr_arvalid,
      m_valid_i_reg_inv_0 => \USE_READ.read_addr_inst_n_24\,
      m_valid_i_reg_inv_1 => m_valid_i_reg_inv,
      m_valid_i_reg_inv_2 => \USE_WRITE.write_addr_inst_n_34\,
      \out\ => \out\,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_ready_i_reg => \USE_WRITE.write_addr_inst_n_32\,
      s_ready_i_reg_0 => \USE_READ.read_addr_inst_n_22\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is 64;
  attribute C_AXI_IS_ACLK_ASYNC : integer;
  attribute C_AXI_IS_ACLK_ASYNC of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is 0;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is 1;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is 1;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is "zynq";
  attribute C_FIFO_MODE : integer;
  attribute C_FIFO_MODE of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is 0;
  attribute C_MAX_SPLIT_BEATS : integer;
  attribute C_MAX_SPLIT_BEATS of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is 16;
  attribute C_M_AXI_ACLK_RATIO : integer;
  attribute C_M_AXI_ACLK_RATIO of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is 2;
  attribute C_M_AXI_BYTES_LOG : integer;
  attribute C_M_AXI_BYTES_LOG of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is 3;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is 64;
  attribute C_PACKING_LEVEL : integer;
  attribute C_PACKING_LEVEL of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is 1;
  attribute C_RATIO : integer;
  attribute C_RATIO of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is 0;
  attribute C_RATIO_LOG : integer;
  attribute C_RATIO_LOG of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is 0;
  attribute C_SUPPORTS_ID : integer;
  attribute C_SUPPORTS_ID of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is 3;
  attribute C_S_AXI_ACLK_RATIO : integer;
  attribute C_S_AXI_ACLK_RATIO of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is 1;
  attribute C_S_AXI_BYTES_LOG : integer;
  attribute C_S_AXI_BYTES_LOG of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is 2;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is 1;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is "axi_dwidth_converter_v2_1_26_top";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is 2;
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is 2;
  attribute P_MAX_SPLIT_BEATS : integer;
  attribute P_MAX_SPLIT_BEATS of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top : entity is 16;
end design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top;

architecture STRUCTURE of design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_bready\ : STD_LOGIC;
  attribute keep : string;
  attribute keep of m_axi_aclk : signal is "true";
  attribute keep of m_axi_aresetn : signal is "true";
  attribute keep of s_axi_aclk : signal is "true";
  attribute keep of s_axi_aresetn : signal is "true";
begin
  \^m_axi_bresp\(1 downto 0) <= m_axi_bresp(1 downto 0);
  \^m_axi_bvalid\ <= m_axi_bvalid;
  \^s_axi_bready\ <= s_axi_bready;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_bready <= \^s_axi_bready\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1 downto 0) <= \^m_axi_bresp\(1 downto 0);
  s_axi_bvalid <= \^m_axi_bvalid\;
  s_axi_rid(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_upsizer.gen_full_upsizer.axi_upsizer_inst\: entity work.design_1_auto_us_0_axi_dwidth_converter_v2_1_26_axi_upsizer
     port map (
      D(85 downto 82) => s_axi_awqos(3 downto 0),
      D(81 downto 80) => s_axi_awlock(1 downto 0),
      D(79 downto 76) => s_axi_awlen(3 downto 0),
      D(75 downto 72) => s_axi_awcache(3 downto 0),
      D(71 downto 70) => s_axi_awburst(1 downto 0),
      D(69 downto 67) => s_axi_awsize(2 downto 0),
      D(66 downto 64) => s_axi_awprot(2 downto 0),
      D(63 downto 0) => s_axi_awaddr(63 downto 0),
      Q(70 downto 67) => m_axi_awqos(3 downto 0),
      Q(66 downto 65) => m_axi_awlock(1 downto 0),
      Q(64 downto 61) => m_axi_awcache(3 downto 0),
      Q(60 downto 58) => m_axi_awprot(2 downto 0),
      Q(57 downto 0) => m_axi_awaddr(63 downto 6),
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]\ => s_axi_rlast,
      \USE_REGISTER.M_AXI_WVALID_q_reg\ => m_axi_wvalid,
      m_axi_araddr(63 downto 0) => m_axi_araddr(63 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arlen(3 downto 0) => m_axi_arlen(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(5 downto 0) => m_axi_awaddr(5 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awlen(3 downto 0) => m_axi_awlen(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(63 downto 0) => m_axi_wdata(63 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(7 downto 0) => m_axi_wstrb(7 downto 0),
      \m_payload_i_reg[86]\(12 downto 9) => m_axi_arqos(3 downto 0),
      \m_payload_i_reg[86]\(8 downto 7) => m_axi_arlock(1 downto 0),
      \m_payload_i_reg[86]\(6 downto 3) => m_axi_arcache(3 downto 0),
      \m_payload_i_reg[86]\(2 downto 0) => m_axi_arprot(2 downto 0),
      \m_payload_i_reg[86]_0\(85 downto 82) => s_axi_arqos(3 downto 0),
      \m_payload_i_reg[86]_0\(81 downto 80) => s_axi_arlock(1 downto 0),
      \m_payload_i_reg[86]_0\(79 downto 76) => s_axi_arlen(3 downto 0),
      \m_payload_i_reg[86]_0\(75 downto 72) => s_axi_arcache(3 downto 0),
      \m_payload_i_reg[86]_0\(71 downto 70) => s_axi_arburst(1 downto 0),
      \m_payload_i_reg[86]_0\(69 downto 67) => s_axi_arsize(2 downto 0),
      \m_payload_i_reg[86]_0\(66 downto 64) => s_axi_arprot(2 downto 0),
      \m_payload_i_reg[86]_0\(63 downto 0) => s_axi_araddr(63 downto 0),
      m_valid_i_reg_inv => s_axi_aresetn,
      \out\ => s_axi_aclk,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      s_ready_i_reg => m_axi_rready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_auto_us_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_auto_us_0 : entity is "design_1_auto_us_0,axi_dwidth_converter_v2_1_26_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_auto_us_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_auto_us_0 : entity is "axi_dwidth_converter_v2_1_26_top,Vivado 2022.1";
end design_1_auto_us_0;

architecture STRUCTURE of design_1_auto_us_0 is
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 64;
  attribute C_AXI_IS_ACLK_ASYNC : integer;
  attribute C_AXI_IS_ACLK_ASYNC of inst : label is 0;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 1;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of inst : label is 1;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynq";
  attribute C_FIFO_MODE : integer;
  attribute C_FIFO_MODE of inst : label is 0;
  attribute C_MAX_SPLIT_BEATS : integer;
  attribute C_MAX_SPLIT_BEATS of inst : label is 16;
  attribute C_M_AXI_ACLK_RATIO : integer;
  attribute C_M_AXI_ACLK_RATIO of inst : label is 2;
  attribute C_M_AXI_BYTES_LOG : integer;
  attribute C_M_AXI_BYTES_LOG of inst : label is 3;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of inst : label is 64;
  attribute C_PACKING_LEVEL : integer;
  attribute C_PACKING_LEVEL of inst : label is 1;
  attribute C_RATIO : integer;
  attribute C_RATIO of inst : label is 0;
  attribute C_RATIO_LOG : integer;
  attribute C_RATIO_LOG of inst : label is 0;
  attribute C_SUPPORTS_ID : integer;
  attribute C_SUPPORTS_ID of inst : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of inst : label is 3;
  attribute C_S_AXI_ACLK_RATIO : integer;
  attribute C_S_AXI_ACLK_RATIO of inst : label is 1;
  attribute C_S_AXI_BYTES_LOG : integer;
  attribute C_S_AXI_BYTES_LOG of inst : label is 2;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of inst : label is 1;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of inst : label is 2;
  attribute P_MAX_SPLIT_BEATS : integer;
  attribute P_MAX_SPLIT_BEATS of inst : label is 16;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 8, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 SI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME SI_CLK, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET S_AXI_ARESETN, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 SI_RST RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME SI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  attribute X_INTERFACE_INFO of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  attribute X_INTERFACE_INFO of m_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARQOS";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  attribute X_INTERFACE_INFO of m_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWQOS";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  attribute X_INTERFACE_INFO of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  attribute X_INTERFACE_INFO of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARQOS";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWQOS";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
inst: entity work.design_1_auto_us_0_axi_dwidth_converter_v2_1_26_top
     port map (
      m_axi_aclk => '0',
      m_axi_araddr(63 downto 0) => m_axi_araddr(63 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_aresetn => '0',
      m_axi_arlen(3 downto 0) => m_axi_arlen(3 downto 0),
      m_axi_arlock(1 downto 0) => m_axi_arlock(1 downto 0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(63 downto 0) => m_axi_awaddr(63 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awlen(3 downto 0) => m_axi_awlen(3 downto 0),
      m_axi_awlock(1 downto 0) => m_axi_awlock(1 downto 0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => NLW_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(63 downto 0) => m_axi_wdata(63 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(7 downto 0) => m_axi_wstrb(7 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(63 downto 0) => s_axi_araddr(63 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => '0',
      s_axi_arlen(3 downto 0) => s_axi_arlen(3 downto 0),
      s_axi_arlock(1 downto 0) => s_axi_arlock(1 downto 0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => s_axi_arqos(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(63 downto 0) => s_axi_awaddr(63 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(0) => '0',
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awlock(1 downto 0) => s_axi_awlock(1 downto 0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => NLW_inst_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => NLW_inst_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
