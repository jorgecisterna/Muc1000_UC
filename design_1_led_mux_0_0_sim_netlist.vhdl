-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Apr 16 16:45:40 2026
-- Host        : PC_Felipe running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/feant/Vivado/Pro1_ava/Pro1_ava.srcs/sources_1/bd/design_1/ip/design_1_led_mux_0_0/design_1_led_mux_0_0_sim_netlist.vhdl
-- Design      : design_1_led_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_mux_0_0_led_manager is
  port (
    leds_final : out STD_LOGIC_VECTOR ( 3 downto 0 );
    leds_juego_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    leds_juego_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    leds_fsm : in STD_LOGIC_VECTOR ( 3 downto 0 );
    leds_juego_3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    update : in STD_LOGIC;
    g2 : in STD_LOGIC;
    g3 : in STD_LOGIC;
    g1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_mux_0_0_led_manager : entity is "led_manager";
end design_1_led_mux_0_0_led_manager;

architecture STRUCTURE of design_1_led_mux_0_0_led_manager is
  signal \^selector\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \selector[0]_i_1_n_0\ : STD_LOGIC;
  signal \selector[1]_i_1_n_0\ : STD_LOGIC;
  signal selector_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \selector[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \selector[1]_i_1\ : label is "soft_lutpair0";
begin
\leds_final[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => leds_juego_2(0),
      I1 => leds_juego_1(0),
      I2 => leds_fsm(0),
      I3 => \^selector\(1),
      I4 => \^selector\(0),
      I5 => leds_juego_3(0),
      O => leds_final(0)
    );
\leds_final[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => leds_juego_2(1),
      I1 => leds_juego_1(1),
      I2 => leds_fsm(1),
      I3 => \^selector\(1),
      I4 => \^selector\(0),
      I5 => leds_juego_3(1),
      O => leds_final(1)
    );
\leds_final[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => leds_juego_2(2),
      I1 => leds_juego_1(2),
      I2 => leds_fsm(2),
      I3 => \^selector\(1),
      I4 => \^selector\(0),
      I5 => leds_juego_3(2),
      O => leds_final(2)
    );
\leds_final[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => leds_juego_2(3),
      I1 => leds_juego_1(3),
      I2 => leds_fsm(3),
      I3 => \^selector\(1),
      I4 => \^selector\(0),
      I5 => leds_juego_3(3),
      O => leds_final(3)
    );
selector: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => update,
      I1 => g2,
      I2 => g3,
      I3 => g1,
      O => selector_n_0
    );
\selector[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => g3,
      I1 => g2,
      I2 => g1,
      I3 => update,
      O => \selector[0]_i_1_n_0\
    );
\selector[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => g1,
      I1 => g2,
      I2 => g3,
      I3 => update,
      O => \selector[1]_i_1_n_0\
    );
\selector_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => selector_n_0,
      CLR => rst,
      D => \selector[0]_i_1_n_0\,
      Q => \^selector\(0)
    );
\selector_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => selector_n_0,
      CLR => rst,
      D => \selector[1]_i_1_n_0\,
      Q => \^selector\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_mux_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    g1 : in STD_LOGIC;
    g2 : in STD_LOGIC;
    g3 : in STD_LOGIC;
    update : in STD_LOGIC;
    leds_fsm : in STD_LOGIC_VECTOR ( 3 downto 0 );
    leds_juego_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    leds_juego_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    leds_juego_3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    leds_final : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_led_mux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_led_mux_0_0 : entity is "design_1_led_mux_0_0,led_manager,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_led_mux_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_led_mux_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_led_mux_0_0 : entity is "led_manager,Vivado 2020.1";
end design_1_led_mux_0_0;

architecture STRUCTURE of design_1_led_mux_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_led_mux_0_0_led_manager
     port map (
      clk => clk,
      g1 => g1,
      g2 => g2,
      g3 => g3,
      leds_final(3 downto 0) => leds_final(3 downto 0),
      leds_fsm(3 downto 0) => leds_fsm(3 downto 0),
      leds_juego_1(3 downto 0) => leds_juego_1(3 downto 0),
      leds_juego_2(3 downto 0) => leds_juego_2(3 downto 0),
      leds_juego_3(3 downto 0) => leds_juego_3(3 downto 0),
      rst => rst,
      update => update
    );
end STRUCTURE;
