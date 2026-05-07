-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Mon May  4 03:26:10 2026
-- Host        : PC_Felipe running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/feant/Vivado/Pro1_ava/Pro1_ava.srcs/sources_1/bd/design_1/ip/design_1_penales_0_0/design_1_penales_0_0_sim_netlist.vhdl
-- Design      : design_1_penales_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_penales_0_0_penales is
  port (
    clk : in STD_LOGIC;
    ini : in STD_LOGIC;
    reset : in STD_LOGIC;
    jugar : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wol : out STD_LOGIC;
    update : out STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_penales_0_0_penales : entity is "penales";
end design_1_penales_0_0_penales;

architecture STRUCTURE of design_1_penales_0_0_penales is
  signal \FSM_sequential_state[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[2]_i_3_n_2\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[2]_i_3_n_3\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[2]_i_4_n_1\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[2]_i_4_n_2\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[2]_i_4_n_3\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[2]_i_8_n_1\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[2]_i_8_n_2\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[2]_i_8_n_3\ : STD_LOGIC;
  signal fin : STD_LOGIC;
  signal fin_juego_i_1_n_0 : STD_LOGIC;
  signal fin_juego_i_2_n_0 : STD_LOGIC;
  signal in7 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal in9 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal jugar_prev_i_1_n_0 : STD_LOGIC;
  signal jugar_prev_reg_n_0 : STD_LOGIC;
  signal \^leds\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \leds[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_10_n_1\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_10_n_2\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_10_n_3\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_19_n_1\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_19_n_2\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_19_n_3\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \leds[2]_INST_0_n_1\ : STD_LOGIC;
  signal \leds[2]_INST_0_n_2\ : STD_LOGIC;
  signal \leds[2]_INST_0_n_3\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_11_n_1\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_11_n_2\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_11_n_3\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_20_n_1\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_20_n_2\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_20_n_3\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_2_n_1\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_2_n_3\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \leds[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal leds_v1 : STD_LOGIC;
  signal lfsr : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \lfsr__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal puntaje_fpga0 : STD_LOGIC;
  signal \puntaje_fpga[31]_i_1_n_0\ : STD_LOGIC;
  signal \puntaje_fpga_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \puntaje_fpga_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \puntaje_fpga_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \puntaje_fpga_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \puntaje_fpga_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \puntaje_fpga_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \puntaje_fpga_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \puntaje_fpga_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \puntaje_fpga_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \puntaje_fpga_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \puntaje_fpga_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \puntaje_fpga_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \puntaje_fpga_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \puntaje_fpga_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \puntaje_fpga_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \puntaje_fpga_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \puntaje_fpga_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \puntaje_fpga_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \puntaje_fpga_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \puntaje_fpga_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \puntaje_fpga_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \puntaje_fpga_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \puntaje_fpga_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \puntaje_fpga_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \puntaje_fpga_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \puntaje_fpga_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \puntaje_fpga_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \puntaje_fpga_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \puntaje_fpga_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \puntaje_fpga_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[0]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[10]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[11]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[12]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[13]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[14]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[15]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[16]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[17]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[18]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[19]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[1]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[20]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[21]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[22]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[23]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[24]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[25]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[26]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[27]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[28]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[29]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[2]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[30]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[31]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[3]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[4]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[5]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[6]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[7]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[8]\ : STD_LOGIC;
  signal \puntaje_fpga_reg_n_0_[9]\ : STD_LOGIC;
  signal puntaje_usu0 : STD_LOGIC;
  signal \puntaje_usu_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \puntaje_usu_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \puntaje_usu_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \puntaje_usu_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \puntaje_usu_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \puntaje_usu_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \puntaje_usu_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \puntaje_usu_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \puntaje_usu_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \puntaje_usu_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \puntaje_usu_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \puntaje_usu_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \puntaje_usu_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \puntaje_usu_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \puntaje_usu_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \puntaje_usu_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \puntaje_usu_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \puntaje_usu_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \puntaje_usu_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \puntaje_usu_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \puntaje_usu_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \puntaje_usu_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \puntaje_usu_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \puntaje_usu_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \puntaje_usu_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \puntaje_usu_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \puntaje_usu_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \puntaje_usu_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \puntaje_usu_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \puntaje_usu_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[0]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[10]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[11]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[12]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[13]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[14]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[15]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[16]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[17]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[18]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[19]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[1]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[20]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[21]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[22]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[23]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[24]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[25]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[26]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[27]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[28]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[29]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[2]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[30]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[31]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[3]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[4]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[5]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[6]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[7]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[8]\ : STD_LOGIC;
  signal \puntaje_usu_reg_n_0_[9]\ : STD_LOGIC;
  signal res : STD_LOGIC;
  signal resul_i_1_n_0 : STD_LOGIC;
  signal resul_i_2_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal turno1 : STD_LOGIC;
  signal \turno[0]_i_1_n_0\ : STD_LOGIC;
  signal \turno[0]_i_2_n_0\ : STD_LOGIC;
  signal \turno[1]_i_1_n_0\ : STD_LOGIC;
  signal \turno[1]_i_2_n_0\ : STD_LOGIC;
  signal \turno[1]_i_3_n_0\ : STD_LOGIC;
  signal \turno[1]_i_4_n_0\ : STD_LOGIC;
  signal \turno_reg_n_0_[0]\ : STD_LOGIC;
  signal \turno_reg_n_0_[1]\ : STD_LOGIC;
  signal \^update\ : STD_LOGIC;
  signal update0 : STD_LOGIC;
  signal update_i_1_n_0 : STD_LOGIC;
  signal update_i_2_n_0 : STD_LOGIC;
  signal \^wol\ : STD_LOGIC;
  signal wol_i_1_n_0 : STD_LOGIC;
  signal \NLW_FSM_sequential_state_reg[2]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_FSM_sequential_state_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_sequential_state_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_sequential_state_reg[2]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_leds[2]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_leds[2]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_leds[2]_INST_0_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_leds[2]_INST_0_i_19_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_leds[3]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_leds[3]_INST_0_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_leds[3]_INST_0_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_leds[3]_INST_0_i_20_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_puntaje_fpga_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_puntaje_fpga_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_puntaje_usu_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_puntaje_usu_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "esp:000,generar:010,resultado:011,update_score:100,check_fin:101,idle:001,acep:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "esp:000,generar:010,resultado:011,update_score:100,check_fin:101,idle:001,acep:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "esp:000,generar:010,resultado:011,update_score:100,check_fin:101,idle:001,acep:110";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \leds[0]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \leds[1]_INST_0\ : label is "soft_lutpair2";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \leds[2]_INST_0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \leds[2]_INST_0_i_1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \leds[2]_INST_0_i_10\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \leds[2]_INST_0_i_19\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \leds[3]_INST_0_i_1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \leds[3]_INST_0_i_11\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \leds[3]_INST_0_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \leds[3]_INST_0_i_20\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \puntaje_fpga_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \puntaje_fpga_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \puntaje_fpga_reg[20]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \puntaje_fpga_reg[24]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \puntaje_fpga_reg[28]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \puntaje_fpga_reg[31]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \puntaje_fpga_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \puntaje_fpga_reg[8]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \puntaje_usu_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \puntaje_usu_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \puntaje_usu_reg[20]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \puntaje_usu_reg[24]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \puntaje_usu_reg[28]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \puntaje_usu_reg[31]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \puntaje_usu_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \puntaje_usu_reg[8]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \turno[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \turno[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \turno[1]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \turno[1]_i_4\ : label is "soft_lutpair0";
begin
  leds(3 downto 0) <= \^leds\(3 downto 0);
  update <= \^update\;
  wol <= \^wol\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"151D1D1D1D1D1D1D"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      I3 => \turno_reg_n_0_[1]\,
      I4 => \turno_reg_n_0_[0]\,
      I5 => turno1,
      O => \state__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FF80FF0000"
    )
        port map (
      I0 => turno1,
      I1 => \turno_reg_n_0_[0]\,
      I2 => \turno_reg_n_0_[1]\,
      I3 => state(2),
      I4 => state(0),
      I5 => state(1),
      O => \state__0\(1)
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C3C3F3CFE3EFE3E"
    )
        port map (
      I0 => ini,
      I1 => state(1),
      I2 => state(2),
      I3 => update_i_2_n_0,
      I4 => fin,
      I5 => state(0),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[19]\,
      I1 => \puntaje_usu_reg_n_0_[19]\,
      I2 => \puntaje_fpga_reg_n_0_[18]\,
      I3 => \puntaje_usu_reg_n_0_[18]\,
      I4 => \puntaje_usu_reg_n_0_[20]\,
      I5 => \puntaje_fpga_reg_n_0_[20]\,
      O => \FSM_sequential_state[2]_i_10_n_0\
    );
\FSM_sequential_state[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[15]\,
      I1 => \puntaje_usu_reg_n_0_[15]\,
      I2 => \puntaje_fpga_reg_n_0_[17]\,
      I3 => \puntaje_usu_reg_n_0_[17]\,
      I4 => \puntaje_usu_reg_n_0_[16]\,
      I5 => \puntaje_fpga_reg_n_0_[16]\,
      O => \FSM_sequential_state[2]_i_11_n_0\
    );
\FSM_sequential_state[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[13]\,
      I1 => \puntaje_usu_reg_n_0_[13]\,
      I2 => \puntaje_fpga_reg_n_0_[12]\,
      I3 => \puntaje_usu_reg_n_0_[12]\,
      I4 => \puntaje_usu_reg_n_0_[14]\,
      I5 => \puntaje_fpga_reg_n_0_[14]\,
      O => \FSM_sequential_state[2]_i_12_n_0\
    );
\FSM_sequential_state[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[9]\,
      I1 => \puntaje_usu_reg_n_0_[9]\,
      I2 => \puntaje_fpga_reg_n_0_[11]\,
      I3 => \puntaje_usu_reg_n_0_[11]\,
      I4 => \puntaje_usu_reg_n_0_[10]\,
      I5 => \puntaje_fpga_reg_n_0_[10]\,
      O => \FSM_sequential_state[2]_i_13_n_0\
    );
\FSM_sequential_state[2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[7]\,
      I1 => \puntaje_usu_reg_n_0_[7]\,
      I2 => \puntaje_fpga_reg_n_0_[6]\,
      I3 => \puntaje_usu_reg_n_0_[6]\,
      I4 => \puntaje_usu_reg_n_0_[8]\,
      I5 => \puntaje_fpga_reg_n_0_[8]\,
      O => \FSM_sequential_state[2]_i_14_n_0\
    );
\FSM_sequential_state[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[3]\,
      I1 => \puntaje_usu_reg_n_0_[3]\,
      I2 => \puntaje_fpga_reg_n_0_[5]\,
      I3 => \puntaje_usu_reg_n_0_[5]\,
      I4 => \puntaje_usu_reg_n_0_[4]\,
      I5 => \puntaje_fpga_reg_n_0_[4]\,
      O => \FSM_sequential_state[2]_i_15_n_0\
    );
\FSM_sequential_state[2]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[1]\,
      I1 => \puntaje_usu_reg_n_0_[1]\,
      I2 => \puntaje_fpga_reg_n_0_[0]\,
      I3 => \puntaje_usu_reg_n_0_[0]\,
      I4 => \puntaje_usu_reg_n_0_[2]\,
      I5 => \puntaje_fpga_reg_n_0_[2]\,
      O => \FSM_sequential_state[2]_i_16_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000080FFFF000000"
    )
        port map (
      I0 => turno1,
      I1 => \turno_reg_n_0_[0]\,
      I2 => \turno_reg_n_0_[1]\,
      I3 => state(0),
      I4 => state(1),
      I5 => state(2),
      O => \state__0\(2)
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[30]\,
      I1 => \puntaje_fpga_reg_n_0_[30]\,
      I2 => \puntaje_usu_reg_n_0_[31]\,
      I3 => \puntaje_fpga_reg_n_0_[31]\,
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[27]\,
      I1 => \puntaje_usu_reg_n_0_[27]\,
      I2 => \puntaje_fpga_reg_n_0_[29]\,
      I3 => \puntaje_usu_reg_n_0_[29]\,
      I4 => \puntaje_usu_reg_n_0_[28]\,
      I5 => \puntaje_fpga_reg_n_0_[28]\,
      O => \FSM_sequential_state[2]_i_6_n_0\
    );
\FSM_sequential_state[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[25]\,
      I1 => \puntaje_usu_reg_n_0_[25]\,
      I2 => \puntaje_fpga_reg_n_0_[24]\,
      I3 => \puntaje_usu_reg_n_0_[24]\,
      I4 => \puntaje_usu_reg_n_0_[26]\,
      I5 => \puntaje_fpga_reg_n_0_[26]\,
      O => \FSM_sequential_state[2]_i_7_n_0\
    );
\FSM_sequential_state[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[21]\,
      I1 => \puntaje_usu_reg_n_0_[21]\,
      I2 => \puntaje_fpga_reg_n_0_[23]\,
      I3 => \puntaje_usu_reg_n_0_[23]\,
      I4 => \puntaje_usu_reg_n_0_[22]\,
      I5 => \puntaje_fpga_reg_n_0_[22]\,
      O => \FSM_sequential_state[2]_i_9_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      CLR => reset,
      D => \state__0\(0),
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      CLR => reset,
      D => \state__0\(1),
      Q => state(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      CLR => reset,
      D => \state__0\(2),
      Q => state(2)
    );
\FSM_sequential_state_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \FSM_sequential_state_reg[2]_i_4_n_0\,
      CO(3) => \NLW_FSM_sequential_state_reg[2]_i_3_CO_UNCONNECTED\(3),
      CO(2) => turno1,
      CO(1) => \FSM_sequential_state_reg[2]_i_3_n_2\,
      CO(0) => \FSM_sequential_state_reg[2]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_FSM_sequential_state_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \FSM_sequential_state[2]_i_5_n_0\,
      S(1) => \FSM_sequential_state[2]_i_6_n_0\,
      S(0) => \FSM_sequential_state[2]_i_7_n_0\
    );
\FSM_sequential_state_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \FSM_sequential_state_reg[2]_i_8_n_0\,
      CO(3) => \FSM_sequential_state_reg[2]_i_4_n_0\,
      CO(2) => \FSM_sequential_state_reg[2]_i_4_n_1\,
      CO(1) => \FSM_sequential_state_reg[2]_i_4_n_2\,
      CO(0) => \FSM_sequential_state_reg[2]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_FSM_sequential_state_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_sequential_state[2]_i_9_n_0\,
      S(2) => \FSM_sequential_state[2]_i_10_n_0\,
      S(1) => \FSM_sequential_state[2]_i_11_n_0\,
      S(0) => \FSM_sequential_state[2]_i_12_n_0\
    );
\FSM_sequential_state_reg[2]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \FSM_sequential_state_reg[2]_i_8_n_0\,
      CO(2) => \FSM_sequential_state_reg[2]_i_8_n_1\,
      CO(1) => \FSM_sequential_state_reg[2]_i_8_n_2\,
      CO(0) => \FSM_sequential_state_reg[2]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_FSM_sequential_state_reg[2]_i_8_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_sequential_state[2]_i_13_n_0\,
      S(2) => \FSM_sequential_state[2]_i_14_n_0\,
      S(1) => \FSM_sequential_state[2]_i_15_n_0\,
      S(0) => \FSM_sequential_state[2]_i_16_n_0\
    );
fin_juego_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"404040FF40404000"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => turno1,
      I3 => fin_juego_i_2_n_0,
      I4 => \turno[1]_i_4_n_0\,
      I5 => fin,
      O => fin_juego_i_1_n_0
    );
fin_juego_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \turno[1]_i_3_n_0\,
      I1 => state(0),
      I2 => reset,
      I3 => turno1,
      I4 => \turno_reg_n_0_[0]\,
      I5 => \turno_reg_n_0_[1]\,
      O => fin_juego_i_2_n_0
    );
fin_juego_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => fin_juego_i_1_n_0,
      Q => fin,
      R => '0'
    );
jugar_prev_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BB88BB88B888"
    )
        port map (
      I0 => jugar_prev_reg_n_0,
      I1 => reset,
      I2 => state(1),
      I3 => jugar,
      I4 => state(2),
      I5 => state(0),
      O => jugar_prev_i_1_n_0
    );
jugar_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => jugar_prev_i_1_n_0,
      Q => jugar_prev_reg_n_0,
      R => '0'
    );
\leds[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fin,
      I1 => \turno_reg_n_0_[0]\,
      O => \^leds\(0)
    );
\leds[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => fin,
      I1 => \turno_reg_n_0_[0]\,
      O => \^leds\(1)
    );
\leds[2]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \leds[2]_INST_0_i_1_n_0\,
      CO(3) => \^leds\(2),
      CO(2) => \leds[2]_INST_0_n_1\,
      CO(1) => \leds[2]_INST_0_n_2\,
      CO(0) => \leds[2]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => \leds[2]_INST_0_i_2_n_0\,
      DI(2) => \leds[2]_INST_0_i_3_n_0\,
      DI(1) => \leds[2]_INST_0_i_4_n_0\,
      DI(0) => \leds[2]_INST_0_i_5_n_0\,
      O(3 downto 0) => \NLW_leds[2]_INST_0_O_UNCONNECTED\(3 downto 0),
      S(3) => \leds[2]_INST_0_i_6_n_0\,
      S(2) => \leds[2]_INST_0_i_7_n_0\,
      S(1) => \leds[2]_INST_0_i_8_n_0\,
      S(0) => \leds[2]_INST_0_i_9_n_0\
    );
\leds[2]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \leds[2]_INST_0_i_10_n_0\,
      CO(3) => \leds[2]_INST_0_i_1_n_0\,
      CO(2) => \leds[2]_INST_0_i_1_n_1\,
      CO(1) => \leds[2]_INST_0_i_1_n_2\,
      CO(0) => \leds[2]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \leds[2]_INST_0_i_11_n_0\,
      DI(2) => \leds[2]_INST_0_i_12_n_0\,
      DI(1) => \leds[2]_INST_0_i_13_n_0\,
      DI(0) => \leds[2]_INST_0_i_14_n_0\,
      O(3 downto 0) => \NLW_leds[2]_INST_0_i_1_O_UNCONNECTED\(3 downto 0),
      S(3) => \leds[2]_INST_0_i_15_n_0\,
      S(2) => \leds[2]_INST_0_i_16_n_0\,
      S(1) => \leds[2]_INST_0_i_17_n_0\,
      S(0) => \leds[2]_INST_0_i_18_n_0\
    );
\leds[2]_INST_0_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \leds[2]_INST_0_i_19_n_0\,
      CO(3) => \leds[2]_INST_0_i_10_n_0\,
      CO(2) => \leds[2]_INST_0_i_10_n_1\,
      CO(1) => \leds[2]_INST_0_i_10_n_2\,
      CO(0) => \leds[2]_INST_0_i_10_n_3\,
      CYINIT => '0',
      DI(3) => \leds[2]_INST_0_i_20_n_0\,
      DI(2) => \leds[2]_INST_0_i_21_n_0\,
      DI(1) => \leds[2]_INST_0_i_22_n_0\,
      DI(0) => \leds[2]_INST_0_i_23_n_0\,
      O(3 downto 0) => \NLW_leds[2]_INST_0_i_10_O_UNCONNECTED\(3 downto 0),
      S(3) => \leds[2]_INST_0_i_24_n_0\,
      S(2) => \leds[2]_INST_0_i_25_n_0\,
      S(1) => \leds[2]_INST_0_i_26_n_0\,
      S(0) => \leds[2]_INST_0_i_27_n_0\
    );
\leds[2]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[22]\,
      I1 => \puntaje_usu_reg_n_0_[22]\,
      I2 => \puntaje_fpga_reg_n_0_[23]\,
      I3 => \puntaje_usu_reg_n_0_[23]\,
      O => \leds[2]_INST_0_i_11_n_0\
    );
\leds[2]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[20]\,
      I1 => \puntaje_usu_reg_n_0_[20]\,
      I2 => \puntaje_fpga_reg_n_0_[21]\,
      I3 => \puntaje_usu_reg_n_0_[21]\,
      O => \leds[2]_INST_0_i_12_n_0\
    );
\leds[2]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[18]\,
      I1 => \puntaje_usu_reg_n_0_[18]\,
      I2 => \puntaje_fpga_reg_n_0_[19]\,
      I3 => \puntaje_usu_reg_n_0_[19]\,
      O => \leds[2]_INST_0_i_13_n_0\
    );
\leds[2]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[16]\,
      I1 => \puntaje_usu_reg_n_0_[16]\,
      I2 => \puntaje_fpga_reg_n_0_[17]\,
      I3 => \puntaje_usu_reg_n_0_[17]\,
      O => \leds[2]_INST_0_i_14_n_0\
    );
\leds[2]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[22]\,
      I1 => \puntaje_fpga_reg_n_0_[22]\,
      I2 => \puntaje_usu_reg_n_0_[23]\,
      I3 => \puntaje_fpga_reg_n_0_[23]\,
      O => \leds[2]_INST_0_i_15_n_0\
    );
\leds[2]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[21]\,
      I1 => \puntaje_fpga_reg_n_0_[21]\,
      I2 => \puntaje_usu_reg_n_0_[20]\,
      I3 => \puntaje_fpga_reg_n_0_[20]\,
      O => \leds[2]_INST_0_i_16_n_0\
    );
\leds[2]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[18]\,
      I1 => \puntaje_fpga_reg_n_0_[18]\,
      I2 => \puntaje_usu_reg_n_0_[19]\,
      I3 => \puntaje_fpga_reg_n_0_[19]\,
      O => \leds[2]_INST_0_i_17_n_0\
    );
\leds[2]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[16]\,
      I1 => \puntaje_fpga_reg_n_0_[16]\,
      I2 => \puntaje_usu_reg_n_0_[17]\,
      I3 => \puntaje_fpga_reg_n_0_[17]\,
      O => \leds[2]_INST_0_i_18_n_0\
    );
\leds[2]_INST_0_i_19\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \leds[2]_INST_0_i_19_n_0\,
      CO(2) => \leds[2]_INST_0_i_19_n_1\,
      CO(1) => \leds[2]_INST_0_i_19_n_2\,
      CO(0) => \leds[2]_INST_0_i_19_n_3\,
      CYINIT => '0',
      DI(3) => \leds[2]_INST_0_i_28_n_0\,
      DI(2) => \leds[2]_INST_0_i_29_n_0\,
      DI(1) => \leds[2]_INST_0_i_30_n_0\,
      DI(0) => \leds[2]_INST_0_i_31_n_0\,
      O(3 downto 0) => \NLW_leds[2]_INST_0_i_19_O_UNCONNECTED\(3 downto 0),
      S(3) => \leds[2]_INST_0_i_32_n_0\,
      S(2) => \leds[2]_INST_0_i_33_n_0\,
      S(1) => \leds[2]_INST_0_i_34_n_0\,
      S(0) => \leds[2]_INST_0_i_35_n_0\
    );
\leds[2]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[30]\,
      I1 => \puntaje_usu_reg_n_0_[30]\,
      I2 => \puntaje_usu_reg_n_0_[31]\,
      I3 => \puntaje_fpga_reg_n_0_[31]\,
      O => \leds[2]_INST_0_i_2_n_0\
    );
\leds[2]_INST_0_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[14]\,
      I1 => \puntaje_usu_reg_n_0_[14]\,
      I2 => \puntaje_fpga_reg_n_0_[15]\,
      I3 => \puntaje_usu_reg_n_0_[15]\,
      O => \leds[2]_INST_0_i_20_n_0\
    );
\leds[2]_INST_0_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[12]\,
      I1 => \puntaje_usu_reg_n_0_[12]\,
      I2 => \puntaje_fpga_reg_n_0_[13]\,
      I3 => \puntaje_usu_reg_n_0_[13]\,
      O => \leds[2]_INST_0_i_21_n_0\
    );
\leds[2]_INST_0_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[10]\,
      I1 => \puntaje_usu_reg_n_0_[10]\,
      I2 => \puntaje_fpga_reg_n_0_[11]\,
      I3 => \puntaje_usu_reg_n_0_[11]\,
      O => \leds[2]_INST_0_i_22_n_0\
    );
\leds[2]_INST_0_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[8]\,
      I1 => \puntaje_usu_reg_n_0_[8]\,
      I2 => \puntaje_fpga_reg_n_0_[9]\,
      I3 => \puntaje_usu_reg_n_0_[9]\,
      O => \leds[2]_INST_0_i_23_n_0\
    );
\leds[2]_INST_0_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[15]\,
      I1 => \puntaje_fpga_reg_n_0_[15]\,
      I2 => \puntaje_usu_reg_n_0_[14]\,
      I3 => \puntaje_fpga_reg_n_0_[14]\,
      O => \leds[2]_INST_0_i_24_n_0\
    );
\leds[2]_INST_0_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[12]\,
      I1 => \puntaje_fpga_reg_n_0_[12]\,
      I2 => \puntaje_usu_reg_n_0_[13]\,
      I3 => \puntaje_fpga_reg_n_0_[13]\,
      O => \leds[2]_INST_0_i_25_n_0\
    );
\leds[2]_INST_0_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[10]\,
      I1 => \puntaje_fpga_reg_n_0_[10]\,
      I2 => \puntaje_usu_reg_n_0_[11]\,
      I3 => \puntaje_fpga_reg_n_0_[11]\,
      O => \leds[2]_INST_0_i_26_n_0\
    );
\leds[2]_INST_0_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[9]\,
      I1 => \puntaje_fpga_reg_n_0_[9]\,
      I2 => \puntaje_usu_reg_n_0_[8]\,
      I3 => \puntaje_fpga_reg_n_0_[8]\,
      O => \leds[2]_INST_0_i_27_n_0\
    );
\leds[2]_INST_0_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[6]\,
      I1 => \puntaje_usu_reg_n_0_[6]\,
      I2 => \puntaje_fpga_reg_n_0_[7]\,
      I3 => \puntaje_usu_reg_n_0_[7]\,
      O => \leds[2]_INST_0_i_28_n_0\
    );
\leds[2]_INST_0_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[4]\,
      I1 => \puntaje_usu_reg_n_0_[4]\,
      I2 => \puntaje_fpga_reg_n_0_[5]\,
      I3 => \puntaje_usu_reg_n_0_[5]\,
      O => \leds[2]_INST_0_i_29_n_0\
    );
\leds[2]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[28]\,
      I1 => \puntaje_usu_reg_n_0_[28]\,
      I2 => \puntaje_fpga_reg_n_0_[29]\,
      I3 => \puntaje_usu_reg_n_0_[29]\,
      O => \leds[2]_INST_0_i_3_n_0\
    );
\leds[2]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[2]\,
      I1 => \puntaje_usu_reg_n_0_[2]\,
      I2 => \puntaje_fpga_reg_n_0_[3]\,
      I3 => \puntaje_usu_reg_n_0_[3]\,
      O => \leds[2]_INST_0_i_30_n_0\
    );
\leds[2]_INST_0_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[0]\,
      I1 => \puntaje_usu_reg_n_0_[0]\,
      I2 => \puntaje_fpga_reg_n_0_[1]\,
      I3 => \puntaje_usu_reg_n_0_[1]\,
      O => \leds[2]_INST_0_i_31_n_0\
    );
\leds[2]_INST_0_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[6]\,
      I1 => \puntaje_fpga_reg_n_0_[6]\,
      I2 => \puntaje_usu_reg_n_0_[7]\,
      I3 => \puntaje_fpga_reg_n_0_[7]\,
      O => \leds[2]_INST_0_i_32_n_0\
    );
\leds[2]_INST_0_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[4]\,
      I1 => \puntaje_fpga_reg_n_0_[4]\,
      I2 => \puntaje_usu_reg_n_0_[5]\,
      I3 => \puntaje_fpga_reg_n_0_[5]\,
      O => \leds[2]_INST_0_i_33_n_0\
    );
\leds[2]_INST_0_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[3]\,
      I1 => \puntaje_fpga_reg_n_0_[3]\,
      I2 => \puntaje_usu_reg_n_0_[2]\,
      I3 => \puntaje_fpga_reg_n_0_[2]\,
      O => \leds[2]_INST_0_i_34_n_0\
    );
\leds[2]_INST_0_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[0]\,
      I1 => \puntaje_fpga_reg_n_0_[0]\,
      I2 => \puntaje_usu_reg_n_0_[1]\,
      I3 => \puntaje_fpga_reg_n_0_[1]\,
      O => \leds[2]_INST_0_i_35_n_0\
    );
\leds[2]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[26]\,
      I1 => \puntaje_usu_reg_n_0_[26]\,
      I2 => \puntaje_fpga_reg_n_0_[27]\,
      I3 => \puntaje_usu_reg_n_0_[27]\,
      O => \leds[2]_INST_0_i_4_n_0\
    );
\leds[2]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[24]\,
      I1 => \puntaje_usu_reg_n_0_[24]\,
      I2 => \puntaje_fpga_reg_n_0_[25]\,
      I3 => \puntaje_usu_reg_n_0_[25]\,
      O => \leds[2]_INST_0_i_5_n_0\
    );
\leds[2]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[30]\,
      I1 => \puntaje_fpga_reg_n_0_[30]\,
      I2 => \puntaje_usu_reg_n_0_[31]\,
      I3 => \puntaje_fpga_reg_n_0_[31]\,
      O => \leds[2]_INST_0_i_6_n_0\
    );
\leds[2]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[28]\,
      I1 => \puntaje_fpga_reg_n_0_[28]\,
      I2 => \puntaje_usu_reg_n_0_[29]\,
      I3 => \puntaje_fpga_reg_n_0_[29]\,
      O => \leds[2]_INST_0_i_7_n_0\
    );
\leds[2]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[27]\,
      I1 => \puntaje_fpga_reg_n_0_[27]\,
      I2 => \puntaje_usu_reg_n_0_[26]\,
      I3 => \puntaje_fpga_reg_n_0_[26]\,
      O => \leds[2]_INST_0_i_8_n_0\
    );
\leds[2]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[24]\,
      I1 => \puntaje_fpga_reg_n_0_[24]\,
      I2 => \puntaje_usu_reg_n_0_[25]\,
      I3 => \puntaje_fpga_reg_n_0_[25]\,
      O => \leds[2]_INST_0_i_9_n_0\
    );
\leds[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => leds_v1,
      I1 => \^leds\(2),
      O => \^leds\(3)
    );
\leds[3]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \leds[3]_INST_0_i_2_n_0\,
      CO(3) => leds_v1,
      CO(2) => \leds[3]_INST_0_i_1_n_1\,
      CO(1) => \leds[3]_INST_0_i_1_n_2\,
      CO(0) => \leds[3]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \leds[3]_INST_0_i_3_n_0\,
      DI(2) => \leds[3]_INST_0_i_4_n_0\,
      DI(1) => \leds[3]_INST_0_i_5_n_0\,
      DI(0) => \leds[3]_INST_0_i_6_n_0\,
      O(3 downto 0) => \NLW_leds[3]_INST_0_i_1_O_UNCONNECTED\(3 downto 0),
      S(3) => \leds[3]_INST_0_i_7_n_0\,
      S(2) => \leds[3]_INST_0_i_8_n_0\,
      S(1) => \leds[3]_INST_0_i_9_n_0\,
      S(0) => \leds[3]_INST_0_i_10_n_0\
    );
\leds[3]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[24]\,
      I1 => \puntaje_fpga_reg_n_0_[24]\,
      I2 => \puntaje_usu_reg_n_0_[25]\,
      I3 => \puntaje_fpga_reg_n_0_[25]\,
      O => \leds[3]_INST_0_i_10_n_0\
    );
\leds[3]_INST_0_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \leds[3]_INST_0_i_20_n_0\,
      CO(3) => \leds[3]_INST_0_i_11_n_0\,
      CO(2) => \leds[3]_INST_0_i_11_n_1\,
      CO(1) => \leds[3]_INST_0_i_11_n_2\,
      CO(0) => \leds[3]_INST_0_i_11_n_3\,
      CYINIT => '0',
      DI(3) => \leds[3]_INST_0_i_21_n_0\,
      DI(2) => \leds[3]_INST_0_i_22_n_0\,
      DI(1) => \leds[3]_INST_0_i_23_n_0\,
      DI(0) => \leds[3]_INST_0_i_24_n_0\,
      O(3 downto 0) => \NLW_leds[3]_INST_0_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \leds[3]_INST_0_i_25_n_0\,
      S(2) => \leds[3]_INST_0_i_26_n_0\,
      S(1) => \leds[3]_INST_0_i_27_n_0\,
      S(0) => \leds[3]_INST_0_i_28_n_0\
    );
\leds[3]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[22]\,
      I1 => \puntaje_fpga_reg_n_0_[22]\,
      I2 => \puntaje_usu_reg_n_0_[23]\,
      I3 => \puntaje_fpga_reg_n_0_[23]\,
      O => \leds[3]_INST_0_i_12_n_0\
    );
\leds[3]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[20]\,
      I1 => \puntaje_fpga_reg_n_0_[20]\,
      I2 => \puntaje_usu_reg_n_0_[21]\,
      I3 => \puntaje_fpga_reg_n_0_[21]\,
      O => \leds[3]_INST_0_i_13_n_0\
    );
\leds[3]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[18]\,
      I1 => \puntaje_fpga_reg_n_0_[18]\,
      I2 => \puntaje_usu_reg_n_0_[19]\,
      I3 => \puntaje_fpga_reg_n_0_[19]\,
      O => \leds[3]_INST_0_i_14_n_0\
    );
\leds[3]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[16]\,
      I1 => \puntaje_fpga_reg_n_0_[16]\,
      I2 => \puntaje_usu_reg_n_0_[17]\,
      I3 => \puntaje_fpga_reg_n_0_[17]\,
      O => \leds[3]_INST_0_i_15_n_0\
    );
\leds[3]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[22]\,
      I1 => \puntaje_fpga_reg_n_0_[22]\,
      I2 => \puntaje_usu_reg_n_0_[23]\,
      I3 => \puntaje_fpga_reg_n_0_[23]\,
      O => \leds[3]_INST_0_i_16_n_0\
    );
\leds[3]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[21]\,
      I1 => \puntaje_fpga_reg_n_0_[21]\,
      I2 => \puntaje_usu_reg_n_0_[20]\,
      I3 => \puntaje_fpga_reg_n_0_[20]\,
      O => \leds[3]_INST_0_i_17_n_0\
    );
\leds[3]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[18]\,
      I1 => \puntaje_fpga_reg_n_0_[18]\,
      I2 => \puntaje_usu_reg_n_0_[19]\,
      I3 => \puntaje_fpga_reg_n_0_[19]\,
      O => \leds[3]_INST_0_i_18_n_0\
    );
\leds[3]_INST_0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[16]\,
      I1 => \puntaje_fpga_reg_n_0_[16]\,
      I2 => \puntaje_usu_reg_n_0_[17]\,
      I3 => \puntaje_fpga_reg_n_0_[17]\,
      O => \leds[3]_INST_0_i_19_n_0\
    );
\leds[3]_INST_0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \leds[3]_INST_0_i_11_n_0\,
      CO(3) => \leds[3]_INST_0_i_2_n_0\,
      CO(2) => \leds[3]_INST_0_i_2_n_1\,
      CO(1) => \leds[3]_INST_0_i_2_n_2\,
      CO(0) => \leds[3]_INST_0_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \leds[3]_INST_0_i_12_n_0\,
      DI(2) => \leds[3]_INST_0_i_13_n_0\,
      DI(1) => \leds[3]_INST_0_i_14_n_0\,
      DI(0) => \leds[3]_INST_0_i_15_n_0\,
      O(3 downto 0) => \NLW_leds[3]_INST_0_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \leds[3]_INST_0_i_16_n_0\,
      S(2) => \leds[3]_INST_0_i_17_n_0\,
      S(1) => \leds[3]_INST_0_i_18_n_0\,
      S(0) => \leds[3]_INST_0_i_19_n_0\
    );
\leds[3]_INST_0_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \leds[3]_INST_0_i_20_n_0\,
      CO(2) => \leds[3]_INST_0_i_20_n_1\,
      CO(1) => \leds[3]_INST_0_i_20_n_2\,
      CO(0) => \leds[3]_INST_0_i_20_n_3\,
      CYINIT => '0',
      DI(3) => \leds[3]_INST_0_i_29_n_0\,
      DI(2) => \leds[3]_INST_0_i_30_n_0\,
      DI(1) => \leds[3]_INST_0_i_31_n_0\,
      DI(0) => \leds[3]_INST_0_i_32_n_0\,
      O(3 downto 0) => \NLW_leds[3]_INST_0_i_20_O_UNCONNECTED\(3 downto 0),
      S(3) => \leds[3]_INST_0_i_33_n_0\,
      S(2) => \leds[3]_INST_0_i_34_n_0\,
      S(1) => \leds[3]_INST_0_i_35_n_0\,
      S(0) => \leds[3]_INST_0_i_36_n_0\
    );
\leds[3]_INST_0_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[14]\,
      I1 => \puntaje_fpga_reg_n_0_[14]\,
      I2 => \puntaje_usu_reg_n_0_[15]\,
      I3 => \puntaje_fpga_reg_n_0_[15]\,
      O => \leds[3]_INST_0_i_21_n_0\
    );
\leds[3]_INST_0_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[12]\,
      I1 => \puntaje_fpga_reg_n_0_[12]\,
      I2 => \puntaje_usu_reg_n_0_[13]\,
      I3 => \puntaje_fpga_reg_n_0_[13]\,
      O => \leds[3]_INST_0_i_22_n_0\
    );
\leds[3]_INST_0_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[10]\,
      I1 => \puntaje_fpga_reg_n_0_[10]\,
      I2 => \puntaje_usu_reg_n_0_[11]\,
      I3 => \puntaje_fpga_reg_n_0_[11]\,
      O => \leds[3]_INST_0_i_23_n_0\
    );
\leds[3]_INST_0_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[8]\,
      I1 => \puntaje_fpga_reg_n_0_[8]\,
      I2 => \puntaje_usu_reg_n_0_[9]\,
      I3 => \puntaje_fpga_reg_n_0_[9]\,
      O => \leds[3]_INST_0_i_24_n_0\
    );
\leds[3]_INST_0_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[15]\,
      I1 => \puntaje_fpga_reg_n_0_[15]\,
      I2 => \puntaje_usu_reg_n_0_[14]\,
      I3 => \puntaje_fpga_reg_n_0_[14]\,
      O => \leds[3]_INST_0_i_25_n_0\
    );
\leds[3]_INST_0_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[12]\,
      I1 => \puntaje_fpga_reg_n_0_[12]\,
      I2 => \puntaje_usu_reg_n_0_[13]\,
      I3 => \puntaje_fpga_reg_n_0_[13]\,
      O => \leds[3]_INST_0_i_26_n_0\
    );
\leds[3]_INST_0_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[10]\,
      I1 => \puntaje_fpga_reg_n_0_[10]\,
      I2 => \puntaje_usu_reg_n_0_[11]\,
      I3 => \puntaje_fpga_reg_n_0_[11]\,
      O => \leds[3]_INST_0_i_27_n_0\
    );
\leds[3]_INST_0_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[9]\,
      I1 => \puntaje_fpga_reg_n_0_[9]\,
      I2 => \puntaje_usu_reg_n_0_[8]\,
      I3 => \puntaje_fpga_reg_n_0_[8]\,
      O => \leds[3]_INST_0_i_28_n_0\
    );
\leds[3]_INST_0_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[6]\,
      I1 => \puntaje_fpga_reg_n_0_[6]\,
      I2 => \puntaje_usu_reg_n_0_[7]\,
      I3 => \puntaje_fpga_reg_n_0_[7]\,
      O => \leds[3]_INST_0_i_29_n_0\
    );
\leds[3]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[30]\,
      I1 => \puntaje_fpga_reg_n_0_[30]\,
      I2 => \puntaje_fpga_reg_n_0_[31]\,
      I3 => \puntaje_usu_reg_n_0_[31]\,
      O => \leds[3]_INST_0_i_3_n_0\
    );
\leds[3]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[4]\,
      I1 => \puntaje_fpga_reg_n_0_[4]\,
      I2 => \puntaje_usu_reg_n_0_[5]\,
      I3 => \puntaje_fpga_reg_n_0_[5]\,
      O => \leds[3]_INST_0_i_30_n_0\
    );
\leds[3]_INST_0_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[2]\,
      I1 => \puntaje_fpga_reg_n_0_[2]\,
      I2 => \puntaje_usu_reg_n_0_[3]\,
      I3 => \puntaje_fpga_reg_n_0_[3]\,
      O => \leds[3]_INST_0_i_31_n_0\
    );
\leds[3]_INST_0_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[0]\,
      I1 => \puntaje_fpga_reg_n_0_[0]\,
      I2 => \puntaje_usu_reg_n_0_[1]\,
      I3 => \puntaje_fpga_reg_n_0_[1]\,
      O => \leds[3]_INST_0_i_32_n_0\
    );
\leds[3]_INST_0_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[6]\,
      I1 => \puntaje_fpga_reg_n_0_[6]\,
      I2 => \puntaje_usu_reg_n_0_[7]\,
      I3 => \puntaje_fpga_reg_n_0_[7]\,
      O => \leds[3]_INST_0_i_33_n_0\
    );
\leds[3]_INST_0_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[4]\,
      I1 => \puntaje_fpga_reg_n_0_[4]\,
      I2 => \puntaje_usu_reg_n_0_[5]\,
      I3 => \puntaje_fpga_reg_n_0_[5]\,
      O => \leds[3]_INST_0_i_34_n_0\
    );
\leds[3]_INST_0_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[3]\,
      I1 => \puntaje_fpga_reg_n_0_[3]\,
      I2 => \puntaje_usu_reg_n_0_[2]\,
      I3 => \puntaje_fpga_reg_n_0_[2]\,
      O => \leds[3]_INST_0_i_35_n_0\
    );
\leds[3]_INST_0_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[0]\,
      I1 => \puntaje_fpga_reg_n_0_[0]\,
      I2 => \puntaje_usu_reg_n_0_[1]\,
      I3 => \puntaje_fpga_reg_n_0_[1]\,
      O => \leds[3]_INST_0_i_36_n_0\
    );
\leds[3]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[28]\,
      I1 => \puntaje_fpga_reg_n_0_[28]\,
      I2 => \puntaje_usu_reg_n_0_[29]\,
      I3 => \puntaje_fpga_reg_n_0_[29]\,
      O => \leds[3]_INST_0_i_4_n_0\
    );
\leds[3]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[26]\,
      I1 => \puntaje_fpga_reg_n_0_[26]\,
      I2 => \puntaje_usu_reg_n_0_[27]\,
      I3 => \puntaje_fpga_reg_n_0_[27]\,
      O => \leds[3]_INST_0_i_5_n_0\
    );
\leds[3]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[24]\,
      I1 => \puntaje_fpga_reg_n_0_[24]\,
      I2 => \puntaje_usu_reg_n_0_[25]\,
      I3 => \puntaje_fpga_reg_n_0_[25]\,
      O => \leds[3]_INST_0_i_6_n_0\
    );
\leds[3]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[30]\,
      I1 => \puntaje_fpga_reg_n_0_[30]\,
      I2 => \puntaje_usu_reg_n_0_[31]\,
      I3 => \puntaje_fpga_reg_n_0_[31]\,
      O => \leds[3]_INST_0_i_7_n_0\
    );
\leds[3]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[28]\,
      I1 => \puntaje_fpga_reg_n_0_[28]\,
      I2 => \puntaje_usu_reg_n_0_[29]\,
      I3 => \puntaje_fpga_reg_n_0_[29]\,
      O => \leds[3]_INST_0_i_8_n_0\
    );
\leds[3]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[27]\,
      I1 => \puntaje_fpga_reg_n_0_[27]\,
      I2 => \puntaje_usu_reg_n_0_[26]\,
      I3 => \puntaje_fpga_reg_n_0_[26]\,
      O => \leds[3]_INST_0_i_9_n_0\
    );
\lfsr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lfsr(2),
      I1 => \lfsr__0\(3),
      O => p_0_out(0)
    );
\lfsr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_out(0),
      Q => \lfsr__0\(0),
      R => '0'
    );
\lfsr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \lfsr__0\(0),
      Q => lfsr(1),
      R => '0'
    );
\lfsr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => lfsr(1),
      Q => lfsr(2),
      R => '0'
    );
\lfsr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => lfsr(2),
      Q => \lfsr__0\(3),
      R => '0'
    );
\puntaje_fpga[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \puntaje_fpga_reg_n_0_[0]\,
      O => in9(0)
    );
\puntaje_fpga[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => reset,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      O => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000300030001"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => reset,
      I4 => res,
      I5 => \turno_reg_n_0_[0]\,
      O => puntaje_fpga0
    );
\puntaje_fpga_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(0),
      Q => \puntaje_fpga_reg_n_0_[0]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(10),
      Q => \puntaje_fpga_reg_n_0_[10]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(11),
      Q => \puntaje_fpga_reg_n_0_[11]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(12),
      Q => \puntaje_fpga_reg_n_0_[12]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \puntaje_fpga_reg[8]_i_1_n_0\,
      CO(3) => \puntaje_fpga_reg[12]_i_1_n_0\,
      CO(2) => \puntaje_fpga_reg[12]_i_1_n_1\,
      CO(1) => \puntaje_fpga_reg[12]_i_1_n_2\,
      CO(0) => \puntaje_fpga_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(12 downto 9),
      S(3) => \puntaje_fpga_reg_n_0_[12]\,
      S(2) => \puntaje_fpga_reg_n_0_[11]\,
      S(1) => \puntaje_fpga_reg_n_0_[10]\,
      S(0) => \puntaje_fpga_reg_n_0_[9]\
    );
\puntaje_fpga_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(13),
      Q => \puntaje_fpga_reg_n_0_[13]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(14),
      Q => \puntaje_fpga_reg_n_0_[14]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(15),
      Q => \puntaje_fpga_reg_n_0_[15]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(16),
      Q => \puntaje_fpga_reg_n_0_[16]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \puntaje_fpga_reg[12]_i_1_n_0\,
      CO(3) => \puntaje_fpga_reg[16]_i_1_n_0\,
      CO(2) => \puntaje_fpga_reg[16]_i_1_n_1\,
      CO(1) => \puntaje_fpga_reg[16]_i_1_n_2\,
      CO(0) => \puntaje_fpga_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(16 downto 13),
      S(3) => \puntaje_fpga_reg_n_0_[16]\,
      S(2) => \puntaje_fpga_reg_n_0_[15]\,
      S(1) => \puntaje_fpga_reg_n_0_[14]\,
      S(0) => \puntaje_fpga_reg_n_0_[13]\
    );
\puntaje_fpga_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(17),
      Q => \puntaje_fpga_reg_n_0_[17]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(18),
      Q => \puntaje_fpga_reg_n_0_[18]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(19),
      Q => \puntaje_fpga_reg_n_0_[19]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(1),
      Q => \puntaje_fpga_reg_n_0_[1]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(20),
      Q => \puntaje_fpga_reg_n_0_[20]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \puntaje_fpga_reg[16]_i_1_n_0\,
      CO(3) => \puntaje_fpga_reg[20]_i_1_n_0\,
      CO(2) => \puntaje_fpga_reg[20]_i_1_n_1\,
      CO(1) => \puntaje_fpga_reg[20]_i_1_n_2\,
      CO(0) => \puntaje_fpga_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(20 downto 17),
      S(3) => \puntaje_fpga_reg_n_0_[20]\,
      S(2) => \puntaje_fpga_reg_n_0_[19]\,
      S(1) => \puntaje_fpga_reg_n_0_[18]\,
      S(0) => \puntaje_fpga_reg_n_0_[17]\
    );
\puntaje_fpga_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(21),
      Q => \puntaje_fpga_reg_n_0_[21]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(22),
      Q => \puntaje_fpga_reg_n_0_[22]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(23),
      Q => \puntaje_fpga_reg_n_0_[23]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(24),
      Q => \puntaje_fpga_reg_n_0_[24]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \puntaje_fpga_reg[20]_i_1_n_0\,
      CO(3) => \puntaje_fpga_reg[24]_i_1_n_0\,
      CO(2) => \puntaje_fpga_reg[24]_i_1_n_1\,
      CO(1) => \puntaje_fpga_reg[24]_i_1_n_2\,
      CO(0) => \puntaje_fpga_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(24 downto 21),
      S(3) => \puntaje_fpga_reg_n_0_[24]\,
      S(2) => \puntaje_fpga_reg_n_0_[23]\,
      S(1) => \puntaje_fpga_reg_n_0_[22]\,
      S(0) => \puntaje_fpga_reg_n_0_[21]\
    );
\puntaje_fpga_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(25),
      Q => \puntaje_fpga_reg_n_0_[25]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(26),
      Q => \puntaje_fpga_reg_n_0_[26]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(27),
      Q => \puntaje_fpga_reg_n_0_[27]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(28),
      Q => \puntaje_fpga_reg_n_0_[28]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \puntaje_fpga_reg[24]_i_1_n_0\,
      CO(3) => \puntaje_fpga_reg[28]_i_1_n_0\,
      CO(2) => \puntaje_fpga_reg[28]_i_1_n_1\,
      CO(1) => \puntaje_fpga_reg[28]_i_1_n_2\,
      CO(0) => \puntaje_fpga_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(28 downto 25),
      S(3) => \puntaje_fpga_reg_n_0_[28]\,
      S(2) => \puntaje_fpga_reg_n_0_[27]\,
      S(1) => \puntaje_fpga_reg_n_0_[26]\,
      S(0) => \puntaje_fpga_reg_n_0_[25]\
    );
\puntaje_fpga_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(29),
      Q => \puntaje_fpga_reg_n_0_[29]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(2),
      Q => \puntaje_fpga_reg_n_0_[2]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(30),
      Q => \puntaje_fpga_reg_n_0_[30]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(31),
      Q => \puntaje_fpga_reg_n_0_[31]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \puntaje_fpga_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_puntaje_fpga_reg[31]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \puntaje_fpga_reg[31]_i_3_n_2\,
      CO(0) => \puntaje_fpga_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_puntaje_fpga_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => in9(31 downto 29),
      S(3) => '0',
      S(2) => \puntaje_fpga_reg_n_0_[31]\,
      S(1) => \puntaje_fpga_reg_n_0_[30]\,
      S(0) => \puntaje_fpga_reg_n_0_[29]\
    );
\puntaje_fpga_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(3),
      Q => \puntaje_fpga_reg_n_0_[3]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(4),
      Q => \puntaje_fpga_reg_n_0_[4]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \puntaje_fpga_reg[4]_i_1_n_0\,
      CO(2) => \puntaje_fpga_reg[4]_i_1_n_1\,
      CO(1) => \puntaje_fpga_reg[4]_i_1_n_2\,
      CO(0) => \puntaje_fpga_reg[4]_i_1_n_3\,
      CYINIT => \puntaje_fpga_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(4 downto 1),
      S(3) => \puntaje_fpga_reg_n_0_[4]\,
      S(2) => \puntaje_fpga_reg_n_0_[3]\,
      S(1) => \puntaje_fpga_reg_n_0_[2]\,
      S(0) => \puntaje_fpga_reg_n_0_[1]\
    );
\puntaje_fpga_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(5),
      Q => \puntaje_fpga_reg_n_0_[5]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(6),
      Q => \puntaje_fpga_reg_n_0_[6]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(7),
      Q => \puntaje_fpga_reg_n_0_[7]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(8),
      Q => \puntaje_fpga_reg_n_0_[8]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_fpga_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \puntaje_fpga_reg[4]_i_1_n_0\,
      CO(3) => \puntaje_fpga_reg[8]_i_1_n_0\,
      CO(2) => \puntaje_fpga_reg[8]_i_1_n_1\,
      CO(1) => \puntaje_fpga_reg[8]_i_1_n_2\,
      CO(0) => \puntaje_fpga_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(8 downto 5),
      S(3) => \puntaje_fpga_reg_n_0_[8]\,
      S(2) => \puntaje_fpga_reg_n_0_[7]\,
      S(1) => \puntaje_fpga_reg_n_0_[6]\,
      S(0) => \puntaje_fpga_reg_n_0_[5]\
    );
\puntaje_fpga_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_fpga0,
      D => in9(9),
      Q => \puntaje_fpga_reg_n_0_[9]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \puntaje_usu_reg_n_0_[0]\,
      O => in7(0)
    );
\puntaje_usu[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003000100010003"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => reset,
      I4 => \turno_reg_n_0_[0]\,
      I5 => res,
      O => puntaje_usu0
    );
\puntaje_usu_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(0),
      Q => \puntaje_usu_reg_n_0_[0]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(10),
      Q => \puntaje_usu_reg_n_0_[10]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(11),
      Q => \puntaje_usu_reg_n_0_[11]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(12),
      Q => \puntaje_usu_reg_n_0_[12]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \puntaje_usu_reg[8]_i_1_n_0\,
      CO(3) => \puntaje_usu_reg[12]_i_1_n_0\,
      CO(2) => \puntaje_usu_reg[12]_i_1_n_1\,
      CO(1) => \puntaje_usu_reg[12]_i_1_n_2\,
      CO(0) => \puntaje_usu_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in7(12 downto 9),
      S(3) => \puntaje_usu_reg_n_0_[12]\,
      S(2) => \puntaje_usu_reg_n_0_[11]\,
      S(1) => \puntaje_usu_reg_n_0_[10]\,
      S(0) => \puntaje_usu_reg_n_0_[9]\
    );
\puntaje_usu_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(13),
      Q => \puntaje_usu_reg_n_0_[13]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(14),
      Q => \puntaje_usu_reg_n_0_[14]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(15),
      Q => \puntaje_usu_reg_n_0_[15]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(16),
      Q => \puntaje_usu_reg_n_0_[16]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \puntaje_usu_reg[12]_i_1_n_0\,
      CO(3) => \puntaje_usu_reg[16]_i_1_n_0\,
      CO(2) => \puntaje_usu_reg[16]_i_1_n_1\,
      CO(1) => \puntaje_usu_reg[16]_i_1_n_2\,
      CO(0) => \puntaje_usu_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in7(16 downto 13),
      S(3) => \puntaje_usu_reg_n_0_[16]\,
      S(2) => \puntaje_usu_reg_n_0_[15]\,
      S(1) => \puntaje_usu_reg_n_0_[14]\,
      S(0) => \puntaje_usu_reg_n_0_[13]\
    );
\puntaje_usu_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(17),
      Q => \puntaje_usu_reg_n_0_[17]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(18),
      Q => \puntaje_usu_reg_n_0_[18]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(19),
      Q => \puntaje_usu_reg_n_0_[19]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(1),
      Q => \puntaje_usu_reg_n_0_[1]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(20),
      Q => \puntaje_usu_reg_n_0_[20]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \puntaje_usu_reg[16]_i_1_n_0\,
      CO(3) => \puntaje_usu_reg[20]_i_1_n_0\,
      CO(2) => \puntaje_usu_reg[20]_i_1_n_1\,
      CO(1) => \puntaje_usu_reg[20]_i_1_n_2\,
      CO(0) => \puntaje_usu_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in7(20 downto 17),
      S(3) => \puntaje_usu_reg_n_0_[20]\,
      S(2) => \puntaje_usu_reg_n_0_[19]\,
      S(1) => \puntaje_usu_reg_n_0_[18]\,
      S(0) => \puntaje_usu_reg_n_0_[17]\
    );
\puntaje_usu_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(21),
      Q => \puntaje_usu_reg_n_0_[21]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(22),
      Q => \puntaje_usu_reg_n_0_[22]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(23),
      Q => \puntaje_usu_reg_n_0_[23]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(24),
      Q => \puntaje_usu_reg_n_0_[24]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \puntaje_usu_reg[20]_i_1_n_0\,
      CO(3) => \puntaje_usu_reg[24]_i_1_n_0\,
      CO(2) => \puntaje_usu_reg[24]_i_1_n_1\,
      CO(1) => \puntaje_usu_reg[24]_i_1_n_2\,
      CO(0) => \puntaje_usu_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in7(24 downto 21),
      S(3) => \puntaje_usu_reg_n_0_[24]\,
      S(2) => \puntaje_usu_reg_n_0_[23]\,
      S(1) => \puntaje_usu_reg_n_0_[22]\,
      S(0) => \puntaje_usu_reg_n_0_[21]\
    );
\puntaje_usu_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(25),
      Q => \puntaje_usu_reg_n_0_[25]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(26),
      Q => \puntaje_usu_reg_n_0_[26]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(27),
      Q => \puntaje_usu_reg_n_0_[27]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(28),
      Q => \puntaje_usu_reg_n_0_[28]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \puntaje_usu_reg[24]_i_1_n_0\,
      CO(3) => \puntaje_usu_reg[28]_i_1_n_0\,
      CO(2) => \puntaje_usu_reg[28]_i_1_n_1\,
      CO(1) => \puntaje_usu_reg[28]_i_1_n_2\,
      CO(0) => \puntaje_usu_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in7(28 downto 25),
      S(3) => \puntaje_usu_reg_n_0_[28]\,
      S(2) => \puntaje_usu_reg_n_0_[27]\,
      S(1) => \puntaje_usu_reg_n_0_[26]\,
      S(0) => \puntaje_usu_reg_n_0_[25]\
    );
\puntaje_usu_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(29),
      Q => \puntaje_usu_reg_n_0_[29]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(2),
      Q => \puntaje_usu_reg_n_0_[2]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(30),
      Q => \puntaje_usu_reg_n_0_[30]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(31),
      Q => \puntaje_usu_reg_n_0_[31]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \puntaje_usu_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_puntaje_usu_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \puntaje_usu_reg[31]_i_2_n_2\,
      CO(0) => \puntaje_usu_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_puntaje_usu_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => in7(31 downto 29),
      S(3) => '0',
      S(2) => \puntaje_usu_reg_n_0_[31]\,
      S(1) => \puntaje_usu_reg_n_0_[30]\,
      S(0) => \puntaje_usu_reg_n_0_[29]\
    );
\puntaje_usu_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(3),
      Q => \puntaje_usu_reg_n_0_[3]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(4),
      Q => \puntaje_usu_reg_n_0_[4]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \puntaje_usu_reg[4]_i_1_n_0\,
      CO(2) => \puntaje_usu_reg[4]_i_1_n_1\,
      CO(1) => \puntaje_usu_reg[4]_i_1_n_2\,
      CO(0) => \puntaje_usu_reg[4]_i_1_n_3\,
      CYINIT => \puntaje_usu_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in7(4 downto 1),
      S(3) => \puntaje_usu_reg_n_0_[4]\,
      S(2) => \puntaje_usu_reg_n_0_[3]\,
      S(1) => \puntaje_usu_reg_n_0_[2]\,
      S(0) => \puntaje_usu_reg_n_0_[1]\
    );
\puntaje_usu_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(5),
      Q => \puntaje_usu_reg_n_0_[5]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(6),
      Q => \puntaje_usu_reg_n_0_[6]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(7),
      Q => \puntaje_usu_reg_n_0_[7]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(8),
      Q => \puntaje_usu_reg_n_0_[8]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
\puntaje_usu_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \puntaje_usu_reg[4]_i_1_n_0\,
      CO(3) => \puntaje_usu_reg[8]_i_1_n_0\,
      CO(2) => \puntaje_usu_reg[8]_i_1_n_1\,
      CO(1) => \puntaje_usu_reg[8]_i_1_n_2\,
      CO(0) => \puntaje_usu_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in7(8 downto 5),
      S(3) => \puntaje_usu_reg_n_0_[8]\,
      S(2) => \puntaje_usu_reg_n_0_[7]\,
      S(1) => \puntaje_usu_reg_n_0_[6]\,
      S(0) => \puntaje_usu_reg_n_0_[5]\
    );
\puntaje_usu_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => puntaje_usu0,
      D => in7(9),
      Q => \puntaje_usu_reg_n_0_[9]\,
      R => \puntaje_fpga[31]_i_1_n_0\
    );
resul_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => resul_i_2_n_0,
      I1 => reset,
      I2 => state(1),
      I3 => state(2),
      I4 => state(0),
      I5 => res,
      O => resul_i_1_n_0
    );
resul_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0AACC00F0AACC"
    )
        port map (
      I0 => sw(1),
      I1 => sw(0),
      I2 => sw(2),
      I3 => lfsr(1),
      I4 => lfsr(2),
      I5 => sw(3),
      O => resul_i_2_n_0
    );
resul_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => resul_i_1_n_0,
      Q => res,
      R => '0'
    );
\turno[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FC00000800"
    )
        port map (
      I0 => \turno[0]_i_2_n_0\,
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => reset,
      I5 => \turno_reg_n_0_[0]\,
      O => \turno[0]_i_1_n_0\
    );
\turno[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \turno_reg_n_0_[1]\,
      I1 => \turno_reg_n_0_[0]\,
      I2 => turno1,
      O => \turno[0]_i_2_n_0\
    );
\turno[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050FFDFA0A00020"
    )
        port map (
      I0 => \turno_reg_n_0_[0]\,
      I1 => \turno[1]_i_2_n_0\,
      I2 => \turno[1]_i_3_n_0\,
      I3 => reset,
      I4 => \turno[1]_i_4_n_0\,
      I5 => \turno_reg_n_0_[1]\,
      O => \turno[1]_i_1_n_0\
    );
\turno[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => turno1,
      I1 => \turno_reg_n_0_[0]\,
      I2 => \turno_reg_n_0_[1]\,
      I3 => state(0),
      O => \turno[1]_i_2_n_0\
    );
\turno[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      O => \turno[1]_i_3_n_0\
    );
\turno[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => reset,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      O => \turno[1]_i_4_n_0\
    );
\turno_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \turno[0]_i_1_n_0\,
      Q => \turno_reg_n_0_[0]\,
      R => '0'
    );
\turno_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \turno[1]_i_1_n_0\,
      Q => \turno_reg_n_0_[1]\,
      R => '0'
    );
update_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFC00000080"
    )
        port map (
      I0 => update_i_2_n_0,
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => reset,
      I5 => \^update\,
      O => update_i_1_n_0
    );
update_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => jugar,
      I1 => jugar_prev_reg_n_0,
      O => update_i_2_n_0
    );
update_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => update_i_1_n_0,
      Q => \^update\,
      R => '0'
    );
wol_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4000"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => leds_v1,
      I3 => update0,
      I4 => \^wol\,
      O => wol_i_1_n_0
    );
wol_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000200F"
    )
        port map (
      I0 => jugar,
      I1 => jugar_prev_reg_n_0,
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
      I5 => reset,
      O => update0
    );
wol_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wol_i_1_n_0,
      Q => \^wol\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_penales_0_0 is
  port (
    clk : in STD_LOGIC;
    ini : in STD_LOGIC;
    reset : in STD_LOGIC;
    jugar : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wol : out STD_LOGIC;
    update : out STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_penales_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_penales_0_0 : entity is "design_1_penales_0_0,penales,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_penales_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_penales_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_penales_0_0 : entity is "penales,Vivado 2020.1";
end design_1_penales_0_0;

architecture STRUCTURE of design_1_penales_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_penales_0_0_penales
     port map (
      clk => clk,
      ini => ini,
      jugar => jugar,
      leds(3 downto 0) => leds(3 downto 0),
      reset => reset,
      sw(3 downto 0) => sw(3 downto 0),
      update => update,
      wol => wol
    );
end STRUCTURE;
