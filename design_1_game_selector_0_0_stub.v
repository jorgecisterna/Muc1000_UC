// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed May  6 22:55:18 2026
// Host        : LAPTOP-OGSHLLCI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/nitro/Documents/SEP/P01_FIN/Pro1_ava/Pro1_ava.srcs/sources_1/bd/design_1/ip/design_1_game_selector_0_0/design_1_game_selector_0_0_stub.v
// Design      : design_1_game_selector_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "game_selector,Vivado 2020.1" *)
module design_1_game_selector_0_0(clk, rst, update_1, wol_1, update_2, wol_2, update_3, 
  wol_3, update_out, wol_out)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,update_1,wol_1,update_2,wol_2,update_3,wol_3,update_out,wol_out" */;
  input clk;
  input rst;
  input update_1;
  input wol_1;
  input update_2;
  input wol_2;
  input update_3;
  input wol_3;
  output update_out;
  output wol_out;
endmodule
