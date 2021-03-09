{\rtf1\ansi\ansicpg950\cocoartf1671\cocoasubrtf600
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 /////////////////////////////////////////////////////////////\
// Created by: Synopsys DC Expert(TM) in wire load mode\
// Version   : Q-2019.12\
// Date      : Sat Jun 13 22:09:51 2020\
/////////////////////////////////////////////////////////////\
\
\
module GCD_DW01_add_1 ( A, B, CI, SUM, CO );\
  input [5:0] A;\
  input [5:0] B;\
  output [5:0] SUM;\
  input CI;\
  output CO;\
  wire   n2, n3, n4, n5, n6;\
\
  ADDFXL U2 ( .A(A[5]), .B(B[5]), .CI(n2), .CO(CO), .S(SUM[5]) );\
  ADDFXL U3 ( .A(A[4]), .B(B[4]), .CI(n3), .CO(n2), .S(SUM[4]) );\
  ADDFXL U4 ( .A(A[3]), .B(B[3]), .CI(n4), .CO(n3), .S(SUM[3]) );\
  ADDFXL U5 ( .A(A[2]), .B(B[2]), .CI(n5), .CO(n4), .S(SUM[2]) );\
  ADDFXL U6 ( .A(A[1]), .B(B[1]), .CI(n6), .CO(n5), .S(SUM[1]) );\
  ADDFXL U7 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(n6), .S(SUM[0]) );\
endmodule\
\
\
module GCD_DW01_add_2 ( A, B, CI, SUM, CO );\
  input [6:0] A;\
  input [6:0] B;\
  output [6:0] SUM;\
  input CI;\
  output CO;\
  wire   n2, n3, n4, n5, n6, n7;\
\
  ADDFXL U2 ( .A(A[6]), .B(B[6]), .CI(n2), .CO(CO), .S(SUM[6]) );\
  ADDFXL U3 ( .A(A[5]), .B(B[5]), .CI(n3), .CO(n2), .S(SUM[5]) );\
  ADDFXL U4 ( .A(A[4]), .B(B[4]), .CI(n4), .CO(n3), .S(SUM[4]) );\
  ADDFXL U5 ( .A(A[3]), .B(B[3]), .CI(n5), .CO(n4), .S(SUM[3]) );\
  ADDFXL U6 ( .A(A[2]), .B(B[2]), .CI(n6), .CO(n5), .S(SUM[2]) );\
  ADDFXL U7 ( .A(A[1]), .B(B[1]), .CI(n7), .CO(n6), .S(SUM[1]) );\
  ADDFXL U8 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(n7), .S(SUM[0]) );\
endmodule\
\
\
module GCD_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );\
  input [7:0] a;\
  input [7:0] b;\
  output [7:0] quotient;\
  output [7:0] remainder;\
  output divide_by_0;\
  wire   n44, n45, n46, n47, n48, n49, n50, n51, \\u_div/SumTmp[0][0] ,\
         \\u_div/SumTmp[0][1] , \\u_div/SumTmp[0][2] , \\u_div/SumTmp[0][3] ,\
         \\u_div/SumTmp[0][4] , \\u_div/SumTmp[0][5] , \\u_div/SumTmp[0][6] ,\
         \\u_div/SumTmp[0][7] , \\u_div/SumTmp[1][0] , \\u_div/SumTmp[1][1] ,\
         \\u_div/SumTmp[1][2] , \\u_div/SumTmp[1][3] , \\u_div/SumTmp[1][4] ,\
         \\u_div/SumTmp[1][5] , \\u_div/SumTmp[1][6] , \\u_div/SumTmp[2][0] ,\
         \\u_div/SumTmp[2][1] , \\u_div/SumTmp[2][2] , \\u_div/SumTmp[2][3] ,\
         \\u_div/SumTmp[2][4] , \\u_div/SumTmp[2][5] , \\u_div/SumTmp[3][0] ,\
         \\u_div/SumTmp[3][1] , \\u_div/SumTmp[3][2] , \\u_div/SumTmp[3][3] ,\
         \\u_div/SumTmp[3][4] , \\u_div/SumTmp[4][0] , \\u_div/SumTmp[4][1] ,\
         \\u_div/SumTmp[4][2] , \\u_div/SumTmp[4][3] , \\u_div/SumTmp[5][0] ,\
         \\u_div/SumTmp[5][1] , \\u_div/SumTmp[5][2] , \\u_div/SumTmp[6][0] ,\
         \\u_div/SumTmp[6][1] , \\u_div/CryTmp[0][1] , \\u_div/CryTmp[1][1] ,\
         \\u_div/CryTmp[1][7] , \\u_div/CryTmp[2][1] , \\u_div/CryTmp[2][6] ,\
         \\u_div/CryTmp[3][1] , \\u_div/CryTmp[3][5] , \\u_div/CryTmp[4][1] ,\
         \\u_div/CryTmp[5][1] , \\u_div/CryTmp[6][1] , \\u_div/PartRem[1][1] ,\
         \\u_div/PartRem[1][2] , \\u_div/PartRem[1][3] , \\u_div/PartRem[1][4] ,\
         \\u_div/PartRem[1][5] , \\u_div/PartRem[1][6] , \\u_div/PartRem[1][7] ,\
         \\u_div/PartRem[2][1] , \\u_div/PartRem[2][2] , \\u_div/PartRem[2][3] ,\
         \\u_div/PartRem[2][4] , \\u_div/PartRem[2][5] , \\u_div/PartRem[2][6] ,\
         \\u_div/PartRem[3][1] , \\u_div/PartRem[3][2] , \\u_div/PartRem[3][3] ,\
         \\u_div/PartRem[3][4] , \\u_div/PartRem[3][5] , \\u_div/PartRem[4][1] ,\
         \\u_div/PartRem[4][2] , \\u_div/PartRem[4][3] , \\u_div/PartRem[4][4] ,\
         \\u_div/PartRem[5][1] , \\u_div/PartRem[5][2] , \\u_div/PartRem[5][3] ,\
         \\u_div/PartRem[6][1] , \\u_div/PartRem[6][2] , \\u_div/PartRem[7][1] ,\
         \\u_div/u_add_PartRem_1_2/B[4] , \\u_div/u_add_PartRem_1_2/B[3] ,\
         \\u_div/u_add_PartRem_1_2/B[2] , \\u_div/u_add_PartRem_1_2/B[1] ,\
         \\u_div/u_add_PartRem_1_2/B[0] , \\u_div/u_add_PartRem_1_2/n5 ,\
         \\u_div/u_add_PartRem_1_2/n4 , \\u_div/u_add_PartRem_1_2/n3 ,\
         \\u_div/u_add_PartRem_1_2/n2 , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,\
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,\
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,\
         n39, n40, n41, n42, n43;\
\
  GCD_DW01_add_1 \\u_div/u_add_PartRem_1_1  ( .A(\{\\u_div/PartRem[2][6] , \
        \\u_div/PartRem[2][5] , \\u_div/PartRem[2][4] , \\u_div/PartRem[2][3] , \
        \\u_div/PartRem[2][2] , \\u_div/PartRem[2][1] \}), .B(\{n20, \
        \\u_div/u_add_PartRem_1_2/B[4] , \\u_div/u_add_PartRem_1_2/B[3] , \
        \\u_div/u_add_PartRem_1_2/B[2] , \\u_div/u_add_PartRem_1_2/B[1] , \
        \\u_div/u_add_PartRem_1_2/B[0] \}), .CI(\\u_div/CryTmp[1][1] ), .SUM(\{\
        \\u_div/SumTmp[1][6] , \\u_div/SumTmp[1][5] , \\u_div/SumTmp[1][4] , \
        \\u_div/SumTmp[1][3] , \\u_div/SumTmp[1][2] , \\u_div/SumTmp[1][1] \}), \
        .CO(\\u_div/CryTmp[1][7] ) );\
  GCD_DW01_add_2 \\u_div/u_add_PartRem_1_0  ( .A(\{\\u_div/PartRem[1][7] , \
        \\u_div/PartRem[1][6] , \\u_div/PartRem[1][5] , \\u_div/PartRem[1][4] , \
        \\u_div/PartRem[1][3] , \\u_div/PartRem[1][2] , \\u_div/PartRem[1][1] \}), \
        .B(\{n19, n20, \\u_div/u_add_PartRem_1_2/B[4] , \
        \\u_div/u_add_PartRem_1_2/B[3] , \\u_div/u_add_PartRem_1_2/B[2] , \
        \\u_div/u_add_PartRem_1_2/B[1] , \\u_div/u_add_PartRem_1_2/B[0] \}), .CI(\
        \\u_div/CryTmp[0][1] ), .SUM(\{\\u_div/SumTmp[0][7] , \
        \\u_div/SumTmp[0][6] , \\u_div/SumTmp[0][5] , \\u_div/SumTmp[0][4] , \
        \\u_div/SumTmp[0][3] , \\u_div/SumTmp[0][2] , \\u_div/SumTmp[0][1] \}), \
        .CO(n51) );\
  ADDFXL \\u_div/u_add_PartRem_1_2/U6  ( .A(\\u_div/PartRem[3][1] ), .B(\
        \\u_div/u_add_PartRem_1_2/B[0] ), .CI(\\u_div/CryTmp[2][1] ), .CO(\
        \\u_div/u_add_PartRem_1_2/n5 ), .S(\\u_div/SumTmp[2][1] ) );\
  ADDFXL \\u_div/u_add_PartRem_1_2/U5  ( .A(\\u_div/PartRem[3][2] ), .B(\
        \\u_div/u_add_PartRem_1_2/B[1] ), .CI(\\u_div/u_add_PartRem_1_2/n5 ), \
        .CO(\\u_div/u_add_PartRem_1_2/n4 ), .S(\\u_div/SumTmp[2][2] ) );\
  ADDFXL \\u_div/u_add_PartRem_1_2/U4  ( .A(\\u_div/PartRem[3][3] ), .B(\
        \\u_div/u_add_PartRem_1_2/B[2] ), .CI(\\u_div/u_add_PartRem_1_2/n4 ), \
        .CO(\\u_div/u_add_PartRem_1_2/n3 ), .S(\\u_div/SumTmp[2][3] ) );\
  ADDFXL \\u_div/u_add_PartRem_1_2/U3  ( .A(\\u_div/PartRem[3][4] ), .B(\
        \\u_div/u_add_PartRem_1_2/B[3] ), .CI(\\u_div/u_add_PartRem_1_2/n3 ), \
        .CO(\\u_div/u_add_PartRem_1_2/n2 ), .S(\\u_div/SumTmp[2][4] ) );\
  ADDFXL \\u_div/u_add_PartRem_1_2/U2  ( .A(\\u_div/PartRem[3][5] ), .B(\
        \\u_div/u_add_PartRem_1_2/B[4] ), .CI(\\u_div/u_add_PartRem_1_2/n2 ), \
        .CO(\\u_div/CryTmp[2][6] ), .S(\\u_div/SumTmp[2][5] ) );\
  MX2XL \\u_div/u_mx_PartRem_0_0_0  ( .A(a[0]), .B(\\u_div/SumTmp[0][0] ), .S0(\
        n51), .Y(remainder[0]) );\
  MX2XL \\u_div/u_mx_PartRem_0_0_1  ( .A(\\u_div/PartRem[1][1] ), .B(\
        \\u_div/SumTmp[0][1] ), .S0(n51), .Y(remainder[1]) );\
  MX2XL \\u_div/u_mx_PartRem_0_0_2  ( .A(\\u_div/PartRem[1][2] ), .B(\
        \\u_div/SumTmp[0][2] ), .S0(n51), .Y(remainder[2]) );\
  MX2XL \\u_div/u_mx_PartRem_0_0_3  ( .A(\\u_div/PartRem[1][3] ), .B(\
        \\u_div/SumTmp[0][3] ), .S0(n51), .Y(remainder[3]) );\
  MX2XL \\u_div/u_mx_PartRem_0_0_4  ( .A(\\u_div/PartRem[1][4] ), .B(\
        \\u_div/SumTmp[0][4] ), .S0(n51), .Y(remainder[4]) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_0_5  ( .A(\\u_div/PartRem[1][5] ), .B(\
        \\u_div/SumTmp[0][5] ), .S0(n51), .Y(remainder[5]) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_0_6  ( .A(\\u_div/PartRem[1][6] ), .B(\
        \\u_div/SumTmp[0][6] ), .S0(n51), .Y(remainder[6]) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_0_7  ( .A(\\u_div/PartRem[1][7] ), .B(\
        \\u_div/SumTmp[0][7] ), .S0(n51), .Y(remainder[7]) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_3_0  ( .A(a[3]), .B(\\u_div/SumTmp[3][0] ), \
        .S0(n48), .Y(\\u_div/PartRem[3][1] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_6_0  ( .A(a[6]), .B(\\u_div/SumTmp[6][0] ), \
        .S0(n45), .Y(\\u_div/PartRem[6][1] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_5_0  ( .A(a[5]), .B(\\u_div/SumTmp[5][0] ), \
        .S0(n46), .Y(\\u_div/PartRem[5][1] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_2_0  ( .A(a[2]), .B(\\u_div/SumTmp[2][0] ), \
        .S0(n49), .Y(\\u_div/PartRem[2][1] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_4_0  ( .A(a[4]), .B(\\u_div/SumTmp[4][0] ), \
        .S0(n47), .Y(\\u_div/PartRem[4][1] ) );\
  MX2XL \\u_div/u_mx_PartRem_0_1_0  ( .A(a[1]), .B(\\u_div/SumTmp[1][0] ), .S0(\
        n50), .Y(\\u_div/PartRem[1][1] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_3_4  ( .A(\\u_div/PartRem[4][4] ), .B(\
        \\u_div/SumTmp[3][4] ), .S0(n48), .Y(\\u_div/PartRem[3][5] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_3_3  ( .A(\\u_div/PartRem[4][3] ), .B(\
        \\u_div/SumTmp[3][3] ), .S0(n48), .Y(\\u_div/PartRem[3][4] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_3_2  ( .A(\\u_div/PartRem[4][2] ), .B(\
        \\u_div/SumTmp[3][2] ), .S0(n48), .Y(\\u_div/PartRem[3][3] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_3_1  ( .A(\\u_div/PartRem[4][1] ), .B(\
        \\u_div/SumTmp[3][1] ), .S0(n48), .Y(\\u_div/PartRem[3][2] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_6_1  ( .A(\\u_div/PartRem[7][1] ), .B(\
        \\u_div/SumTmp[6][1] ), .S0(n45), .Y(\\u_div/PartRem[6][2] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_5_2  ( .A(\\u_div/PartRem[6][2] ), .B(\
        \\u_div/SumTmp[5][2] ), .S0(n46), .Y(\\u_div/PartRem[5][3] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_5_1  ( .A(\\u_div/PartRem[6][1] ), .B(\
        \\u_div/SumTmp[5][1] ), .S0(n46), .Y(\\u_div/PartRem[5][2] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_2_1  ( .A(\\u_div/PartRem[3][1] ), .B(\
        \\u_div/SumTmp[2][1] ), .S0(n49), .Y(\\u_div/PartRem[2][2] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_4_2  ( .A(\\u_div/PartRem[5][2] ), .B(\
        \\u_div/SumTmp[4][2] ), .S0(n47), .Y(\\u_div/PartRem[4][3] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_4_1  ( .A(\\u_div/PartRem[5][1] ), .B(\
        \\u_div/SumTmp[4][1] ), .S0(n47), .Y(\\u_div/PartRem[4][2] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_1_6  ( .A(\\u_div/PartRem[2][6] ), .B(\
        \\u_div/SumTmp[1][6] ), .S0(n50), .Y(\\u_div/PartRem[1][7] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_1_5  ( .A(\\u_div/PartRem[2][5] ), .B(\
        \\u_div/SumTmp[1][5] ), .S0(n50), .Y(\\u_div/PartRem[1][6] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_1_4  ( .A(\\u_div/PartRem[2][4] ), .B(\
        \\u_div/SumTmp[1][4] ), .S0(n50), .Y(\\u_div/PartRem[1][5] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_1_3  ( .A(\\u_div/PartRem[2][3] ), .B(\
        \\u_div/SumTmp[1][3] ), .S0(n50), .Y(\\u_div/PartRem[1][4] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_1_2  ( .A(\\u_div/PartRem[2][2] ), .B(\
        \\u_div/SumTmp[1][2] ), .S0(n50), .Y(\\u_div/PartRem[1][3] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_1_1  ( .A(\\u_div/PartRem[2][1] ), .B(\
        \\u_div/SumTmp[1][1] ), .S0(n50), .Y(\\u_div/PartRem[1][2] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_4_3  ( .A(\\u_div/PartRem[5][3] ), .B(\
        \\u_div/SumTmp[4][3] ), .S0(n47), .Y(\\u_div/PartRem[4][4] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_2_5  ( .A(\\u_div/PartRem[3][5] ), .B(\
        \\u_div/SumTmp[2][5] ), .S0(n49), .Y(\\u_div/PartRem[2][6] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_2_4  ( .A(\\u_div/PartRem[3][4] ), .B(\
        \\u_div/SumTmp[2][4] ), .S0(n49), .Y(\\u_div/PartRem[2][5] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_2_3  ( .A(\\u_div/PartRem[3][3] ), .B(\
        \\u_div/SumTmp[2][3] ), .S0(n49), .Y(\\u_div/PartRem[2][4] ) );\
  CLKMX2X2 \\u_div/u_mx_PartRem_0_2_2  ( .A(\\u_div/PartRem[3][2] ), .B(\
        \\u_div/SumTmp[2][2] ), .S0(n49), .Y(\\u_div/PartRem[2][3] ) );\
  CLKINVX1 U1 ( .A(n43), .Y(n18) );\
  CLKINVX1 U2 ( .A(n23), .Y(n3) );\
  NOR2X1 U3 ( .A(n29), .B(n42), .Y(n47) );\
  NOR2X1 U4 ( .A(n35), .B(n41), .Y(n46) );\
  CLKINVX1 U5 ( .A(n25), .Y(n2) );\
  NAND2BX1 U6 ( .AN(n42), .B(\\u_div/u_add_PartRem_1_2/B[2] ), .Y(n41) );\
  CLKINVX1 U7 ( .A(n41), .Y(n17) );\
  CLKINVX1 U8 ( .A(n38), .Y(n12) );\
  CLKINVX1 U9 ( .A(n34), .Y(n11) );\
  CLKINVX1 U10 ( .A(n28), .Y(n9) );\
  CLKINVX1 U11 ( .A(n32), .Y(n10) );\
  CLKINVX1 U12 ( .A(\\u_div/PartRem[4][4] ), .Y(n8) );\
  CLKINVX1 U13 ( .A(b[1]), .Y(\\u_div/u_add_PartRem_1_2/B[0] ) );\
  CLKINVX1 U14 ( .A(b[2]), .Y(\\u_div/u_add_PartRem_1_2/B[1] ) );\
  CLKINVX1 U15 ( .A(b[3]), .Y(\\u_div/u_add_PartRem_1_2/B[2] ) );\
  MXI2X1 U16 ( .A(n13), .B(n1), .S0(n44), .Y(\\u_div/PartRem[7][1] ) );\
  XNOR2X1 U17 ( .A(b[0]), .B(a[7]), .Y(n1) );\
  CLKINVX1 U18 ( .A(a[7]), .Y(n13) );\
  CLKINVX1 U19 ( .A(b[4]), .Y(\\u_div/u_add_PartRem_1_2/B[3] ) );\
  CLKINVX1 U20 ( .A(b[5]), .Y(\\u_div/u_add_PartRem_1_2/B[4] ) );\
  CLKINVX1 U21 ( .A(a[6]), .Y(n14) );\
  CLKINVX1 U22 ( .A(a[5]), .Y(n15) );\
  CLKINVX1 U23 ( .A(a[4]), .Y(n16) );\
  CLKINVX1 U24 ( .A(a[3]), .Y(n4) );\
  CLKINVX1 U25 ( .A(a[2]), .Y(n5) );\
  CLKINVX1 U26 ( .A(a[1]), .Y(n6) );\
  CLKINVX1 U27 ( .A(a[0]), .Y(n7) );\
  CLKINVX1 U28 ( .A(b[6]), .Y(n20) );\
  CLKINVX1 U29 ( .A(b[7]), .Y(n19) );\
  AOI222XL U30 ( .A0(\\u_div/CryTmp[3][1] ), .A1(\\u_div/PartRem[4][1] ), .B0(\
        \\u_div/u_add_PartRem_1_2/B[0] ), .B1(\\u_div/CryTmp[3][1] ), .C0(\
        \\u_div/u_add_PartRem_1_2/B[0] ), .C1(\\u_div/PartRem[4][1] ), .Y(n23)\
         );\
  AOI222XL U31 ( .A0(n3), .A1(\\u_div/PartRem[4][2] ), .B0(n3), .B1(\
        \\u_div/u_add_PartRem_1_2/B[1] ), .C0(\\u_div/u_add_PartRem_1_2/B[1] ), \
        .C1(\\u_div/PartRem[4][2] ), .Y(n25) );\
  AOI222XL U32 ( .A0(n2), .A1(\\u_div/PartRem[4][3] ), .B0(n2), .B1(\
        \\u_div/u_add_PartRem_1_2/B[2] ), .C0(\\u_div/u_add_PartRem_1_2/B[2] ), \
        .C1(\\u_div/PartRem[4][3] ), .Y(n26) );\
  OAI222XL U33 ( .A0(n26), .A1(n8), .B0(n26), .B1(b[4]), .C0(b[4]), .C1(n8), \
        .Y(\\u_div/CryTmp[3][5] ) );\
  XOR2X1 U34 ( .A(\\u_div/CryTmp[3][1] ), .B(\\u_div/u_add_PartRem_1_2/B[0] ), \
        .Y(n21) );\
  XOR2X1 U35 ( .A(\\u_div/PartRem[4][1] ), .B(n21), .Y(\\u_div/SumTmp[3][1] ) );\
  XOR2X1 U36 ( .A(\\u_div/u_add_PartRem_1_2/B[1] ), .B(\\u_div/PartRem[4][2] ), \
        .Y(n22) );\
  XNOR2X1 U37 ( .A(n23), .B(n22), .Y(\\u_div/SumTmp[3][2] ) );\
  XOR2X1 U38 ( .A(\\u_div/u_add_PartRem_1_2/B[2] ), .B(\\u_div/PartRem[4][3] ), \
        .Y(n24) );\
  XNOR2X1 U39 ( .A(n25), .B(n24), .Y(\\u_div/SumTmp[3][3] ) );\
  XNOR2X1 U40 ( .A(\\u_div/PartRem[4][4] ), .B(\\u_div/u_add_PartRem_1_2/B[3] ), \
        .Y(n27) );\
  XOR2X1 U41 ( .A(n27), .B(n26), .Y(\\u_div/SumTmp[3][4] ) );\
  AOI222XL U42 ( .A0(\\u_div/CryTmp[4][1] ), .A1(\\u_div/PartRem[5][1] ), .B0(\
        \\u_div/u_add_PartRem_1_2/B[0] ), .B1(\\u_div/CryTmp[4][1] ), .C0(\
        \\u_div/u_add_PartRem_1_2/B[0] ), .C1(\\u_div/PartRem[5][1] ), .Y(n32)\
         );\
  AOI222XL U43 ( .A0(n10), .A1(\\u_div/PartRem[5][2] ), .B0(n10), .B1(\
        \\u_div/u_add_PartRem_1_2/B[1] ), .C0(\\u_div/u_add_PartRem_1_2/B[1] ), \
        .C1(\\u_div/PartRem[5][2] ), .Y(n28) );\
  AOI222XL U44 ( .A0(n9), .A1(\\u_div/PartRem[5][3] ), .B0(n9), .B1(\
        \\u_div/u_add_PartRem_1_2/B[2] ), .C0(\\u_div/u_add_PartRem_1_2/B[2] ), \
        .C1(\\u_div/PartRem[5][3] ), .Y(n29) );\
  XOR2X1 U45 ( .A(\\u_div/CryTmp[4][1] ), .B(\\u_div/u_add_PartRem_1_2/B[0] ), \
        .Y(n30) );\
  XOR2X1 U46 ( .A(\\u_div/PartRem[5][1] ), .B(n30), .Y(\\u_div/SumTmp[4][1] ) );\
  XOR2X1 U47 ( .A(\\u_div/u_add_PartRem_1_2/B[1] ), .B(\\u_div/PartRem[5][2] ), \
        .Y(n31) );\
  XNOR2X1 U48 ( .A(n32), .B(n31), .Y(\\u_div/SumTmp[4][2] ) );\
  XOR2X1 U49 ( .A(\\u_div/u_add_PartRem_1_2/B[2] ), .B(\\u_div/PartRem[5][3] ), \
        .Y(n33) );\
  XOR2X1 U50 ( .A(n9), .B(n33), .Y(\\u_div/SumTmp[4][3] ) );\
  AOI222XL U51 ( .A0(\\u_div/CryTmp[5][1] ), .A1(\\u_div/PartRem[6][1] ), .B0(\
        \\u_div/u_add_PartRem_1_2/B[0] ), .B1(\\u_div/CryTmp[5][1] ), .C0(\
        \\u_div/u_add_PartRem_1_2/B[0] ), .C1(\\u_div/PartRem[6][1] ), .Y(n34)\
         );\
  AOI222XL U52 ( .A0(n11), .A1(\\u_div/PartRem[6][2] ), .B0(n11), .B1(\
        \\u_div/u_add_PartRem_1_2/B[1] ), .C0(\\u_div/u_add_PartRem_1_2/B[1] ), \
        .C1(\\u_div/PartRem[6][2] ), .Y(n35) );\
  XOR2X1 U53 ( .A(\\u_div/CryTmp[5][1] ), .B(\\u_div/u_add_PartRem_1_2/B[0] ), \
        .Y(n36) );\
  XOR2X1 U54 ( .A(\\u_div/PartRem[6][1] ), .B(n36), .Y(\\u_div/SumTmp[5][1] ) );\
  XOR2X1 U55 ( .A(\\u_div/u_add_PartRem_1_2/B[1] ), .B(\\u_div/PartRem[6][2] ), \
        .Y(n37) );\
  XOR2X1 U56 ( .A(n11), .B(n37), .Y(\\u_div/SumTmp[5][2] ) );\
  AOI222XL U57 ( .A0(\\u_div/CryTmp[6][1] ), .A1(\\u_div/PartRem[7][1] ), .B0(\
        \\u_div/CryTmp[6][1] ), .B1(\\u_div/u_add_PartRem_1_2/B[0] ), .C0(\
        \\u_div/u_add_PartRem_1_2/B[0] ), .C1(\\u_div/PartRem[7][1] ), .Y(n38)\
         );\
  XOR2X1 U58 ( .A(\\u_div/CryTmp[6][1] ), .B(\\u_div/u_add_PartRem_1_2/B[0] ), \
        .Y(n39) );\
  XOR2X1 U59 ( .A(\\u_div/PartRem[7][1] ), .B(n39), .Y(\\u_div/SumTmp[6][1] ) );\
  OAI21XL U60 ( .A0(b[0]), .A1(n14), .B0(\\u_div/CryTmp[6][1] ), .Y(\
        \\u_div/SumTmp[6][0] ) );\
  OAI21XL U61 ( .A0(b[0]), .A1(n15), .B0(\\u_div/CryTmp[5][1] ), .Y(\
        \\u_div/SumTmp[5][0] ) );\
  OAI21XL U62 ( .A0(b[0]), .A1(n16), .B0(\\u_div/CryTmp[4][1] ), .Y(\
        \\u_div/SumTmp[4][0] ) );\
  OAI21XL U63 ( .A0(b[0]), .A1(n4), .B0(\\u_div/CryTmp[3][1] ), .Y(\
        \\u_div/SumTmp[3][0] ) );\
  OAI21XL U64 ( .A0(b[0]), .A1(n5), .B0(\\u_div/CryTmp[2][1] ), .Y(\
        \\u_div/SumTmp[2][0] ) );\
  OAI21XL U65 ( .A0(b[0]), .A1(n6), .B0(\\u_div/CryTmp[1][1] ), .Y(\
        \\u_div/SumTmp[1][0] ) );\
  OAI21XL U66 ( .A0(b[0]), .A1(n7), .B0(\\u_div/CryTmp[0][1] ), .Y(\
        \\u_div/SumTmp[0][0] ) );\
  NAND2X1 U67 ( .A(b[0]), .B(n14), .Y(\\u_div/CryTmp[6][1] ) );\
  NAND2X1 U68 ( .A(b[0]), .B(n15), .Y(\\u_div/CryTmp[5][1] ) );\
  NAND2X1 U69 ( .A(b[0]), .B(n16), .Y(\\u_div/CryTmp[4][1] ) );\
  NAND2X1 U70 ( .A(b[0]), .B(n4), .Y(\\u_div/CryTmp[3][1] ) );\
  NAND2X1 U71 ( .A(b[0]), .B(n5), .Y(\\u_div/CryTmp[2][1] ) );\
  NAND2X1 U72 ( .A(b[0]), .B(n6), .Y(\\u_div/CryTmp[1][1] ) );\
  NAND2X1 U73 ( .A(b[0]), .B(n7), .Y(\\u_div/CryTmp[0][1] ) );\
  AOI211X1 U74 ( .A0(b[0]), .A1(n13), .B0(n40), .C0(n41), .Y(n44) );\
  NAND2X1 U75 ( .A(\\u_div/u_add_PartRem_1_2/B[0] ), .B(\
        \\u_div/u_add_PartRem_1_2/B[1] ), .Y(n40) );\
  AND3X1 U76 ( .A(n12), .B(n17), .C(\\u_div/u_add_PartRem_1_2/B[1] ), .Y(n45)\
         );\
  NAND3X1 U77 ( .A(\\u_div/u_add_PartRem_1_2/B[3] ), .B(\
        \\u_div/u_add_PartRem_1_2/B[4] ), .C(n18), .Y(n42) );\
  AND3X1 U78 ( .A(\\u_div/CryTmp[3][5] ), .B(n18), .C(\
        \\u_div/u_add_PartRem_1_2/B[4] ), .Y(n48) );\
  NOR2BX1 U79 ( .AN(\\u_div/CryTmp[2][6] ), .B(n43), .Y(n49) );\
  NAND2X1 U80 ( .A(n20), .B(n19), .Y(n43) );\
  NOR2BX1 U81 ( .AN(\\u_div/CryTmp[1][7] ), .B(b[7]), .Y(n50) );\
endmodule\
\
\
module GCD ( CLK, RST_N, A, B, START, Y, DONE, ERROR );\
  input [7:0] A;\
  input [7:0] B;\
  output [7:0] Y;\
  input CLK, RST_N, START;\
  output DONE, ERROR;\
  wire   N21, N22, N23, N24, N25, N26, N27, N28, N30, N31, N32, N33, N34, N35,\
         N36, N37, N39, N40, N41, N42, N43, N44, N45, N46, error_next,\
         done_next, N56, N67, N0, N1, N2, N3, N4, N5, N6, N7, N70, n59, n60,\
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,\
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,\
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,\
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,\
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,\
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,\
         n135, n136, n137, n138, n139, n140;\
  wire   [1:0] curr_state;\
  wire   [1:0] next_state;\
  wire   [7:0] _a;\
  wire   [7:0] _b;\
  wire   [7:0] data_b;\
  wire   [7:0] Y_next;\
  wire   [7:0] data_a;\
\
  GCD_DW_div_uns_0 rem_88 ( .a(data_a), .b(data_b), .remainder(\{N7, N6, N5, N4, \
        N3, N2, N1, N0\}) );\
  DFFQX1 done_next_reg ( .D(n111), .CK(CLK), .Q(done_next) );\
  DFFQX1 \\Y_next_reg[7]  ( .D(N46), .CK(CLK), .Q(Y_next[7]) );\
  DFFQX1 \\Y_next_reg[6]  ( .D(N45), .CK(CLK), .Q(Y_next[6]) );\
  DFFQX1 \\Y_next_reg[5]  ( .D(N44), .CK(CLK), .Q(Y_next[5]) );\
  DFFQX1 \\Y_next_reg[4]  ( .D(N43), .CK(CLK), .Q(Y_next[4]) );\
  DFFQX1 \\Y_next_reg[3]  ( .D(N42), .CK(CLK), .Q(Y_next[3]) );\
  DFFQX1 \\Y_next_reg[2]  ( .D(N41), .CK(CLK), .Q(Y_next[2]) );\
  DFFQX1 \\Y_next_reg[1]  ( .D(N40), .CK(CLK), .Q(Y_next[1]) );\
  DFFQX1 \\Y_next_reg[0]  ( .D(N39), .CK(CLK), .Q(Y_next[0]) );\
  DFFQX1 \\_b_reg[0]  ( .D(N30), .CK(CLK), .Q(_b[0]) );\
  DFFQX1 \\_a_reg[0]  ( .D(N21), .CK(CLK), .Q(_a[0]) );\
  DFFQX1 \\_b_reg[1]  ( .D(N31), .CK(CLK), .Q(_b[1]) );\
  DFFQX1 \\_a_reg[3]  ( .D(N24), .CK(CLK), .Q(_a[3]) );\
  DFFQX1 \\_b_reg[5]  ( .D(N35), .CK(CLK), .Q(_b[5]) );\
  DFFQX1 \\_a_reg[7]  ( .D(N28), .CK(CLK), .Q(_a[7]) );\
  DFFQX1 \\_a_reg[6]  ( .D(N27), .CK(CLK), .Q(_a[6]) );\
  DFFQX1 \\_b_reg[4]  ( .D(N34), .CK(CLK), .Q(_b[4]) );\
  DFFQX1 \\_a_reg[2]  ( .D(N23), .CK(CLK), .Q(_a[2]) );\
  DFFQX1 \\_a_reg[1]  ( .D(N22), .CK(CLK), .Q(_a[1]) );\
  DFFQX1 \\_a_reg[4]  ( .D(N25), .CK(CLK), .Q(_a[4]) );\
  DFFQX1 \\_b_reg[7]  ( .D(N37), .CK(CLK), .Q(_b[7]) );\
  DFFQX1 \\_b_reg[2]  ( .D(N32), .CK(CLK), .Q(_b[2]) );\
  DFFQX1 \\_b_reg[6]  ( .D(N36), .CK(CLK), .Q(_b[6]) );\
  DFFQX1 \\_a_reg[5]  ( .D(N26), .CK(CLK), .Q(_a[5]) );\
  DFFQX1 \\_b_reg[3]  ( .D(N33), .CK(CLK), .Q(_b[3]) );\
  TLATX1 error_next_reg ( .G(N67), .D(N56), .Q(error_next) );\
  DFFRX1 \\curr_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST_N), .Q(\
        curr_state[0]), .QN(n80) );\
  DFFRX1 \\curr_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST_N), .Q(\
        curr_state[1]) );\
  OAI22X1 U126 ( .A0(n128), .A1(n129), .B0(n81), .B1(n130), .Y(data_b[0]) );\
  OAI22XL U127 ( .A0(n128), .A1(n99), .B0(n81), .B1(n140), .Y(data_b[4]) );\
  OAI22XL U128 ( .A0(n128), .A1(n95), .B0(n81), .B1(n136), .Y(data_a[6]) );\
  OAI22XL U129 ( .A0(n128), .A1(n139), .B0(n81), .B1(n135), .Y(data_a[5]) );\
  OAI22XL U130 ( .A0(n128), .A1(n140), .B0(n81), .B1(n99), .Y(data_a[4]) );\
  OAI22XL U131 ( .A0(n128), .A1(n138), .B0(n81), .B1(n134), .Y(data_a[3]) );\
  OAI22XL U132 ( .A0(n128), .A1(n96), .B0(n81), .B1(n133), .Y(data_a[2]) );\
  OAI22XL U133 ( .A0(n128), .A1(n97), .B0(n81), .B1(n137), .Y(data_a[7]) );\
  OAI22XL U134 ( .A0(n137), .A1(n128), .B0(n81), .B1(n97), .Y(data_b[7]) );\
  OAI22XL U135 ( .A0(n128), .A1(n130), .B0(n81), .B1(n129), .Y(data_a[0]) );\
  OAI22XL U136 ( .A0(n128), .A1(n132), .B0(n81), .B1(n131), .Y(data_a[1]) );\
  OAI22XL U137 ( .A0(n128), .A1(n131), .B0(n81), .B1(n132), .Y(data_b[1]) );\
  OAI22XL U138 ( .A0(n128), .A1(n133), .B0(n81), .B1(n96), .Y(data_b[2]) );\
  OAI22XL U139 ( .A0(n128), .A1(n134), .B0(n81), .B1(n138), .Y(data_b[3]) );\
  OAI22XL U140 ( .A0(n128), .A1(n135), .B0(n81), .B1(n139), .Y(data_b[5]) );\
  OAI22XL U141 ( .A0(n128), .A1(n136), .B0(n81), .B1(n95), .Y(data_b[6]) );\
  CLKINVX1 U142 ( .A(START), .Y(n109) );\
  CLKINVX1 U143 ( .A(n82), .Y(n110) );\
  NAND4X1 U144 ( .A(n127), .B(n126), .C(n125), .D(n124), .Y(n76) );\
  NAND4X1 U145 ( .A(n123), .B(n122), .C(n121), .D(n120), .Y(n77) );\
  CLKBUFX3 U146 ( .A(n72), .Y(n82) );\
  OAI22XL U147 ( .A0(n76), .A1(n77), .B0(n78), .B1(n79), .Y(n72) );\
  NAND4X1 U148 ( .A(n115), .B(n114), .C(n113), .D(n112), .Y(n79) );\
  NAND4X1 U149 ( .A(n119), .B(n118), .C(n117), .D(n116), .Y(n78) );\
  CLKINVX1 U150 ( .A(data_b[0]), .Y(n123) );\
  CLKINVX1 U151 ( .A(data_a[7]), .Y(n116) );\
  CLKINVX1 U152 ( .A(data_a[4]), .Y(n119) );\
  CLKINVX1 U153 ( .A(data_a[0]), .Y(n115) );\
  CLKINVX1 U154 ( .A(data_a[3]), .Y(n112) );\
  CLKINVX1 U155 ( .A(data_a[6]), .Y(n117) );\
  CLKINVX1 U156 ( .A(data_a[2]), .Y(n113) );\
  CLKINVX1 U157 ( .A(data_a[5]), .Y(n118) );\
  CLKINVX1 U158 ( .A(data_a[1]), .Y(n114) );\
  CLKINVX1 U159 ( .A(data_b[4]), .Y(n127) );\
  CLKINVX1 U160 ( .A(data_b[7]), .Y(n124) );\
  CLKINVX1 U161 ( .A(data_b[3]), .Y(n120) );\
  CLKINVX1 U162 ( .A(data_b[6]), .Y(n125) );\
  CLKINVX1 U163 ( .A(data_b[2]), .Y(n121) );\
  CLKINVX1 U164 ( .A(data_b[5]), .Y(n126) );\
  CLKINVX1 U165 ( .A(data_b[1]), .Y(n122) );\
  OAI22XL U166 ( .A0(n115), .A1(n110), .B0(n82), .B1(n67), .Y(N39) );\
  OAI22XL U167 ( .A0(n114), .A1(n110), .B0(n82), .B1(n66), .Y(N40) );\
  OAI22XL U168 ( .A0(n113), .A1(n110), .B0(n82), .B1(n65), .Y(N41) );\
  OAI22XL U169 ( .A0(n112), .A1(n110), .B0(n82), .B1(n64), .Y(N42) );\
  OAI22XL U170 ( .A0(n119), .A1(n110), .B0(n82), .B1(n63), .Y(N43) );\
  OAI22XL U171 ( .A0(n118), .A1(n110), .B0(n82), .B1(n62), .Y(N44) );\
  OAI22XL U172 ( .A0(n117), .A1(n110), .B0(n82), .B1(n61), .Y(N45) );\
  OAI22XL U173 ( .A0(n116), .A1(n110), .B0(n82), .B1(n60), .Y(N46) );\
  NAND4X1 U174 ( .A(n103), .B(n102), .C(n101), .D(n100), .Y(n68) );\
  CLKINVX1 U175 ( .A(n81), .Y(n128) );\
  CLKINVX1 U176 ( .A(n59), .Y(n111) );\
  CLKINVX1 U177 ( .A(n67), .Y(Y[0]) );\
  CLKINVX1 U178 ( .A(n66), .Y(Y[1]) );\
  CLKINVX1 U179 ( .A(n65), .Y(Y[2]) );\
  CLKINVX1 U180 ( .A(n64), .Y(Y[3]) );\
  CLKINVX1 U181 ( .A(n63), .Y(Y[4]) );\
  CLKINVX1 U182 ( .A(n62), .Y(Y[5]) );\
  CLKINVX1 U183 ( .A(n61), .Y(Y[6]) );\
  CLKINVX1 U184 ( .A(n60), .Y(Y[7]) );\
  NOR2X1 U185 ( .A(n74), .B(error_next), .Y(n73) );\
  OAI22XL U186 ( .A0(n68), .A1(n69), .B0(n70), .B1(n71), .Y(N56) );\
  OR4X1 U187 ( .A(A[0]), .B(A[1]), .C(A[2]), .D(A[3]), .Y(n71) );\
  OR4X1 U188 ( .A(A[4]), .B(A[5]), .C(A[6]), .D(A[7]), .Y(n70) );\
  NAND4X1 U189 ( .A(n107), .B(n106), .C(n105), .D(n104), .Y(n69) );\
  NOR3X1 U190 ( .A(curr_state[0]), .B(curr_state[1]), .C(n109), .Y(N67) );\
  OAI22XL U191 ( .A0(n109), .A1(n103), .B0(START), .B1(n127), .Y(N34) );\
  OAI22XL U192 ( .A0(n109), .A1(n102), .B0(START), .B1(n126), .Y(N35) );\
  OAI22XL U193 ( .A0(n109), .A1(n101), .B0(START), .B1(n125), .Y(N36) );\
  OAI22XL U194 ( .A0(n109), .A1(n105), .B0(START), .B1(n121), .Y(N32) );\
  OAI22XL U195 ( .A0(n109), .A1(n104), .B0(START), .B1(n120), .Y(N33) );\
  OAI22XL U196 ( .A0(n109), .A1(n100), .B0(START), .B1(n124), .Y(N37) );\
  OAI22XL U197 ( .A0(n109), .A1(n106), .B0(START), .B1(n122), .Y(N31) );\
  OAI22XL U198 ( .A0(n109), .A1(n107), .B0(START), .B1(n123), .Y(N30) );\
  NOR2X1 U199 ( .A(n82), .B(error_next), .Y(n59) );\
  NOR2X1 U200 ( .A(n82), .B(START), .Y(n75) );\
  NAND2X1 U201 ( .A(Y_next[0]), .B(n73), .Y(n67) );\
  NAND2X1 U202 ( .A(Y_next[1]), .B(n73), .Y(n66) );\
  NAND2X1 U203 ( .A(Y_next[2]), .B(n73), .Y(n65) );\
  NAND2X1 U204 ( .A(Y_next[3]), .B(n73), .Y(n64) );\
  NAND2X1 U205 ( .A(Y_next[4]), .B(n73), .Y(n63) );\
  NAND2X1 U206 ( .A(Y_next[5]), .B(n73), .Y(n62) );\
  NAND2X1 U207 ( .A(Y_next[6]), .B(n73), .Y(n61) );\
  NAND2X1 U208 ( .A(Y_next[7]), .B(n73), .Y(n60) );\
  NAND2X1 U209 ( .A(curr_state[1]), .B(n80), .Y(n74) );\
  CLKBUFX3 U210 ( .A(N70), .Y(n81) );\
  OAI31XL U211 ( .A0(n94), .A1(n93), .A2(n92), .B0(n91), .Y(N70) );\
  NOR3X1 U212 ( .A(n80), .B(curr_state[1]), .C(n59), .Y(next_state[1]) );\
  CLKINVX1 U213 ( .A(n88), .Y(n98) );\
  AO22X1 U214 ( .A0(START), .A1(A[7]), .B0(N7), .B1(n75), .Y(N28) );\
  AO22X1 U215 ( .A0(START), .A1(A[6]), .B0(N6), .B1(n75), .Y(N27) );\
  AO22X1 U216 ( .A0(START), .A1(A[5]), .B0(N5), .B1(n75), .Y(N26) );\
  AO22X1 U217 ( .A0(START), .A1(A[4]), .B0(N4), .B1(n75), .Y(N25) );\
  AO22X1 U218 ( .A0(START), .A1(A[3]), .B0(N3), .B1(n75), .Y(N24) );\
  AO22X1 U219 ( .A0(START), .A1(A[2]), .B0(N2), .B1(n75), .Y(N23) );\
  AO22X1 U220 ( .A0(START), .A1(A[1]), .B0(N1), .B1(n75), .Y(N22) );\
  AO22X1 U221 ( .A0(START), .A1(A[0]), .B0(N0), .B1(n75), .Y(N21) );\
  NOR2BX1 U222 ( .AN(error_next), .B(n74), .Y(ERROR) );\
  NOR2BX1 U223 ( .AN(done_next), .B(n74), .Y(DONE) );\
  CLKINVX1 U224 ( .A(B[4]), .Y(n103) );\
  CLKINVX1 U225 ( .A(B[0]), .Y(n107) );\
  CLKINVX1 U226 ( .A(B[7]), .Y(n100) );\
  CLKINVX1 U227 ( .A(B[3]), .Y(n104) );\
  CLKINVX1 U228 ( .A(B[6]), .Y(n101) );\
  CLKINVX1 U229 ( .A(B[2]), .Y(n105) );\
  CLKINVX1 U230 ( .A(B[5]), .Y(n102) );\
  CLKINVX1 U231 ( .A(B[1]), .Y(n106) );\
  CLKINVX1 U232 ( .A(_a[5]), .Y(n135) );\
  CLKINVX1 U233 ( .A(_b[3]), .Y(n138) );\
  CLKINVX1 U234 ( .A(_a[1]), .Y(n131) );\
  OAI31XL U235 ( .A0(n80), .A1(curr_state[1]), .A2(n111), .B0(n108), .Y(\
        next_state[0]) );\
  CLKINVX1 U236 ( .A(N67), .Y(n108) );\
  CLKINVX1 U237 ( .A(_a[2]), .Y(n133) );\
  CLKINVX1 U238 ( .A(_b[4]), .Y(n140) );\
  CLKINVX1 U239 ( .A(_a[7]), .Y(n137) );\
  CLKINVX1 U240 ( .A(_a[6]), .Y(n136) );\
  CLKINVX1 U241 ( .A(_b[5]), .Y(n139) );\
  CLKINVX1 U242 ( .A(_a[3]), .Y(n134) );\
  CLKINVX1 U243 ( .A(_b[1]), .Y(n132) );\
  CLKINVX1 U244 ( .A(_a[0]), .Y(n129) );\
  CLKINVX1 U245 ( .A(_b[0]), .Y(n130) );\
  CLKINVX1 U246 ( .A(_b[2]), .Y(n96) );\
  CLKINVX1 U247 ( .A(_a[4]), .Y(n99) );\
  CLKINVX1 U248 ( .A(_b[6]), .Y(n95) );\
  CLKINVX1 U249 ( .A(_b[7]), .Y(n97) );\
  NOR2BX1 U250 ( .AN(_a[3]), .B(_b[3]), .Y(n83) );\
  AOI21X1 U251 ( .A0(_a[2]), .A1(n96), .B0(n83), .Y(n84) );\
  OAI32X1 U252 ( .A0(n96), .A1(_a[2]), .A2(n83), .B0(_a[3]), .B1(n138), .Y(n85) );\
  NAND2BX1 U253 ( .AN(_b[5]), .B(_a[5]), .Y(n89) );\
  OAI221XL U254 ( .A0(_b[4]), .A1(n99), .B0(n84), .B1(n85), .C0(n89), .Y(n94)\
         );\
  AOI2BB1X1 U255 ( .A0N(n131), .A1N(_b[1]), .B0(_a[0]), .Y(n86) );\
  AOI221XL U256 ( .A0(_b[1]), .A1(n131), .B0(n86), .B1(_b[0]), .C0(n85), .Y(\
        n93) );\
  AND2X1 U257 ( .A(_a[7]), .B(n97), .Y(n87) );\
  AO21X1 U258 ( .A0(n95), .A1(_a[6]), .B0(n87), .Y(n92) );\
  OAI32X1 U259 ( .A0(n95), .A1(_a[6]), .A2(n87), .B0(_a[7]), .B1(n97), .Y(n88)\
         );\
  AOI32X1 U260 ( .A0(_b[4]), .A1(n99), .A2(n89), .B0(n135), .B1(_b[5]), .Y(n90) );\
  AO22X1 U261 ( .A0(n98), .A1(n90), .B0(n92), .B1(n98), .Y(n91) );\
endmodule\
\
}