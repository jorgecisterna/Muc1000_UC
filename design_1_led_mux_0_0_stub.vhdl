-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Apr 16 16:45:40 2026
-- Host        : PC_Felipe running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_led_mux_0_0 -prefix
--               design_1_led_mux_0_0_ design_1_led_mux_0_0_stub.vhdl
-- Design      : design_1_led_mux_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_led_mux_0_0 is
  Port ( 
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

end design_1_led_mux_0_0;

architecture stub of design_1_led_mux_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,g1,g2,g3,update,leds_fsm[3:0],leds_juego_1[3:0],leds_juego_2[3:0],leds_juego_3[3:0],leds_final[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "led_manager,Vivado 2020.1";
begin
end;
