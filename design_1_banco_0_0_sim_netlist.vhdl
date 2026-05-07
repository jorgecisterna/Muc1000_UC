-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu May  7 00:34:05 2026
-- Host        : LAPTOP-OGSHLLCI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_banco_0_0 -prefix
--               design_1_banco_0_0_ design_1_banco_0_0_sim_netlist.vhdl
-- Design      : design_1_banco_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_banco_0_0_banco is
  port (
    bank_bet_valid : out STD_LOGIC;
    bank_response : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bank_bet_request : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rst : in STD_LOGIC;
    bank_game_result : in STD_LOGIC;
    bank_game_aviso : in STD_LOGIC;
    clk : in STD_LOGIC;
    bank_next_page : in STD_LOGIC
  );
end design_1_banco_0_0_banco;

architecture STRUCTURE of design_1_banco_0_0_banco is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \bank_bet_request_unsigned[3]_i_1_n_0\ : STD_LOGIC;
  signal \bank_bet_request_unsigned_reg_n_0_[0]\ : STD_LOGIC;
  signal \bank_bet_request_unsigned_reg_n_0_[1]\ : STD_LOGIC;
  signal \bank_bet_request_unsigned_reg_n_0_[2]\ : STD_LOGIC;
  signal \bank_bet_request_unsigned_reg_n_0_[3]\ : STD_LOGIC;
  signal bank_bet_valid0_carry_i_1_n_0 : STD_LOGIC;
  signal bank_bet_valid0_carry_i_2_n_0 : STD_LOGIC;
  signal bank_bet_valid0_carry_i_3_n_0 : STD_LOGIC;
  signal bank_bet_valid0_carry_i_4_n_0 : STD_LOGIC;
  signal bank_bet_valid0_carry_i_5_n_0 : STD_LOGIC;
  signal bank_bet_valid0_carry_i_6_n_0 : STD_LOGIC;
  signal bank_bet_valid0_carry_i_7_n_0 : STD_LOGIC;
  signal bank_bet_valid0_carry_i_8_n_0 : STD_LOGIC;
  signal bank_bet_valid0_carry_n_0 : STD_LOGIC;
  signal bank_bet_valid0_carry_n_1 : STD_LOGIC;
  signal bank_bet_valid0_carry_n_2 : STD_LOGIC;
  signal bank_bet_valid0_carry_n_3 : STD_LOGIC;
  signal bank_bet_valid_i_1_n_0 : STD_LOGIC;
  signal dinero : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dinero0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dinero_0 : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \NLW__inferred__2/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_bank_bet_valid0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "confirmar:010,idle:001,actualizar:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "confirmar:010,idle:001,actualizar:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "confirmar:010,idle:001,actualizar:100";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \_inferred__2/i__carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__2/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__2/i__carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__2/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of bank_bet_valid0_carry : label is 11;
  attribute METHODOLOGY_DRC_VIOS of bank_bet_valid0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of bank_bet_valid_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bank_response[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bank_response[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bank_response[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bank_response[3]_INST_0\ : label is "soft_lutpair2";
begin
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCDDEEFFCCC8EEEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bank_game_aviso,
      I3 => \FSM_onehot_state[2]_i_2_n_0\,
      I4 => bank_bet_valid0_carry_n_0,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => bank_game_aviso,
      I4 => \FSM_onehot_state[2]_i_2_n_0\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAE0004"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => bank_game_aviso,
      I3 => \FSM_onehot_state[2]_i_2_n_0\,
      I4 => bank_bet_valid0_carry_n_0,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => bank_bet_request(3),
      I2 => bank_bet_request(2),
      I3 => bank_bet_request(0),
      I4 => bank_bet_request(1),
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      PRE => rst,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
\_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__2/i__carry_n_0\,
      CO(2) => \_inferred__2/i__carry_n_1\,
      CO(1) => \_inferred__2/i__carry_n_2\,
      CO(0) => \_inferred__2/i__carry_n_3\,
      CYINIT => dinero(0),
      DI(3 downto 1) => dinero(3 downto 1),
      DI(0) => p_1_in,
      O(3 downto 0) => dinero0_in(3 downto 0),
      S(3) => \i__carry_i_2_n_0\,
      S(2) => \i__carry_i_3_n_0\,
      S(1) => \i__carry_i_4_n_0\,
      S(0) => \i__carry_i_5_n_0\
    );
\_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__2/i__carry_n_0\,
      CO(3) => \NLW__inferred__2/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => \_inferred__2/i__carry__0_n_1\,
      CO(1) => \_inferred__2/i__carry__0_n_2\,
      CO(0) => \_inferred__2/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 1) => dinero(5 downto 4),
      DI(0) => bank_game_result,
      O(3 downto 0) => dinero0_in(7 downto 4),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\bank_bet_request_unsigned[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0000"
    )
        port map (
      I0 => bank_bet_request(1),
      I1 => bank_bet_request(0),
      I2 => bank_bet_request(2),
      I3 => bank_bet_request(3),
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => rst,
      O => \bank_bet_request_unsigned[3]_i_1_n_0\
    );
\bank_bet_request_unsigned_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bank_bet_request_unsigned[3]_i_1_n_0\,
      D => bank_bet_request(0),
      Q => \bank_bet_request_unsigned_reg_n_0_[0]\,
      R => '0'
    );
\bank_bet_request_unsigned_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bank_bet_request_unsigned[3]_i_1_n_0\,
      D => bank_bet_request(1),
      Q => \bank_bet_request_unsigned_reg_n_0_[1]\,
      R => '0'
    );
\bank_bet_request_unsigned_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bank_bet_request_unsigned[3]_i_1_n_0\,
      D => bank_bet_request(2),
      Q => \bank_bet_request_unsigned_reg_n_0_[2]\,
      R => '0'
    );
\bank_bet_request_unsigned_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bank_bet_request_unsigned[3]_i_1_n_0\,
      D => bank_bet_request(3),
      Q => \bank_bet_request_unsigned_reg_n_0_[3]\,
      R => '0'
    );
bank_bet_valid0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => bank_bet_valid0_carry_n_0,
      CO(2) => bank_bet_valid0_carry_n_1,
      CO(1) => bank_bet_valid0_carry_n_2,
      CO(0) => bank_bet_valid0_carry_n_3,
      CYINIT => '1',
      DI(3) => bank_bet_valid0_carry_i_1_n_0,
      DI(2) => bank_bet_valid0_carry_i_2_n_0,
      DI(1) => bank_bet_valid0_carry_i_3_n_0,
      DI(0) => bank_bet_valid0_carry_i_4_n_0,
      O(3 downto 0) => NLW_bank_bet_valid0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => bank_bet_valid0_carry_i_5_n_0,
      S(2) => bank_bet_valid0_carry_i_6_n_0,
      S(1) => bank_bet_valid0_carry_i_7_n_0,
      S(0) => bank_bet_valid0_carry_i_8_n_0
    );
bank_bet_valid0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => dinero(6),
      I1 => dinero(7),
      O => bank_bet_valid0_carry_i_1_n_0
    );
bank_bet_valid0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => dinero(4),
      I1 => dinero(5),
      O => bank_bet_valid0_carry_i_2_n_0
    );
bank_bet_valid0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => dinero(2),
      I1 => \bank_bet_request_unsigned_reg_n_0_[2]\,
      I2 => \bank_bet_request_unsigned_reg_n_0_[3]\,
      I3 => dinero(3),
      O => bank_bet_valid0_carry_i_3_n_0
    );
bank_bet_valid0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => dinero(0),
      I1 => \bank_bet_request_unsigned_reg_n_0_[0]\,
      I2 => \bank_bet_request_unsigned_reg_n_0_[1]\,
      I3 => dinero(1),
      O => bank_bet_valid0_carry_i_4_n_0
    );
bank_bet_valid0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dinero(6),
      I1 => dinero(7),
      O => bank_bet_valid0_carry_i_5_n_0
    );
bank_bet_valid0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dinero(4),
      I1 => dinero(5),
      O => bank_bet_valid0_carry_i_6_n_0
    );
bank_bet_valid0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dinero(2),
      I1 => \bank_bet_request_unsigned_reg_n_0_[2]\,
      I2 => dinero(3),
      I3 => \bank_bet_request_unsigned_reg_n_0_[3]\,
      O => bank_bet_valid0_carry_i_7_n_0
    );
bank_bet_valid0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dinero(0),
      I1 => \bank_bet_request_unsigned_reg_n_0_[0]\,
      I2 => dinero(1),
      I3 => \bank_bet_request_unsigned_reg_n_0_[1]\,
      O => bank_bet_valid0_carry_i_8_n_0
    );
bank_bet_valid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => bank_bet_valid0_carry_n_0,
      O => bank_bet_valid_i_1_n_0
    );
bank_bet_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => bank_bet_valid_i_1_n_0,
      Q => bank_bet_valid
    );
\bank_response[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dinero(4),
      I1 => bank_next_page,
      I2 => dinero(0),
      O => bank_response(0)
    );
\bank_response[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dinero(5),
      I1 => bank_next_page,
      I2 => dinero(1),
      O => bank_response(1)
    );
\bank_response[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dinero(6),
      I1 => bank_next_page,
      I2 => dinero(2),
      O => bank_response(2)
    );
\bank_response[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dinero(7),
      I1 => bank_next_page,
      I2 => dinero(3),
      O => bank_response(3)
    );
\dinero[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => bank_game_aviso,
      O => dinero_0
    );
\dinero_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dinero_0,
      CLR => rst,
      D => dinero0_in(0),
      Q => dinero(0)
    );
\dinero_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dinero_0,
      CLR => rst,
      D => dinero0_in(1),
      Q => dinero(1)
    );
\dinero_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => dinero_0,
      D => dinero0_in(2),
      PRE => rst,
      Q => dinero(2)
    );
\dinero_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dinero_0,
      CLR => rst,
      D => dinero0_in(3),
      Q => dinero(3)
    );
\dinero_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dinero_0,
      CLR => rst,
      D => dinero0_in(4),
      Q => dinero(4)
    );
\dinero_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => dinero_0,
      D => dinero0_in(5),
      PRE => rst,
      Q => dinero(5)
    );
\dinero_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => dinero_0,
      D => dinero0_in(6),
      PRE => rst,
      Q => dinero(6)
    );
\dinero_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dinero_0,
      CLR => rst,
      D => dinero0_in(7),
      Q => dinero(7)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dinero(6),
      I1 => dinero(7),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dinero(5),
      I1 => dinero(6),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dinero(4),
      I1 => dinero(5),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dinero(4),
      I1 => bank_game_result,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bank_game_result,
      O => p_1_in
    );
\i__carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \bank_bet_request_unsigned_reg_n_0_[3]\,
      I1 => bank_game_result,
      I2 => dinero(3),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \bank_bet_request_unsigned_reg_n_0_[2]\,
      I1 => bank_game_result,
      I2 => dinero(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \bank_bet_request_unsigned_reg_n_0_[1]\,
      I1 => bank_game_result,
      I2 => dinero(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bank_bet_request_unsigned_reg_n_0_[0]\,
      O => \i__carry_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_banco_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    bank_game_result : in STD_LOGIC;
    bank_game_aviso : in STD_LOGIC;
    bank_bet_request : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bank_next_page : in STD_LOGIC;
    bank_response : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bank_bet_valid : out STD_LOGIC;
    bank_bet_ok : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_banco_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_banco_0_0 : entity is "design_1_banco_0_0,banco,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_banco_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_banco_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_banco_0_0 : entity is "banco,Vivado 2020.1";
end design_1_banco_0_0;

architecture STRUCTURE of design_1_banco_0_0 is
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset:rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  bank_bet_ok <= \<const1>\;
U0: entity work.design_1_banco_0_0_banco
     port map (
      bank_bet_request(3 downto 0) => bank_bet_request(3 downto 0),
      bank_bet_valid => bank_bet_valid,
      bank_game_aviso => bank_game_aviso,
      bank_game_result => bank_game_result,
      bank_next_page => bank_next_page,
      bank_response(3 downto 0) => bank_response(3 downto 0),
      clk => clk,
      rst => rst
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
