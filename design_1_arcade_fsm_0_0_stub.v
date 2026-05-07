// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sun May  3 23:19:19 2026
// Host        : PC_Felipe running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/feant/Vivado/Pro1_ava/Pro1_ava.srcs/sources_1/bd/design_1/ip/design_1_arcade_fsm_0_0/design_1_arcade_fsm_0_0_stub.v
// Design      : design_1_arcade_fsm_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "arcade_fsm,Vivado 2020.1" *)
module design_1_arcade_fsm_0_0(clk, rst, btn0, btn1, btn2, btn3, sw, leds, 
  bank_response, bank_next_page, bank_bet_valid, bank_bet_ok, bank_bet_request, 
  bank_game_result, bank_game_aviso, game_done, game_win, game_start_eins, game_start_zwei, 
  game_start_drei)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,btn0,btn1,btn2,btn3,sw[3:0],leds[3:0],bank_response[3:0],bank_next_page,bank_bet_valid,bank_bet_ok,bank_bet_request[3:0],bank_game_result,bank_game_aviso,game_done,game_win,game_start_eins,game_start_zwei,game_start_drei" */;
  input clk;
  input rst;
  input btn0;
  input btn1;
  input btn2;
  input btn3;
  input [3:0]sw;
  output [3:0]leds;
  input [3:0]bank_response;
  output bank_next_page;
  input bank_bet_valid;
  input bank_bet_ok;
  output [3:0]bank_bet_request;
  output bank_game_result;
  output bank_game_aviso;
  input game_done;
  input game_win;
  output game_start_eins;
  output game_start_zwei;
  output game_start_drei;
endmodule
