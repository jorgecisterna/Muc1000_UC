-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sun May  3 23:19:19 2026
-- Host        : PC_Felipe running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/feant/Vivado/Pro1_ava/Pro1_ava.srcs/sources_1/bd/design_1/ip/design_1_arcade_fsm_0_0/design_1_arcade_fsm_0_0_stub.vhdl
-- Design      : design_1_arcade_fsm_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_arcade_fsm_0_0 is
  Port ( 
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

end design_1_arcade_fsm_0_0;

architecture stub of design_1_arcade_fsm_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,btn0,btn1,btn2,btn3,sw[3:0],leds[3:0],bank_response[3:0],bank_next_page,bank_bet_valid,bank_bet_ok,bank_bet_request[3:0],bank_game_result,bank_game_aviso,game_done,game_win,game_start_eins,game_start_zwei,game_start_drei";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "arcade_fsm,Vivado 2020.1";
begin
end;
