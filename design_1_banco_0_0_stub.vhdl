-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu May  7 00:34:05 2026
-- Host        : LAPTOP-OGSHLLCI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_banco_0_0 -prefix
--               design_1_banco_0_0_ design_1_banco_0_0_stub.vhdl
-- Design      : design_1_banco_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_banco_0_0 is
  Port ( 
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

end design_1_banco_0_0;

architecture stub of design_1_banco_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,bank_game_result,bank_game_aviso,bank_bet_request[3:0],bank_next_page,bank_response[3:0],bank_bet_valid,bank_bet_ok";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "banco,Vivado 2020.1";
begin
end;
