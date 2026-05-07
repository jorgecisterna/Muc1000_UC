// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu May  7 02:04:15 2026
// Host        : LAPTOP-OGSHLLCI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/nitro/Documents/SEP/P01_FIN/Pro1_ava/Pro1_ava.srcs/sources_1/bd/design_1/ip/design_1_penales_0_0/design_1_penales_0_0_sim_netlist.v
// Design      : design_1_penales_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_penales_0_0,penales,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "penales,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_penales_0_0
   (clk,
    ini,
    reset,
    jugar,
    sw,
    wol,
    update,
    leds);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input ini;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input jugar;
  input [3:0]sw;
  output wol;
  output update;
  output [3:0]leds;

  wire clk;
  wire ini;
  wire jugar;
  wire [3:0]leds;
  wire reset;
  wire [3:0]sw;
  wire update;
  wire wol;

  (* LFSR_SEED = "4'b1010" *) 
  (* MIN_TURNOS = "4" *) 
  design_1_penales_0_0_penales U0
       (.clk(clk),
        .ini(ini),
        .jugar(jugar),
        .leds(leds),
        .reset(reset),
        .sw(sw),
        .update(update),
        .wol(wol));
endmodule

(* LFSR_SEED = "4'b1010" *) (* MIN_TURNOS = "4" *) (* ORIG_REF_NAME = "penales" *) 
module design_1_penales_0_0_penales
   (clk,
    ini,
    reset,
    jugar,
    sw,
    wol,
    update,
    leds);
  input clk;
  input ini;
  input reset;
  input jugar;
  input [3:0]sw;
  output wol;
  output update;
  output [3:0]leds;

  wire \FSM_sequential_state[2]_i_10_n_0 ;
  wire \FSM_sequential_state[2]_i_11_n_0 ;
  wire \FSM_sequential_state[2]_i_12_n_0 ;
  wire \FSM_sequential_state[2]_i_13_n_0 ;
  wire \FSM_sequential_state[2]_i_14_n_0 ;
  wire \FSM_sequential_state[2]_i_15_n_0 ;
  wire \FSM_sequential_state[2]_i_16_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_7_n_0 ;
  wire \FSM_sequential_state[2]_i_9_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_3_n_2 ;
  wire \FSM_sequential_state_reg[2]_i_3_n_3 ;
  wire \FSM_sequential_state_reg[2]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_4_n_1 ;
  wire \FSM_sequential_state_reg[2]_i_4_n_2 ;
  wire \FSM_sequential_state_reg[2]_i_4_n_3 ;
  wire \FSM_sequential_state_reg[2]_i_8_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_8_n_1 ;
  wire \FSM_sequential_state_reg[2]_i_8_n_2 ;
  wire \FSM_sequential_state_reg[2]_i_8_n_3 ;
  wire clk;
  wire fin;
  wire fin_juego_i_1_n_0;
  wire fin_juego_i_2_n_0;
  wire [31:0]in7;
  wire [31:0]in9;
  wire ini;
  wire jugar;
  wire jugar_prev_i_1_n_0;
  wire jugar_prev_reg_n_0;
  wire [3:0]leds;
  wire \leds[2]_INST_0_i_10_n_0 ;
  wire \leds[2]_INST_0_i_10_n_1 ;
  wire \leds[2]_INST_0_i_10_n_2 ;
  wire \leds[2]_INST_0_i_10_n_3 ;
  wire \leds[2]_INST_0_i_11_n_0 ;
  wire \leds[2]_INST_0_i_12_n_0 ;
  wire \leds[2]_INST_0_i_13_n_0 ;
  wire \leds[2]_INST_0_i_14_n_0 ;
  wire \leds[2]_INST_0_i_15_n_0 ;
  wire \leds[2]_INST_0_i_16_n_0 ;
  wire \leds[2]_INST_0_i_17_n_0 ;
  wire \leds[2]_INST_0_i_18_n_0 ;
  wire \leds[2]_INST_0_i_19_n_0 ;
  wire \leds[2]_INST_0_i_19_n_1 ;
  wire \leds[2]_INST_0_i_19_n_2 ;
  wire \leds[2]_INST_0_i_19_n_3 ;
  wire \leds[2]_INST_0_i_1_n_0 ;
  wire \leds[2]_INST_0_i_1_n_1 ;
  wire \leds[2]_INST_0_i_1_n_2 ;
  wire \leds[2]_INST_0_i_1_n_3 ;
  wire \leds[2]_INST_0_i_20_n_0 ;
  wire \leds[2]_INST_0_i_21_n_0 ;
  wire \leds[2]_INST_0_i_22_n_0 ;
  wire \leds[2]_INST_0_i_23_n_0 ;
  wire \leds[2]_INST_0_i_24_n_0 ;
  wire \leds[2]_INST_0_i_25_n_0 ;
  wire \leds[2]_INST_0_i_26_n_0 ;
  wire \leds[2]_INST_0_i_27_n_0 ;
  wire \leds[2]_INST_0_i_28_n_0 ;
  wire \leds[2]_INST_0_i_29_n_0 ;
  wire \leds[2]_INST_0_i_2_n_0 ;
  wire \leds[2]_INST_0_i_30_n_0 ;
  wire \leds[2]_INST_0_i_31_n_0 ;
  wire \leds[2]_INST_0_i_32_n_0 ;
  wire \leds[2]_INST_0_i_33_n_0 ;
  wire \leds[2]_INST_0_i_34_n_0 ;
  wire \leds[2]_INST_0_i_35_n_0 ;
  wire \leds[2]_INST_0_i_3_n_0 ;
  wire \leds[2]_INST_0_i_4_n_0 ;
  wire \leds[2]_INST_0_i_5_n_0 ;
  wire \leds[2]_INST_0_i_6_n_0 ;
  wire \leds[2]_INST_0_i_7_n_0 ;
  wire \leds[2]_INST_0_i_8_n_0 ;
  wire \leds[2]_INST_0_i_9_n_0 ;
  wire \leds[2]_INST_0_n_1 ;
  wire \leds[2]_INST_0_n_2 ;
  wire \leds[2]_INST_0_n_3 ;
  wire \leds[3]_INST_0_i_10_n_0 ;
  wire \leds[3]_INST_0_i_11_n_0 ;
  wire \leds[3]_INST_0_i_11_n_1 ;
  wire \leds[3]_INST_0_i_11_n_2 ;
  wire \leds[3]_INST_0_i_11_n_3 ;
  wire \leds[3]_INST_0_i_12_n_0 ;
  wire \leds[3]_INST_0_i_13_n_0 ;
  wire \leds[3]_INST_0_i_14_n_0 ;
  wire \leds[3]_INST_0_i_15_n_0 ;
  wire \leds[3]_INST_0_i_16_n_0 ;
  wire \leds[3]_INST_0_i_17_n_0 ;
  wire \leds[3]_INST_0_i_18_n_0 ;
  wire \leds[3]_INST_0_i_19_n_0 ;
  wire \leds[3]_INST_0_i_1_n_1 ;
  wire \leds[3]_INST_0_i_1_n_2 ;
  wire \leds[3]_INST_0_i_1_n_3 ;
  wire \leds[3]_INST_0_i_20_n_0 ;
  wire \leds[3]_INST_0_i_20_n_1 ;
  wire \leds[3]_INST_0_i_20_n_2 ;
  wire \leds[3]_INST_0_i_20_n_3 ;
  wire \leds[3]_INST_0_i_21_n_0 ;
  wire \leds[3]_INST_0_i_22_n_0 ;
  wire \leds[3]_INST_0_i_23_n_0 ;
  wire \leds[3]_INST_0_i_24_n_0 ;
  wire \leds[3]_INST_0_i_25_n_0 ;
  wire \leds[3]_INST_0_i_26_n_0 ;
  wire \leds[3]_INST_0_i_27_n_0 ;
  wire \leds[3]_INST_0_i_28_n_0 ;
  wire \leds[3]_INST_0_i_29_n_0 ;
  wire \leds[3]_INST_0_i_2_n_0 ;
  wire \leds[3]_INST_0_i_2_n_1 ;
  wire \leds[3]_INST_0_i_2_n_2 ;
  wire \leds[3]_INST_0_i_2_n_3 ;
  wire \leds[3]_INST_0_i_30_n_0 ;
  wire \leds[3]_INST_0_i_31_n_0 ;
  wire \leds[3]_INST_0_i_32_n_0 ;
  wire \leds[3]_INST_0_i_33_n_0 ;
  wire \leds[3]_INST_0_i_34_n_0 ;
  wire \leds[3]_INST_0_i_35_n_0 ;
  wire \leds[3]_INST_0_i_36_n_0 ;
  wire \leds[3]_INST_0_i_3_n_0 ;
  wire \leds[3]_INST_0_i_4_n_0 ;
  wire \leds[3]_INST_0_i_5_n_0 ;
  wire \leds[3]_INST_0_i_6_n_0 ;
  wire \leds[3]_INST_0_i_7_n_0 ;
  wire \leds[3]_INST_0_i_8_n_0 ;
  wire \leds[3]_INST_0_i_9_n_0 ;
  wire leds_v1;
  wire [2:1]lfsr;
  wire [3:0]lfsr__0;
  wire [0:0]p_0_out;
  wire puntaje_fpga0;
  wire \puntaje_fpga[31]_i_1_n_0 ;
  wire \puntaje_fpga_reg[12]_i_1_n_0 ;
  wire \puntaje_fpga_reg[12]_i_1_n_1 ;
  wire \puntaje_fpga_reg[12]_i_1_n_2 ;
  wire \puntaje_fpga_reg[12]_i_1_n_3 ;
  wire \puntaje_fpga_reg[16]_i_1_n_0 ;
  wire \puntaje_fpga_reg[16]_i_1_n_1 ;
  wire \puntaje_fpga_reg[16]_i_1_n_2 ;
  wire \puntaje_fpga_reg[16]_i_1_n_3 ;
  wire \puntaje_fpga_reg[20]_i_1_n_0 ;
  wire \puntaje_fpga_reg[20]_i_1_n_1 ;
  wire \puntaje_fpga_reg[20]_i_1_n_2 ;
  wire \puntaje_fpga_reg[20]_i_1_n_3 ;
  wire \puntaje_fpga_reg[24]_i_1_n_0 ;
  wire \puntaje_fpga_reg[24]_i_1_n_1 ;
  wire \puntaje_fpga_reg[24]_i_1_n_2 ;
  wire \puntaje_fpga_reg[24]_i_1_n_3 ;
  wire \puntaje_fpga_reg[28]_i_1_n_0 ;
  wire \puntaje_fpga_reg[28]_i_1_n_1 ;
  wire \puntaje_fpga_reg[28]_i_1_n_2 ;
  wire \puntaje_fpga_reg[28]_i_1_n_3 ;
  wire \puntaje_fpga_reg[31]_i_3_n_2 ;
  wire \puntaje_fpga_reg[31]_i_3_n_3 ;
  wire \puntaje_fpga_reg[4]_i_1_n_0 ;
  wire \puntaje_fpga_reg[4]_i_1_n_1 ;
  wire \puntaje_fpga_reg[4]_i_1_n_2 ;
  wire \puntaje_fpga_reg[4]_i_1_n_3 ;
  wire \puntaje_fpga_reg[8]_i_1_n_0 ;
  wire \puntaje_fpga_reg[8]_i_1_n_1 ;
  wire \puntaje_fpga_reg[8]_i_1_n_2 ;
  wire \puntaje_fpga_reg[8]_i_1_n_3 ;
  wire \puntaje_fpga_reg_n_0_[0] ;
  wire \puntaje_fpga_reg_n_0_[10] ;
  wire \puntaje_fpga_reg_n_0_[11] ;
  wire \puntaje_fpga_reg_n_0_[12] ;
  wire \puntaje_fpga_reg_n_0_[13] ;
  wire \puntaje_fpga_reg_n_0_[14] ;
  wire \puntaje_fpga_reg_n_0_[15] ;
  wire \puntaje_fpga_reg_n_0_[16] ;
  wire \puntaje_fpga_reg_n_0_[17] ;
  wire \puntaje_fpga_reg_n_0_[18] ;
  wire \puntaje_fpga_reg_n_0_[19] ;
  wire \puntaje_fpga_reg_n_0_[1] ;
  wire \puntaje_fpga_reg_n_0_[20] ;
  wire \puntaje_fpga_reg_n_0_[21] ;
  wire \puntaje_fpga_reg_n_0_[22] ;
  wire \puntaje_fpga_reg_n_0_[23] ;
  wire \puntaje_fpga_reg_n_0_[24] ;
  wire \puntaje_fpga_reg_n_0_[25] ;
  wire \puntaje_fpga_reg_n_0_[26] ;
  wire \puntaje_fpga_reg_n_0_[27] ;
  wire \puntaje_fpga_reg_n_0_[28] ;
  wire \puntaje_fpga_reg_n_0_[29] ;
  wire \puntaje_fpga_reg_n_0_[2] ;
  wire \puntaje_fpga_reg_n_0_[30] ;
  wire \puntaje_fpga_reg_n_0_[31] ;
  wire \puntaje_fpga_reg_n_0_[3] ;
  wire \puntaje_fpga_reg_n_0_[4] ;
  wire \puntaje_fpga_reg_n_0_[5] ;
  wire \puntaje_fpga_reg_n_0_[6] ;
  wire \puntaje_fpga_reg_n_0_[7] ;
  wire \puntaje_fpga_reg_n_0_[8] ;
  wire \puntaje_fpga_reg_n_0_[9] ;
  wire puntaje_usu0;
  wire \puntaje_usu_reg[12]_i_1_n_0 ;
  wire \puntaje_usu_reg[12]_i_1_n_1 ;
  wire \puntaje_usu_reg[12]_i_1_n_2 ;
  wire \puntaje_usu_reg[12]_i_1_n_3 ;
  wire \puntaje_usu_reg[16]_i_1_n_0 ;
  wire \puntaje_usu_reg[16]_i_1_n_1 ;
  wire \puntaje_usu_reg[16]_i_1_n_2 ;
  wire \puntaje_usu_reg[16]_i_1_n_3 ;
  wire \puntaje_usu_reg[20]_i_1_n_0 ;
  wire \puntaje_usu_reg[20]_i_1_n_1 ;
  wire \puntaje_usu_reg[20]_i_1_n_2 ;
  wire \puntaje_usu_reg[20]_i_1_n_3 ;
  wire \puntaje_usu_reg[24]_i_1_n_0 ;
  wire \puntaje_usu_reg[24]_i_1_n_1 ;
  wire \puntaje_usu_reg[24]_i_1_n_2 ;
  wire \puntaje_usu_reg[24]_i_1_n_3 ;
  wire \puntaje_usu_reg[28]_i_1_n_0 ;
  wire \puntaje_usu_reg[28]_i_1_n_1 ;
  wire \puntaje_usu_reg[28]_i_1_n_2 ;
  wire \puntaje_usu_reg[28]_i_1_n_3 ;
  wire \puntaje_usu_reg[31]_i_2_n_2 ;
  wire \puntaje_usu_reg[31]_i_2_n_3 ;
  wire \puntaje_usu_reg[4]_i_1_n_0 ;
  wire \puntaje_usu_reg[4]_i_1_n_1 ;
  wire \puntaje_usu_reg[4]_i_1_n_2 ;
  wire \puntaje_usu_reg[4]_i_1_n_3 ;
  wire \puntaje_usu_reg[8]_i_1_n_0 ;
  wire \puntaje_usu_reg[8]_i_1_n_1 ;
  wire \puntaje_usu_reg[8]_i_1_n_2 ;
  wire \puntaje_usu_reg[8]_i_1_n_3 ;
  wire \puntaje_usu_reg_n_0_[0] ;
  wire \puntaje_usu_reg_n_0_[10] ;
  wire \puntaje_usu_reg_n_0_[11] ;
  wire \puntaje_usu_reg_n_0_[12] ;
  wire \puntaje_usu_reg_n_0_[13] ;
  wire \puntaje_usu_reg_n_0_[14] ;
  wire \puntaje_usu_reg_n_0_[15] ;
  wire \puntaje_usu_reg_n_0_[16] ;
  wire \puntaje_usu_reg_n_0_[17] ;
  wire \puntaje_usu_reg_n_0_[18] ;
  wire \puntaje_usu_reg_n_0_[19] ;
  wire \puntaje_usu_reg_n_0_[1] ;
  wire \puntaje_usu_reg_n_0_[20] ;
  wire \puntaje_usu_reg_n_0_[21] ;
  wire \puntaje_usu_reg_n_0_[22] ;
  wire \puntaje_usu_reg_n_0_[23] ;
  wire \puntaje_usu_reg_n_0_[24] ;
  wire \puntaje_usu_reg_n_0_[25] ;
  wire \puntaje_usu_reg_n_0_[26] ;
  wire \puntaje_usu_reg_n_0_[27] ;
  wire \puntaje_usu_reg_n_0_[28] ;
  wire \puntaje_usu_reg_n_0_[29] ;
  wire \puntaje_usu_reg_n_0_[2] ;
  wire \puntaje_usu_reg_n_0_[30] ;
  wire \puntaje_usu_reg_n_0_[31] ;
  wire \puntaje_usu_reg_n_0_[3] ;
  wire \puntaje_usu_reg_n_0_[4] ;
  wire \puntaje_usu_reg_n_0_[5] ;
  wire \puntaje_usu_reg_n_0_[6] ;
  wire \puntaje_usu_reg_n_0_[7] ;
  wire \puntaje_usu_reg_n_0_[8] ;
  wire \puntaje_usu_reg_n_0_[9] ;
  wire res;
  wire reset;
  wire resul_i_1_n_0;
  wire resul_i_2_n_0;
  wire [2:0]state;
  wire [2:0]state__0;
  wire [3:0]sw;
  wire turno1;
  wire \turno[0]_i_1_n_0 ;
  wire \turno[1]_i_1_n_0 ;
  wire \turno[1]_i_2_n_0 ;
  wire \turno_reg_n_0_[0] ;
  wire \turno_reg_n_0_[1] ;
  wire update;
  wire update0;
  wire update_i_1_n_0;
  wire update_i_2_n_0;
  wire wol;
  wire wol_i_1_n_0;
  wire [3:3]\NLW_FSM_sequential_state_reg[2]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_state_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_state_reg[2]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_state_reg[2]_i_8_O_UNCONNECTED ;
  wire [3:0]\NLW_leds[2]_INST_0_O_UNCONNECTED ;
  wire [3:0]\NLW_leds[2]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_leds[2]_INST_0_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_leds[2]_INST_0_i_19_O_UNCONNECTED ;
  wire [3:0]\NLW_leds[3]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_leds[3]_INST_0_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_leds[3]_INST_0_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_leds[3]_INST_0_i_20_O_UNCONNECTED ;
  wire [3:2]\NLW_puntaje_fpga_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_puntaje_fpga_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_puntaje_usu_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_puntaje_usu_reg[31]_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(state__0[1]));
  LUT6 #(
    .INIT(64'h55558CFF55558CAA)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[2]),
        .I1(update_i_2_n_0),
        .I2(fin),
        .I3(state[0]),
        .I4(state[1]),
        .I5(ini),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_state[2]_i_10 
       (.I0(\puntaje_fpga_reg_n_0_[19] ),
        .I1(\puntaje_usu_reg_n_0_[19] ),
        .I2(\puntaje_fpga_reg_n_0_[18] ),
        .I3(\puntaje_usu_reg_n_0_[18] ),
        .I4(\puntaje_usu_reg_n_0_[20] ),
        .I5(\puntaje_fpga_reg_n_0_[20] ),
        .O(\FSM_sequential_state[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_state[2]_i_11 
       (.I0(\puntaje_fpga_reg_n_0_[15] ),
        .I1(\puntaje_usu_reg_n_0_[15] ),
        .I2(\puntaje_fpga_reg_n_0_[17] ),
        .I3(\puntaje_usu_reg_n_0_[17] ),
        .I4(\puntaje_usu_reg_n_0_[16] ),
        .I5(\puntaje_fpga_reg_n_0_[16] ),
        .O(\FSM_sequential_state[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_state[2]_i_12 
       (.I0(\puntaje_fpga_reg_n_0_[13] ),
        .I1(\puntaje_usu_reg_n_0_[13] ),
        .I2(\puntaje_fpga_reg_n_0_[12] ),
        .I3(\puntaje_usu_reg_n_0_[12] ),
        .I4(\puntaje_usu_reg_n_0_[14] ),
        .I5(\puntaje_fpga_reg_n_0_[14] ),
        .O(\FSM_sequential_state[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_state[2]_i_13 
       (.I0(\puntaje_fpga_reg_n_0_[9] ),
        .I1(\puntaje_usu_reg_n_0_[9] ),
        .I2(\puntaje_fpga_reg_n_0_[11] ),
        .I3(\puntaje_usu_reg_n_0_[11] ),
        .I4(\puntaje_usu_reg_n_0_[10] ),
        .I5(\puntaje_fpga_reg_n_0_[10] ),
        .O(\FSM_sequential_state[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_state[2]_i_14 
       (.I0(\puntaje_fpga_reg_n_0_[7] ),
        .I1(\puntaje_usu_reg_n_0_[7] ),
        .I2(\puntaje_fpga_reg_n_0_[6] ),
        .I3(\puntaje_usu_reg_n_0_[6] ),
        .I4(\puntaje_usu_reg_n_0_[8] ),
        .I5(\puntaje_fpga_reg_n_0_[8] ),
        .O(\FSM_sequential_state[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_state[2]_i_15 
       (.I0(\puntaje_fpga_reg_n_0_[3] ),
        .I1(\puntaje_usu_reg_n_0_[3] ),
        .I2(\puntaje_fpga_reg_n_0_[5] ),
        .I3(\puntaje_usu_reg_n_0_[5] ),
        .I4(\puntaje_usu_reg_n_0_[4] ),
        .I5(\puntaje_fpga_reg_n_0_[4] ),
        .O(\FSM_sequential_state[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_state[2]_i_16 
       (.I0(\puntaje_fpga_reg_n_0_[1] ),
        .I1(\puntaje_usu_reg_n_0_[1] ),
        .I2(\puntaje_fpga_reg_n_0_[0] ),
        .I3(\puntaje_usu_reg_n_0_[0] ),
        .I4(\puntaje_usu_reg_n_0_[2] ),
        .I5(\puntaje_fpga_reg_n_0_[2] ),
        .O(\FSM_sequential_state[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000080FF000000)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\turno_reg_n_0_[1] ),
        .I1(\turno_reg_n_0_[0] ),
        .I2(turno1),
        .I3(state[1]),
        .I4(state[0]),
        .I5(state[2]),
        .O(state__0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(\puntaje_usu_reg_n_0_[30] ),
        .I1(\puntaje_fpga_reg_n_0_[30] ),
        .I2(\puntaje_usu_reg_n_0_[31] ),
        .I3(\puntaje_fpga_reg_n_0_[31] ),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(\puntaje_fpga_reg_n_0_[27] ),
        .I1(\puntaje_usu_reg_n_0_[27] ),
        .I2(\puntaje_fpga_reg_n_0_[29] ),
        .I3(\puntaje_usu_reg_n_0_[29] ),
        .I4(\puntaje_usu_reg_n_0_[28] ),
        .I5(\puntaje_fpga_reg_n_0_[28] ),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(\puntaje_fpga_reg_n_0_[25] ),
        .I1(\puntaje_usu_reg_n_0_[25] ),
        .I2(\puntaje_fpga_reg_n_0_[24] ),
        .I3(\puntaje_usu_reg_n_0_[24] ),
        .I4(\puntaje_usu_reg_n_0_[26] ),
        .I5(\puntaje_fpga_reg_n_0_[26] ),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_state[2]_i_9 
       (.I0(\puntaje_fpga_reg_n_0_[21] ),
        .I1(\puntaje_usu_reg_n_0_[21] ),
        .I2(\puntaje_fpga_reg_n_0_[23] ),
        .I3(\puntaje_usu_reg_n_0_[23] ),
        .I4(\puntaje_usu_reg_n_0_[22] ),
        .I5(\puntaje_fpga_reg_n_0_[22] ),
        .O(\FSM_sequential_state[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "esp:000,generar:010,update_score:011,check_fin:100,idle:001,acep:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .CLR(reset),
        .D(state__0[0]),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "esp:000,generar:010,update_score:011,check_fin:100,idle:001,acep:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .CLR(reset),
        .D(state__0[1]),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "esp:000,generar:010,update_score:011,check_fin:100,idle:001,acep:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .CLR(reset),
        .D(state__0[2]),
        .Q(state[2]));
  CARRY4 \FSM_sequential_state_reg[2]_i_3 
       (.CI(\FSM_sequential_state_reg[2]_i_4_n_0 ),
        .CO({\NLW_FSM_sequential_state_reg[2]_i_3_CO_UNCONNECTED [3],turno1,\FSM_sequential_state_reg[2]_i_3_n_2 ,\FSM_sequential_state_reg[2]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(\NLW_FSM_sequential_state_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\FSM_sequential_state[2]_i_5_n_0 ,\FSM_sequential_state[2]_i_6_n_0 ,\FSM_sequential_state[2]_i_7_n_0 }));
  CARRY4 \FSM_sequential_state_reg[2]_i_4 
       (.CI(\FSM_sequential_state_reg[2]_i_8_n_0 ),
        .CO({\FSM_sequential_state_reg[2]_i_4_n_0 ,\FSM_sequential_state_reg[2]_i_4_n_1 ,\FSM_sequential_state_reg[2]_i_4_n_2 ,\FSM_sequential_state_reg[2]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_FSM_sequential_state_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_state[2]_i_9_n_0 ,\FSM_sequential_state[2]_i_10_n_0 ,\FSM_sequential_state[2]_i_11_n_0 ,\FSM_sequential_state[2]_i_12_n_0 }));
  CARRY4 \FSM_sequential_state_reg[2]_i_8 
       (.CI(1'b0),
        .CO({\FSM_sequential_state_reg[2]_i_8_n_0 ,\FSM_sequential_state_reg[2]_i_8_n_1 ,\FSM_sequential_state_reg[2]_i_8_n_2 ,\FSM_sequential_state_reg[2]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_FSM_sequential_state_reg[2]_i_8_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_state[2]_i_13_n_0 ,\FSM_sequential_state[2]_i_14_n_0 ,\FSM_sequential_state[2]_i_15_n_0 ,\FSM_sequential_state[2]_i_16_n_0 }));
  LUT6 #(
    .INIT(64'hDF00FFFF10000000)) 
    fin_juego_i_1
       (.I0(state[1]),
        .I1(fin_juego_i_2_n_0),
        .I2(turno1),
        .I3(state[2]),
        .I4(\turno[1]_i_2_n_0 ),
        .I5(fin),
        .O(fin_juego_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    fin_juego_i_2
       (.I0(\turno_reg_n_0_[0] ),
        .I1(\turno_reg_n_0_[1] ),
        .O(fin_juego_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fin_juego_reg
       (.C(clk),
        .CE(1'b1),
        .D(fin_juego_i_1_n_0),
        .Q(fin),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8B888B88BB88B888)) 
    jugar_prev_i_1
       (.I0(jugar_prev_reg_n_0),
        .I1(reset),
        .I2(state[2]),
        .I3(jugar),
        .I4(state[0]),
        .I5(state[1]),
        .O(jugar_prev_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    jugar_prev_reg
       (.C(clk),
        .CE(1'b1),
        .D(jugar_prev_i_1_n_0),
        .Q(jugar_prev_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \leds[0]_INST_0 
       (.I0(fin),
        .I1(\turno_reg_n_0_[0] ),
        .O(leds[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \leds[1]_INST_0 
       (.I0(fin),
        .I1(\turno_reg_n_0_[0] ),
        .O(leds[1]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \leds[2]_INST_0 
       (.CI(\leds[2]_INST_0_i_1_n_0 ),
        .CO({leds[2],\leds[2]_INST_0_n_1 ,\leds[2]_INST_0_n_2 ,\leds[2]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({\leds[2]_INST_0_i_2_n_0 ,\leds[2]_INST_0_i_3_n_0 ,\leds[2]_INST_0_i_4_n_0 ,\leds[2]_INST_0_i_5_n_0 }),
        .O(\NLW_leds[2]_INST_0_O_UNCONNECTED [3:0]),
        .S({\leds[2]_INST_0_i_6_n_0 ,\leds[2]_INST_0_i_7_n_0 ,\leds[2]_INST_0_i_8_n_0 ,\leds[2]_INST_0_i_9_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \leds[2]_INST_0_i_1 
       (.CI(\leds[2]_INST_0_i_10_n_0 ),
        .CO({\leds[2]_INST_0_i_1_n_0 ,\leds[2]_INST_0_i_1_n_1 ,\leds[2]_INST_0_i_1_n_2 ,\leds[2]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\leds[2]_INST_0_i_11_n_0 ,\leds[2]_INST_0_i_12_n_0 ,\leds[2]_INST_0_i_13_n_0 ,\leds[2]_INST_0_i_14_n_0 }),
        .O(\NLW_leds[2]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\leds[2]_INST_0_i_15_n_0 ,\leds[2]_INST_0_i_16_n_0 ,\leds[2]_INST_0_i_17_n_0 ,\leds[2]_INST_0_i_18_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \leds[2]_INST_0_i_10 
       (.CI(\leds[2]_INST_0_i_19_n_0 ),
        .CO({\leds[2]_INST_0_i_10_n_0 ,\leds[2]_INST_0_i_10_n_1 ,\leds[2]_INST_0_i_10_n_2 ,\leds[2]_INST_0_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\leds[2]_INST_0_i_20_n_0 ,\leds[2]_INST_0_i_21_n_0 ,\leds[2]_INST_0_i_22_n_0 ,\leds[2]_INST_0_i_23_n_0 }),
        .O(\NLW_leds[2]_INST_0_i_10_O_UNCONNECTED [3:0]),
        .S({\leds[2]_INST_0_i_24_n_0 ,\leds[2]_INST_0_i_25_n_0 ,\leds[2]_INST_0_i_26_n_0 ,\leds[2]_INST_0_i_27_n_0 }));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[2]_INST_0_i_11 
       (.I0(\puntaje_fpga_reg_n_0_[22] ),
        .I1(\puntaje_usu_reg_n_0_[22] ),
        .I2(\puntaje_fpga_reg_n_0_[23] ),
        .I3(\puntaje_usu_reg_n_0_[23] ),
        .O(\leds[2]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[2]_INST_0_i_12 
       (.I0(\puntaje_fpga_reg_n_0_[20] ),
        .I1(\puntaje_usu_reg_n_0_[20] ),
        .I2(\puntaje_fpga_reg_n_0_[21] ),
        .I3(\puntaje_usu_reg_n_0_[21] ),
        .O(\leds[2]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[2]_INST_0_i_13 
       (.I0(\puntaje_fpga_reg_n_0_[18] ),
        .I1(\puntaje_usu_reg_n_0_[18] ),
        .I2(\puntaje_fpga_reg_n_0_[19] ),
        .I3(\puntaje_usu_reg_n_0_[19] ),
        .O(\leds[2]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[2]_INST_0_i_14 
       (.I0(\puntaje_fpga_reg_n_0_[16] ),
        .I1(\puntaje_usu_reg_n_0_[16] ),
        .I2(\puntaje_fpga_reg_n_0_[17] ),
        .I3(\puntaje_usu_reg_n_0_[17] ),
        .O(\leds[2]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[2]_INST_0_i_15 
       (.I0(\puntaje_usu_reg_n_0_[22] ),
        .I1(\puntaje_fpga_reg_n_0_[22] ),
        .I2(\puntaje_usu_reg_n_0_[23] ),
        .I3(\puntaje_fpga_reg_n_0_[23] ),
        .O(\leds[2]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[2]_INST_0_i_16 
       (.I0(\puntaje_usu_reg_n_0_[21] ),
        .I1(\puntaje_fpga_reg_n_0_[21] ),
        .I2(\puntaje_usu_reg_n_0_[20] ),
        .I3(\puntaje_fpga_reg_n_0_[20] ),
        .O(\leds[2]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[2]_INST_0_i_17 
       (.I0(\puntaje_usu_reg_n_0_[18] ),
        .I1(\puntaje_fpga_reg_n_0_[18] ),
        .I2(\puntaje_usu_reg_n_0_[19] ),
        .I3(\puntaje_fpga_reg_n_0_[19] ),
        .O(\leds[2]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[2]_INST_0_i_18 
       (.I0(\puntaje_usu_reg_n_0_[16] ),
        .I1(\puntaje_fpga_reg_n_0_[16] ),
        .I2(\puntaje_usu_reg_n_0_[17] ),
        .I3(\puntaje_fpga_reg_n_0_[17] ),
        .O(\leds[2]_INST_0_i_18_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \leds[2]_INST_0_i_19 
       (.CI(1'b0),
        .CO({\leds[2]_INST_0_i_19_n_0 ,\leds[2]_INST_0_i_19_n_1 ,\leds[2]_INST_0_i_19_n_2 ,\leds[2]_INST_0_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({\leds[2]_INST_0_i_28_n_0 ,\leds[2]_INST_0_i_29_n_0 ,\leds[2]_INST_0_i_30_n_0 ,\leds[2]_INST_0_i_31_n_0 }),
        .O(\NLW_leds[2]_INST_0_i_19_O_UNCONNECTED [3:0]),
        .S({\leds[2]_INST_0_i_32_n_0 ,\leds[2]_INST_0_i_33_n_0 ,\leds[2]_INST_0_i_34_n_0 ,\leds[2]_INST_0_i_35_n_0 }));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[2]_INST_0_i_2 
       (.I0(\puntaje_fpga_reg_n_0_[30] ),
        .I1(\puntaje_usu_reg_n_0_[30] ),
        .I2(\puntaje_usu_reg_n_0_[31] ),
        .I3(\puntaje_fpga_reg_n_0_[31] ),
        .O(\leds[2]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[2]_INST_0_i_20 
       (.I0(\puntaje_fpga_reg_n_0_[14] ),
        .I1(\puntaje_usu_reg_n_0_[14] ),
        .I2(\puntaje_fpga_reg_n_0_[15] ),
        .I3(\puntaje_usu_reg_n_0_[15] ),
        .O(\leds[2]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[2]_INST_0_i_21 
       (.I0(\puntaje_fpga_reg_n_0_[12] ),
        .I1(\puntaje_usu_reg_n_0_[12] ),
        .I2(\puntaje_fpga_reg_n_0_[13] ),
        .I3(\puntaje_usu_reg_n_0_[13] ),
        .O(\leds[2]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[2]_INST_0_i_22 
       (.I0(\puntaje_fpga_reg_n_0_[10] ),
        .I1(\puntaje_usu_reg_n_0_[10] ),
        .I2(\puntaje_fpga_reg_n_0_[11] ),
        .I3(\puntaje_usu_reg_n_0_[11] ),
        .O(\leds[2]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[2]_INST_0_i_23 
       (.I0(\puntaje_fpga_reg_n_0_[8] ),
        .I1(\puntaje_usu_reg_n_0_[8] ),
        .I2(\puntaje_fpga_reg_n_0_[9] ),
        .I3(\puntaje_usu_reg_n_0_[9] ),
        .O(\leds[2]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[2]_INST_0_i_24 
       (.I0(\puntaje_usu_reg_n_0_[15] ),
        .I1(\puntaje_fpga_reg_n_0_[15] ),
        .I2(\puntaje_usu_reg_n_0_[14] ),
        .I3(\puntaje_fpga_reg_n_0_[14] ),
        .O(\leds[2]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[2]_INST_0_i_25 
       (.I0(\puntaje_usu_reg_n_0_[12] ),
        .I1(\puntaje_fpga_reg_n_0_[12] ),
        .I2(\puntaje_usu_reg_n_0_[13] ),
        .I3(\puntaje_fpga_reg_n_0_[13] ),
        .O(\leds[2]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[2]_INST_0_i_26 
       (.I0(\puntaje_usu_reg_n_0_[10] ),
        .I1(\puntaje_fpga_reg_n_0_[10] ),
        .I2(\puntaje_usu_reg_n_0_[11] ),
        .I3(\puntaje_fpga_reg_n_0_[11] ),
        .O(\leds[2]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[2]_INST_0_i_27 
       (.I0(\puntaje_usu_reg_n_0_[9] ),
        .I1(\puntaje_fpga_reg_n_0_[9] ),
        .I2(\puntaje_usu_reg_n_0_[8] ),
        .I3(\puntaje_fpga_reg_n_0_[8] ),
        .O(\leds[2]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[2]_INST_0_i_28 
       (.I0(\puntaje_fpga_reg_n_0_[6] ),
        .I1(\puntaje_usu_reg_n_0_[6] ),
        .I2(\puntaje_fpga_reg_n_0_[7] ),
        .I3(\puntaje_usu_reg_n_0_[7] ),
        .O(\leds[2]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[2]_INST_0_i_29 
       (.I0(\puntaje_fpga_reg_n_0_[4] ),
        .I1(\puntaje_usu_reg_n_0_[4] ),
        .I2(\puntaje_fpga_reg_n_0_[5] ),
        .I3(\puntaje_usu_reg_n_0_[5] ),
        .O(\leds[2]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[2]_INST_0_i_3 
       (.I0(\puntaje_fpga_reg_n_0_[28] ),
        .I1(\puntaje_usu_reg_n_0_[28] ),
        .I2(\puntaje_fpga_reg_n_0_[29] ),
        .I3(\puntaje_usu_reg_n_0_[29] ),
        .O(\leds[2]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[2]_INST_0_i_30 
       (.I0(\puntaje_fpga_reg_n_0_[2] ),
        .I1(\puntaje_usu_reg_n_0_[2] ),
        .I2(\puntaje_fpga_reg_n_0_[3] ),
        .I3(\puntaje_usu_reg_n_0_[3] ),
        .O(\leds[2]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[2]_INST_0_i_31 
       (.I0(\puntaje_fpga_reg_n_0_[0] ),
        .I1(\puntaje_usu_reg_n_0_[0] ),
        .I2(\puntaje_fpga_reg_n_0_[1] ),
        .I3(\puntaje_usu_reg_n_0_[1] ),
        .O(\leds[2]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[2]_INST_0_i_32 
       (.I0(\puntaje_usu_reg_n_0_[6] ),
        .I1(\puntaje_fpga_reg_n_0_[6] ),
        .I2(\puntaje_usu_reg_n_0_[7] ),
        .I3(\puntaje_fpga_reg_n_0_[7] ),
        .O(\leds[2]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[2]_INST_0_i_33 
       (.I0(\puntaje_usu_reg_n_0_[4] ),
        .I1(\puntaje_fpga_reg_n_0_[4] ),
        .I2(\puntaje_usu_reg_n_0_[5] ),
        .I3(\puntaje_fpga_reg_n_0_[5] ),
        .O(\leds[2]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[2]_INST_0_i_34 
       (.I0(\puntaje_usu_reg_n_0_[3] ),
        .I1(\puntaje_fpga_reg_n_0_[3] ),
        .I2(\puntaje_usu_reg_n_0_[2] ),
        .I3(\puntaje_fpga_reg_n_0_[2] ),
        .O(\leds[2]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[2]_INST_0_i_35 
       (.I0(\puntaje_usu_reg_n_0_[0] ),
        .I1(\puntaje_fpga_reg_n_0_[0] ),
        .I2(\puntaje_usu_reg_n_0_[1] ),
        .I3(\puntaje_fpga_reg_n_0_[1] ),
        .O(\leds[2]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[2]_INST_0_i_4 
       (.I0(\puntaje_fpga_reg_n_0_[26] ),
        .I1(\puntaje_usu_reg_n_0_[26] ),
        .I2(\puntaje_fpga_reg_n_0_[27] ),
        .I3(\puntaje_usu_reg_n_0_[27] ),
        .O(\leds[2]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[2]_INST_0_i_5 
       (.I0(\puntaje_fpga_reg_n_0_[24] ),
        .I1(\puntaje_usu_reg_n_0_[24] ),
        .I2(\puntaje_fpga_reg_n_0_[25] ),
        .I3(\puntaje_usu_reg_n_0_[25] ),
        .O(\leds[2]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[2]_INST_0_i_6 
       (.I0(\puntaje_usu_reg_n_0_[30] ),
        .I1(\puntaje_fpga_reg_n_0_[30] ),
        .I2(\puntaje_usu_reg_n_0_[31] ),
        .I3(\puntaje_fpga_reg_n_0_[31] ),
        .O(\leds[2]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[2]_INST_0_i_7 
       (.I0(\puntaje_usu_reg_n_0_[28] ),
        .I1(\puntaje_fpga_reg_n_0_[28] ),
        .I2(\puntaje_usu_reg_n_0_[29] ),
        .I3(\puntaje_fpga_reg_n_0_[29] ),
        .O(\leds[2]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[2]_INST_0_i_8 
       (.I0(\puntaje_usu_reg_n_0_[27] ),
        .I1(\puntaje_fpga_reg_n_0_[27] ),
        .I2(\puntaje_usu_reg_n_0_[26] ),
        .I3(\puntaje_fpga_reg_n_0_[26] ),
        .O(\leds[2]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[2]_INST_0_i_9 
       (.I0(\puntaje_usu_reg_n_0_[24] ),
        .I1(\puntaje_fpga_reg_n_0_[24] ),
        .I2(\puntaje_usu_reg_n_0_[25] ),
        .I3(\puntaje_fpga_reg_n_0_[25] ),
        .O(\leds[2]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \leds[3]_INST_0 
       (.I0(leds_v1),
        .I1(leds[2]),
        .O(leds[3]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \leds[3]_INST_0_i_1 
       (.CI(\leds[3]_INST_0_i_2_n_0 ),
        .CO({leds_v1,\leds[3]_INST_0_i_1_n_1 ,\leds[3]_INST_0_i_1_n_2 ,\leds[3]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\leds[3]_INST_0_i_3_n_0 ,\leds[3]_INST_0_i_4_n_0 ,\leds[3]_INST_0_i_5_n_0 ,\leds[3]_INST_0_i_6_n_0 }),
        .O(\NLW_leds[3]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\leds[3]_INST_0_i_7_n_0 ,\leds[3]_INST_0_i_8_n_0 ,\leds[3]_INST_0_i_9_n_0 ,\leds[3]_INST_0_i_10_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[3]_INST_0_i_10 
       (.I0(\puntaje_usu_reg_n_0_[24] ),
        .I1(\puntaje_fpga_reg_n_0_[24] ),
        .I2(\puntaje_usu_reg_n_0_[25] ),
        .I3(\puntaje_fpga_reg_n_0_[25] ),
        .O(\leds[3]_INST_0_i_10_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \leds[3]_INST_0_i_11 
       (.CI(\leds[3]_INST_0_i_20_n_0 ),
        .CO({\leds[3]_INST_0_i_11_n_0 ,\leds[3]_INST_0_i_11_n_1 ,\leds[3]_INST_0_i_11_n_2 ,\leds[3]_INST_0_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\leds[3]_INST_0_i_21_n_0 ,\leds[3]_INST_0_i_22_n_0 ,\leds[3]_INST_0_i_23_n_0 ,\leds[3]_INST_0_i_24_n_0 }),
        .O(\NLW_leds[3]_INST_0_i_11_O_UNCONNECTED [3:0]),
        .S({\leds[3]_INST_0_i_25_n_0 ,\leds[3]_INST_0_i_26_n_0 ,\leds[3]_INST_0_i_27_n_0 ,\leds[3]_INST_0_i_28_n_0 }));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[3]_INST_0_i_12 
       (.I0(\puntaje_usu_reg_n_0_[22] ),
        .I1(\puntaje_fpga_reg_n_0_[22] ),
        .I2(\puntaje_usu_reg_n_0_[23] ),
        .I3(\puntaje_fpga_reg_n_0_[23] ),
        .O(\leds[3]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[3]_INST_0_i_13 
       (.I0(\puntaje_usu_reg_n_0_[20] ),
        .I1(\puntaje_fpga_reg_n_0_[20] ),
        .I2(\puntaje_usu_reg_n_0_[21] ),
        .I3(\puntaje_fpga_reg_n_0_[21] ),
        .O(\leds[3]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[3]_INST_0_i_14 
       (.I0(\puntaje_usu_reg_n_0_[18] ),
        .I1(\puntaje_fpga_reg_n_0_[18] ),
        .I2(\puntaje_usu_reg_n_0_[19] ),
        .I3(\puntaje_fpga_reg_n_0_[19] ),
        .O(\leds[3]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[3]_INST_0_i_15 
       (.I0(\puntaje_usu_reg_n_0_[16] ),
        .I1(\puntaje_fpga_reg_n_0_[16] ),
        .I2(\puntaje_usu_reg_n_0_[17] ),
        .I3(\puntaje_fpga_reg_n_0_[17] ),
        .O(\leds[3]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[3]_INST_0_i_16 
       (.I0(\puntaje_usu_reg_n_0_[22] ),
        .I1(\puntaje_fpga_reg_n_0_[22] ),
        .I2(\puntaje_usu_reg_n_0_[23] ),
        .I3(\puntaje_fpga_reg_n_0_[23] ),
        .O(\leds[3]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[3]_INST_0_i_17 
       (.I0(\puntaje_usu_reg_n_0_[21] ),
        .I1(\puntaje_fpga_reg_n_0_[21] ),
        .I2(\puntaje_usu_reg_n_0_[20] ),
        .I3(\puntaje_fpga_reg_n_0_[20] ),
        .O(\leds[3]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[3]_INST_0_i_18 
       (.I0(\puntaje_usu_reg_n_0_[18] ),
        .I1(\puntaje_fpga_reg_n_0_[18] ),
        .I2(\puntaje_usu_reg_n_0_[19] ),
        .I3(\puntaje_fpga_reg_n_0_[19] ),
        .O(\leds[3]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[3]_INST_0_i_19 
       (.I0(\puntaje_usu_reg_n_0_[16] ),
        .I1(\puntaje_fpga_reg_n_0_[16] ),
        .I2(\puntaje_usu_reg_n_0_[17] ),
        .I3(\puntaje_fpga_reg_n_0_[17] ),
        .O(\leds[3]_INST_0_i_19_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \leds[3]_INST_0_i_2 
       (.CI(\leds[3]_INST_0_i_11_n_0 ),
        .CO({\leds[3]_INST_0_i_2_n_0 ,\leds[3]_INST_0_i_2_n_1 ,\leds[3]_INST_0_i_2_n_2 ,\leds[3]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\leds[3]_INST_0_i_12_n_0 ,\leds[3]_INST_0_i_13_n_0 ,\leds[3]_INST_0_i_14_n_0 ,\leds[3]_INST_0_i_15_n_0 }),
        .O(\NLW_leds[3]_INST_0_i_2_O_UNCONNECTED [3:0]),
        .S({\leds[3]_INST_0_i_16_n_0 ,\leds[3]_INST_0_i_17_n_0 ,\leds[3]_INST_0_i_18_n_0 ,\leds[3]_INST_0_i_19_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \leds[3]_INST_0_i_20 
       (.CI(1'b0),
        .CO({\leds[3]_INST_0_i_20_n_0 ,\leds[3]_INST_0_i_20_n_1 ,\leds[3]_INST_0_i_20_n_2 ,\leds[3]_INST_0_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\leds[3]_INST_0_i_29_n_0 ,\leds[3]_INST_0_i_30_n_0 ,\leds[3]_INST_0_i_31_n_0 ,\leds[3]_INST_0_i_32_n_0 }),
        .O(\NLW_leds[3]_INST_0_i_20_O_UNCONNECTED [3:0]),
        .S({\leds[3]_INST_0_i_33_n_0 ,\leds[3]_INST_0_i_34_n_0 ,\leds[3]_INST_0_i_35_n_0 ,\leds[3]_INST_0_i_36_n_0 }));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[3]_INST_0_i_21 
       (.I0(\puntaje_usu_reg_n_0_[14] ),
        .I1(\puntaje_fpga_reg_n_0_[14] ),
        .I2(\puntaje_usu_reg_n_0_[15] ),
        .I3(\puntaje_fpga_reg_n_0_[15] ),
        .O(\leds[3]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[3]_INST_0_i_22 
       (.I0(\puntaje_usu_reg_n_0_[12] ),
        .I1(\puntaje_fpga_reg_n_0_[12] ),
        .I2(\puntaje_usu_reg_n_0_[13] ),
        .I3(\puntaje_fpga_reg_n_0_[13] ),
        .O(\leds[3]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[3]_INST_0_i_23 
       (.I0(\puntaje_usu_reg_n_0_[10] ),
        .I1(\puntaje_fpga_reg_n_0_[10] ),
        .I2(\puntaje_usu_reg_n_0_[11] ),
        .I3(\puntaje_fpga_reg_n_0_[11] ),
        .O(\leds[3]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[3]_INST_0_i_24 
       (.I0(\puntaje_usu_reg_n_0_[8] ),
        .I1(\puntaje_fpga_reg_n_0_[8] ),
        .I2(\puntaje_usu_reg_n_0_[9] ),
        .I3(\puntaje_fpga_reg_n_0_[9] ),
        .O(\leds[3]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[3]_INST_0_i_25 
       (.I0(\puntaje_usu_reg_n_0_[15] ),
        .I1(\puntaje_fpga_reg_n_0_[15] ),
        .I2(\puntaje_usu_reg_n_0_[14] ),
        .I3(\puntaje_fpga_reg_n_0_[14] ),
        .O(\leds[3]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[3]_INST_0_i_26 
       (.I0(\puntaje_usu_reg_n_0_[12] ),
        .I1(\puntaje_fpga_reg_n_0_[12] ),
        .I2(\puntaje_usu_reg_n_0_[13] ),
        .I3(\puntaje_fpga_reg_n_0_[13] ),
        .O(\leds[3]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[3]_INST_0_i_27 
       (.I0(\puntaje_usu_reg_n_0_[10] ),
        .I1(\puntaje_fpga_reg_n_0_[10] ),
        .I2(\puntaje_usu_reg_n_0_[11] ),
        .I3(\puntaje_fpga_reg_n_0_[11] ),
        .O(\leds[3]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[3]_INST_0_i_28 
       (.I0(\puntaje_usu_reg_n_0_[9] ),
        .I1(\puntaje_fpga_reg_n_0_[9] ),
        .I2(\puntaje_usu_reg_n_0_[8] ),
        .I3(\puntaje_fpga_reg_n_0_[8] ),
        .O(\leds[3]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[3]_INST_0_i_29 
       (.I0(\puntaje_usu_reg_n_0_[6] ),
        .I1(\puntaje_fpga_reg_n_0_[6] ),
        .I2(\puntaje_usu_reg_n_0_[7] ),
        .I3(\puntaje_fpga_reg_n_0_[7] ),
        .O(\leds[3]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[3]_INST_0_i_3 
       (.I0(\puntaje_usu_reg_n_0_[30] ),
        .I1(\puntaje_fpga_reg_n_0_[30] ),
        .I2(\puntaje_fpga_reg_n_0_[31] ),
        .I3(\puntaje_usu_reg_n_0_[31] ),
        .O(\leds[3]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[3]_INST_0_i_30 
       (.I0(\puntaje_usu_reg_n_0_[4] ),
        .I1(\puntaje_fpga_reg_n_0_[4] ),
        .I2(\puntaje_usu_reg_n_0_[5] ),
        .I3(\puntaje_fpga_reg_n_0_[5] ),
        .O(\leds[3]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[3]_INST_0_i_31 
       (.I0(\puntaje_usu_reg_n_0_[2] ),
        .I1(\puntaje_fpga_reg_n_0_[2] ),
        .I2(\puntaje_usu_reg_n_0_[3] ),
        .I3(\puntaje_fpga_reg_n_0_[3] ),
        .O(\leds[3]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[3]_INST_0_i_32 
       (.I0(\puntaje_usu_reg_n_0_[0] ),
        .I1(\puntaje_fpga_reg_n_0_[0] ),
        .I2(\puntaje_usu_reg_n_0_[1] ),
        .I3(\puntaje_fpga_reg_n_0_[1] ),
        .O(\leds[3]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[3]_INST_0_i_33 
       (.I0(\puntaje_usu_reg_n_0_[6] ),
        .I1(\puntaje_fpga_reg_n_0_[6] ),
        .I2(\puntaje_usu_reg_n_0_[7] ),
        .I3(\puntaje_fpga_reg_n_0_[7] ),
        .O(\leds[3]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[3]_INST_0_i_34 
       (.I0(\puntaje_usu_reg_n_0_[4] ),
        .I1(\puntaje_fpga_reg_n_0_[4] ),
        .I2(\puntaje_usu_reg_n_0_[5] ),
        .I3(\puntaje_fpga_reg_n_0_[5] ),
        .O(\leds[3]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[3]_INST_0_i_35 
       (.I0(\puntaje_usu_reg_n_0_[3] ),
        .I1(\puntaje_fpga_reg_n_0_[3] ),
        .I2(\puntaje_usu_reg_n_0_[2] ),
        .I3(\puntaje_fpga_reg_n_0_[2] ),
        .O(\leds[3]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[3]_INST_0_i_36 
       (.I0(\puntaje_usu_reg_n_0_[0] ),
        .I1(\puntaje_fpga_reg_n_0_[0] ),
        .I2(\puntaje_usu_reg_n_0_[1] ),
        .I3(\puntaje_fpga_reg_n_0_[1] ),
        .O(\leds[3]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[3]_INST_0_i_4 
       (.I0(\puntaje_usu_reg_n_0_[28] ),
        .I1(\puntaje_fpga_reg_n_0_[28] ),
        .I2(\puntaje_usu_reg_n_0_[29] ),
        .I3(\puntaje_fpga_reg_n_0_[29] ),
        .O(\leds[3]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[3]_INST_0_i_5 
       (.I0(\puntaje_usu_reg_n_0_[26] ),
        .I1(\puntaje_fpga_reg_n_0_[26] ),
        .I2(\puntaje_usu_reg_n_0_[27] ),
        .I3(\puntaje_fpga_reg_n_0_[27] ),
        .O(\leds[3]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \leds[3]_INST_0_i_6 
       (.I0(\puntaje_usu_reg_n_0_[24] ),
        .I1(\puntaje_fpga_reg_n_0_[24] ),
        .I2(\puntaje_usu_reg_n_0_[25] ),
        .I3(\puntaje_fpga_reg_n_0_[25] ),
        .O(\leds[3]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[3]_INST_0_i_7 
       (.I0(\puntaje_usu_reg_n_0_[30] ),
        .I1(\puntaje_fpga_reg_n_0_[30] ),
        .I2(\puntaje_usu_reg_n_0_[31] ),
        .I3(\puntaje_fpga_reg_n_0_[31] ),
        .O(\leds[3]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[3]_INST_0_i_8 
       (.I0(\puntaje_usu_reg_n_0_[28] ),
        .I1(\puntaje_fpga_reg_n_0_[28] ),
        .I2(\puntaje_usu_reg_n_0_[29] ),
        .I3(\puntaje_fpga_reg_n_0_[29] ),
        .O(\leds[3]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \leds[3]_INST_0_i_9 
       (.I0(\puntaje_usu_reg_n_0_[27] ),
        .I1(\puntaje_fpga_reg_n_0_[27] ),
        .I2(\puntaje_usu_reg_n_0_[26] ),
        .I3(\puntaje_fpga_reg_n_0_[26] ),
        .O(\leds[3]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr[0]_i_1 
       (.I0(lfsr[2]),
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
        .Q(lfsr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(lfsr[1]),
        .Q(lfsr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \lfsr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(lfsr[2]),
        .Q(lfsr__0[3]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \puntaje_fpga[0]_i_1 
       (.I0(\puntaje_fpga_reg_n_0_[0] ),
        .O(in9[0]));
  LUT4 #(
    .INIT(16'h0001)) 
    \puntaje_fpga[31]_i_1 
       (.I0(state[0]),
        .I1(reset),
        .I2(state[2]),
        .I3(state[1]),
        .O(\puntaje_fpga[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001040104010001)) 
    \puntaje_fpga[31]_i_2 
       (.I0(reset),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(res),
        .I5(\turno_reg_n_0_[0] ),
        .O(puntaje_fpga0));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[0] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[0]),
        .Q(\puntaje_fpga_reg_n_0_[0] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[10] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[10]),
        .Q(\puntaje_fpga_reg_n_0_[10] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[11] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[11]),
        .Q(\puntaje_fpga_reg_n_0_[11] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[12] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[12]),
        .Q(\puntaje_fpga_reg_n_0_[12] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \puntaje_fpga_reg[12]_i_1 
       (.CI(\puntaje_fpga_reg[8]_i_1_n_0 ),
        .CO({\puntaje_fpga_reg[12]_i_1_n_0 ,\puntaje_fpga_reg[12]_i_1_n_1 ,\puntaje_fpga_reg[12]_i_1_n_2 ,\puntaje_fpga_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[12:9]),
        .S({\puntaje_fpga_reg_n_0_[12] ,\puntaje_fpga_reg_n_0_[11] ,\puntaje_fpga_reg_n_0_[10] ,\puntaje_fpga_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[13] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[13]),
        .Q(\puntaje_fpga_reg_n_0_[13] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[14] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[14]),
        .Q(\puntaje_fpga_reg_n_0_[14] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[15] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[15]),
        .Q(\puntaje_fpga_reg_n_0_[15] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[16] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[16]),
        .Q(\puntaje_fpga_reg_n_0_[16] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \puntaje_fpga_reg[16]_i_1 
       (.CI(\puntaje_fpga_reg[12]_i_1_n_0 ),
        .CO({\puntaje_fpga_reg[16]_i_1_n_0 ,\puntaje_fpga_reg[16]_i_1_n_1 ,\puntaje_fpga_reg[16]_i_1_n_2 ,\puntaje_fpga_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[16:13]),
        .S({\puntaje_fpga_reg_n_0_[16] ,\puntaje_fpga_reg_n_0_[15] ,\puntaje_fpga_reg_n_0_[14] ,\puntaje_fpga_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[17] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[17]),
        .Q(\puntaje_fpga_reg_n_0_[17] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[18] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[18]),
        .Q(\puntaje_fpga_reg_n_0_[18] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[19] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[19]),
        .Q(\puntaje_fpga_reg_n_0_[19] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[1] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[1]),
        .Q(\puntaje_fpga_reg_n_0_[1] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[20] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[20]),
        .Q(\puntaje_fpga_reg_n_0_[20] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \puntaje_fpga_reg[20]_i_1 
       (.CI(\puntaje_fpga_reg[16]_i_1_n_0 ),
        .CO({\puntaje_fpga_reg[20]_i_1_n_0 ,\puntaje_fpga_reg[20]_i_1_n_1 ,\puntaje_fpga_reg[20]_i_1_n_2 ,\puntaje_fpga_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[20:17]),
        .S({\puntaje_fpga_reg_n_0_[20] ,\puntaje_fpga_reg_n_0_[19] ,\puntaje_fpga_reg_n_0_[18] ,\puntaje_fpga_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[21] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[21]),
        .Q(\puntaje_fpga_reg_n_0_[21] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[22] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[22]),
        .Q(\puntaje_fpga_reg_n_0_[22] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[23] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[23]),
        .Q(\puntaje_fpga_reg_n_0_[23] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[24] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[24]),
        .Q(\puntaje_fpga_reg_n_0_[24] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \puntaje_fpga_reg[24]_i_1 
       (.CI(\puntaje_fpga_reg[20]_i_1_n_0 ),
        .CO({\puntaje_fpga_reg[24]_i_1_n_0 ,\puntaje_fpga_reg[24]_i_1_n_1 ,\puntaje_fpga_reg[24]_i_1_n_2 ,\puntaje_fpga_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[24:21]),
        .S({\puntaje_fpga_reg_n_0_[24] ,\puntaje_fpga_reg_n_0_[23] ,\puntaje_fpga_reg_n_0_[22] ,\puntaje_fpga_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[25] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[25]),
        .Q(\puntaje_fpga_reg_n_0_[25] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[26] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[26]),
        .Q(\puntaje_fpga_reg_n_0_[26] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[27] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[27]),
        .Q(\puntaje_fpga_reg_n_0_[27] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[28] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[28]),
        .Q(\puntaje_fpga_reg_n_0_[28] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \puntaje_fpga_reg[28]_i_1 
       (.CI(\puntaje_fpga_reg[24]_i_1_n_0 ),
        .CO({\puntaje_fpga_reg[28]_i_1_n_0 ,\puntaje_fpga_reg[28]_i_1_n_1 ,\puntaje_fpga_reg[28]_i_1_n_2 ,\puntaje_fpga_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[28:25]),
        .S({\puntaje_fpga_reg_n_0_[28] ,\puntaje_fpga_reg_n_0_[27] ,\puntaje_fpga_reg_n_0_[26] ,\puntaje_fpga_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[29] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[29]),
        .Q(\puntaje_fpga_reg_n_0_[29] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[2] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[2]),
        .Q(\puntaje_fpga_reg_n_0_[2] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[30] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[30]),
        .Q(\puntaje_fpga_reg_n_0_[30] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[31] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[31]),
        .Q(\puntaje_fpga_reg_n_0_[31] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \puntaje_fpga_reg[31]_i_3 
       (.CI(\puntaje_fpga_reg[28]_i_1_n_0 ),
        .CO({\NLW_puntaje_fpga_reg[31]_i_3_CO_UNCONNECTED [3:2],\puntaje_fpga_reg[31]_i_3_n_2 ,\puntaje_fpga_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_puntaje_fpga_reg[31]_i_3_O_UNCONNECTED [3],in9[31:29]}),
        .S({1'b0,\puntaje_fpga_reg_n_0_[31] ,\puntaje_fpga_reg_n_0_[30] ,\puntaje_fpga_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[3] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[3]),
        .Q(\puntaje_fpga_reg_n_0_[3] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[4] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[4]),
        .Q(\puntaje_fpga_reg_n_0_[4] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \puntaje_fpga_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\puntaje_fpga_reg[4]_i_1_n_0 ,\puntaje_fpga_reg[4]_i_1_n_1 ,\puntaje_fpga_reg[4]_i_1_n_2 ,\puntaje_fpga_reg[4]_i_1_n_3 }),
        .CYINIT(\puntaje_fpga_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[4:1]),
        .S({\puntaje_fpga_reg_n_0_[4] ,\puntaje_fpga_reg_n_0_[3] ,\puntaje_fpga_reg_n_0_[2] ,\puntaje_fpga_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[5] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[5]),
        .Q(\puntaje_fpga_reg_n_0_[5] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[6] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[6]),
        .Q(\puntaje_fpga_reg_n_0_[6] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[7] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[7]),
        .Q(\puntaje_fpga_reg_n_0_[7] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[8] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[8]),
        .Q(\puntaje_fpga_reg_n_0_[8] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \puntaje_fpga_reg[8]_i_1 
       (.CI(\puntaje_fpga_reg[4]_i_1_n_0 ),
        .CO({\puntaje_fpga_reg[8]_i_1_n_0 ,\puntaje_fpga_reg[8]_i_1_n_1 ,\puntaje_fpga_reg[8]_i_1_n_2 ,\puntaje_fpga_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[8:5]),
        .S({\puntaje_fpga_reg_n_0_[8] ,\puntaje_fpga_reg_n_0_[7] ,\puntaje_fpga_reg_n_0_[6] ,\puntaje_fpga_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_fpga_reg[9] 
       (.C(clk),
        .CE(puntaje_fpga0),
        .D(in9[9]),
        .Q(\puntaje_fpga_reg_n_0_[9] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \puntaje_usu[0]_i_1 
       (.I0(\puntaje_usu_reg_n_0_[0] ),
        .O(in7[0]));
  LUT6 #(
    .INIT(64'h0401000100010401)) 
    \puntaje_usu[31]_i_1 
       (.I0(reset),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\turno_reg_n_0_[0] ),
        .I5(res),
        .O(puntaje_usu0));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[0] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[0]),
        .Q(\puntaje_usu_reg_n_0_[0] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[10] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[10]),
        .Q(\puntaje_usu_reg_n_0_[10] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[11] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[11]),
        .Q(\puntaje_usu_reg_n_0_[11] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[12] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[12]),
        .Q(\puntaje_usu_reg_n_0_[12] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \puntaje_usu_reg[12]_i_1 
       (.CI(\puntaje_usu_reg[8]_i_1_n_0 ),
        .CO({\puntaje_usu_reg[12]_i_1_n_0 ,\puntaje_usu_reg[12]_i_1_n_1 ,\puntaje_usu_reg[12]_i_1_n_2 ,\puntaje_usu_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[12:9]),
        .S({\puntaje_usu_reg_n_0_[12] ,\puntaje_usu_reg_n_0_[11] ,\puntaje_usu_reg_n_0_[10] ,\puntaje_usu_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[13] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[13]),
        .Q(\puntaje_usu_reg_n_0_[13] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[14] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[14]),
        .Q(\puntaje_usu_reg_n_0_[14] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[15] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[15]),
        .Q(\puntaje_usu_reg_n_0_[15] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[16] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[16]),
        .Q(\puntaje_usu_reg_n_0_[16] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \puntaje_usu_reg[16]_i_1 
       (.CI(\puntaje_usu_reg[12]_i_1_n_0 ),
        .CO({\puntaje_usu_reg[16]_i_1_n_0 ,\puntaje_usu_reg[16]_i_1_n_1 ,\puntaje_usu_reg[16]_i_1_n_2 ,\puntaje_usu_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[16:13]),
        .S({\puntaje_usu_reg_n_0_[16] ,\puntaje_usu_reg_n_0_[15] ,\puntaje_usu_reg_n_0_[14] ,\puntaje_usu_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[17] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[17]),
        .Q(\puntaje_usu_reg_n_0_[17] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[18] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[18]),
        .Q(\puntaje_usu_reg_n_0_[18] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[19] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[19]),
        .Q(\puntaje_usu_reg_n_0_[19] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[1] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[1]),
        .Q(\puntaje_usu_reg_n_0_[1] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[20] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[20]),
        .Q(\puntaje_usu_reg_n_0_[20] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \puntaje_usu_reg[20]_i_1 
       (.CI(\puntaje_usu_reg[16]_i_1_n_0 ),
        .CO({\puntaje_usu_reg[20]_i_1_n_0 ,\puntaje_usu_reg[20]_i_1_n_1 ,\puntaje_usu_reg[20]_i_1_n_2 ,\puntaje_usu_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[20:17]),
        .S({\puntaje_usu_reg_n_0_[20] ,\puntaje_usu_reg_n_0_[19] ,\puntaje_usu_reg_n_0_[18] ,\puntaje_usu_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[21] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[21]),
        .Q(\puntaje_usu_reg_n_0_[21] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[22] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[22]),
        .Q(\puntaje_usu_reg_n_0_[22] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[23] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[23]),
        .Q(\puntaje_usu_reg_n_0_[23] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[24] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[24]),
        .Q(\puntaje_usu_reg_n_0_[24] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \puntaje_usu_reg[24]_i_1 
       (.CI(\puntaje_usu_reg[20]_i_1_n_0 ),
        .CO({\puntaje_usu_reg[24]_i_1_n_0 ,\puntaje_usu_reg[24]_i_1_n_1 ,\puntaje_usu_reg[24]_i_1_n_2 ,\puntaje_usu_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[24:21]),
        .S({\puntaje_usu_reg_n_0_[24] ,\puntaje_usu_reg_n_0_[23] ,\puntaje_usu_reg_n_0_[22] ,\puntaje_usu_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[25] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[25]),
        .Q(\puntaje_usu_reg_n_0_[25] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[26] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[26]),
        .Q(\puntaje_usu_reg_n_0_[26] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[27] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[27]),
        .Q(\puntaje_usu_reg_n_0_[27] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[28] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[28]),
        .Q(\puntaje_usu_reg_n_0_[28] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \puntaje_usu_reg[28]_i_1 
       (.CI(\puntaje_usu_reg[24]_i_1_n_0 ),
        .CO({\puntaje_usu_reg[28]_i_1_n_0 ,\puntaje_usu_reg[28]_i_1_n_1 ,\puntaje_usu_reg[28]_i_1_n_2 ,\puntaje_usu_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[28:25]),
        .S({\puntaje_usu_reg_n_0_[28] ,\puntaje_usu_reg_n_0_[27] ,\puntaje_usu_reg_n_0_[26] ,\puntaje_usu_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[29] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[29]),
        .Q(\puntaje_usu_reg_n_0_[29] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[2] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[2]),
        .Q(\puntaje_usu_reg_n_0_[2] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[30] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[30]),
        .Q(\puntaje_usu_reg_n_0_[30] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[31] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[31]),
        .Q(\puntaje_usu_reg_n_0_[31] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \puntaje_usu_reg[31]_i_2 
       (.CI(\puntaje_usu_reg[28]_i_1_n_0 ),
        .CO({\NLW_puntaje_usu_reg[31]_i_2_CO_UNCONNECTED [3:2],\puntaje_usu_reg[31]_i_2_n_2 ,\puntaje_usu_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_puntaje_usu_reg[31]_i_2_O_UNCONNECTED [3],in7[31:29]}),
        .S({1'b0,\puntaje_usu_reg_n_0_[31] ,\puntaje_usu_reg_n_0_[30] ,\puntaje_usu_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[3] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[3]),
        .Q(\puntaje_usu_reg_n_0_[3] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[4] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[4]),
        .Q(\puntaje_usu_reg_n_0_[4] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \puntaje_usu_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\puntaje_usu_reg[4]_i_1_n_0 ,\puntaje_usu_reg[4]_i_1_n_1 ,\puntaje_usu_reg[4]_i_1_n_2 ,\puntaje_usu_reg[4]_i_1_n_3 }),
        .CYINIT(\puntaje_usu_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[4:1]),
        .S({\puntaje_usu_reg_n_0_[4] ,\puntaje_usu_reg_n_0_[3] ,\puntaje_usu_reg_n_0_[2] ,\puntaje_usu_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[5] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[5]),
        .Q(\puntaje_usu_reg_n_0_[5] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[6] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[6]),
        .Q(\puntaje_usu_reg_n_0_[6] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[7] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[7]),
        .Q(\puntaje_usu_reg_n_0_[7] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[8] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[8]),
        .Q(\puntaje_usu_reg_n_0_[8] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \puntaje_usu_reg[8]_i_1 
       (.CI(\puntaje_usu_reg[4]_i_1_n_0 ),
        .CO({\puntaje_usu_reg[8]_i_1_n_0 ,\puntaje_usu_reg[8]_i_1_n_1 ,\puntaje_usu_reg[8]_i_1_n_2 ,\puntaje_usu_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[8:5]),
        .S({\puntaje_usu_reg_n_0_[8] ,\puntaje_usu_reg_n_0_[7] ,\puntaje_usu_reg_n_0_[6] ,\puntaje_usu_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \puntaje_usu_reg[9] 
       (.C(clk),
        .CE(puntaje_usu0),
        .D(in7[9]),
        .Q(\puntaje_usu_reg_n_0_[9] ),
        .R(\puntaje_fpga[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    resul_i_1
       (.I0(resul_i_2_n_0),
        .I1(reset),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(res),
        .O(resul_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFF0AACC00F0AACC)) 
    resul_i_2
       (.I0(sw[1]),
        .I1(sw[0]),
        .I2(sw[2]),
        .I3(lfsr[1]),
        .I4(lfsr[2]),
        .I5(sw[3]),
        .O(resul_i_2_n_0));
  FDRE resul_reg
       (.C(clk),
        .CE(1'b1),
        .D(resul_i_1_n_0),
        .Q(res),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hC5050000F0F0F0F0)) 
    \turno[0]_i_1 
       (.I0(state[1]),
        .I1(\turno_reg_n_0_[1] ),
        .I2(\turno_reg_n_0_[0] ),
        .I3(turno1),
        .I4(state[2]),
        .I5(\turno[1]_i_2_n_0 ),
        .O(\turno[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD4140000CCCCCCCC)) 
    \turno[1]_i_1 
       (.I0(state[1]),
        .I1(\turno_reg_n_0_[1] ),
        .I2(\turno_reg_n_0_[0] ),
        .I3(turno1),
        .I4(state[2]),
        .I5(\turno[1]_i_2_n_0 ),
        .O(\turno[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \turno[1]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(reset),
        .O(\turno[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \turno_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\turno[0]_i_1_n_0 ),
        .Q(\turno_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \turno_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\turno[1]_i_1_n_0 ),
        .Q(\turno_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFC00000800)) 
    update_i_1
       (.I0(update_i_2_n_0),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(reset),
        .I5(update),
        .O(update_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    update_i_2
       (.I0(jugar),
        .I1(jugar_prev_reg_n_0),
        .O(update_i_2_n_0));
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
        .I1(state[2]),
        .I2(leds_v1),
        .I3(update0),
        .I4(wol),
        .O(wol_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000020000F)) 
    wol_i_2
       (.I0(jugar),
        .I1(jugar_prev_reg_n_0),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(reset),
        .O(update0));
  FDRE wol_reg
       (.C(clk),
        .CE(1'b1),
        .D(wol_i_1_n_0),
        .Q(wol),
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
