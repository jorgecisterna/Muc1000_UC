// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed May  6 22:55:18 2026
// Host        : LAPTOP-OGSHLLCI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/nitro/Documents/SEP/P01_FIN/Pro1_ava/Pro1_ava.srcs/sources_1/bd/design_1/ip/design_1_game_selector_0_0/design_1_game_selector_0_0_sim_netlist.v
// Design      : design_1_game_selector_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_game_selector_0_0,game_selector,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "game_selector,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_game_selector_0_0
   (clk,
    rst,
    update_1,
    wol_1,
    update_2,
    wol_2,
    update_3,
    wol_3,
    update_out,
    wol_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input update_1;
  input wol_1;
  input update_2;
  input wol_2;
  input update_3;
  input wol_3;
  output update_out;
  output wol_out;

  wire clk;
  wire rst;
  wire update_1;
  wire update_2;
  wire update_3;
  wire update_out;
  wire wol_1;
  wire wol_2;
  wire wol_3;
  wire wol_out;

  design_1_game_selector_0_0_game_selector U0
       (.clk(clk),
        .rst(rst),
        .update_1(update_1),
        .update_2(update_2),
        .update_3(update_3),
        .update_out(update_out),
        .wol_1(wol_1),
        .wol_2(wol_2),
        .wol_3(wol_3),
        .wol_out(wol_out));
endmodule

(* ORIG_REF_NAME = "game_selector" *) 
module design_1_game_selector_0_0_game_selector
   (update_out,
    wol_out,
    clk,
    rst,
    update_1,
    update_2,
    update_3,
    wol_1,
    wol_2,
    wol_3);
  output update_out;
  output wol_out;
  input clk;
  input rst;
  input update_1;
  input update_2;
  input update_3;
  input wol_1;
  input wol_2;
  input wol_3;

  wire clk;
  wire rst;
  wire update_1;
  wire update_2;
  wire update_3;
  wire update_out;
  wire update_out__0_n_0;
  wire wol_1;
  wire wol_2;
  wire wol_3;
  wire wol_out;
  wire wol_out__0_n_0;

  LUT3 #(
    .INIT(8'h16)) 
    update_out__0
       (.I0(update_1),
        .I1(update_2),
        .I2(update_3),
        .O(update_out__0_n_0));
  FDCE update_out_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(update_out__0_n_0),
        .Q(update_out));
  LUT6 #(
    .INIT(64'h0033308800003088)) 
    wol_out__0
       (.I0(wol_1),
        .I1(update_1),
        .I2(wol_2),
        .I3(update_2),
        .I4(update_3),
        .I5(wol_3),
        .O(wol_out__0_n_0));
  FDCE wol_out_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(wol_out__0_n_0),
        .Q(wol_out));
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
