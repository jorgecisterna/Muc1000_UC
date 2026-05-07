-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu May  7 02:04:15 2026
-- Host        : LAPTOP-OGSHLLCI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/nitro/Documents/SEP/P01_FIN/Pro1_ava/Pro1_ava.srcs/sources_1/bd/design_1/ip/design_1_penales_0_0/design_1_penales_0_0_stub.vhdl
-- Design      : design_1_penales_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_penales_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    ini : in STD_LOGIC;
    reset : in STD_LOGIC;
    jugar : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wol : out STD_LOGIC;
    update : out STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_1_penales_0_0;

architecture stub of design_1_penales_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,ini,reset,jugar,sw[3:0],wol,update,leds[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "penales,Vivado 2020.1";
begin
end;
