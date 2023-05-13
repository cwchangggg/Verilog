/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : R-2020.09
// Date      : Sun Apr 24 22:19:44 2022
/////////////////////////////////////////////////////////////


module CLA_4bit_0 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XOR2X1 U1 ( .A(n1), .B(n2), .Y(S[3]) );
  XOR2X1 U2 ( .A(n3), .B(n4), .Y(S[2]) );
  XOR2X1 U3 ( .A(n5), .B(n6), .Y(S[1]) );
  XOR2X1 U4 ( .A(Cin), .B(n7), .Y(S[0]) );
  OAI2BB2XL U5 ( .B0(n2), .B1(n1), .A0N(B[3]), .A1N(A[3]), .Y(Cout) );
  XNOR2X1 U6 ( .A(A[3]), .B(B[3]), .Y(n1) );
  OA21XL U7 ( .A0(n4), .A1(n3), .B0(n8), .Y(n2) );
  OAI21XL U8 ( .A0(B[2]), .A1(A[2]), .B0(n8), .Y(n3) );
  NAND2X1 U9 ( .A(B[2]), .B(A[2]), .Y(n8) );
  OA21XL U10 ( .A0(n6), .A1(n5), .B0(n9), .Y(n4) );
  OAI21XL U11 ( .A0(B[1]), .A1(A[1]), .B0(n9), .Y(n5) );
  NAND2X1 U12 ( .A(B[1]), .B(A[1]), .Y(n9) );
  AOI22X1 U13 ( .A0(n7), .A1(Cin), .B0(A[0]), .B1(B[0]), .Y(n6) );
  XOR2X1 U14 ( .A(A[0]), .B(B[0]), .Y(n7) );
endmodule


module CLA_4bit_3 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XOR2X1 U1 ( .A(n1), .B(n2), .Y(S[3]) );
  XOR2X1 U2 ( .A(n3), .B(n4), .Y(S[2]) );
  XOR2X1 U3 ( .A(n5), .B(n6), .Y(S[1]) );
  XOR2X1 U4 ( .A(Cin), .B(n7), .Y(S[0]) );
  OAI2BB2XL U5 ( .B0(n2), .B1(n1), .A0N(B[3]), .A1N(A[3]), .Y(Cout) );
  XNOR2X1 U6 ( .A(A[3]), .B(B[3]), .Y(n1) );
  OA21XL U7 ( .A0(n4), .A1(n3), .B0(n8), .Y(n2) );
  OAI21XL U8 ( .A0(B[2]), .A1(A[2]), .B0(n8), .Y(n3) );
  NAND2X1 U9 ( .A(B[2]), .B(A[2]), .Y(n8) );
  OA21XL U10 ( .A0(n6), .A1(n5), .B0(n9), .Y(n4) );
  OAI21XL U11 ( .A0(B[1]), .A1(A[1]), .B0(n9), .Y(n5) );
  NAND2X1 U12 ( .A(B[1]), .B(A[1]), .Y(n9) );
  AOI22X1 U13 ( .A0(n7), .A1(Cin), .B0(A[0]), .B1(B[0]), .Y(n6) );
  XOR2X1 U14 ( .A(A[0]), .B(B[0]), .Y(n7) );
endmodule


module CLA_4bit_2 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XOR2X1 U1 ( .A(n1), .B(n2), .Y(S[3]) );
  XOR2X1 U2 ( .A(n3), .B(n4), .Y(S[2]) );
  XOR2X1 U3 ( .A(n5), .B(n6), .Y(S[1]) );
  XOR2X1 U4 ( .A(Cin), .B(n7), .Y(S[0]) );
  OAI2BB2XL U5 ( .B0(n2), .B1(n1), .A0N(B[3]), .A1N(A[3]), .Y(Cout) );
  XNOR2X1 U6 ( .A(A[3]), .B(B[3]), .Y(n1) );
  OA21XL U7 ( .A0(n4), .A1(n3), .B0(n8), .Y(n2) );
  OAI21XL U8 ( .A0(B[2]), .A1(A[2]), .B0(n8), .Y(n3) );
  NAND2X1 U9 ( .A(B[2]), .B(A[2]), .Y(n8) );
  OA21XL U10 ( .A0(n6), .A1(n5), .B0(n9), .Y(n4) );
  OAI21XL U11 ( .A0(B[1]), .A1(A[1]), .B0(n9), .Y(n5) );
  NAND2X1 U12 ( .A(B[1]), .B(A[1]), .Y(n9) );
  AOI22X1 U13 ( .A0(n7), .A1(Cin), .B0(A[0]), .B1(B[0]), .Y(n6) );
  XOR2X1 U14 ( .A(A[0]), .B(B[0]), .Y(n7) );
endmodule


module CLA_4bit_1 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XOR2X1 U1 ( .A(n1), .B(n2), .Y(S[3]) );
  XOR2X1 U2 ( .A(n3), .B(n4), .Y(S[2]) );
  XOR2X1 U3 ( .A(n5), .B(n6), .Y(S[1]) );
  XOR2X1 U4 ( .A(Cin), .B(n7), .Y(S[0]) );
  OAI2BB2XL U5 ( .B0(n2), .B1(n1), .A0N(B[3]), .A1N(A[3]), .Y(Cout) );
  XNOR2X1 U6 ( .A(A[3]), .B(B[3]), .Y(n1) );
  OA21XL U7 ( .A0(n4), .A1(n3), .B0(n8), .Y(n2) );
  OAI21XL U8 ( .A0(B[2]), .A1(A[2]), .B0(n8), .Y(n3) );
  NAND2X1 U9 ( .A(B[2]), .B(A[2]), .Y(n8) );
  OA21XL U10 ( .A0(n6), .A1(n5), .B0(n9), .Y(n4) );
  OAI21XL U11 ( .A0(B[1]), .A1(A[1]), .B0(n9), .Y(n5) );
  NAND2X1 U12 ( .A(B[1]), .B(A[1]), .Y(n9) );
  AOI22X1 U13 ( .A0(n7), .A1(Cin), .B0(A[0]), .B1(B[0]), .Y(n6) );
  XOR2X1 U14 ( .A(A[0]), .B(B[0]), .Y(n7) );
endmodule


module Adder_16bit ( A, B, Cin, S, Cout );
  input [15:0] A;
  input [15:0] B;
  output [15:0] S;
  input Cin;
  output Cout;

  wire   [2:0] C;

  CLA_4bit_0 u_CLA0 ( .A(A[3:0]), .B(B[3:0]), .Cin(Cin), .S(S[3:0]), .Cout(
        C[0]) );
  CLA_4bit_3 u_CLA1 ( .A(A[7:4]), .B(B[7:4]), .Cin(C[0]), .S(S[7:4]), .Cout(
        C[1]) );
  CLA_4bit_2 u_CLA2 ( .A(A[11:8]), .B(B[11:8]), .Cin(C[1]), .S(S[11:8]), 
        .Cout(C[2]) );
  CLA_4bit_1 u_CLA3 ( .A(A[15:12]), .B(B[15:12]), .Cin(C[2]), .S(S[15:12]), 
        .Cout(Cout) );
endmodule


module ALU ( A, B, Cin, Mode, Y, Cout, Overflow );
  input [15:0] A;
  input [15:0] B;
  input [3:0] Mode;
  output [15:0] Y;
  input Cin;
  output Cout, Overflow;
  wire   Adder_Cin, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351;
  wire   [15:0] Adder_B;
  wire   [15:0] Adder_S;

  Adder_16bit u_Adder ( .A(A), .B(Adder_B), .Cin(Adder_Cin), .S(Adder_S), 
        .Cout(Cout) );
  MXI2XL U209 ( .A(n188), .B(n183), .S0(n316), .Y(n318) );
  MXI2XL U210 ( .A(n188), .B(n183), .S0(n309), .Y(n311) );
  MXI2XL U211 ( .A(n188), .B(n183), .S0(n302), .Y(n304) );
  OAI211X1 U212 ( .A0(n173), .A1(n174), .B0(n175), .C0(n176), .Y(Y[9]) );
  AOI211X1 U213 ( .A0(Adder_S[9]), .A1(n177), .B0(n178), .C0(n179), .Y(n176)
         );
  MXI2X1 U214 ( .A(n180), .B(n181), .S0(n182), .Y(n179) );
  MX3XL U215 ( .A(n183), .B(n184), .C(n185), .S0(n182), .S1(B[9]), .Y(n178) );
  NAND2X1 U216 ( .A(n186), .B(n187), .Y(n185) );
  MXI2X1 U217 ( .A(n188), .B(n183), .S0(n182), .Y(n186) );
  AOI32X1 U218 ( .A0(n189), .A1(n190), .A2(A[0]), .B0(A[8]), .B1(n191), .Y(
        n175) );
  OAI211X1 U219 ( .A0(n173), .A1(n182), .B0(n192), .C0(n193), .Y(Y[8]) );
  AOI211X1 U220 ( .A0(Adder_S[8]), .A1(n177), .B0(n194), .C0(n195), .Y(n193)
         );
  MXI2X1 U221 ( .A(n180), .B(n181), .S0(n196), .Y(n195) );
  MX3XL U222 ( .A(n183), .B(n184), .C(n197), .S0(n196), .S1(B[8]), .Y(n194) );
  NAND2X1 U223 ( .A(n198), .B(n187), .Y(n197) );
  MXI2X1 U224 ( .A(n188), .B(n183), .S0(n196), .Y(n198) );
  AOI32X1 U225 ( .A0(n190), .A1(n199), .A2(n189), .B0(A[7]), .B1(n191), .Y(
        n192) );
  CLKINVX1 U226 ( .A(A[9]), .Y(n182) );
  OAI211X1 U227 ( .A0(n196), .A1(n173), .B0(n200), .C0(n201), .Y(Y[7]) );
  AOI211X1 U228 ( .A0(Adder_S[7]), .A1(n177), .B0(n202), .C0(n203), .Y(n201)
         );
  MXI2X1 U229 ( .A(n180), .B(n181), .S0(n204), .Y(n203) );
  MX3XL U230 ( .A(n183), .B(n184), .C(n205), .S0(n204), .S1(B[7]), .Y(n202) );
  NAND2X1 U231 ( .A(n206), .B(n187), .Y(n205) );
  MXI2X1 U232 ( .A(n188), .B(n183), .S0(n204), .Y(n206) );
  AOI32X1 U233 ( .A0(n207), .A1(A[0]), .A2(A[1]), .B0(A[6]), .B1(n191), .Y(
        n200) );
  NAND4X1 U234 ( .A(n208), .B(n209), .C(n210), .D(n211), .Y(Y[6]) );
  AOI222XL U235 ( .A0(A[7]), .A1(n212), .B0(n213), .B1(n207), .C0(A[5]), .C1(
        n191), .Y(n211) );
  MX3XL U236 ( .A(n214), .B(n215), .C(n216), .S0(n217), .S1(B[6]), .Y(n210) );
  NOR2X1 U237 ( .A(n218), .B(n219), .Y(n216) );
  MXI2X1 U238 ( .A(n220), .B(n214), .S0(n217), .Y(n219) );
  NAND2X1 U239 ( .A(Adder_S[6]), .B(n177), .Y(n209) );
  MXI2X1 U240 ( .A(n221), .B(n222), .S0(n217), .Y(n208) );
  OAI211X1 U241 ( .A0(n173), .A1(n217), .B0(n223), .C0(n224), .Y(Y[5]) );
  AOI211X1 U242 ( .A0(Adder_S[5]), .A1(n177), .B0(n225), .C0(n226), .Y(n224)
         );
  MXI2X1 U243 ( .A(n180), .B(n181), .S0(n227), .Y(n226) );
  MX3XL U244 ( .A(n183), .B(n184), .C(n228), .S0(n227), .S1(B[5]), .Y(n225) );
  NAND2X1 U245 ( .A(n229), .B(n187), .Y(n228) );
  MXI2X1 U246 ( .A(n188), .B(n183), .S0(n227), .Y(n229) );
  AOI32X1 U247 ( .A0(A[0]), .A1(n230), .A2(n207), .B0(A[4]), .B1(n191), .Y(
        n223) );
  CLKINVX1 U248 ( .A(A[6]), .Y(n217) );
  OAI211X1 U249 ( .A0(n173), .A1(n227), .B0(n231), .C0(n232), .Y(Y[4]) );
  AOI211X1 U250 ( .A0(Adder_S[4]), .A1(n177), .B0(n233), .C0(n234), .Y(n232)
         );
  MXI2X1 U251 ( .A(n181), .B(n180), .S0(A[4]), .Y(n234) );
  MX3XL U252 ( .A(n184), .B(n183), .C(n235), .S0(A[4]), .S1(B[4]), .Y(n233) );
  NAND2X1 U253 ( .A(n236), .B(n187), .Y(n235) );
  MXI2X1 U254 ( .A(n183), .B(n188), .S0(A[4]), .Y(n236) );
  AOI32X1 U255 ( .A0(n199), .A1(n230), .A2(n207), .B0(n191), .B1(A[3]), .Y(
        n231) );
  AND2X1 U256 ( .A(n237), .B(A[2]), .Y(n207) );
  CLKINVX1 U257 ( .A(A[5]), .Y(n227) );
  NAND2X1 U258 ( .A(n238), .B(n239), .Y(Y[3]) );
  AOI222XL U259 ( .A0(A[4]), .A1(n212), .B0(n240), .B1(n241), .C0(A[2]), .C1(
        n191), .Y(n239) );
  NAND3X1 U260 ( .A(n242), .B(n243), .C(n244), .Y(n241) );
  AOI221XL U261 ( .A0(Adder_S[3]), .A1(n177), .B0(B[3]), .B1(n218), .C0(n245), 
        .Y(n238) );
  MXI2X1 U262 ( .A(n246), .B(n247), .S0(n248), .Y(n245) );
  NOR2X1 U263 ( .A(n249), .B(n250), .Y(n247) );
  OAI31XL U264 ( .A0(n251), .A1(n252), .A2(n199), .B0(n181), .Y(n250) );
  CLKINVX1 U265 ( .A(n253), .Y(n251) );
  MXI2X1 U266 ( .A(n215), .B(n214), .S0(B[3]), .Y(n249) );
  NOR2X1 U267 ( .A(n221), .B(n254), .Y(n246) );
  MXI2X1 U268 ( .A(n214), .B(n220), .S0(B[3]), .Y(n254) );
  NAND2X1 U269 ( .A(n255), .B(n256), .Y(Y[2]) );
  AOI222XL U270 ( .A0(n212), .A1(A[3]), .B0(n240), .B1(n257), .C0(A[1]), .C1(
        n191), .Y(n256) );
  OAI31XL U271 ( .A0(n258), .A1(n259), .A2(n260), .B0(n244), .Y(n257) );
  NOR4X1 U272 ( .A(A[12]), .B(A[13]), .C(A[14]), .D(A[15]), .Y(n244) );
  CLKINVX1 U273 ( .A(n243), .Y(n260) );
  NOR4X1 U274 ( .A(A[7]), .B(A[6]), .C(A[5]), .D(A[4]), .Y(n259) );
  CLKINVX1 U275 ( .A(n242), .Y(n258) );
  AOI221XL U276 ( .A0(Adder_S[2]), .A1(n177), .B0(B[2]), .B1(n218), .C0(n261), 
        .Y(n255) );
  MXI2X1 U277 ( .A(n262), .B(n263), .S0(n264), .Y(n261) );
  AOI211X1 U278 ( .A0(n213), .A1(n237), .B0(n265), .C0(n222), .Y(n263) );
  MXI2X1 U279 ( .A(n215), .B(n214), .S0(B[2]), .Y(n265) );
  NOR2X1 U280 ( .A(n221), .B(n266), .Y(n262) );
  MXI2X1 U281 ( .A(n214), .B(n220), .S0(B[2]), .Y(n266) );
  NAND4X1 U282 ( .A(n267), .B(n268), .C(n269), .D(n270), .Y(Y[1]) );
  AOI211X1 U283 ( .A0(Adder_S[1]), .A1(n177), .B0(n271), .C0(n272), .Y(n270)
         );
  MXI2X1 U284 ( .A(n180), .B(n181), .S0(n230), .Y(n272) );
  MX3XL U285 ( .A(n183), .B(n184), .C(n273), .S0(n230), .S1(B[1]), .Y(n271) );
  NAND2X1 U286 ( .A(n274), .B(n187), .Y(n273) );
  MXI2X1 U287 ( .A(n188), .B(n183), .S0(n230), .Y(n274) );
  NAND2X1 U288 ( .A(A[2]), .B(n212), .Y(n269) );
  OAI21XL U289 ( .A0(n275), .A1(n191), .B0(A[0]), .Y(n268) );
  CLKINVX1 U290 ( .A(n276), .Y(n275) );
  OAI31XL U291 ( .A0(n277), .A1(A[15]), .A2(A[14]), .B0(n240), .Y(n267) );
  AOI211X1 U292 ( .A0(n242), .A1(n278), .B0(A[13]), .C0(A[12]), .Y(n277) );
  OAI31XL U293 ( .A0(n279), .A1(A[7]), .A2(A[6]), .B0(n243), .Y(n278) );
  NOR2X1 U294 ( .A(A[9]), .B(A[8]), .Y(n243) );
  AOI211X1 U295 ( .A0(n264), .A1(n248), .B0(A[5]), .C0(A[4]), .Y(n279) );
  CLKINVX1 U296 ( .A(A[2]), .Y(n264) );
  NOR2X1 U297 ( .A(A[11]), .B(A[10]), .Y(n242) );
  OAI211X1 U298 ( .A0(n187), .A1(n280), .B0(n281), .C0(n282), .Y(Y[15]) );
  AOI222XL U299 ( .A0(Adder_S[15]), .A1(n177), .B0(n283), .B1(n284), .C0(A[14]), .C1(n191), .Y(n282) );
  NOR2X1 U300 ( .A(n199), .B(n230), .Y(n283) );
  MXI2X1 U301 ( .A(n285), .B(n286), .S0(n287), .Y(n281) );
  NAND2X1 U302 ( .A(n288), .B(n181), .Y(n286) );
  MXI2X1 U303 ( .A(n183), .B(n184), .S0(n280), .Y(n288) );
  OAI211X1 U304 ( .A0(n173), .A1(n289), .B0(n180), .C0(n290), .Y(n285) );
  MXI2X1 U305 ( .A(n188), .B(n183), .S0(n280), .Y(n290) );
  NAND4X1 U306 ( .A(n291), .B(n292), .C(n293), .D(n294), .Y(Y[14]) );
  AOI222XL U307 ( .A0(A[15]), .A1(n212), .B0(n284), .B1(n213), .C0(A[13]), 
        .C1(n191), .Y(n294) );
  NOR2X1 U308 ( .A(n230), .B(A[0]), .Y(n213) );
  MX3XL U309 ( .A(n214), .B(n215), .C(n295), .S0(n296), .S1(B[14]), .Y(n293)
         );
  NOR2X1 U310 ( .A(n218), .B(n297), .Y(n295) );
  MXI2X1 U311 ( .A(n220), .B(n214), .S0(n296), .Y(n297) );
  NAND2X1 U312 ( .A(Adder_S[14]), .B(n177), .Y(n292) );
  MXI2X1 U313 ( .A(n221), .B(n222), .S0(n296), .Y(n291) );
  CLKINVX1 U314 ( .A(n181), .Y(n222) );
  OAI211X1 U315 ( .A0(n173), .A1(n296), .B0(n298), .C0(n299), .Y(Y[13]) );
  AOI211X1 U316 ( .A0(Adder_S[13]), .A1(n177), .B0(n300), .C0(n301), .Y(n299)
         );
  MXI2X1 U317 ( .A(n180), .B(n181), .S0(n302), .Y(n301) );
  MX3XL U318 ( .A(n183), .B(n184), .C(n303), .S0(n302), .S1(B[13]), .Y(n300)
         );
  NAND2X1 U319 ( .A(n304), .B(n187), .Y(n303) );
  AOI32X1 U320 ( .A0(A[0]), .A1(n230), .A2(n284), .B0(A[12]), .B1(n191), .Y(
        n298) );
  CLKINVX1 U321 ( .A(A[14]), .Y(n296) );
  OAI211X1 U322 ( .A0(n173), .A1(n302), .B0(n305), .C0(n306), .Y(Y[12]) );
  AOI211X1 U323 ( .A0(Adder_S[12]), .A1(n177), .B0(n307), .C0(n308), .Y(n306)
         );
  MXI2X1 U324 ( .A(n180), .B(n181), .S0(n309), .Y(n308) );
  MX3XL U325 ( .A(n183), .B(n184), .C(n310), .S0(n309), .S1(B[12]), .Y(n307)
         );
  NAND2X1 U326 ( .A(n311), .B(n187), .Y(n310) );
  AOI32X1 U327 ( .A0(n199), .A1(n230), .A2(n284), .B0(A[11]), .B1(n191), .Y(
        n305) );
  AND2X1 U328 ( .A(n189), .B(A[2]), .Y(n284) );
  CLKINVX1 U329 ( .A(A[13]), .Y(n302) );
  OAI211X1 U330 ( .A0(n173), .A1(n309), .B0(n312), .C0(n313), .Y(Y[11]) );
  AOI211X1 U331 ( .A0(Adder_S[11]), .A1(n177), .B0(n314), .C0(n315), .Y(n313)
         );
  MXI2X1 U332 ( .A(n180), .B(n181), .S0(n316), .Y(n315) );
  MX3XL U333 ( .A(n183), .B(n184), .C(n317), .S0(n316), .S1(B[11]), .Y(n314)
         );
  NAND2X1 U334 ( .A(n318), .B(n187), .Y(n317) );
  AOI32X1 U335 ( .A0(A[0]), .A1(n189), .A2(n253), .B0(A[10]), .B1(n191), .Y(
        n312) );
  OAI211X1 U336 ( .A0(n173), .A1(n316), .B0(n319), .C0(n320), .Y(Y[10]) );
  AOI211X1 U337 ( .A0(Adder_S[10]), .A1(n177), .B0(n321), .C0(n322), .Y(n320)
         );
  MXI2X1 U338 ( .A(n180), .B(n181), .S0(n174), .Y(n322) );
  MX3XL U339 ( .A(n183), .B(n184), .C(n323), .S0(n174), .S1(B[10]), .Y(n321)
         );
  NAND2X1 U340 ( .A(n324), .B(n187), .Y(n323) );
  CLKINVX1 U341 ( .A(n218), .Y(n187) );
  MXI2X1 U342 ( .A(n188), .B(n183), .S0(n174), .Y(n324) );
  CLKINVX1 U343 ( .A(A[10]), .Y(n174) );
  AOI32X1 U344 ( .A0(n189), .A1(n199), .A2(n253), .B0(A[9]), .B1(n191), .Y(
        n319) );
  NOR3X1 U345 ( .A(Mode[2]), .B(Mode[3]), .C(Mode[1]), .Y(n191) );
  NOR2X1 U346 ( .A(n248), .B(n252), .Y(n189) );
  CLKINVX1 U347 ( .A(A[3]), .Y(n248) );
  CLKINVX1 U348 ( .A(n212), .Y(n173) );
  NAND4X1 U349 ( .A(n325), .B(n326), .C(n327), .D(n328), .Y(Y[0]) );
  OAI21XL U350 ( .A0(n218), .A1(n329), .B0(B[0]), .Y(n328) );
  MXI2X1 U351 ( .A(n220), .B(n214), .S0(n199), .Y(n329) );
  CLKINVX1 U352 ( .A(n188), .Y(n220) );
  OAI31XL U353 ( .A0(n330), .A1(Mode[0]), .A2(n331), .B0(n332), .Y(n188) );
  OAI31XL U354 ( .A0(n330), .A1(Mode[0]), .A2(n333), .B0(n180), .Y(n218) );
  AOI32X1 U355 ( .A0(n334), .A1(Mode[3]), .A2(n335), .B0(n240), .B1(n336), .Y(
        n327) );
  OAI21XL U356 ( .A0(A[14]), .A1(n337), .B0(n287), .Y(n336) );
  AOI21X1 U357 ( .A0(n338), .A1(n309), .B0(A[13]), .Y(n337) );
  CLKINVX1 U358 ( .A(A[12]), .Y(n309) );
  OAI21XL U359 ( .A0(A[10]), .A1(n339), .B0(n316), .Y(n338) );
  CLKINVX1 U360 ( .A(A[11]), .Y(n316) );
  AOI21X1 U361 ( .A0(n340), .A1(n196), .B0(A[9]), .Y(n339) );
  CLKINVX1 U362 ( .A(A[8]), .Y(n196) );
  OAI21XL U363 ( .A0(A[6]), .A1(n341), .B0(n204), .Y(n340) );
  CLKINVX1 U364 ( .A(A[7]), .Y(n204) );
  NOR2X1 U365 ( .A(n342), .B(A[5]), .Y(n341) );
  AOI2BB1X1 U366 ( .A0N(A[3]), .A1N(n253), .B0(A[4]), .Y(n342) );
  NOR2X1 U367 ( .A(n230), .B(A[2]), .Y(n253) );
  CLKINVX1 U368 ( .A(A[1]), .Y(n230) );
  NOR3X1 U369 ( .A(n330), .B(n333), .C(n289), .Y(n240) );
  XNOR2X1 U370 ( .A(Adder_S[15]), .B(n343), .Y(n334) );
  MXI2X1 U371 ( .A(n344), .B(n345), .S0(n199), .Y(n326) );
  CLKINVX1 U372 ( .A(A[0]), .Y(n199) );
  OAI211X1 U373 ( .A0(B[0]), .A1(n215), .B0(n181), .C0(n276), .Y(n345) );
  NAND2X1 U374 ( .A(n237), .B(n190), .Y(n276) );
  NOR2X1 U375 ( .A(A[1]), .B(A[2]), .Y(n190) );
  NOR2X1 U376 ( .A(n252), .B(A[3]), .Y(n237) );
  NAND3BX1 U377 ( .AN(n333), .B(n289), .C(n330), .Y(n252) );
  NAND2X1 U378 ( .A(Mode[3]), .B(Mode[2]), .Y(n333) );
  NAND3X1 U379 ( .A(n289), .B(n330), .C(n346), .Y(n181) );
  CLKINVX1 U380 ( .A(n184), .Y(n215) );
  OAI21XL U381 ( .A0(n330), .A1(n347), .B0(n332), .Y(n184) );
  NAND3X1 U382 ( .A(Mode[1]), .B(n289), .C(n346), .Y(n332) );
  OAI21XL U383 ( .A0(B[0]), .A1(n214), .B0(n180), .Y(n344) );
  CLKINVX1 U384 ( .A(n221), .Y(n180) );
  NOR4X1 U385 ( .A(n289), .B(n330), .C(n331), .D(Mode[3]), .Y(n221) );
  CLKINVX1 U386 ( .A(n183), .Y(n214) );
  NOR2X1 U387 ( .A(n347), .B(Mode[1]), .Y(n183) );
  NAND2X1 U388 ( .A(n346), .B(Mode[0]), .Y(n347) );
  NOR2X1 U389 ( .A(n348), .B(Mode[2]), .Y(n346) );
  CLKINVX1 U390 ( .A(Mode[3]), .Y(n348) );
  AOI22X1 U391 ( .A0(Adder_S[0]), .A1(n177), .B0(n212), .B1(A[1]), .Y(n325) );
  NOR3X1 U392 ( .A(Mode[2]), .B(Mode[3]), .C(n330), .Y(n212) );
  CLKINVX1 U393 ( .A(Mode[1]), .Y(n330) );
  NOR3X1 U394 ( .A(Mode[1]), .B(Mode[3]), .C(n331), .Y(n177) );
  CLKINVX1 U395 ( .A(n343), .Y(Overflow) );
  MXI2X1 U396 ( .A(n349), .B(n350), .S0(n287), .Y(n343) );
  CLKINVX1 U397 ( .A(A[15]), .Y(n287) );
  NOR2X1 U398 ( .A(Adder_B[15]), .B(n351), .Y(n350) );
  AND2X1 U399 ( .A(Adder_B[15]), .B(n351), .Y(n349) );
  CLKINVX1 U400 ( .A(Adder_S[15]), .Y(n351) );
  OR2X1 U401 ( .A(Cin), .B(n335), .Y(Adder_Cin) );
  XOR2X1 U402 ( .A(B[9]), .B(n335), .Y(Adder_B[9]) );
  XOR2X1 U403 ( .A(B[8]), .B(n335), .Y(Adder_B[8]) );
  XOR2X1 U404 ( .A(B[7]), .B(n335), .Y(Adder_B[7]) );
  XOR2X1 U405 ( .A(B[6]), .B(n335), .Y(Adder_B[6]) );
  XOR2X1 U406 ( .A(B[5]), .B(n335), .Y(Adder_B[5]) );
  XOR2X1 U407 ( .A(B[4]), .B(n335), .Y(Adder_B[4]) );
  XOR2X1 U408 ( .A(B[3]), .B(n335), .Y(Adder_B[3]) );
  XOR2X1 U409 ( .A(B[2]), .B(n335), .Y(Adder_B[2]) );
  XOR2X1 U410 ( .A(B[1]), .B(n335), .Y(Adder_B[1]) );
  XNOR2X1 U411 ( .A(n335), .B(n280), .Y(Adder_B[15]) );
  CLKINVX1 U412 ( .A(B[15]), .Y(n280) );
  XOR2X1 U413 ( .A(B[14]), .B(n335), .Y(Adder_B[14]) );
  XOR2X1 U414 ( .A(B[13]), .B(n335), .Y(Adder_B[13]) );
  XOR2X1 U415 ( .A(B[12]), .B(n335), .Y(Adder_B[12]) );
  XOR2X1 U416 ( .A(B[11]), .B(n335), .Y(Adder_B[11]) );
  XOR2X1 U417 ( .A(B[10]), .B(n335), .Y(Adder_B[10]) );
  XOR2X1 U418 ( .A(B[0]), .B(n335), .Y(Adder_B[0]) );
  NOR3X1 U419 ( .A(n331), .B(Mode[1]), .C(n289), .Y(n335) );
  CLKINVX1 U420 ( .A(Mode[0]), .Y(n289) );
  CLKINVX1 U421 ( .A(Mode[2]), .Y(n331) );
endmodule

