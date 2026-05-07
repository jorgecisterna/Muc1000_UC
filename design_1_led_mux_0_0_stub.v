// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Apr 16 16:45:40 2026
// Host        : PC_Felipe running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_led_mux_0_0 -prefix
//               design_1_led_mux_0_0_ design_1_led_mux_0_0_stub.v
// Design      : design_1_led_mux_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "led_manager,Vivado 2020.1" *)
module design_1_led_mux_0_0(clk, rst, g1, g2, g3, update, leds_fsm, leds_juego_1, 
  leds_juego_2, leds_juego_3, leds_final)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,g1,g2,g3,update,leds_fsm[3:0],leds_juego_1[3:0],leds_juego_2[3:0],leds_juego_3[3:0],leds_final[3:0]" */;
  input clk;
  input rst;
  input g1;
  input g2;
  input g3;
  input update;
  input [3:0]leds_fsm;
  input [3:0]leds_juego_1;
  input [3:0]leds_juego_2;
  input [3:0]leds_juego_3;
  output [3:0]leds_final;
endmodule
