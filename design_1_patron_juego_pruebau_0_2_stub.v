// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu May  7 02:06:52 2026
// Host        : LAPTOP-OGSHLLCI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/nitro/Documents/SEP/P01_FIN/Pro1_ava/Pro1_ava.srcs/sources_1/bd/design_1/ip/design_1_patron_juego_pruebau_0_2/design_1_patron_juego_pruebau_0_2_stub.v
// Design      : design_1_patron_juego_pruebau_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "patron_juego,Vivado 2020.1" *)
module design_1_patron_juego_pruebau_0_2(clks, rst, patron, sw, bt0, start, leds, rgb, wol, valid)
/* synthesis syn_black_box black_box_pad_pin="clks,rst,patron[7:0],sw[3:0],bt0,start,leds[3:0],rgb[2:0],wol,valid" */;
  input clks;
  input rst;
  input [7:0]patron;
  input [3:0]sw;
  input bt0;
  input start;
  output [3:0]leds;
  output [2:0]rgb;
  output wol;
  output valid;
endmodule
