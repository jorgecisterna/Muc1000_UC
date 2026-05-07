-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sun May  3 23:19:19 2026
-- Host        : PC_Felipe running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/feant/Vivado/Pro1_ava/Pro1_ava.srcs/sources_1/bd/design_1/ip/design_1_arcade_fsm_0_0/design_1_arcade_fsm_0_0_sim_netlist.vhdl
-- Design      : design_1_arcade_fsm_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_arcade_fsm_0_0_arcade_fsm is
  port (
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    game_start_drei : out STD_LOGIC;
    bank_next_page : out STD_LOGIC;
    game_start_zwei : out STD_LOGIC;
    game_start_eins : out STD_LOGIC;
    bank_game_aviso : out STD_LOGIC;
    bank_game_result : out STD_LOGIC;
    bank_bet_request : out STD_LOGIC_VECTOR ( 3 downto 0 );
    btn3 : in STD_LOGIC;
    btn2 : in STD_LOGIC;
    btn1 : in STD_LOGIC;
    bank_response : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bank_bet_ok : in STD_LOGIC;
    btn0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    game_win : in STD_LOGIC;
    game_done : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bank_bet_valid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_arcade_fsm_0_0_arcade_fsm : entity is "arcade_fsm";
end design_1_arcade_fsm_0_0_arcade_fsm;

architecture STRUCTURE of design_1_arcade_fsm_0_0_arcade_fsm is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \game_selected[0]_i_1_n_0\ : STD_LOGIC;
  signal \game_selected[0]_i_2_n_0\ : STD_LOGIC;
  signal \game_selected[0]_i_3_n_0\ : STD_LOGIC;
  signal \game_selected[1]_i_1_n_0\ : STD_LOGIC;
  signal \game_selected[1]_i_2_n_0\ : STD_LOGIC;
  signal \game_selected[1]_i_3_n_0\ : STD_LOGIC;
  signal \game_selected_reg_n_0_[0]\ : STD_LOGIC;
  signal \game_selected_reg_n_0_[1]\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal win_reg0 : STD_LOGIC;
  signal win_reg_i_1_n_0 : STD_LOGIC;
  signal win_reg_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair9";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "wait_bank:011,wait_game:101,update_bank:110,bank_msb:001,send_bet:010,bank_lsb:000,start_game:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "wait_bank:011,wait_game:101,update_bank:110,bank_msb:001,send_bet:010,bank_lsb:000,start_game:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "wait_bank:011,wait_game:101,update_bank:110,bank_msb:001,send_bet:010,bank_lsb:000,start_game:100";
  attribute SOFT_HLUTNM of \bank_bet_request[0]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bank_bet_request[1]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bank_bet_request[2]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bank_bet_request[3]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of bank_game_aviso_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of bank_game_result_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of bank_next_page_INST_0 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \game_selected[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \game_selected[0]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \game_selected[1]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \game_selected[1]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of game_start_drei_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of game_start_eins_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of game_start_zwei_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \leds[0]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \leds[1]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \leds[2]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \leds[3]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of win_reg_i_2 : label is "soft_lutpair1";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF0FFC0000"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => btn0,
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => \FSM_sequential_state[2]_i_3_n_0\,
      I5 => \state__0\(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA550CFF00FF00"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \FSM_sequential_state[1]_i_2_n_0\,
      I2 => btn0,
      I3 => \state__0\(1),
      I4 => \state__0\(2),
      I5 => \FSM_sequential_state[2]_i_3_n_0\,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => btn1,
      I1 => btn3,
      I2 => btn2,
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFFFFFF80000000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => bank_bet_ok,
      I2 => \state__0\(1),
      I3 => \FSM_sequential_state[2]_i_2_n_0\,
      I4 => \FSM_sequential_state[2]_i_3_n_0\,
      I5 => \state__0\(2),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => btn0,
      I3 => btn2,
      I4 => btn3,
      I5 => btn1,
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75FF7577"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => game_done,
      I3 => \state__0\(2),
      I4 => bank_bet_valid,
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => \state__0\(2)
    );
\bank_bet_request[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => sw(0),
      O => bank_bet_request(0)
    );
\bank_bet_request[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => sw(1),
      O => bank_bet_request(1)
    );
\bank_bet_request[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => sw(2),
      O => bank_bet_request(2)
    );
\bank_bet_request[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => sw(3),
      O => bank_bet_request(3)
    );
bank_game_aviso_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => bank_game_aviso
    );
bank_game_result_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => win_reg_reg_n_0,
      I3 => \state__0\(1),
      O => bank_game_result
    );
bank_next_page_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => btn0,
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      O => bank_next_page
    );
\game_selected[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEFFE00022002"
    )
        port map (
      I0 => \game_selected[0]_i_2_n_0\,
      I1 => \game_selected[0]_i_3_n_0\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      I5 => \game_selected_reg_n_0_[0]\,
      O => \game_selected[0]_i_1_n_0\
    );
\game_selected[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => btn3,
      I1 => btn2,
      I2 => btn1,
      I3 => \state__0\(2),
      O => \game_selected[0]_i_2_n_0\
    );
\game_selected[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444445"
    )
        port map (
      I0 => \state__0\(2),
      I1 => btn0,
      I2 => btn1,
      I3 => btn3,
      I4 => btn2,
      O => \game_selected[0]_i_3_n_0\
    );
\game_selected[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00F300000002"
    )
        port map (
      I0 => \game_selected[1]_i_2_n_0\,
      I1 => btn1,
      I2 => btn0,
      I3 => \state__0\(2),
      I4 => \game_selected[1]_i_3_n_0\,
      I5 => \game_selected_reg_n_0_[1]\,
      O => \game_selected[1]_i_1_n_0\
    );
\game_selected[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => btn2,
      I1 => btn3,
      O => \game_selected[1]_i_2_n_0\
    );
\game_selected[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BC"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      O => \game_selected[1]_i_3_n_0\
    );
\game_selected_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \game_selected[0]_i_1_n_0\,
      Q => \game_selected_reg_n_0_[0]\
    );
\game_selected_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \game_selected[1]_i_1_n_0\,
      Q => \game_selected_reg_n_0_[1]\
    );
game_start_drei_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \game_selected_reg_n_0_[0]\,
      I3 => \game_selected_reg_n_0_[1]\,
      I4 => \state__0\(2),
      O => game_start_drei
    );
game_start_eins_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \game_selected_reg_n_0_[0]\,
      I3 => \game_selected_reg_n_0_[1]\,
      I4 => \state__0\(2),
      O => game_start_eins
    );
game_start_zwei_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \game_selected_reg_n_0_[1]\,
      I3 => \game_selected_reg_n_0_[0]\,
      I4 => \state__0\(2),
      O => game_start_zwei
    );
\leds[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => bank_response(0),
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      O => leds(0)
    );
\leds[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => bank_response(1),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      O => leds(1)
    );
\leds[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => bank_response(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      O => leds(2)
    );
\leds[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => bank_response(3),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      O => leds(3)
    );
win_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => game_win,
      I1 => win_reg0,
      I2 => win_reg_reg_n_0,
      O => win_reg_i_1_n_0
    );
win_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => game_done,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => rst,
      O => win_reg0
    );
win_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => win_reg_i_1_n_0,
      Q => win_reg_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_arcade_fsm_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    btn0 : in STD_LOGIC;
    btn1 : in STD_LOGIC;
    btn2 : in STD_LOGIC;
    btn3 : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bank_response : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bank_next_page : out STD_LOGIC;
    bank_bet_valid : in STD_LOGIC;
    bank_bet_ok : in STD_LOGIC;
    bank_bet_request : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bank_game_result : out STD_LOGIC;
    bank_game_aviso : out STD_LOGIC;
    game_done : in STD_LOGIC;
    game_win : in STD_LOGIC;
    game_start_eins : out STD_LOGIC;
    game_start_zwei : out STD_LOGIC;
    game_start_drei : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_arcade_fsm_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_arcade_fsm_0_0 : entity is "design_1_arcade_fsm_0_0,arcade_fsm,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_arcade_fsm_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_arcade_fsm_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_arcade_fsm_0_0 : entity is "arcade_fsm,Vivado 2020.1";
end design_1_arcade_fsm_0_0;

architecture STRUCTURE of design_1_arcade_fsm_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_arcade_fsm_0_0_arcade_fsm
     port map (
      bank_bet_ok => bank_bet_ok,
      bank_bet_request(3 downto 0) => bank_bet_request(3 downto 0),
      bank_bet_valid => bank_bet_valid,
      bank_game_aviso => bank_game_aviso,
      bank_game_result => bank_game_result,
      bank_next_page => bank_next_page,
      bank_response(3 downto 0) => bank_response(3 downto 0),
      btn0 => btn0,
      btn1 => btn1,
      btn2 => btn2,
      btn3 => btn3,
      clk => clk,
      game_done => game_done,
      game_start_drei => game_start_drei,
      game_start_eins => game_start_eins,
      game_start_zwei => game_start_zwei,
      game_win => game_win,
      leds(3 downto 0) => leds(3 downto 0),
      rst => rst,
      sw(3 downto 0) => sw(3 downto 0)
    );
end STRUCTURE;
