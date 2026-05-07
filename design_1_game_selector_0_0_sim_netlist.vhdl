-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed May  6 22:55:18 2026
-- Host        : LAPTOP-OGSHLLCI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/nitro/Documents/SEP/P01_FIN/Pro1_ava/Pro1_ava.srcs/sources_1/bd/design_1/ip/design_1_game_selector_0_0/design_1_game_selector_0_0_sim_netlist.vhdl
-- Design      : design_1_game_selector_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_game_selector_0_0_game_selector is
  port (
    update_out : out STD_LOGIC;
    wol_out : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    update_1 : in STD_LOGIC;
    update_2 : in STD_LOGIC;
    update_3 : in STD_LOGIC;
    wol_1 : in STD_LOGIC;
    wol_2 : in STD_LOGIC;
    wol_3 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_game_selector_0_0_game_selector : entity is "game_selector";
end design_1_game_selector_0_0_game_selector;

architecture STRUCTURE of design_1_game_selector_0_0_game_selector is
  signal \update_out__0_n_0\ : STD_LOGIC;
  signal \wol_out__0_n_0\ : STD_LOGIC;
begin
\update_out__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"16"
    )
        port map (
      I0 => update_1,
      I1 => update_2,
      I2 => update_3,
      O => \update_out__0_n_0\
    );
update_out_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \update_out__0_n_0\,
      Q => update_out
    );
\wol_out__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033308800003088"
    )
        port map (
      I0 => wol_1,
      I1 => update_1,
      I2 => wol_2,
      I3 => update_2,
      I4 => update_3,
      I5 => wol_3,
      O => \wol_out__0_n_0\
    );
wol_out_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \wol_out__0_n_0\,
      Q => wol_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_game_selector_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    update_1 : in STD_LOGIC;
    wol_1 : in STD_LOGIC;
    update_2 : in STD_LOGIC;
    wol_2 : in STD_LOGIC;
    update_3 : in STD_LOGIC;
    wol_3 : in STD_LOGIC;
    update_out : out STD_LOGIC;
    wol_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_game_selector_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_game_selector_0_0 : entity is "design_1_game_selector_0_0,game_selector,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_game_selector_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_game_selector_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_game_selector_0_0 : entity is "game_selector,Vivado 2020.1";
end design_1_game_selector_0_0;

architecture STRUCTURE of design_1_game_selector_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_game_selector_0_0_game_selector
     port map (
      clk => clk,
      rst => rst,
      update_1 => update_1,
      update_2 => update_2,
      update_3 => update_3,
      update_out => update_out,
      wol_1 => wol_1,
      wol_2 => wol_2,
      wol_3 => wol_3,
      wol_out => wol_out
    );
end STRUCTURE;
