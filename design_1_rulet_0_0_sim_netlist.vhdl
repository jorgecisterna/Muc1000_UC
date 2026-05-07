-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu May  7 01:56:17 2026
-- Host        : LAPTOP-OGSHLLCI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/nitro/Documents/SEP/P01_FIN/Pro1_ava/Pro1_ava.srcs/sources_1/bd/design_1/ip/design_1_rulet_0_0/design_1_rulet_0_0_sim_netlist.vhdl
-- Design      : design_1_rulet_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rulet_0_0_rulet is
  port (
    clk : in STD_LOGIC;
    ini : in STD_LOGIC;
    reset : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    acep : in STD_LOGIC;
    wol : out STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    update : out STD_LOGIC
  );
  attribute DEBUG_MODE : string;
  attribute DEBUG_MODE of design_1_rulet_0_0_rulet : entity is "TRUE";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_rulet_0_0_rulet : entity is "rulet";
  attribute WIN_MODE : integer;
  attribute WIN_MODE of design_1_rulet_0_0_rulet : entity is 50;
end design_1_rulet_0_0_rulet;

architecture STRUCTURE of design_1_rulet_0_0_rulet is
  signal \<const0>\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal acep_prev_i_1_n_0 : STD_LOGIC;
  signal acep_prev_reg_n_0 : STD_LOGIC;
  signal apu_reg : STD_LOGIC;
  signal \apu_reg__0\ : STD_LOGIC;
  signal apu_reg_i_1_n_0 : STD_LOGIC;
  signal apu_reg_i_2_n_0 : STD_LOGIC;
  signal cambio : STD_LOGIC;
  signal cambio_i_1_n_0 : STD_LOGIC;
  signal \^leds\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal lfsr : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \lfsr__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal resu_reg_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^update\ : STD_LOGIC;
  signal update0 : STD_LOGIC;
  signal update_i_1_n_0 : STD_LOGIC;
  signal \^wol\ : STD_LOGIC;
  signal wol_i_1_n_0 : STD_LOGIC;
  signal wol_i_2_n_0 : STD_LOGIC;
  signal wol_reg_i_1_n_0 : STD_LOGIC;
  signal wol_reg_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_2\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "esp:000,idle:001,resultado:010,decision:011,pago:100,res:101,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "esp:000,idle:001,resultado:010,decision:011,pago:100,res:101,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "esp:000,idle:001,resultado:010,decision:011,pago:100,res:101,";
  attribute SOFT_HLUTNM of apu_reg_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of wol_reg_i_2 : label is "soft_lutpair1";
begin
  leds(3 downto 2) <= \^leds\(3 downto 2);
  leds(1) <= \<const0>\;
  leds(0) <= \^leds\(0);
  update <= \^update\;
  wol <= \^wol\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003E3F3E003E003E"
    )
        port map (
      I0 => ini,
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => acep_prev_reg_n_0,
      I5 => acep,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      O => \state__0\(2)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      CLR => reset,
      D => \FSM_sequential_state[0]_i_1_n_0\,
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
      D => \FSM_sequential_state[1]_i_1_n_0\,
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
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
acep_prev_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2A2800002A28"
    )
        port map (
      I0 => acep,
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => reset,
      I5 => acep_prev_reg_n_0,
      O => acep_prev_i_1_n_0
    );
acep_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => acep_prev_i_1_n_0,
      Q => acep_prev_reg_n_0,
      R => '0'
    );
apu_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => apu_reg_i_2_n_0,
      I1 => apu_reg,
      I2 => reset,
      I3 => \apu_reg__0\,
      O => apu_reg_i_1_n_0
    );
apu_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00404440"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => sw(0),
      I3 => state(1),
      I4 => \apu_reg__0\,
      O => apu_reg_i_2_n_0
    );
apu_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400045500000455"
    )
        port map (
      I0 => state(2),
      I1 => acep,
      I2 => acep_prev_reg_n_0,
      I3 => state(0),
      I4 => state(1),
      I5 => sw(0),
      O => apu_reg
    );
apu_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => apu_reg_i_1_n_0,
      Q => \apu_reg__0\,
      R => '0'
    );
cambio_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF40FF00004000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => sw(0),
      I3 => cambio,
      I4 => reset,
      I5 => \^leds\(2),
      O => cambio_i_1_n_0
    );
cambio_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0141010101010101"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => acep_prev_reg_n_0,
      I4 => acep,
      I5 => sw(0),
      O => cambio
    );
cambio_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cambio_i_1_n_0,
      Q => \^leds\(2),
      R => '0'
    );
\lfsr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lfsr__0\(2),
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
      Q => \lfsr__0\(2),
      R => '0'
    );
\lfsr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \lfsr__0\(2),
      Q => \lfsr__0\(3),
      R => '0'
    );
resu_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF800000008"
    )
        port map (
      I0 => state(1),
      I1 => lfsr(1),
      I2 => state(2),
      I3 => state(0),
      I4 => reset,
      I5 => \^leds\(3),
      O => resu_reg_i_1_n_0
    );
resu_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => resu_reg_i_1_n_0,
      Q => \^leds\(3),
      R => '0'
    );
update_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200000002000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => update0,
      I4 => reset,
      I5 => \^update\,
      O => update_i_1_n_0
    );
update_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => acep,
      I1 => acep_prev_reg_n_0,
      O => update0
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
      I0 => state(1),
      I1 => \^leds\(0),
      I2 => state(2),
      I3 => wol_i_2_n_0,
      I4 => \^wol\,
      O => wol_i_1_n_0
    );
wol_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000400F"
    )
        port map (
      I0 => acep_prev_reg_n_0,
      I1 => acep,
      I2 => state(0),
      I3 => state(2),
      I4 => state(1),
      I5 => reset,
      O => wol_i_2_n_0
    );
wol_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wol_i_1_n_0,
      Q => \^wol\,
      R => '0'
    );
wol_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => wol_reg_i_2_n_0,
      I1 => state(1),
      I2 => state(0),
      I3 => reset,
      I4 => \^leds\(0),
      O => wol_reg_i_1_n_0
    );
wol_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4100"
    )
        port map (
      I0 => state(1),
      I1 => \^leds\(3),
      I2 => \apu_reg__0\,
      I3 => state(2),
      O => wol_reg_i_2_n_0
    );
wol_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wol_reg_i_1_n_0,
      Q => \^leds\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rulet_0_0 is
  port (
    clk : in STD_LOGIC;
    ini : in STD_LOGIC;
    reset : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    acep : in STD_LOGIC;
    wol : out STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    update : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_rulet_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_rulet_0_0 : entity is "design_1_rulet_0_0,rulet,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_rulet_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_rulet_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_rulet_0_0 : entity is "rulet,Vivado 2020.1";
end design_1_rulet_0_0;

architecture STRUCTURE of design_1_rulet_0_0 is
  attribute DEBUG_MODE : string;
  attribute DEBUG_MODE of U0 : label is "TRUE";
  attribute WIN_MODE : integer;
  attribute WIN_MODE of U0 : label is 50;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_rulet_0_0_rulet
     port map (
      acep => acep,
      clk => clk,
      ini => ini,
      leds(3 downto 0) => leds(3 downto 0),
      reset => reset,
      sw(3 downto 0) => sw(3 downto 0),
      update => update,
      wol => wol
    );
end STRUCTURE;
