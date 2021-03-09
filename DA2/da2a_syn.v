{\rtf1\ansi\ansicpg950\cocoartf1671\cocoasubrtf600
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 /////////////////////////////////////////////////////////////\
// Created by: Synopsys DC Expert(TM) in wire load mode\
// Version   : Q-2019.12\
// Date      : Sat Jun 13 18:52:15 2020\
/////////////////////////////////////////////////////////////\
\
\
module GCD_DW01_sub_0 ( A, B, CI, DIFF, CO );\
  input [7:0] A;\
  input [7:0] B;\
  output [7:0] DIFF;\
  input CI;\
  output CO;\
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;\
  wire   [8:0] carry;\
\
  XOR3X1 U2_7 ( .A(A[7]), .B(n2), .C(carry[7]), .Y(DIFF[7]) );\
  ADDFXL U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );\
  ADDFXL U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );\
  ADDFXL U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );\
  ADDFXL U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );\
  ADDFXL U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );\
  ADDFXL U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );\
  XNOR2X1 U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );\
  CLKINVX1 U2 ( .A(B[0]), .Y(n9) );\
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );\
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );\
  CLKINVX1 U5 ( .A(B[1]), .Y(n8) );\
  CLKINVX1 U6 ( .A(B[2]), .Y(n7) );\
  CLKINVX1 U7 ( .A(B[3]), .Y(n6) );\
  CLKINVX1 U8 ( .A(B[4]), .Y(n5) );\
  CLKINVX1 U9 ( .A(B[5]), .Y(n4) );\
  CLKINVX1 U10 ( .A(B[6]), .Y(n3) );\
  CLKINVX1 U11 ( .A(B[7]), .Y(n2) );\
endmodule\
\
\
module GCD ( CLK, RST_N, A, B, START, Y, DONE, ERROR );\
  input [7:0] A;\
  input [7:0] B;\
  output [7:0] Y;\
  input CLK, RST_N, START;\
  output DONE, ERROR;\
  wire   N10, N11, N12, N13, N14, N15, N16, N17, N19, N20, N21, N22, N23, N24,\
         N25, N26, N28, N29, N30, N31, N32, N33, N34, N35, error_next,\
         done_next, N45, N48, N49, n40, n41, n42, n43, n44, n45, n46, n47, n48,\
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,\
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,\
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,\
         n91, n92;\
  wire   [1:0] curr_state;\
  wire   [1:0] next_state;\
  wire   [7:0] _a;\
  wire   [7:0] diff;\
  wire   [7:0] _b;\
  wire   [7:0] data_b;\
  wire   [7:0] Y_next;\
  wire   [7:0] data_a;\
\
  GCD_DW01_sub_0 sub_87 ( .A(data_a), .B(data_b), .CI(1'b0), .DIFF(diff) );\
  DFFQX1 done_next_reg ( .D(n77), .CK(CLK), .Q(done_next) );\
  DFFQX1 \\Y_next_reg[7]  ( .D(N35), .CK(CLK), .Q(Y_next[7]) );\
  DFFQX1 \\Y_next_reg[6]  ( .D(N34), .CK(CLK), .Q(Y_next[6]) );\
  DFFQX1 \\Y_next_reg[5]  ( .D(N33), .CK(CLK), .Q(Y_next[5]) );\
  DFFQX1 \\Y_next_reg[4]  ( .D(N32), .CK(CLK), .Q(Y_next[4]) );\
  DFFQX1 \\Y_next_reg[3]  ( .D(N31), .CK(CLK), .Q(Y_next[3]) );\
  DFFQX1 \\Y_next_reg[2]  ( .D(N30), .CK(CLK), .Q(Y_next[2]) );\
  DFFQX1 \\Y_next_reg[1]  ( .D(N29), .CK(CLK), .Q(Y_next[1]) );\
  DFFQX1 \\Y_next_reg[0]  ( .D(N28), .CK(CLK), .Q(Y_next[0]) );\
  DFFQX1 \\_b_reg[0]  ( .D(N19), .CK(CLK), .Q(_b[0]) );\
  DFFQX1 \\_a_reg[0]  ( .D(N10), .CK(CLK), .Q(_a[0]) );\
  DFFQX1 \\_b_reg[1]  ( .D(N20), .CK(CLK), .Q(_b[1]) );\
  DFFQX1 \\_a_reg[3]  ( .D(N13), .CK(CLK), .Q(_a[3]) );\
  DFFQX1 \\_b_reg[5]  ( .D(N24), .CK(CLK), .Q(_b[5]) );\
  DFFQX1 \\_a_reg[7]  ( .D(N17), .CK(CLK), .Q(_a[7]) );\
  DFFQX1 \\_a_reg[6]  ( .D(N16), .CK(CLK), .Q(_a[6]) );\
  DFFQX1 \\_b_reg[4]  ( .D(N23), .CK(CLK), .Q(_b[4]) );\
  DFFQX1 \\_a_reg[2]  ( .D(N12), .CK(CLK), .Q(_a[2]) );\
  DFFQX1 \\_a_reg[1]  ( .D(N11), .CK(CLK), .Q(_a[1]) );\
  DFFQX1 \\_a_reg[4]  ( .D(N14), .CK(CLK), .Q(_a[4]) );\
  DFFQX1 \\_b_reg[7]  ( .D(N26), .CK(CLK), .Q(_b[7]) );\
  DFFQX1 \\_b_reg[6]  ( .D(N25), .CK(CLK), .Q(_b[6]) );\
  DFFQX1 \\_b_reg[2]  ( .D(N21), .CK(CLK), .Q(_b[2]) );\
  DFFQX1 \\_a_reg[5]  ( .D(N15), .CK(CLK), .Q(_a[5]) );\
  DFFQX1 \\_b_reg[3]  ( .D(N22), .CK(CLK), .Q(_b[3]) );\
  TLATX1 error_next_reg ( .G(N48), .D(N45), .Q(error_next) );\
  DFFRX1 \\curr_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST_N), .Q(\
        curr_state[1]) );\
  DFFRX1 \\curr_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST_N), .Q(\
        curr_state[0]), .QN(n57) );\
  OAI22XL U98 ( .A0(n80), .A1(n82), .B0(n58), .B1(n81), .Y(data_a[0]) );\
  CLKINVX1 U99 ( .A(START), .Y(n79) );\
  AND2X2 U100 ( .A(n55), .B(n56), .Y(n53) );\
  NOR4X1 U101 ( .A(diff[3]), .B(diff[2]), .C(diff[1]), .D(diff[0]), .Y(n55) );\
  NOR4X1 U102 ( .A(diff[7]), .B(diff[6]), .C(diff[5]), .D(diff[4]), .Y(n56) );\
  OAI22XL U103 ( .A0(n80), .A1(n81), .B0(n58), .B1(n82), .Y(data_b[0]) );\
  OAI22XL U104 ( .A0(n80), .A1(n83), .B0(n58), .B1(n92), .Y(data_b[1]) );\
  OAI22XL U105 ( .A0(n80), .A1(n84), .B0(n58), .B1(n72), .Y(data_b[2]) );\
  OAI22XL U106 ( .A0(n80), .A1(n85), .B0(n58), .B1(n91), .Y(data_b[3]) );\
  OAI22XL U107 ( .A0(n80), .A1(n76), .B0(n58), .B1(n90), .Y(data_b[4]) );\
  OAI22XL U108 ( .A0(n80), .A1(n86), .B0(n58), .B1(n89), .Y(data_b[5]) );\
  OAI22XL U109 ( .A0(n80), .A1(n87), .B0(n58), .B1(n73), .Y(data_b[6]) );\
  OAI22XL U110 ( .A0(n80), .A1(n88), .B0(n58), .B1(n74), .Y(data_b[7]) );\
  OAI22XL U111 ( .A0(n80), .A1(n92), .B0(n58), .B1(n83), .Y(data_a[1]) );\
  OAI22XL U112 ( .A0(n80), .A1(n72), .B0(n58), .B1(n84), .Y(data_a[2]) );\
  OAI22XL U113 ( .A0(n80), .A1(n91), .B0(n58), .B1(n85), .Y(data_a[3]) );\
  OAI22XL U114 ( .A0(n80), .A1(n90), .B0(n58), .B1(n76), .Y(data_a[4]) );\
  OAI22XL U115 ( .A0(n80), .A1(n89), .B0(n58), .B1(n86), .Y(data_a[5]) );\
  OAI22XL U116 ( .A0(n80), .A1(n73), .B0(n58), .B1(n87), .Y(data_a[6]) );\
  OAI22XL U117 ( .A0(n74), .A1(n80), .B0(n58), .B1(n88), .Y(data_a[7]) );\
  OAI2BB2XL U118 ( .B0(n53), .B1(n48), .A0N(data_a[0]), .A1N(n53), .Y(N28) );\
  OAI2BB2XL U119 ( .B0(n53), .B1(n47), .A0N(data_a[1]), .A1N(n53), .Y(N29) );\
  OAI2BB2XL U120 ( .B0(n53), .B1(n46), .A0N(data_a[2]), .A1N(n53), .Y(N30) );\
  OAI2BB2XL U121 ( .B0(n53), .B1(n45), .A0N(data_a[3]), .A1N(n53), .Y(N31) );\
  OAI2BB2XL U122 ( .B0(n53), .B1(n44), .A0N(data_a[4]), .A1N(n53), .Y(N32) );\
  OAI2BB2XL U123 ( .B0(n53), .B1(n43), .A0N(data_a[5]), .A1N(n53), .Y(N33) );\
  OAI2BB2XL U124 ( .B0(n53), .B1(n42), .A0N(data_a[6]), .A1N(n53), .Y(N34) );\
  OAI2BB2XL U125 ( .B0(n53), .B1(n41), .A0N(data_a[7]), .A1N(n53), .Y(N35) );\
  CLKINVX1 U126 ( .A(n58), .Y(n80) );\
  CLKINVX1 U127 ( .A(n40), .Y(n77) );\
  CLKINVX1 U128 ( .A(n48), .Y(Y[0]) );\
  CLKINVX1 U129 ( .A(n47), .Y(Y[1]) );\
  CLKINVX1 U130 ( .A(n46), .Y(Y[2]) );\
  CLKINVX1 U131 ( .A(n45), .Y(Y[3]) );\
  CLKINVX1 U132 ( .A(n44), .Y(Y[4]) );\
  CLKINVX1 U133 ( .A(n43), .Y(Y[5]) );\
  CLKINVX1 U134 ( .A(n42), .Y(Y[6]) );\
  CLKINVX1 U135 ( .A(n41), .Y(Y[7]) );\
  OAI22XL U136 ( .A0(n49), .A1(n50), .B0(n51), .B1(n52), .Y(N45) );\
  OR4X1 U137 ( .A(A[0]), .B(A[1]), .C(A[2]), .D(A[3]), .Y(n52) );\
  OR4X1 U138 ( .A(A[4]), .B(A[5]), .C(A[6]), .D(A[7]), .Y(n51) );\
  OR4X1 U139 ( .A(B[0]), .B(B[1]), .C(B[2]), .D(B[3]), .Y(n50) );\
  NOR3X1 U140 ( .A(curr_state[0]), .B(curr_state[1]), .C(n79), .Y(N48) );\
  NOR2X1 U141 ( .A(error_next), .B(n53), .Y(n40) );\
  CLKBUFX3 U142 ( .A(N49), .Y(n58) );\
  OAI31XL U143 ( .A0(n71), .A1(n70), .A2(n69), .B0(n68), .Y(N49) );\
  NAND2X1 U144 ( .A(Y_next[0]), .B(n59), .Y(n48) );\
  NAND2X1 U145 ( .A(Y_next[1]), .B(n59), .Y(n47) );\
  NAND2X1 U146 ( .A(Y_next[2]), .B(n59), .Y(n46) );\
  NAND2X1 U147 ( .A(Y_next[3]), .B(n59), .Y(n45) );\
  NAND2X1 U148 ( .A(Y_next[4]), .B(n59), .Y(n44) );\
  NAND2X1 U149 ( .A(Y_next[5]), .B(n59), .Y(n43) );\
  NAND2X1 U150 ( .A(Y_next[6]), .B(n59), .Y(n42) );\
  NAND2X1 U151 ( .A(Y_next[7]), .B(n59), .Y(n41) );\
  CLKINVX1 U152 ( .A(n65), .Y(n75) );\
  NOR3X1 U153 ( .A(n57), .B(curr_state[1]), .C(n40), .Y(next_state[1]) );\
  CLKBUFX3 U154 ( .A(n54), .Y(n59) );\
  NOR2BX1 U155 ( .AN(curr_state[1]), .B(curr_state[0]), .Y(n54) );\
  OR4X1 U156 ( .A(B[4]), .B(B[5]), .C(B[6]), .D(B[7]), .Y(n49) );\
  AO22X1 U157 ( .A0(START), .A1(A[0]), .B0(n79), .B1(diff[0]), .Y(N10) );\
  AO22X1 U158 ( .A0(START), .A1(B[1]), .B0(n79), .B1(data_b[1]), .Y(N20) );\
  AO22X1 U159 ( .A0(START), .A1(B[2]), .B0(n79), .B1(data_b[2]), .Y(N21) );\
  AO22X1 U160 ( .A0(START), .A1(B[3]), .B0(n79), .B1(data_b[3]), .Y(N22) );\
  AO22X1 U161 ( .A0(START), .A1(B[4]), .B0(n79), .B1(data_b[4]), .Y(N23) );\
  AO22X1 U162 ( .A0(START), .A1(B[5]), .B0(n79), .B1(data_b[5]), .Y(N24) );\
  AO22X1 U163 ( .A0(START), .A1(B[6]), .B0(n79), .B1(data_b[6]), .Y(N25) );\
  AO22X1 U164 ( .A0(START), .A1(B[7]), .B0(n79), .B1(data_b[7]), .Y(N26) );\
  AO22X1 U165 ( .A0(START), .A1(B[0]), .B0(n79), .B1(data_b[0]), .Y(N19) );\
  AO22X1 U166 ( .A0(START), .A1(A[7]), .B0(n79), .B1(diff[7]), .Y(N17) );\
  AO22X1 U167 ( .A0(START), .A1(A[6]), .B0(n79), .B1(diff[6]), .Y(N16) );\
  AO22X1 U168 ( .A0(START), .A1(A[5]), .B0(n79), .B1(diff[5]), .Y(N15) );\
  AO22X1 U169 ( .A0(START), .A1(A[4]), .B0(n79), .B1(diff[4]), .Y(N14) );\
  AO22X1 U170 ( .A0(START), .A1(A[3]), .B0(n79), .B1(diff[3]), .Y(N13) );\
  AO22X1 U171 ( .A0(START), .A1(A[2]), .B0(n79), .B1(diff[2]), .Y(N12) );\
  AO22X1 U172 ( .A0(START), .A1(A[1]), .B0(n79), .B1(diff[1]), .Y(N11) );\
  CLKINVX1 U173 ( .A(_b[3]), .Y(n91) );\
  CLKINVX1 U174 ( .A(_a[5]), .Y(n86) );\
  CLKINVX1 U175 ( .A(_a[1]), .Y(n83) );\
  OAI31XL U176 ( .A0(n57), .A1(curr_state[1]), .A2(n77), .B0(n78), .Y(\
        next_state[0]) );\
  CLKINVX1 U177 ( .A(N48), .Y(n78) );\
  CLKINVX1 U178 ( .A(_a[2]), .Y(n84) );\
  CLKINVX1 U179 ( .A(_b[4]), .Y(n90) );\
  CLKINVX1 U180 ( .A(_a[6]), .Y(n87) );\
  CLKINVX1 U181 ( .A(_b[5]), .Y(n89) );\
  CLKINVX1 U182 ( .A(_a[7]), .Y(n88) );\
  CLKINVX1 U183 ( .A(_a[3]), .Y(n85) );\
  CLKINVX1 U184 ( .A(_b[1]), .Y(n92) );\
  CLKINVX1 U185 ( .A(_a[0]), .Y(n81) );\
  CLKINVX1 U186 ( .A(_b[0]), .Y(n82) );\
  CLKINVX1 U187 ( .A(_b[2]), .Y(n72) );\
  CLKINVX1 U188 ( .A(_a[4]), .Y(n76) );\
  CLKINVX1 U189 ( .A(_b[6]), .Y(n73) );\
  CLKINVX1 U190 ( .A(_b[7]), .Y(n74) );\
  AND2X2 U191 ( .A(n59), .B(error_next), .Y(ERROR) );\
  AND2X2 U192 ( .A(done_next), .B(n59), .Y(DONE) );\
  NOR2BX1 U193 ( .AN(_a[3]), .B(_b[3]), .Y(n60) );\
  AOI21X1 U194 ( .A0(_a[2]), .A1(n72), .B0(n60), .Y(n61) );\
  OAI32X1 U195 ( .A0(n72), .A1(_a[2]), .A2(n60), .B0(_a[3]), .B1(n91), .Y(n62)\
         );\
  NAND2BX1 U196 ( .AN(_b[5]), .B(_a[5]), .Y(n66) );\
  OAI221XL U197 ( .A0(_b[4]), .A1(n76), .B0(n61), .B1(n62), .C0(n66), .Y(n71)\
         );\
  AOI2BB1X1 U198 ( .A0N(n83), .A1N(_b[1]), .B0(_a[0]), .Y(n63) );\
  AOI221XL U199 ( .A0(_b[1]), .A1(n83), .B0(n63), .B1(_b[0]), .C0(n62), .Y(n70) );\
  AND2X1 U200 ( .A(_a[7]), .B(n74), .Y(n64) );\
  AO21X1 U201 ( .A0(n73), .A1(_a[6]), .B0(n64), .Y(n69) );\
  OAI32X1 U202 ( .A0(n73), .A1(_a[6]), .A2(n64), .B0(_a[7]), .B1(n74), .Y(n65)\
         );\
  AOI32X1 U203 ( .A0(_b[4]), .A1(n76), .A2(n66), .B0(n86), .B1(_b[5]), .Y(n67)\
         );\
  AO22X1 U204 ( .A0(n75), .A1(n67), .B0(n69), .B1(n75), .Y(n68) );\
endmodule\
\
}