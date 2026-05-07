// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu May  7 01:56:17 2026
// Host        : LAPTOP-OGSHLLCI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/nitro/Documents/SEP/P01_FIN/Pro1_ava/Pro1_ava.srcs/sources_1/bd/design_1/ip/design_1_rulet_0_0/design_1_rulet_0_0_sim_netlist.v
// Design      : design_1_rulet_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_rulet_0_0,rulet,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "rulet,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_rulet_0_0
   (clk,
    ini,
    reset,
    sw,
    acep,
    wol,
    leds,
    update);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input ini;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [3:0]sw;
  input acep;
  output wol;
  output [3:0]leds;
  output update;

  wire acep;
  wire clk;
  wire ini;
  wire [3:0]leds;
  wire reset;
  wire [3:0]sw;
  wire update;
  wire wol;

  (* DEBUG_MODE = "TRUE" *) 
  (* WIN_MODE = "50" *) 
  design_1_rulet_0_0_rulet U0
       (.acep(acep),
        .clk(clk),
        .ini(ini),
        .leds(leds),
        .reset(reset),
        .sw(sw),
        .update(update),
        .wol(wol));
endmodule

(* DEBUG_MODE = "TRUE" *) (* ORIG_REF_NAME = "rulet" *) (* WIN_MODE = "50" *) 
module design_1_rulet_0_0_rulet
   (clk,
    ini,
    reset,
    sw,
    acep,
    wol,
    leds,
    update);
  input clk;
  input ini;
  input reset;
  input [3:0]sw;
  input acep;
  output wol;
  output [3:0]leds;
  output update;

  wire \<const0> ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire acep;
  wire acep_prev_i_1_n_0;
  wire acep_prev_reg_n_0;
  wire apu_reg;
  wire apu_reg__0;
  wire apu_reg_i_1_n_0;
  wire apu_reg_i_2_n_0;
  wire cambio;
  wire cambio_i_1_n_0;
  wire clk;
  wire ini;
  wire [3:0]\^leds ;
  wire [1:1]lfsr;
  wire [3:0]lfsr__0;
  wire [0:0]p_0_out;
  wire reset;
  wire resu_reg_i_1_n_0;
  wire [2:0]state;
  wire [2:2]state__0;
  wire [3:0]sw;
  wire update;
  wire update0;
  wire update_i_1_n_0;
  wire wol;
  wire wol_i_1_n_0;
  wire wol_i_2_n_0;
  wire wol_reg_i_1_n_0;
  wire wol_reg_i_2_n_0;

  assign leds[3:2] = \^leds [3:2];
  assign leds[1] = \<const0> ;
  assign leds[0] = \^leds [0];
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003E3F3E003E003E)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(ini),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(acep_prev_reg_n_0),
        .I5(acep),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h24)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(state__0));
  (* FSM_ENCODED_STATES = "esp:000,idle:001,resultado:010,decision:011,pago:100,res:101," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "esp:000,idle:001,resultado:010,decision:011,pago:100,res:101," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "esp:000,idle:001,resultado:010,decision:011,pago:100,res:101," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .CLR(reset),
        .D(state__0),
        .Q(state[2]));
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFF2A2800002A28)) 
    acep_prev_i_1
       (.I0(acep),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(reset),
        .I5(acep_prev_reg_n_0),
        .O(acep_prev_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    acep_prev_reg
       (.C(clk),
        .CE(1'b1),
        .D(acep_prev_i_1_n_0),
        .Q(acep_prev_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    apu_reg_i_1
       (.I0(apu_reg_i_2_n_0),
        .I1(apu_reg),
        .I2(reset),
        .I3(apu_reg__0),
        .O(apu_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00404440)) 
    apu_reg_i_2
       (.I0(state[2]),
        .I1(state[0]),
        .I2(sw[0]),
        .I3(state[1]),
        .I4(apu_reg__0),
        .O(apu_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h0400045500000455)) 
    apu_reg_i_3
       (.I0(state[2]),
        .I1(acep),
        .I2(acep_prev_reg_n_0),
        .I3(state[0]),
        .I4(state[1]),
        .I5(sw[0]),
        .O(apu_reg));
  FDRE #(
    .INIT(1'b0)) 
    apu_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(apu_reg_i_1_n_0),
        .Q(apu_reg__0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF40FF00004000)) 
    cambio_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(sw[0]),
        .I3(cambio),
        .I4(reset),
        .I5(\^leds [2]),
        .O(cambio_i_1_n_0));
  LUT6 #(
    .INIT(64'h0141010101010101)) 
    cambio_i_2
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(acep_prev_reg_n_0),
        .I4(acep),
        .I5(sw[0]),
        .O(cambio));
  FDRE cambio_reg
       (.C(clk),
        .CE(1'b1),
        .D(cambio_i_1_n_0),
        .Q(\^leds [2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr[0]_i_1 
       (.I0(lfsr__0[2]),
        .I1(lfsr__0[3]),
        .O(p_0_out));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out),
        .Q(lfsr__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \lfsr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(lfsr__0[0]),
        .Q(lfsr),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(lfsr),
        .Q(lfsr__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \lfsr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(lfsr__0[2]),
        .Q(lfsr__0[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFF800000008)) 
    resu_reg_i_1
       (.I0(state[1]),
        .I1(lfsr),
        .I2(state[2]),
        .I3(state[0]),
        .I4(reset),
        .I5(\^leds [3]),
        .O(resu_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    resu_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(resu_reg_i_1_n_0),
        .Q(\^leds [3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF200000002000)) 
    update_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(update0),
        .I4(reset),
        .I5(update),
        .O(update_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    update_i_2
       (.I0(acep),
        .I1(acep_prev_reg_n_0),
        .O(update0));
  FDRE update_reg
       (.C(clk),
        .CE(1'b1),
        .D(update_i_1_n_0),
        .Q(update),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    wol_i_1
       (.I0(state[1]),
        .I1(\^leds [0]),
        .I2(state[2]),
        .I3(wol_i_2_n_0),
        .I4(wol),
        .O(wol_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000000400F)) 
    wol_i_2
       (.I0(acep_prev_reg_n_0),
        .I1(acep),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(reset),
        .O(wol_i_2_n_0));
  FDRE wol_reg
       (.C(clk),
        .CE(1'b1),
        .D(wol_i_1_n_0),
        .Q(wol),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    wol_reg_i_1
       (.I0(wol_reg_i_2_n_0),
        .I1(state[1]),
        .I2(state[0]),
        .I3(reset),
        .I4(\^leds [0]),
        .O(wol_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4100)) 
    wol_reg_i_2
       (.I0(state[1]),
        .I1(\^leds [3]),
        .I2(apu_reg__0),
        .I3(state[2]),
        .O(wol_reg_i_2_n_0));
  FDRE wol_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(wol_reg_i_1_n_0),
        .Q(\^leds [0]),
        .R(1'b0));
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
