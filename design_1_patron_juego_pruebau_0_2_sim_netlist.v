// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu May  7 02:06:52 2026
// Host        : LAPTOP-OGSHLLCI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/nitro/Documents/SEP/P01_FIN/Pro1_ava/Pro1_ava.srcs/sources_1/bd/design_1/ip/design_1_patron_juego_pruebau_0_2/design_1_patron_juego_pruebau_0_2_sim_netlist.v
// Design      : design_1_patron_juego_pruebau_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_patron_juego_pruebau_0_2,patron_juego,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "patron_juego,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_patron_juego_pruebau_0_2
   (clks,
    rst,
    patron,
    sw,
    bt0,
    start,
    leds,
    rgb,
    wol,
    valid);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clks;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [7:0]patron;
  input [3:0]sw;
  input bt0;
  input start;
  output [3:0]leds;
  output [2:0]rgb;
  output wol;
  output valid;

  wire bt0;
  wire clks;
  wire [3:0]leds;
  wire [7:0]patron;
  wire [2:0]rgb;
  wire rst;
  wire start;
  wire [3:0]sw;
  wire valid;
  wire wol;

  design_1_patron_juego_pruebau_0_2_patron_juego U0
       (.bt0(bt0),
        .clks(clks),
        .leds(leds),
        .patron(patron),
        .rgb(rgb),
        .rst(rst),
        .start(start),
        .sw(sw),
        .valid(valid),
        .wol(wol));
endmodule

(* ORIG_REF_NAME = "patron_juego" *) 
module design_1_patron_juego_pruebau_0_2_patron_juego
   (leds,
    rgb,
    wol,
    valid,
    bt0,
    rst,
    clks,
    patron,
    sw,
    start);
  output [3:0]leds;
  output [2:0]rgb;
  output wol;
  output valid;
  input bt0;
  input rst;
  input clks;
  input [7:0]patron;
  input [3:0]sw;
  input start;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire bt0;
  wire bt_prev;
  wire bt_prev_i_1_n_0;
  wire clks;
  wire [3:0]leds;
  wire [3:3]leds_reg;
  wire \leds_reg[0]_i_1_n_0 ;
  wire \leds_reg[1]_i_1_n_0 ;
  wire \leds_reg[1]_i_2_n_0 ;
  wire \leds_reg[1]_i_3_n_0 ;
  wire \leds_reg[2]_i_1_n_0 ;
  wire \leds_reg[2]_i_2_n_0 ;
  wire \leds_reg[3]_i_1_n_0 ;
  wire \leds_reg[3]_i_3_n_0 ;
  wire \leds_reg[3]_i_4_n_0 ;
  wire \leds_reg[3]_i_5_n_0 ;
  wire \leds_reg[3]_i_6_n_0 ;
  wire \leds_reg[3]_i_8_n_0 ;
  wire \leds_reg[3]_i_9_n_0 ;
  wire [7:0]patron;
  wire patron_reg;
  wire \patron_reg[0]_i_1_n_0 ;
  wire \patron_reg[1]_i_1_n_0 ;
  wire \patron_reg[2]_i_1_n_0 ;
  wire \patron_reg[3]_i_1_n_0 ;
  wire \patron_reg[4]_i_1_n_0 ;
  wire \patron_reg[5]_i_1_n_0 ;
  wire \patron_reg[6]_i_1_n_0 ;
  wire \patron_reg[7]_i_2_n_0 ;
  wire \patron_reg_reg_n_0_[0] ;
  wire \patron_reg_reg_n_0_[1] ;
  wire \patron_reg_reg_n_0_[2] ;
  wire \patron_reg_reg_n_0_[3] ;
  wire \patron_reg_reg_n_0_[4] ;
  wire \patron_reg_reg_n_0_[5] ;
  wire \patron_reg_reg_n_0_[6] ;
  wire \patron_reg_reg_n_0_[7] ;
  wire [2:0]rgb;
  wire \rgb_reg[0]_i_1_n_0 ;
  wire \rgb_reg[1]_i_1_n_0 ;
  wire \rgb_reg[2]_i_1_n_0 ;
  wire \rgb_reg[2]_i_2_n_0 ;
  wire rst;
  wire start;
  wire [2:0]state__0;
  wire \step[0]_i_1_n_0 ;
  wire \step[1]_i_1_n_0 ;
  wire \step[1]_i_2_n_0 ;
  wire \step[1]_i_3_n_0 ;
  wire \step[2]_i_1_n_0 ;
  wire \step[2]_i_2_n_0 ;
  wire \step[2]_i_3_n_0 ;
  wire \step[2]_i_4_n_0 ;
  wire \step_reg_n_0_[0] ;
  wire \step_reg_n_0_[1] ;
  wire \step_reg_n_0_[2] ;
  wire [3:0]sw;
  wire user_input;
  wire user_input0;
  wire user_input05_out;
  wire valid;
  wire valid_i_1_n_0;
  wire valid_i_2_n_0;
  wire valid_reg__0;
  wire valid_reg_i_1_n_0;
  wire valid_reg_reg_n_0;
  wire [1:1]vidas;
  wire \vidas[0]_i_1_n_0 ;
  wire \vidas[0]_i_2_n_0 ;
  wire \vidas[0]_i_3_n_0 ;
  wire \vidas[1]_i_1_n_0 ;
  wire \vidas_reg_n_0_[0] ;
  wire \vidas_reg_n_0_[1] ;
  wire wol;
  wire wol2_out;
  wire wol_i_1_n_0;
  wire wol_reg_i_1_n_0;
  wire wol_reg_reg_n_0;

  LUT6 #(
    .INIT(64'h000EFFFF0F0F0000)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[1]),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(\FSM_sequential_state[0]_i_3_n_0 ),
        .I3(state__0[2]),
        .I4(\FSM_sequential_state[2]_i_3_n_0 ),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFB8EEAAFCAAFF)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\FSM_sequential_state[0]_i_4_n_0 ),
        .I1(\step_reg_n_0_[2] ),
        .I2(\step[2]_i_3_n_0 ),
        .I3(user_input),
        .I4(\leds_reg[3]_i_8_n_0 ),
        .I5(\leds_reg[3]_i_9_n_0 ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2020202020000020)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(\vidas_reg_n_0_[0] ),
        .I1(\vidas_reg_n_0_[1] ),
        .I2(\vidas[0]_i_3_n_0 ),
        .I3(\leds_reg[3]_i_8_n_0 ),
        .I4(\leds_reg[3]_i_9_n_0 ),
        .I5(\step_reg_n_0_[2] ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(\vidas_reg_n_0_[1] ),
        .I1(\vidas_reg_n_0_[0] ),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00FF0200)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(state__0[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h33FF3800)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(state__0[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000024000000)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\leds_reg[3]_i_9_n_0 ),
        .I1(\leds_reg[3]_i_8_n_0 ),
        .I2(user_input),
        .I3(\step_reg_n_0_[0] ),
        .I4(\step_reg_n_0_[1] ),
        .I5(\step_reg_n_0_[2] ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFB8003333B8)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\rgb_reg[2]_i_2_n_0 ),
        .I1(state__0[0]),
        .I2(start),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(\FSM_sequential_state[2]_i_4_n_0 ),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(bt0),
        .I1(bt_prev),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "wait_start:000,idle:001,res:101,win:100,show_result:011,lose:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clks),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]),
        .R(rst));
  (* FSM_ENCODED_STATES = "wait_start:000,idle:001,res:101,win:100,show_result:011,lose:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clks),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]),
        .R(rst));
  (* FSM_ENCODED_STATES = "wait_start:000,idle:001,res:101,win:100,show_result:011,lose:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clks),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state__0[2]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    bt_prev_i_1
       (.I0(bt0),
        .I1(rst),
        .I2(bt_prev),
        .O(bt_prev_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bt_prev_reg
       (.C(clks),
        .CE(1'b1),
        .D(bt_prev_i_1_n_0),
        .Q(bt_prev),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAABABBBBAA8A8888)) 
    \leds_reg[0]_i_1 
       (.I0(leds_reg),
        .I1(\leds_reg[3]_i_3_n_0 ),
        .I2(\step_reg_n_0_[0] ),
        .I3(\leds_reg[1]_i_3_n_0 ),
        .I4(\leds_reg[1]_i_2_n_0 ),
        .I5(leds[0]),
        .O(\leds_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABABABBBA8A8A888)) 
    \leds_reg[1]_i_1 
       (.I0(leds_reg),
        .I1(\leds_reg[3]_i_3_n_0 ),
        .I2(\leds_reg[1]_i_2_n_0 ),
        .I3(\step_reg_n_0_[0] ),
        .I4(\leds_reg[1]_i_3_n_0 ),
        .I5(leds[1]),
        .O(\leds_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8AAAAA8AAAAA)) 
    \leds_reg[1]_i_2 
       (.I0(\leds_reg[3]_i_6_n_0 ),
        .I1(\step_reg_n_0_[2] ),
        .I2(\step_reg_n_0_[1] ),
        .I3(user_input),
        .I4(\leds_reg[3]_i_8_n_0 ),
        .I5(\leds_reg[3]_i_9_n_0 ),
        .O(\leds_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFDB)) 
    \leds_reg[1]_i_3 
       (.I0(user_input),
        .I1(\leds_reg[3]_i_8_n_0 ),
        .I2(\leds_reg[3]_i_9_n_0 ),
        .I3(\step_reg_n_0_[2] ),
        .O(\leds_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAABABBBBAA8A8888)) 
    \leds_reg[2]_i_1 
       (.I0(leds_reg),
        .I1(\leds_reg[3]_i_3_n_0 ),
        .I2(\leds_reg[3]_i_4_n_0 ),
        .I3(\leds_reg[2]_i_2_n_0 ),
        .I4(\leds_reg[3]_i_6_n_0 ),
        .I5(leds[2]),
        .O(\leds_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \leds_reg[2]_i_2 
       (.I0(\step_reg_n_0_[2] ),
        .I1(\step_reg_n_0_[1] ),
        .I2(\step_reg_n_0_[0] ),
        .O(\leds_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAABABBBBAA8A8888)) 
    \leds_reg[3]_i_1 
       (.I0(leds_reg),
        .I1(\leds_reg[3]_i_3_n_0 ),
        .I2(\leds_reg[3]_i_4_n_0 ),
        .I3(\leds_reg[3]_i_5_n_0 ),
        .I4(\leds_reg[3]_i_6_n_0 ),
        .I5(leds[3]),
        .O(\leds_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAEAAEAA)) 
    \leds_reg[3]_i_2 
       (.I0(valid_reg__0),
        .I1(\vidas[0]_i_3_n_0 ),
        .I2(user_input),
        .I3(\leds_reg[3]_i_8_n_0 ),
        .I4(\leds_reg[3]_i_9_n_0 ),
        .I5(\step_reg_n_0_[2] ),
        .O(leds_reg));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \leds_reg[3]_i_3 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(\leds_reg[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0024)) 
    \leds_reg[3]_i_4 
       (.I0(user_input),
        .I1(\leds_reg[3]_i_8_n_0 ),
        .I2(\leds_reg[3]_i_9_n_0 ),
        .I3(\step_reg_n_0_[2] ),
        .O(\leds_reg[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \leds_reg[3]_i_5 
       (.I0(\step_reg_n_0_[2] ),
        .I1(\step_reg_n_0_[1] ),
        .I2(\step_reg_n_0_[0] ),
        .O(\leds_reg[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000060)) 
    \leds_reg[3]_i_6 
       (.I0(sw[1]),
        .I1(sw[0]),
        .I2(bt0),
        .I3(bt_prev),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(\leds_reg[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \leds_reg[3]_i_7 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .O(valid_reg__0));
  LUT6 #(
    .INIT(64'h3300550F33FF550F)) 
    \leds_reg[3]_i_8 
       (.I0(\patron_reg_reg_n_0_[4] ),
        .I1(\patron_reg_reg_n_0_[6] ),
        .I2(\patron_reg_reg_n_0_[0] ),
        .I3(\step_reg_n_0_[1] ),
        .I4(\step_reg_n_0_[0] ),
        .I5(\patron_reg_reg_n_0_[2] ),
        .O(\leds_reg[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h3300550F33FF550F)) 
    \leds_reg[3]_i_9 
       (.I0(\patron_reg_reg_n_0_[5] ),
        .I1(\patron_reg_reg_n_0_[7] ),
        .I2(\patron_reg_reg_n_0_[1] ),
        .I3(\step_reg_n_0_[1] ),
        .I4(\step_reg_n_0_[0] ),
        .I5(\patron_reg_reg_n_0_[3] ),
        .O(\leds_reg[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \leds_reg_reg[0] 
       (.C(clks),
        .CE(1'b1),
        .D(\leds_reg[0]_i_1_n_0 ),
        .Q(leds[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \leds_reg_reg[1] 
       (.C(clks),
        .CE(1'b1),
        .D(\leds_reg[1]_i_1_n_0 ),
        .Q(leds[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \leds_reg_reg[2] 
       (.C(clks),
        .CE(1'b1),
        .D(\leds_reg[2]_i_1_n_0 ),
        .Q(leds[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \leds_reg_reg[3] 
       (.C(clks),
        .CE(1'b1),
        .D(\leds_reg[3]_i_1_n_0 ),
        .Q(leds[3]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \patron_reg[0]_i_1 
       (.I0(patron[0]),
        .I1(sw[2]),
        .I2(sw[3]),
        .O(\patron_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \patron_reg[1]_i_1 
       (.I0(patron[1]),
        .I1(sw[2]),
        .I2(sw[3]),
        .O(\patron_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    \patron_reg[2]_i_1 
       (.I0(patron[2]),
        .I1(sw[2]),
        .I2(sw[3]),
        .O(\patron_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \patron_reg[3]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(patron[3]),
        .O(\patron_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \patron_reg[4]_i_1 
       (.I0(patron[4]),
        .I1(sw[2]),
        .I2(sw[3]),
        .O(\patron_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \patron_reg[5]_i_1 
       (.I0(patron[5]),
        .I1(sw[2]),
        .I2(sw[3]),
        .O(\patron_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \patron_reg[6]_i_1 
       (.I0(patron[6]),
        .I1(sw[2]),
        .I2(sw[3]),
        .O(\patron_reg[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \patron_reg[7]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(start),
        .I3(state__0[0]),
        .O(patron_reg));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \patron_reg[7]_i_2 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(patron[7]),
        .O(\patron_reg[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \patron_reg_reg[0] 
       (.C(clks),
        .CE(patron_reg),
        .D(\patron_reg[0]_i_1_n_0 ),
        .Q(\patron_reg_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \patron_reg_reg[1] 
       (.C(clks),
        .CE(patron_reg),
        .D(\patron_reg[1]_i_1_n_0 ),
        .Q(\patron_reg_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \patron_reg_reg[2] 
       (.C(clks),
        .CE(patron_reg),
        .D(\patron_reg[2]_i_1_n_0 ),
        .Q(\patron_reg_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \patron_reg_reg[3] 
       (.C(clks),
        .CE(patron_reg),
        .D(\patron_reg[3]_i_1_n_0 ),
        .Q(\patron_reg_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \patron_reg_reg[4] 
       (.C(clks),
        .CE(patron_reg),
        .D(\patron_reg[4]_i_1_n_0 ),
        .Q(\patron_reg_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \patron_reg_reg[5] 
       (.C(clks),
        .CE(patron_reg),
        .D(\patron_reg[5]_i_1_n_0 ),
        .Q(\patron_reg_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \patron_reg_reg[6] 
       (.C(clks),
        .CE(patron_reg),
        .D(\patron_reg[6]_i_1_n_0 ),
        .Q(\patron_reg_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \patron_reg_reg[7] 
       (.C(clks),
        .CE(patron_reg),
        .D(\patron_reg[7]_i_2_n_0 ),
        .Q(\patron_reg_reg_n_0_[7] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFCC40004)) 
    \rgb_reg[0]_i_1 
       (.I0(\rgb_reg[2]_i_2_n_0 ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(rgb[0]),
        .O(\rgb_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0FF4000000F40)) 
    \rgb_reg[1]_i_1 
       (.I0(\leds_reg[1]_i_3_n_0 ),
        .I1(\rgb_reg[2]_i_2_n_0 ),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .I5(rgb[1]),
        .O(\rgb_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF080000F0080)) 
    \rgb_reg[2]_i_1 
       (.I0(\rgb_reg[2]_i_2_n_0 ),
        .I1(\leds_reg[1]_i_3_n_0 ),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .I5(rgb[2]),
        .O(\rgb_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \rgb_reg[2]_i_2 
       (.I0(bt_prev),
        .I1(bt0),
        .I2(sw[0]),
        .I3(sw[1]),
        .O(\rgb_reg[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[0] 
       (.C(clks),
        .CE(1'b1),
        .D(\rgb_reg[0]_i_1_n_0 ),
        .Q(rgb[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[1] 
       (.C(clks),
        .CE(1'b1),
        .D(\rgb_reg[1]_i_1_n_0 ),
        .Q(rgb[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[2] 
       (.C(clks),
        .CE(1'b1),
        .D(\rgb_reg[2]_i_1_n_0 ),
        .Q(rgb[2]),
        .R(rst));
  LUT6 #(
    .INIT(64'h0F000F0F20222020)) 
    \step[0]_i_1 
       (.I0(\step[2]_i_2_n_0 ),
        .I1(\leds_reg[1]_i_3_n_0 ),
        .I2(patron_reg),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .I4(\step[2]_i_4_n_0 ),
        .I5(\step_reg_n_0_[0] ),
        .O(\step[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5070737350404040)) 
    \step[1]_i_1 
       (.I0(\step[1]_i_2_n_0 ),
        .I1(patron_reg),
        .I2(\leds_reg[3]_i_4_n_0 ),
        .I3(\step[1]_i_3_n_0 ),
        .I4(\step[2]_i_4_n_0 ),
        .I5(\step_reg_n_0_[1] ),
        .O(\step[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFF9F)) 
    \step[1]_i_2 
       (.I0(\step_reg_n_0_[0] ),
        .I1(\step_reg_n_0_[1] ),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .O(\step[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h95)) 
    \step[1]_i_3 
       (.I0(\step_reg_n_0_[2] ),
        .I1(\step_reg_n_0_[1] ),
        .I2(\step_reg_n_0_[0] ),
        .O(\step[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB0000080B3330080)) 
    \step[2]_i_1 
       (.I0(\step[2]_i_2_n_0 ),
        .I1(patron_reg),
        .I2(\leds_reg[3]_i_4_n_0 ),
        .I3(\step[2]_i_3_n_0 ),
        .I4(\step_reg_n_0_[2] ),
        .I5(\step[2]_i_4_n_0 ),
        .O(\step[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \step[2]_i_2 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .O(\step[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \step[2]_i_3 
       (.I0(\step_reg_n_0_[0] ),
        .I1(\step_reg_n_0_[1] ),
        .O(\step[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \step[2]_i_4 
       (.I0(sw[1]),
        .I1(sw[0]),
        .I2(bt0),
        .I3(bt_prev),
        .I4(state__0[1]),
        .I5(\step[2]_i_2_n_0 ),
        .O(\step[2]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \step_reg[0] 
       (.C(clks),
        .CE(1'b1),
        .D(\step[0]_i_1_n_0 ),
        .Q(\step_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \step_reg[1] 
       (.C(clks),
        .CE(1'b1),
        .D(\step[1]_i_1_n_0 ),
        .Q(\step_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \step_reg[2] 
       (.C(clks),
        .CE(1'b1),
        .D(\step[2]_i_1_n_0 ),
        .Q(\step_reg_n_0_[2] ),
        .R(rst));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    user_input_reg
       (.D(1'b0),
        .G(user_input05_out),
        .GE(1'b1),
        .PRE(user_input0),
        .Q(user_input));
  LUT2 #(
    .INIT(4'h2)) 
    user_input_reg_i_1
       (.I0(sw[1]),
        .I1(sw[0]),
        .O(user_input05_out));
  LUT2 #(
    .INIT(4'h2)) 
    user_input_reg_i_2
       (.I0(sw[0]),
        .I1(sw[1]),
        .O(user_input0));
  LUT6 #(
    .INIT(64'hFFFF080000000800)) 
    valid_i_1
       (.I0(valid_i_2_n_0),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(valid_reg_reg_n_0),
        .I4(rst),
        .I5(valid),
        .O(valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h40)) 
    valid_i_2
       (.I0(bt_prev),
        .I1(bt0),
        .I2(state__0[0]),
        .O(valid_i_2_n_0));
  FDRE valid_reg
       (.C(clks),
        .CE(1'b1),
        .D(valid_i_1_n_0),
        .Q(valid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFE14)) 
    valid_reg_i_1
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(valid_reg_reg_n_0),
        .O(valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    valid_reg_reg
       (.C(clks),
        .CE(1'b1),
        .D(valid_reg_i_1_n_0),
        .Q(valid_reg_reg_n_0),
        .R(rst));
  LUT6 #(
    .INIT(64'hAFAAAFAFE0EEE0E0)) 
    \vidas[0]_i_1 
       (.I0(\vidas[0]_i_2_n_0 ),
        .I1(\vidas[0]_i_3_n_0 ),
        .I2(patron_reg),
        .I3(\leds_reg[3]_i_4_n_0 ),
        .I4(\step[2]_i_4_n_0 ),
        .I5(\vidas_reg_n_0_[0] ),
        .O(\vidas[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \vidas[0]_i_2 
       (.I0(state__0[1]),
        .I1(start),
        .I2(state__0[0]),
        .O(\vidas[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \vidas[0]_i_3 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(\vidas[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \vidas[1]_i_1 
       (.I0(vidas),
        .I1(patron_reg),
        .I2(\leds_reg[3]_i_4_n_0 ),
        .I3(\step[2]_i_4_n_0 ),
        .I4(\vidas_reg_n_0_[1] ),
        .O(\vidas[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000C3AA)) 
    \vidas[1]_i_2 
       (.I0(start),
        .I1(\vidas_reg_n_0_[0] ),
        .I2(\vidas_reg_n_0_[1] ),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .O(vidas));
  FDSE #(
    .INIT(1'b1)) 
    \vidas_reg[0] 
       (.C(clks),
        .CE(1'b1),
        .D(\vidas[0]_i_1_n_0 ),
        .Q(\vidas_reg_n_0_[0] ),
        .S(rst));
  FDSE #(
    .INIT(1'b1)) 
    \vidas_reg[1] 
       (.C(clks),
        .CE(1'b1),
        .D(\vidas[1]_i_1_n_0 ),
        .Q(\vidas_reg_n_0_[1] ),
        .S(rst));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h20FF2000)) 
    wol_i_1
       (.I0(wol_reg_reg_n_0),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .I3(wol2_out),
        .I4(wol),
        .O(wol_i_1_n_0));
  LUT6 #(
    .INIT(64'h000400000000000F)) 
    wol_i_2
       (.I0(bt_prev),
        .I1(bt0),
        .I2(rst),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .I5(state__0[2]),
        .O(wol2_out));
  FDRE wol_reg
       (.C(clks),
        .CE(1'b1),
        .D(wol_i_1_n_0),
        .Q(wol),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hEE04)) 
    wol_reg_i_1
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(wol_reg_reg_n_0),
        .O(wol_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wol_reg_reg
       (.C(clks),
        .CE(1'b1),
        .D(wol_reg_i_1_n_0),
        .Q(wol_reg_reg_n_0),
        .R(rst));
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
