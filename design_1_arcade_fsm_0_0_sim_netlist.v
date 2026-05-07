// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sun May  3 23:19:19 2026
// Host        : PC_Felipe running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/feant/Vivado/Pro1_ava/Pro1_ava.srcs/sources_1/bd/design_1/ip/design_1_arcade_fsm_0_0/design_1_arcade_fsm_0_0_sim_netlist.v
// Design      : design_1_arcade_fsm_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_arcade_fsm_0_0,arcade_fsm,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "arcade_fsm,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_arcade_fsm_0_0
   (clk,
    rst,
    btn0,
    btn1,
    btn2,
    btn3,
    sw,
    leds,
    bank_response,
    bank_next_page,
    bank_bet_valid,
    bank_bet_ok,
    bank_bet_request,
    bank_game_result,
    bank_game_aviso,
    game_done,
    game_win,
    game_start_eins,
    game_start_zwei,
    game_start_drei);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
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

  wire bank_bet_ok;
  wire [3:0]bank_bet_request;
  wire bank_bet_valid;
  wire bank_game_aviso;
  wire bank_game_result;
  wire bank_next_page;
  wire [3:0]bank_response;
  wire btn0;
  wire btn1;
  wire btn2;
  wire btn3;
  wire clk;
  wire game_done;
  wire game_start_drei;
  wire game_start_eins;
  wire game_start_zwei;
  wire game_win;
  wire [3:0]leds;
  wire rst;
  wire [3:0]sw;

  design_1_arcade_fsm_0_0_arcade_fsm U0
       (.bank_bet_ok(bank_bet_ok),
        .bank_bet_request(bank_bet_request),
        .bank_bet_valid(bank_bet_valid),
        .bank_game_aviso(bank_game_aviso),
        .bank_game_result(bank_game_result),
        .bank_next_page(bank_next_page),
        .bank_response(bank_response),
        .btn0(btn0),
        .btn1(btn1),
        .btn2(btn2),
        .btn3(btn3),
        .clk(clk),
        .game_done(game_done),
        .game_start_drei(game_start_drei),
        .game_start_eins(game_start_eins),
        .game_start_zwei(game_start_zwei),
        .game_win(game_win),
        .leds(leds),
        .rst(rst),
        .sw(sw));
endmodule

(* ORIG_REF_NAME = "arcade_fsm" *) 
module design_1_arcade_fsm_0_0_arcade_fsm
   (leds,
    game_start_drei,
    bank_next_page,
    game_start_zwei,
    game_start_eins,
    bank_game_aviso,
    bank_game_result,
    bank_bet_request,
    btn3,
    btn2,
    btn1,
    bank_response,
    bank_bet_ok,
    btn0,
    clk,
    rst,
    game_win,
    game_done,
    sw,
    bank_bet_valid);
  output [3:0]leds;
  output game_start_drei;
  output bank_next_page;
  output game_start_zwei;
  output game_start_eins;
  output bank_game_aviso;
  output bank_game_result;
  output [3:0]bank_bet_request;
  input btn3;
  input btn2;
  input btn1;
  input [3:0]bank_response;
  input bank_bet_ok;
  input btn0;
  input clk;
  input rst;
  input game_win;
  input game_done;
  input [3:0]sw;
  input bank_bet_valid;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire bank_bet_ok;
  wire [3:0]bank_bet_request;
  wire bank_bet_valid;
  wire bank_game_aviso;
  wire bank_game_result;
  wire bank_next_page;
  wire [3:0]bank_response;
  wire btn0;
  wire btn1;
  wire btn2;
  wire btn3;
  wire clk;
  wire game_done;
  wire \game_selected[0]_i_1_n_0 ;
  wire \game_selected[0]_i_2_n_0 ;
  wire \game_selected[0]_i_3_n_0 ;
  wire \game_selected[1]_i_1_n_0 ;
  wire \game_selected[1]_i_2_n_0 ;
  wire \game_selected[1]_i_3_n_0 ;
  wire \game_selected_reg_n_0_[0] ;
  wire \game_selected_reg_n_0_[1] ;
  wire game_start_drei;
  wire game_start_eins;
  wire game_start_zwei;
  wire game_win;
  wire [3:0]leds;
  wire rst;
  wire [2:0]state__0;
  wire [3:0]sw;
  wire win_reg0;
  wire win_reg_i_1_n_0;
  wire win_reg_reg_n_0;

  LUT6 #(
    .INIT(64'h0001FFFF0FFC0000)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(btn0),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(\FSM_sequential_state[2]_i_3_n_0 ),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00AA550CFF00FF00)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[0]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(btn0),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(\FSM_sequential_state[2]_i_3_n_0 ),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(btn1),
        .I1(btn3),
        .I2(btn2),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0FFFFFFF80000000)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state__0[0]),
        .I1(bank_bet_ok),
        .I2(state__0[1]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .I4(\FSM_sequential_state[2]_i_3_n_0 ),
        .I5(state__0[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(btn0),
        .I3(btn2),
        .I4(btn3),
        .I5(btn1),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h75FF7577)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(game_done),
        .I3(state__0[2]),
        .I4(bank_bet_valid),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "wait_bank:011,wait_game:101,update_bank:110,bank_msb:001,send_bet:010,bank_lsb:000,start_game:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "wait_bank:011,wait_game:101,update_bank:110,bank_msb:001,send_bet:010,bank_lsb:000,start_game:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]));
  (* FSM_ENCODED_STATES = "wait_bank:011,wait_game:101,update_bank:110,bank_msb:001,send_bet:010,bank_lsb:000,start_game:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \bank_bet_request[0]_INST_0 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(sw[0]),
        .O(bank_bet_request[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \bank_bet_request[1]_INST_0 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(sw[1]),
        .O(bank_bet_request[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \bank_bet_request[2]_INST_0 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(sw[2]),
        .O(bank_bet_request[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \bank_bet_request[3]_INST_0 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(sw[3]),
        .O(bank_bet_request[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    bank_game_aviso_INST_0
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(bank_game_aviso));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    bank_game_result_INST_0
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(win_reg_reg_n_0),
        .I3(state__0[1]),
        .O(bank_game_result));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h02)) 
    bank_next_page_INST_0
       (.I0(btn0),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .O(bank_next_page));
  LUT6 #(
    .INIT(64'hFFFEEFFE00022002)) 
    \game_selected[0]_i_1 
       (.I0(\game_selected[0]_i_2_n_0 ),
        .I1(\game_selected[0]_i_3_n_0 ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .I5(\game_selected_reg_n_0_[0] ),
        .O(\game_selected[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00F2)) 
    \game_selected[0]_i_2 
       (.I0(btn3),
        .I1(btn2),
        .I2(btn1),
        .I3(state__0[2]),
        .O(\game_selected[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h44444445)) 
    \game_selected[0]_i_3 
       (.I0(state__0[2]),
        .I1(btn0),
        .I2(btn1),
        .I3(btn3),
        .I4(btn2),
        .O(\game_selected[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00F300000002)) 
    \game_selected[1]_i_1 
       (.I0(\game_selected[1]_i_2_n_0 ),
        .I1(btn1),
        .I2(btn0),
        .I3(state__0[2]),
        .I4(\game_selected[1]_i_3_n_0 ),
        .I5(\game_selected_reg_n_0_[1] ),
        .O(\game_selected[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \game_selected[1]_i_2 
       (.I0(btn2),
        .I1(btn3),
        .O(\game_selected[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBC)) 
    \game_selected[1]_i_3 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .O(\game_selected[1]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \game_selected_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\game_selected[0]_i_1_n_0 ),
        .Q(\game_selected_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \game_selected_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\game_selected[1]_i_1_n_0 ),
        .Q(\game_selected_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    game_start_drei_INST_0
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\game_selected_reg_n_0_[0] ),
        .I3(\game_selected_reg_n_0_[1] ),
        .I4(state__0[2]),
        .O(game_start_drei));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    game_start_eins_INST_0
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\game_selected_reg_n_0_[0] ),
        .I3(\game_selected_reg_n_0_[1] ),
        .I4(state__0[2]),
        .O(game_start_eins));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    game_start_zwei_INST_0
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\game_selected_reg_n_0_[1] ),
        .I3(\game_selected_reg_n_0_[0] ),
        .I4(state__0[2]),
        .O(game_start_zwei));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \leds[0]_INST_0 
       (.I0(bank_response[0]),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .O(leds[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \leds[1]_INST_0 
       (.I0(bank_response[1]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .O(leds[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \leds[2]_INST_0 
       (.I0(bank_response[2]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .O(leds[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \leds[3]_INST_0 
       (.I0(bank_response[3]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .O(leds[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    win_reg_i_1
       (.I0(game_win),
        .I1(win_reg0),
        .I2(win_reg_reg_n_0),
        .O(win_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    win_reg_i_2
       (.I0(game_done),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(rst),
        .O(win_reg0));
  FDRE #(
    .INIT(1'b0)) 
    win_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(win_reg_i_1_n_0),
        .Q(win_reg_reg_n_0),
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
