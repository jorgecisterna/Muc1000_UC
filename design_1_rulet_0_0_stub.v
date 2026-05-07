// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu May  7 01:56:17 2026
// Host        : LAPTOP-OGSHLLCI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/nitro/Documents/SEP/P01_FIN/Pro1_ava/Pro1_ava.srcs/sources_1/bd/design_1/ip/design_1_rulet_0_0/design_1_rulet_0_0_stub.v
// Design      : design_1_rulet_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "rulet,Vivado 2020.1" *)
module design_1_rulet_0_0(clk, ini, reset, sw, acep, wol, leds, update)
/* synthesis syn_black_box black_box_pad_pin="clk,ini,reset,sw[3:0],acep,wol,leds[3:0],update" */;
  input clk;
  input ini;
  input reset;
  input [3:0]sw;
  input acep;
  output wol;
  output [3:0]leds;
  output update;
endmodule
