// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sun May  3 21:03:58 2026
// Host        : PC_Felipe running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_c_counter_binary_0_0 -prefix
//               design_1_c_counter_binary_0_0_ design_1_c_counter_binary_0_0_sim_netlist.v
// Design      : design_1_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_CLK_0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 5}" *) output [4:0]Q;

  wire CLK;
  wire [4:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "5" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_c_counter_binary_0_0_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "5" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_1_c_counter_binary_0_0_c_counter_binary_v12_0_14
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [4:0]L;
  output THRESH0;
  output [4:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [4:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "5" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_c_counter_binary_0_0_c_counter_binary_v12_0_14_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
EJFZwtxl4g9/OL6+bopUV8BP4e67HNukCIy7Ih3E75y7soa6GhqEucPXMiOy+mJrcrNwD+HjZ0/I
BwEKIiA4mA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
rZCGWdmPJXoOuANoS8fyUXk7SyF+uTNJL18BfeKc+fxcyRrCB++WrM02adxoUdICz4/92yY8TQgj
xyPC0eaHZcjSLepbnHHgSReIQ1PL0hmufLbye7QTD0ygUXC4MvFVY8s3KeW9cPCqOxkyCSziJQzs
J5OT9XLQno1e9rIBr9M=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I7Zo4frj3tO6FFzeDhpSENS0yd34dQZBtiyIrI/GMASFBUeny6muOD2l0HK69ImRJIOyobvK1+9O
DhxptAc4NzRpY4xUZvr4ix1AhM1Kars1OkrQCWz4a7ciGU/XDblidF3IL0Fa7c41gHIZR9c/Usa6
XL7UEu3aSPQYbZLSDOzeao4VtSSn+dCcjsH4X8zVjSqXg8dcN3fd5C15JaMYg00F2yOFtxwWwZWq
Yvwe1q1PG/wcA1cKAOscANbj4o3O4LjfylNIB6L+Mssxosh+e0+oobWNk/ouBa4k1c3/IzXGSCAs
hEvbI+iqkWJJKZrSb9PZk7S7XSJcScrJO/DGkQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DDRecdVJcCPEpbUqhuwKtKWXteF7XhGc5d+lQn2uiREzbHyuZvQ1wDwAGGrPwE75gjqc7CdHPMOY
8+3nqcEwR4Q5USgQcou3Cyc6C0TnzzDD/dLKPHDWA1s52x8Rx+LBH9WCvBpD5BKkE4o1s3rN1tL2
wTdCqzzKD8YlryKQ4U0lr2bX6Mlf4/nIt2K1eyPKbIrHIvKDThmaIF/qLnLnkE04pksWJ9Af1OVB
46iqBssrR5p6wZc241D4CqSRCRamfP/s1JrTi8bBNCcXhC0f0Aa35UAoG8vnFngHlFd3G2J88cas
Fo7UH4k1BTTfgbQ35ec0XfSbS/qQWS+EgAF+wA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
L11p2bsABDhO9HvT3IM+HulCClFvs/UPexuAVExicKtzrLN7tNvUjSouZSn9KwAjR2hg5ZIJ23uy
1elB+eyEl65vQnoH4+s6Q5K4EIcMo5WVKfIKwgu5Q3Sg/jYW+aWT/kGuc7CazRsTxJ7XPFndpMIM
cxYWx2DLps320t+Be0c=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uublhc2r9VmPPq1tMATsd3XJltn9QRg1/PdCtSlxgFBDDAk13md52Fz+h+DOWptR3Q4i+Sx5IhIP
QIONVNTf1DnoK/wa1lkbd1dROJam8/cZQFiIxnsnSPGXzOGoc0c04xDSCJCCDxiDMF1YTtAqt6nw
yZh1RwOhPpgwUKjeJ4o4TY6/i0xuYAYVc83O6KwI9Ywk9UsfyIQQS8UXFo8zA9eniU2n2NcyAVNj
Y8xZ9PYJfzfDo6dHWsj4Ik588uhfO/bmsf2/ZuY5HCAMQpnda9XzPkVomNjRfsUghko7KipIl2ur
aHh+4i2kI/+cHaihhw3z14aGidBkuYKaopasbA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VYqlyQSuRywWcSrUprXX2UzoaWsJXTTbptzDY9ycgFR91H2uYfY43f80gn0E87Gvj90Qmn0Dl6ck
2VjO2Zn9yATmqtuzi/Etuf29dkl3uyKtk02OitZJEhD1CDyUJHDXKHkPMXOZCBU5CfkrIWw2SsSq
YuQKmvxp4BrhcwXypr+vRSsYd1liMxxuXOdBN5AIyzibGfcR4YUeOokIoP05xZoQOfPQkotMC1B6
SHVKEaBxe37YkyKAkQ0f9eKfnPPLG/G5qeLrFPAiIar0HHpOvdCOO69vi3RG1XqoxtTm/wGwRb5J
ZqzZyTn1Fm55PXyKhlElzXXAv1xPOTbkJXRZNQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EktM4icAEVQRmfzXBBFeRr7d3ZTOU9f+J40sQAiff114nDU+fxlewcv+twlytUk9LMSR67RJlLt4
+ZBTwcuSPZ2Cvrommkp++7rNze0VCD8pSAdj4uo1ZnYWVWmPMQaRIqI88lnAzc5+T/LxEiXKn4ji
AYGs9fja4ME8C0CHbBsg+jfUryleVk1D8jEMCetM7qDx64s/7AGfwzDqMiW2DPCPLKNUsdlOlBYT
JAOnfy6deN7/o7BYxBsE1P4Pib1x1hvR8RwEm38pBOLKGade6KL/1SHmz5N1KGLPSXQXlK53RLTI
Exc4wN04Kg72tf503oGq6Vp90c5pksQ9cc0M+w==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qzYsaSn6YzxyfrxIwv3eyowRK7ZyzZmQHzUmV2AITf6g43c7IV/fwNBDik+XFhLScW2SxsyaGGI7
5n6kAt9uM3GerkCXA+LJQrqshcEyjuvm17vWVovBURqxhTARgZaTs5OtXdhc/wLi5e6lsdyyLtQo
bt66ubjErMgf5+tD8rpn0HkjUYmGv/MBZ0i4bGui735H12aK+wTfhGVOOiuWHCk2zCJJSx3vH4sl
dKtlpg4W0hPEM3TBPHaLnOpIDkrIUaGGN5fm6NJL6US59+Lr8/3mplbD8ld21OKzgLH+5YPRMoo4
1Pbjxkawu5Kk60AsuaR/OxngawaRMd9N4niRfQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ajglDIUDOIy8U+HyWpdZ833/e8MsRU0uT8lrTrgbPFYPmk9Nfq+Qfm/YlGHyKCcne6vIPQb8gmgJ
35rgA+mVjn3wruAkmJD9HLD65hw7YkpknrHcmUWBvOBSW9abfiArKFXuk+7nTx3fIDxT9VQPi2e/
AGco2z1dKPtZLR8JSckLyMVO08Cd+pkcx7yz40r4yY+zp6rWIFDprnir2PID8SONtbRT8qj0RJDS
XsVb72lJJxgjiJFVQMD2GIWj9vCXp7fxekBOe4vS7+ZBzNf0VWEFOWfxqGz/9AI45HRrdRzEV+JO
Bnq2HOySf/vHTIQWgrpHfpf66voqvFf8wKYqBQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZqfHXFFb7VsD2FKxG9KwKGM4kchy3suCzq4RoYpQ6idze5ljNp4rKkDOWZN7TJZ9eHYgUrarqwEv
fY/Qxh3RixXqPRxexnjyr0mCnwuvTodVZpbP0Z1jPMELbkPERp+sbt04qG+IXG/3RaX7iZDm0e6k
peqFDDD18V0DfTPFquTav8ghu0zSDiJnFAW/zqhlOjIskQ1HL+N2QuqJbSxFlAh5WIOgBP2qe04U
MGc/9glW5I5mCkQ+StHpIfOlDVBy4ZZyX9/gbHPzIuO/cliqeGj4BcQ5lg9RnvnE4BtQHtVXRRi4
A+bfUlr67T4qN3H3RokazVGbu9uFcL7UfxtlYw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5488)
`pragma protect data_block
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
ndy3f8Bc89OmeUJ5PsfvgA==
`pragma protect end_protected
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
