// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu May  7 00:34:05 2026
// Host        : LAPTOP-OGSHLLCI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_banco_0_0 -prefix
//               design_1_banco_0_0_ design_1_banco_0_0_sim_netlist.v
// Design      : design_1_banco_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_banco_0_0_banco
   (bank_bet_valid,
    bank_response,
    bank_bet_request,
    rst,
    bank_game_result,
    bank_game_aviso,
    clk,
    bank_next_page);
  output bank_bet_valid;
  output [3:0]bank_response;
  input [3:0]bank_bet_request;
  input rst;
  input bank_game_result;
  input bank_game_aviso;
  input clk;
  input bank_next_page;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \_inferred__2/i__carry__0_n_1 ;
  wire \_inferred__2/i__carry__0_n_2 ;
  wire \_inferred__2/i__carry__0_n_3 ;
  wire \_inferred__2/i__carry_n_0 ;
  wire \_inferred__2/i__carry_n_1 ;
  wire \_inferred__2/i__carry_n_2 ;
  wire \_inferred__2/i__carry_n_3 ;
  wire [3:0]bank_bet_request;
  wire \bank_bet_request_unsigned[3]_i_1_n_0 ;
  wire \bank_bet_request_unsigned_reg_n_0_[0] ;
  wire \bank_bet_request_unsigned_reg_n_0_[1] ;
  wire \bank_bet_request_unsigned_reg_n_0_[2] ;
  wire \bank_bet_request_unsigned_reg_n_0_[3] ;
  wire bank_bet_valid;
  wire bank_bet_valid0_carry_i_1_n_0;
  wire bank_bet_valid0_carry_i_2_n_0;
  wire bank_bet_valid0_carry_i_3_n_0;
  wire bank_bet_valid0_carry_i_4_n_0;
  wire bank_bet_valid0_carry_i_5_n_0;
  wire bank_bet_valid0_carry_i_6_n_0;
  wire bank_bet_valid0_carry_i_7_n_0;
  wire bank_bet_valid0_carry_i_8_n_0;
  wire bank_bet_valid0_carry_n_0;
  wire bank_bet_valid0_carry_n_1;
  wire bank_bet_valid0_carry_n_2;
  wire bank_bet_valid0_carry_n_3;
  wire bank_bet_valid_i_1_n_0;
  wire bank_game_aviso;
  wire bank_game_result;
  wire bank_next_page;
  wire [3:0]bank_response;
  wire clk;
  wire [7:0]dinero;
  wire [7:0]dinero0_in;
  wire dinero_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire p_1_in;
  wire rst;
  wire [3:3]\NLW__inferred__2/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]NLW_bank_bet_valid0_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hCCDDEEFFCCC8EEEA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bank_game_aviso),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .I4(bank_bet_valid0_carry_n_0),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(bank_game_aviso),
        .I4(\FSM_onehot_state[2]_i_2_n_0 ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAE0004)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(bank_game_aviso),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .I4(bank_bet_valid0_carry_n_0),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(bank_bet_request[3]),
        .I2(bank_bet_request[2]),
        .I3(bank_bet_request[0]),
        .I4(bank_bet_request[1]),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "confirmar:010,idle:001,actualizar:100" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(rst),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "confirmar:010,idle:001,actualizar:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "confirmar:010,idle:001,actualizar:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__2/i__carry_n_0 ,\_inferred__2/i__carry_n_1 ,\_inferred__2/i__carry_n_2 ,\_inferred__2/i__carry_n_3 }),
        .CYINIT(dinero[0]),
        .DI({dinero[3:1],p_1_in}),
        .O(dinero0_in[3:0]),
        .S({i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__2/i__carry__0 
       (.CI(\_inferred__2/i__carry_n_0 ),
        .CO({\NLW__inferred__2/i__carry__0_CO_UNCONNECTED [3],\_inferred__2/i__carry__0_n_1 ,\_inferred__2/i__carry__0_n_2 ,\_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,dinero[5:4],bank_game_result}),
        .O(dinero0_in[7:4]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
    \bank_bet_request_unsigned[3]_i_1 
       (.I0(bank_bet_request[1]),
        .I1(bank_bet_request[0]),
        .I2(bank_bet_request[2]),
        .I3(bank_bet_request[3]),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(rst),
        .O(\bank_bet_request_unsigned[3]_i_1_n_0 ));
  FDRE \bank_bet_request_unsigned_reg[0] 
       (.C(clk),
        .CE(\bank_bet_request_unsigned[3]_i_1_n_0 ),
        .D(bank_bet_request[0]),
        .Q(\bank_bet_request_unsigned_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \bank_bet_request_unsigned_reg[1] 
       (.C(clk),
        .CE(\bank_bet_request_unsigned[3]_i_1_n_0 ),
        .D(bank_bet_request[1]),
        .Q(\bank_bet_request_unsigned_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \bank_bet_request_unsigned_reg[2] 
       (.C(clk),
        .CE(\bank_bet_request_unsigned[3]_i_1_n_0 ),
        .D(bank_bet_request[2]),
        .Q(\bank_bet_request_unsigned_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \bank_bet_request_unsigned_reg[3] 
       (.C(clk),
        .CE(\bank_bet_request_unsigned[3]_i_1_n_0 ),
        .D(bank_bet_request[3]),
        .Q(\bank_bet_request_unsigned_reg_n_0_[3] ),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 bank_bet_valid0_carry
       (.CI(1'b0),
        .CO({bank_bet_valid0_carry_n_0,bank_bet_valid0_carry_n_1,bank_bet_valid0_carry_n_2,bank_bet_valid0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({bank_bet_valid0_carry_i_1_n_0,bank_bet_valid0_carry_i_2_n_0,bank_bet_valid0_carry_i_3_n_0,bank_bet_valid0_carry_i_4_n_0}),
        .O(NLW_bank_bet_valid0_carry_O_UNCONNECTED[3:0]),
        .S({bank_bet_valid0_carry_i_5_n_0,bank_bet_valid0_carry_i_6_n_0,bank_bet_valid0_carry_i_7_n_0,bank_bet_valid0_carry_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    bank_bet_valid0_carry_i_1
       (.I0(dinero[6]),
        .I1(dinero[7]),
        .O(bank_bet_valid0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    bank_bet_valid0_carry_i_2
       (.I0(dinero[4]),
        .I1(dinero[5]),
        .O(bank_bet_valid0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    bank_bet_valid0_carry_i_3
       (.I0(dinero[2]),
        .I1(\bank_bet_request_unsigned_reg_n_0_[2] ),
        .I2(\bank_bet_request_unsigned_reg_n_0_[3] ),
        .I3(dinero[3]),
        .O(bank_bet_valid0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    bank_bet_valid0_carry_i_4
       (.I0(dinero[0]),
        .I1(\bank_bet_request_unsigned_reg_n_0_[0] ),
        .I2(\bank_bet_request_unsigned_reg_n_0_[1] ),
        .I3(dinero[1]),
        .O(bank_bet_valid0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bank_bet_valid0_carry_i_5
       (.I0(dinero[6]),
        .I1(dinero[7]),
        .O(bank_bet_valid0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bank_bet_valid0_carry_i_6
       (.I0(dinero[4]),
        .I1(dinero[5]),
        .O(bank_bet_valid0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bank_bet_valid0_carry_i_7
       (.I0(dinero[2]),
        .I1(\bank_bet_request_unsigned_reg_n_0_[2] ),
        .I2(dinero[3]),
        .I3(\bank_bet_request_unsigned_reg_n_0_[3] ),
        .O(bank_bet_valid0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    bank_bet_valid0_carry_i_8
       (.I0(dinero[0]),
        .I1(\bank_bet_request_unsigned_reg_n_0_[0] ),
        .I2(dinero[1]),
        .I3(\bank_bet_request_unsigned_reg_n_0_[1] ),
        .O(bank_bet_valid0_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bank_bet_valid_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(bank_bet_valid0_carry_n_0),
        .O(bank_bet_valid_i_1_n_0));
  FDCE bank_bet_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(bank_bet_valid_i_1_n_0),
        .Q(bank_bet_valid));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank_response[0]_INST_0 
       (.I0(dinero[4]),
        .I1(bank_next_page),
        .I2(dinero[0]),
        .O(bank_response[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank_response[1]_INST_0 
       (.I0(dinero[5]),
        .I1(bank_next_page),
        .I2(dinero[1]),
        .O(bank_response[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank_response[2]_INST_0 
       (.I0(dinero[6]),
        .I1(bank_next_page),
        .I2(dinero[2]),
        .O(bank_response[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank_response[3]_INST_0 
       (.I0(dinero[7]),
        .I1(bank_next_page),
        .I2(dinero[3]),
        .O(bank_response[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \dinero[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bank_game_aviso),
        .O(dinero_0));
  FDCE #(
    .INIT(1'b0)) 
    \dinero_reg[0] 
       (.C(clk),
        .CE(dinero_0),
        .CLR(rst),
        .D(dinero0_in[0]),
        .Q(dinero[0]));
  FDCE #(
    .INIT(1'b0)) 
    \dinero_reg[1] 
       (.C(clk),
        .CE(dinero_0),
        .CLR(rst),
        .D(dinero0_in[1]),
        .Q(dinero[1]));
  FDPE #(
    .INIT(1'b1)) 
    \dinero_reg[2] 
       (.C(clk),
        .CE(dinero_0),
        .D(dinero0_in[2]),
        .PRE(rst),
        .Q(dinero[2]));
  FDCE #(
    .INIT(1'b0)) 
    \dinero_reg[3] 
       (.C(clk),
        .CE(dinero_0),
        .CLR(rst),
        .D(dinero0_in[3]),
        .Q(dinero[3]));
  FDCE #(
    .INIT(1'b0)) 
    \dinero_reg[4] 
       (.C(clk),
        .CE(dinero_0),
        .CLR(rst),
        .D(dinero0_in[4]),
        .Q(dinero[4]));
  FDPE #(
    .INIT(1'b1)) 
    \dinero_reg[5] 
       (.C(clk),
        .CE(dinero_0),
        .D(dinero0_in[5]),
        .PRE(rst),
        .Q(dinero[5]));
  FDPE #(
    .INIT(1'b1)) 
    \dinero_reg[6] 
       (.C(clk),
        .CE(dinero_0),
        .D(dinero0_in[6]),
        .PRE(rst),
        .Q(dinero[6]));
  FDCE #(
    .INIT(1'b0)) 
    \dinero_reg[7] 
       (.C(clk),
        .CE(dinero_0),
        .CLR(rst),
        .D(dinero0_in[7]),
        .Q(dinero[7]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(dinero[6]),
        .I1(dinero[7]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2
       (.I0(dinero[5]),
        .I1(dinero[6]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3
       (.I0(dinero[4]),
        .I1(dinero[5]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4
       (.I0(dinero[4]),
        .I1(bank_game_result),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(bank_game_result),
        .O(p_1_in));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry_i_2
       (.I0(\bank_bet_request_unsigned_reg_n_0_[3] ),
        .I1(bank_game_result),
        .I2(dinero[3]),
        .O(i__carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry_i_3
       (.I0(\bank_bet_request_unsigned_reg_n_0_[2] ),
        .I1(bank_game_result),
        .I2(dinero[2]),
        .O(i__carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry_i_4
       (.I0(\bank_bet_request_unsigned_reg_n_0_[1] ),
        .I1(bank_game_result),
        .I2(dinero[1]),
        .O(i__carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_5
       (.I0(\bank_bet_request_unsigned_reg_n_0_[0] ),
        .O(i__carry_i_5_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_banco_0_0,banco,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "banco,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_banco_0_0
   (clk,
    rst,
    bank_game_result,
    bank_game_aviso,
    bank_bet_request,
    bank_next_page,
    bank_response,
    bank_bet_valid,
    bank_bet_ok);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset:rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input bank_game_result;
  input bank_game_aviso;
  input [3:0]bank_bet_request;
  input bank_next_page;
  output [3:0]bank_response;
  output bank_bet_valid;
  output bank_bet_ok;

  wire \<const1> ;
  wire [3:0]bank_bet_request;
  wire bank_bet_valid;
  wire bank_game_aviso;
  wire bank_game_result;
  wire bank_next_page;
  wire [3:0]bank_response;
  wire clk;
  wire rst;

  assign bank_bet_ok = \<const1> ;
  design_1_banco_0_0_banco U0
       (.bank_bet_request(bank_bet_request),
        .bank_bet_valid(bank_bet_valid),
        .bank_game_aviso(bank_game_aviso),
        .bank_game_result(bank_game_result),
        .bank_next_page(bank_next_page),
        .bank_response(bank_response),
        .clk(clk),
        .rst(rst));
  VCC VCC
       (.P(\<const1> ));
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
