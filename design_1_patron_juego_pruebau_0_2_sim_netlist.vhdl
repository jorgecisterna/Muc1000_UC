-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Mon May  4 03:26:10 2026
-- Host        : PC_Felipe running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/feant/Vivado/Pro1_ava/Pro1_ava.srcs/sources_1/bd/design_1/ip/design_1_patron_juego_pruebau_0_2/design_1_patron_juego_pruebau_0_2_sim_netlist.vhdl
-- Design      : design_1_patron_juego_pruebau_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_patron_juego_pruebau_0_2_patron_juego is
  port (
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rgb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    wol : out STD_LOGIC;
    valid : out STD_LOGIC;
    rst : in STD_LOGIC;
    bt0 : in STD_LOGIC;
    start : in STD_LOGIC;
    clks : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    patron : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_patron_juego_pruebau_0_2_patron_juego : entity is "patron_juego";
end design_1_patron_juego_pruebau_0_2_patron_juego;

architecture STRUCTURE of design_1_patron_juego_pruebau_0_2_patron_juego is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal bt_prev : STD_LOGIC;
  signal bt_prev_i_1_n_0 : STD_LOGIC;
  signal \^leds\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \leds_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \leds_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \leds_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \leds_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \leds_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \leds_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \leds_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \leds_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \leds_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \leds_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \leds_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \leds_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \leds_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \leds_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \leds_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \leds_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal patron_reg : STD_LOGIC;
  signal \patron_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \patron_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \patron_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \patron_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \patron_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \patron_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \patron_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \patron_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \patron_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \patron_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \patron_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \patron_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \patron_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \patron_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \patron_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \patron_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \^rgb\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rgb_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \step[0]_i_1_n_0\ : STD_LOGIC;
  signal \step[1]_i_1_n_0\ : STD_LOGIC;
  signal \step[1]_i_2_n_0\ : STD_LOGIC;
  signal \step[1]_i_3_n_0\ : STD_LOGIC;
  signal \step[2]_i_1_n_0\ : STD_LOGIC;
  signal \step[2]_i_2_n_0\ : STD_LOGIC;
  signal \step[2]_i_3_n_0\ : STD_LOGIC;
  signal \step[2]_i_4_n_0\ : STD_LOGIC;
  signal \step_reg_n_0_[0]\ : STD_LOGIC;
  signal \step_reg_n_0_[1]\ : STD_LOGIC;
  signal \step_reg_n_0_[2]\ : STD_LOGIC;
  signal user_input : STD_LOGIC;
  signal user_input0 : STD_LOGIC;
  signal user_input04_out : STD_LOGIC;
  signal \^valid\ : STD_LOGIC;
  signal valid_i_1_n_0 : STD_LOGIC;
  signal valid_i_2_n_0 : STD_LOGIC;
  signal \vidas[0]_i_1_n_0\ : STD_LOGIC;
  signal \vidas[0]_i_2_n_0\ : STD_LOGIC;
  signal \vidas[0]_i_3_n_0\ : STD_LOGIC;
  signal \vidas[1]_i_1_n_0\ : STD_LOGIC;
  signal \vidas[1]_i_2_n_0\ : STD_LOGIC;
  signal \vidas_reg_n_0_[0]\ : STD_LOGIC;
  signal \vidas_reg_n_0_[1]\ : STD_LOGIC;
  signal \^wol\ : STD_LOGIC;
  signal wol_i_1_n_0 : STD_LOGIC;
  signal wol_i_2_n_0 : STD_LOGIC;
  signal wol_reg_i_1_n_0 : STD_LOGIC;
  signal wol_reg_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_4\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "wait_start:000,idle:001,res:101,win:100,show_result:011,lose:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "wait_start:000,idle:001,res:101,win:100,show_result:011,lose:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "wait_start:000,idle:001,res:101,win:100,show_result:011,lose:010";
  attribute SOFT_HLUTNM of \leds_reg[0]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \leds_reg[1]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \leds_reg[2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \leds_reg[2]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \leds_reg[3]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \leds_reg[3]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \leds_reg[3]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \leds_reg[3]_i_9\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \patron_reg[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \patron_reg[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \patron_reg[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \patron_reg[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \patron_reg[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \patron_reg[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \patron_reg[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \patron_reg[7]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rgb_reg[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rgb_reg[2]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \step[1]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \step[2]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \step[2]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \step[2]_i_4\ : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of user_input_reg : label is "LDP";
  attribute SOFT_HLUTNM of valid_i_2 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \vidas[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \vidas[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of wol_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of wol_reg_i_1 : label is "soft_lutpair6";
begin
  leds(3 downto 0) <= \^leds\(3 downto 0);
  rgb(2 downto 0) <= \^rgb\(2 downto 0);
  valid <= \^valid\;
  wol <= \^wol\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000EFFFF0F0F0000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \FSM_sequential_state[0]_i_2_n_0\,
      I2 => \FSM_sequential_state[0]_i_3_n_0\,
      I3 => \state__0\(2),
      I4 => \FSM_sequential_state[2]_i_3_n_0\,
      I5 => \state__0\(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBEBBBB8BB2B"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_4_n_0\,
      I1 => user_input,
      I2 => \leds_reg[3]_i_8_n_0\,
      I3 => \step_reg_n_0_[2]\,
      I4 => \leds_reg[3]_i_7_n_0\,
      I5 => \step[2]_i_4_n_0\,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000ED0000000000"
    )
        port map (
      I0 => \leds_reg[3]_i_8_n_0\,
      I1 => \step_reg_n_0_[2]\,
      I2 => \leds_reg[3]_i_7_n_0\,
      I3 => \vidas[0]_i_3_n_0\,
      I4 => \vidas_reg_n_0_[1]\,
      I5 => \vidas_reg_n_0_[0]\,
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \vidas_reg_n_0_[1]\,
      I1 => \vidas_reg_n_0_[0]\,
      O => \FSM_sequential_state[0]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF0400"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \FSM_sequential_state[2]_i_2_n_0\,
      I3 => \FSM_sequential_state[2]_i_3_n_0\,
      I4 => \state__0\(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF2C00"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[2]_i_3_n_0\,
      I4 => \state__0\(2),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200010000000"
    )
        port map (
      I0 => user_input,
      I1 => \step_reg_n_0_[2]\,
      I2 => \step_reg_n_0_[1]\,
      I3 => \step_reg_n_0_[0]\,
      I4 => \leds_reg[3]_i_7_n_0\,
      I5 => \leds_reg[3]_i_8_n_0\,
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0FC0FA0C0FCFFA"
    )
        port map (
      I0 => start,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \rgb_reg[2]_i_2_n_0\,
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bt0,
      I1 => bt_prev,
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clks,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0),
      R => rst
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clks,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1),
      R => rst
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clks,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => \state__0\(2),
      R => rst
    );
bt_prev_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => bt0,
      I1 => rst,
      I2 => bt_prev,
      O => bt_prev_i_1_n_0
    );
bt_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clks,
      CE => '1',
      D => bt_prev_i_1_n_0,
      Q => bt_prev,
      R => '0'
    );
\leds_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABABBBBAA8A8888"
    )
        port map (
      I0 => \leds_reg[3]_i_2_n_0\,
      I1 => \leds_reg[3]_i_3_n_0\,
      I2 => \leds_reg[2]_i_2_n_0\,
      I3 => \leds_reg[0]_i_2_n_0\,
      I4 => \leds_reg[3]_i_6_n_0\,
      I5 => \^leds\(0),
      O => \leds_reg[0]_i_1_n_0\
    );
\leds_reg[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \step_reg_n_0_[0]\,
      I1 => \step_reg_n_0_[1]\,
      I2 => \step_reg_n_0_[2]\,
      O => \leds_reg[0]_i_2_n_0\
    );
\leds_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABABBBBAA8A8888"
    )
        port map (
      I0 => \leds_reg[3]_i_2_n_0\,
      I1 => \leds_reg[3]_i_3_n_0\,
      I2 => \leds_reg[2]_i_2_n_0\,
      I3 => \leds_reg[1]_i_2_n_0\,
      I4 => \leds_reg[3]_i_6_n_0\,
      I5 => \^leds\(1),
      O => \leds_reg[1]_i_1_n_0\
    );
\leds_reg[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \step_reg_n_0_[0]\,
      I1 => \step_reg_n_0_[1]\,
      I2 => \step_reg_n_0_[2]\,
      O => \leds_reg[1]_i_2_n_0\
    );
\leds_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABABBBBAA8A8888"
    )
        port map (
      I0 => \leds_reg[3]_i_2_n_0\,
      I1 => \leds_reg[3]_i_3_n_0\,
      I2 => \leds_reg[2]_i_2_n_0\,
      I3 => \leds_reg[2]_i_3_n_0\,
      I4 => \leds_reg[3]_i_6_n_0\,
      I5 => \^leds\(2),
      O => \leds_reg[2]_i_1_n_0\
    );
\leds_reg[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0024"
    )
        port map (
      I0 => user_input,
      I1 => \leds_reg[3]_i_7_n_0\,
      I2 => \leds_reg[3]_i_8_n_0\,
      I3 => \step_reg_n_0_[2]\,
      O => \leds_reg[2]_i_2_n_0\
    );
\leds_reg[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \step_reg_n_0_[2]\,
      I1 => \step_reg_n_0_[1]\,
      I2 => \step_reg_n_0_[0]\,
      O => \leds_reg[2]_i_3_n_0\
    );
\leds_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABABBBBAA8A8888"
    )
        port map (
      I0 => \leds_reg[3]_i_2_n_0\,
      I1 => \leds_reg[3]_i_3_n_0\,
      I2 => \leds_reg[3]_i_4_n_0\,
      I3 => \leds_reg[3]_i_5_n_0\,
      I4 => \leds_reg[3]_i_6_n_0\,
      I5 => \^leds\(3),
      O => \leds_reg[3]_i_1_n_0\
    );
\leds_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000820FFFFFFFF"
    )
        port map (
      I0 => \vidas[0]_i_3_n_0\,
      I1 => user_input,
      I2 => \leds_reg[3]_i_7_n_0\,
      I3 => \leds_reg[3]_i_8_n_0\,
      I4 => \step_reg_n_0_[2]\,
      I5 => \leds_reg[3]_i_9_n_0\,
      O => \leds_reg[3]_i_2_n_0\
    );
\leds_reg[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => \leds_reg[3]_i_3_n_0\
    );
\leds_reg[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \step_reg_n_0_[2]\,
      I1 => \step_reg_n_0_[1]\,
      I2 => \step_reg_n_0_[0]\,
      O => \leds_reg[3]_i_4_n_0\
    );
\leds_reg[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDB"
    )
        port map (
      I0 => user_input,
      I1 => \leds_reg[3]_i_7_n_0\,
      I2 => \leds_reg[3]_i_8_n_0\,
      I3 => \step_reg_n_0_[2]\,
      O => \leds_reg[3]_i_5_n_0\
    );
\leds_reg[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001100000"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => sw(1),
      I3 => sw(0),
      I4 => bt0,
      I5 => bt_prev,
      O => \leds_reg[3]_i_6_n_0\
    );
\leds_reg[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3300550F33FF550F"
    )
        port map (
      I0 => \patron_reg_reg_n_0_[4]\,
      I1 => \patron_reg_reg_n_0_[6]\,
      I2 => \patron_reg_reg_n_0_[0]\,
      I3 => \step_reg_n_0_[1]\,
      I4 => \step_reg_n_0_[0]\,
      I5 => \patron_reg_reg_n_0_[2]\,
      O => \leds_reg[3]_i_7_n_0\
    );
\leds_reg[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3300550F33FF550F"
    )
        port map (
      I0 => \patron_reg_reg_n_0_[5]\,
      I1 => \patron_reg_reg_n_0_[7]\,
      I2 => \patron_reg_reg_n_0_[1]\,
      I3 => \step_reg_n_0_[1]\,
      I4 => \step_reg_n_0_[0]\,
      I5 => \patron_reg_reg_n_0_[3]\,
      O => \leds_reg[3]_i_8_n_0\
    );
\leds_reg[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      O => \leds_reg[3]_i_9_n_0\
    );
\leds_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clks,
      CE => '1',
      D => \leds_reg[0]_i_1_n_0\,
      Q => \^leds\(0),
      R => rst
    );
\leds_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clks,
      CE => '1',
      D => \leds_reg[1]_i_1_n_0\,
      Q => \^leds\(1),
      R => rst
    );
\leds_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clks,
      CE => '1',
      D => \leds_reg[2]_i_1_n_0\,
      Q => \^leds\(2),
      R => rst
    );
\leds_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clks,
      CE => '1',
      D => \leds_reg[3]_i_1_n_0\,
      Q => \^leds\(3),
      R => rst
    );
\patron_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => patron(0),
      I1 => sw(2),
      I2 => sw(3),
      O => \patron_reg[0]_i_1_n_0\
    );
\patron_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => patron(1),
      I1 => sw(2),
      I2 => sw(3),
      O => \patron_reg[1]_i_1_n_0\
    );
\patron_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => patron(2),
      I1 => sw(2),
      I2 => sw(3),
      O => \patron_reg[2]_i_1_n_0\
    );
\patron_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => patron(3),
      O => \patron_reg[3]_i_1_n_0\
    );
\patron_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => patron(4),
      I1 => sw(2),
      I2 => sw(3),
      O => \patron_reg[4]_i_1_n_0\
    );
\patron_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => patron(5),
      I1 => sw(2),
      I2 => sw(3),
      O => \patron_reg[5]_i_1_n_0\
    );
\patron_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => patron(6),
      I1 => sw(2),
      I2 => sw(3),
      O => \patron_reg[6]_i_1_n_0\
    );
\patron_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => start,
      I3 => \state__0\(0),
      O => patron_reg
    );
\patron_reg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => patron(7),
      O => \patron_reg[7]_i_2_n_0\
    );
\patron_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clks,
      CE => patron_reg,
      D => \patron_reg[0]_i_1_n_0\,
      Q => \patron_reg_reg_n_0_[0]\,
      R => rst
    );
\patron_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clks,
      CE => patron_reg,
      D => \patron_reg[1]_i_1_n_0\,
      Q => \patron_reg_reg_n_0_[1]\,
      R => rst
    );
\patron_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clks,
      CE => patron_reg,
      D => \patron_reg[2]_i_1_n_0\,
      Q => \patron_reg_reg_n_0_[2]\,
      R => rst
    );
\patron_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clks,
      CE => patron_reg,
      D => \patron_reg[3]_i_1_n_0\,
      Q => \patron_reg_reg_n_0_[3]\,
      R => rst
    );
\patron_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clks,
      CE => patron_reg,
      D => \patron_reg[4]_i_1_n_0\,
      Q => \patron_reg_reg_n_0_[4]\,
      R => rst
    );
\patron_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clks,
      CE => patron_reg,
      D => \patron_reg[5]_i_1_n_0\,
      Q => \patron_reg_reg_n_0_[5]\,
      R => rst
    );
\patron_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clks,
      CE => patron_reg,
      D => \patron_reg[6]_i_1_n_0\,
      Q => \patron_reg_reg_n_0_[6]\,
      R => rst
    );
\patron_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clks,
      CE => patron_reg,
      D => \patron_reg[7]_i_2_n_0\,
      Q => \patron_reg_reg_n_0_[7]\,
      R => rst
    );
\rgb_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEC00200"
    )
        port map (
      I0 => \rgb_reg[2]_i_2_n_0\,
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      I3 => \state__0\(0),
      I4 => \^rgb\(0),
      O => \rgb_reg[0]_i_1_n_0\
    );
\rgb_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FF0000040F00"
    )
        port map (
      I0 => \rgb_reg[2]_i_2_n_0\,
      I1 => \leds_reg[2]_i_2_n_0\,
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => \state__0\(0),
      I5 => \^rgb\(1),
      O => \rgb_reg[1]_i_1_n_0\
    );
\rgb_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4F0F0000400F0"
    )
        port map (
      I0 => \rgb_reg[2]_i_2_n_0\,
      I1 => \leds_reg[3]_i_5_n_0\,
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => \state__0\(0),
      I5 => \^rgb\(2),
      O => \rgb_reg[2]_i_1_n_0\
    );
\rgb_reg[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBBF"
    )
        port map (
      I0 => bt_prev,
      I1 => bt0,
      I2 => sw(0),
      I3 => sw(1),
      O => \rgb_reg[2]_i_2_n_0\
    );
\rgb_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clks,
      CE => '1',
      D => \rgb_reg[0]_i_1_n_0\,
      Q => \^rgb\(0),
      R => rst
    );
\rgb_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clks,
      CE => '1',
      D => \rgb_reg[1]_i_1_n_0\,
      Q => \^rgb\(1),
      R => rst
    );
\rgb_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clks,
      CE => '1',
      D => \rgb_reg[2]_i_1_n_0\,
      Q => \^rgb\(2),
      R => rst
    );
\step[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000F0310111010"
    )
        port map (
      I0 => \step[2]_i_2_n_0\,
      I1 => \leds_reg[3]_i_5_n_0\,
      I2 => patron_reg,
      I3 => \step[2]_i_3_n_0\,
      I4 => \leds_reg[3]_i_4_n_0\,
      I5 => \step_reg_n_0_[0]\,
      O => \step[0]_i_1_n_0\
    );
\step[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAAAFABA0AAA0A8"
    )
        port map (
      I0 => \step[1]_i_2_n_0\,
      I1 => \leds_reg[3]_i_5_n_0\,
      I2 => patron_reg,
      I3 => \step[2]_i_3_n_0\,
      I4 => \leds_reg[3]_i_4_n_0\,
      I5 => \step_reg_n_0_[1]\,
      O => \step[1]_i_1_n_0\
    );
\step[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200200"
    )
        port map (
      I0 => \step[1]_i_3_n_0\,
      I1 => \step[2]_i_2_n_0\,
      I2 => user_input,
      I3 => \leds_reg[3]_i_7_n_0\,
      I4 => \leds_reg[3]_i_8_n_0\,
      I5 => \step_reg_n_0_[2]\,
      O => \step[1]_i_2_n_0\
    );
\step[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \step_reg_n_0_[0]\,
      I1 => \step_reg_n_0_[1]\,
      O => \step[1]_i_3_n_0\
    );
\step[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F1100000F001010"
    )
        port map (
      I0 => \step[2]_i_2_n_0\,
      I1 => \leds_reg[3]_i_5_n_0\,
      I2 => patron_reg,
      I3 => \step[2]_i_3_n_0\,
      I4 => \step_reg_n_0_[2]\,
      I5 => \step[2]_i_4_n_0\,
      O => \step[2]_i_1_n_0\
    );
\step[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      O => \step[2]_i_2_n_0\
    );
\step[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \rgb_reg[2]_i_2_n_0\,
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => \step[2]_i_3_n_0\
    );
\step[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \step_reg_n_0_[0]\,
      I1 => \step_reg_n_0_[1]\,
      O => \step[2]_i_4_n_0\
    );
\step_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clks,
      CE => '1',
      D => \step[0]_i_1_n_0\,
      Q => \step_reg_n_0_[0]\,
      R => rst
    );
\step_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clks,
      CE => '1',
      D => \step[1]_i_1_n_0\,
      Q => \step_reg_n_0_[1]\,
      R => rst
    );
\step_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clks,
      CE => '1',
      D => \step[2]_i_1_n_0\,
      Q => \step_reg_n_0_[2]\,
      R => rst
    );
user_input_reg: unisim.vcomponents.LDPE
    generic map(
      INIT => '1'
    )
        port map (
      D => '0',
      G => user_input04_out,
      GE => '1',
      PRE => user_input0,
      Q => user_input
    );
user_input_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sw(1),
      I1 => sw(0),
      O => user_input04_out
    );
user_input_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sw(0),
      I1 => sw(1),
      O => user_input0
    );
valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF080000000800"
    )
        port map (
      I0 => valid_i_2_n_0,
      I1 => bt0,
      I2 => bt_prev,
      I3 => \state__0\(0),
      I4 => rst,
      I5 => \^valid\,
      O => valid_i_1_n_0
    );
valid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      O => valid_i_2_n_0
    );
valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clks,
      CE => '1',
      D => valid_i_1_n_0,
      Q => \^valid\,
      R => '0'
    );
\vidas[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAAAFAFE0EEE0E0"
    )
        port map (
      I0 => \vidas[0]_i_2_n_0\,
      I1 => \vidas[0]_i_3_n_0\,
      I2 => patron_reg,
      I3 => \step[2]_i_3_n_0\,
      I4 => \leds_reg[3]_i_5_n_0\,
      I5 => \vidas_reg_n_0_[0]\,
      O => \vidas[0]_i_1_n_0\
    );
\vidas[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \state__0\(1),
      I1 => start,
      I2 => \state__0\(0),
      O => \vidas[0]_i_2_n_0\
    );
\vidas[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      O => \vidas[0]_i_3_n_0\
    );
\vidas[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => \vidas[1]_i_2_n_0\,
      I1 => patron_reg,
      I2 => \step[2]_i_3_n_0\,
      I3 => \leds_reg[3]_i_5_n_0\,
      I4 => \vidas_reg_n_0_[1]\,
      O => \vidas[1]_i_1_n_0\
    );
\vidas[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C3AA"
    )
        port map (
      I0 => start,
      I1 => \vidas_reg_n_0_[0]\,
      I2 => \vidas_reg_n_0_[1]\,
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      O => \vidas[1]_i_2_n_0\
    );
\vidas_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clks,
      CE => '1',
      D => \vidas[0]_i_1_n_0\,
      Q => \vidas_reg_n_0_[0]\,
      S => rst
    );
\vidas_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clks,
      CE => '1',
      D => \vidas[1]_i_1_n_0\,
      Q => \vidas_reg_n_0_[1]\,
      S => rst
    );
wol_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2000"
    )
        port map (
      I0 => wol_reg_reg_n_0,
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      I3 => wol_i_2_n_0,
      I4 => \^wol\,
      O => wol_i_1_n_0
    );
wol_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100001010101"
    )
        port map (
      I0 => rst,
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      I3 => bt0,
      I4 => bt_prev,
      I5 => \state__0\(0),
      O => wol_i_2_n_0
    );
wol_reg: unisim.vcomponents.FDRE
     port map (
      C => clks,
      CE => '1',
      D => wol_i_1_n_0,
      Q => \^wol\,
      R => '0'
    );
wol_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EE04"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => wol_reg_reg_n_0,
      O => wol_reg_i_1_n_0
    );
wol_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clks,
      CE => '1',
      D => wol_reg_i_1_n_0,
      Q => wol_reg_reg_n_0,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_patron_juego_pruebau_0_2 is
  port (
    clks : in STD_LOGIC;
    rst : in STD_LOGIC;
    patron : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bt0 : in STD_LOGIC;
    start : in STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rgb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    wol : out STD_LOGIC;
    valid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_patron_juego_pruebau_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_patron_juego_pruebau_0_2 : entity is "design_1_patron_juego_pruebau_0_2,patron_juego,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_patron_juego_pruebau_0_2 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_patron_juego_pruebau_0_2 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_patron_juego_pruebau_0_2 : entity is "patron_juego,Vivado 2020.1";
end design_1_patron_juego_pruebau_0_2;

architecture STRUCTURE of design_1_patron_juego_pruebau_0_2 is
  attribute x_interface_info : string;
  attribute x_interface_info of clks : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clks : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_patron_juego_pruebau_0_2_patron_juego
     port map (
      bt0 => bt0,
      clks => clks,
      leds(3 downto 0) => leds(3 downto 0),
      patron(7 downto 0) => patron(7 downto 0),
      rgb(2 downto 0) => rgb(2 downto 0),
      rst => rst,
      start => start,
      sw(3 downto 0) => sw(3 downto 0),
      valid => valid,
      wol => wol
    );
end STRUCTURE;
