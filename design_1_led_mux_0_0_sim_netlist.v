// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Apr 16 16:45:40 2026
// Host        : PC_Felipe running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_led_mux_0_0 -prefix
//               design_1_led_mux_0_0_ design_1_led_mux_0_0_sim_netlist.v
// Design      : design_1_led_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_led_mux_0_0,led_manager,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "led_manager,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_led_mux_0_0
   (clk,
    rst,
    g1,
    g2,
    g3,
    update,
    leds_fsm,
    leds_juego_1,
    leds_juego_2,
    leds_juego_3,
    leds_final);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input g1;
  input g2;
  input g3;
  input update;
  input [3:0]leds_fsm;
  input [3:0]leds_juego_1;
  input [3:0]leds_juego_2;
  input [3:0]leds_juego_3;
  output [3:0]leds_final;

  wire clk;
  wire g1;
  wire g2;
  wire g3;
  wire [3:0]leds_final;
  wire [3:0]leds_fsm;
  wire [3:0]leds_juego_1;
  wire [3:0]leds_juego_2;
  wire [3:0]leds_juego_3;
  wire rst;
  wire update;

  design_1_led_mux_0_0_led_manager U0
       (.clk(clk),
        .g1(g1),
        .g2(g2),
        .g3(g3),
        .leds_final(leds_final),
        .leds_fsm(leds_fsm),
        .leds_juego_1(leds_juego_1),
        .leds_juego_2(leds_juego_2),
        .leds_juego_3(leds_juego_3),
        .rst(rst),
        .update(update));
endmodule

module design_1_led_mux_0_0_led_manager
   (leds_final,
    leds_juego_2,
    leds_juego_1,
    leds_fsm,
    leds_juego_3,
    clk,
    rst,
    update,
    g2,
    g3,
    g1);
  output [3:0]leds_final;
  input [3:0]leds_juego_2;
  input [3:0]leds_juego_1;
  input [3:0]leds_fsm;
  input [3:0]leds_juego_3;
  input clk;
  input rst;
  input update;
  input g2;
  input g3;
  input g1;

  wire clk;
  wire g1;
  wire g2;
  wire g3;
  wire [3:0]leds_final;
  wire [3:0]leds_fsm;
  wire [3:0]leds_juego_1;
  wire [3:0]leds_juego_2;
  wire [3:0]leds_juego_3;
  wire rst;
  wire [1:0]\^selector ;
  wire \selector[0]_i_1_n_0 ;
  wire \selector[1]_i_1_n_0 ;
  wire selector_n_0;
  wire update;

  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \leds_final[0]_INST_0 
       (.I0(leds_juego_2[0]),
        .I1(leds_juego_1[0]),
        .I2(leds_fsm[0]),
        .I3(\^selector [1]),
        .I4(\^selector [0]),
        .I5(leds_juego_3[0]),
        .O(leds_final[0]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \leds_final[1]_INST_0 
       (.I0(leds_juego_2[1]),
        .I1(leds_juego_1[1]),
        .I2(leds_fsm[1]),
        .I3(\^selector [1]),
        .I4(\^selector [0]),
        .I5(leds_juego_3[1]),
        .O(leds_final[1]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \leds_final[2]_INST_0 
       (.I0(leds_juego_2[2]),
        .I1(leds_juego_1[2]),
        .I2(leds_fsm[2]),
        .I3(\^selector [1]),
        .I4(\^selector [0]),
        .I5(leds_juego_3[2]),
        .O(leds_final[2]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \leds_final[3]_INST_0 
       (.I0(leds_juego_2[3]),
        .I1(leds_juego_1[3]),
        .I2(leds_fsm[3]),
        .I3(\^selector [1]),
        .I4(\^selector [0]),
        .I5(leds_juego_3[3]),
        .O(leds_final[3]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    selector
       (.I0(update),
        .I1(g2),
        .I2(g3),
        .I3(g1),
        .O(selector_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00F2)) 
    \selector[0]_i_1 
       (.I0(g3),
        .I1(g2),
        .I2(g1),
        .I3(update),
        .O(\selector[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0054)) 
    \selector[1]_i_1 
       (.I0(g1),
        .I1(g2),
        .I2(g3),
        .I3(update),
        .O(\selector[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \selector_reg[0] 
       (.C(clk),
        .CE(selector_n_0),
        .CLR(rst),
        .D(\selector[0]_i_1_n_0 ),
        .Q(\^selector [0]));
  FDCE #(
    .INIT(1'b0)) 
    \selector_reg[1] 
       (.C(clk),
        .CE(selector_n_0),
        .CLR(rst),
        .D(\selector[1]_i_1_n_0 ),
        .Q(\^selector [1]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
