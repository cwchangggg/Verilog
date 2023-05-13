/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : R-2020.09
// Date      : Thu Jun  2 16:12:12 2022
/////////////////////////////////////////////////////////////


module PAT ( clk, reset, data, flag );
  input clk, reset, data;
  output flag;
  wire   N14, N15, N16, N17, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21;
  wire   [3:0] state;

  DFFQX1 \state_reg[2]  ( .D(N16), .CK(clk), .Q(state[2]) );
  DFFQX1 \state_reg[0]  ( .D(N14), .CK(clk), .Q(state[0]) );
  DFFQX1 \state_reg[1]  ( .D(N15), .CK(clk), .Q(state[1]) );
  DFFQX1 \state_reg[3]  ( .D(N17), .CK(clk), .Q(state[3]) );
  NOR2X1 U29 ( .A(n3), .B(n4), .Y(n13) );
  NAND4X1 U30 ( .A(state[1]), .B(state[0]), .C(n3), .D(n1), .Y(n10) );
  CLKINVX1 U31 ( .A(state[3]), .Y(n1) );
  NOR2X1 U32 ( .A(reset), .B(n14), .Y(N16) );
  AOI211X1 U33 ( .A0(n15), .A1(n7), .B0(n16), .C0(n17), .Y(n14) );
  NOR4X1 U34 ( .A(state[3]), .B(state[1]), .C(n3), .D(n7), .Y(n17) );
  OAI31XL U35 ( .A0(n12), .A1(state[2]), .A2(n1), .B0(n10), .Y(n15) );
  CLKINVX1 U36 ( .A(state[1]), .Y(n4) );
  NAND2X1 U37 ( .A(state[0]), .B(n4), .Y(n12) );
  CLKINVX1 U38 ( .A(state[2]), .Y(n3) );
  OAI2BB2XL U39 ( .B0(state[2]), .B1(n12), .A0N(state[0]), .A1N(n13), .Y(n11)
         );
  OAI211X1 U40 ( .A0(n8), .A1(n7), .B0(n9), .C0(n6), .Y(N17) );
  CLKINVX1 U41 ( .A(reset), .Y(n6) );
  OAI21XL U42 ( .A0(state[1]), .A1(state[2]), .B0(state[3]), .Y(n9) );
  NOR3BXL U43 ( .AN(n10), .B(n11), .C(state[3]), .Y(n8) );
  NOR2X1 U44 ( .A(reset), .B(n18), .Y(N15) );
  AOI22X1 U45 ( .A0(n19), .A1(n1), .B0(n16), .B1(data), .Y(n18) );
  OAI32X1 U46 ( .A0(n20), .A1(state[0]), .A2(n4), .B0(n2), .B1(n12), .Y(n19)
         );
  CLKINVX1 U47 ( .A(n20), .Y(n2) );
  NOR3BXL U48 ( .AN(n13), .B(state[0]), .C(state[3]), .Y(n16) );
  NAND2X1 U49 ( .A(data), .B(n3), .Y(n20) );
  AOI211X1 U50 ( .A0(n21), .A1(n10), .B0(n7), .C0(reset), .Y(N14) );
  NAND2X1 U51 ( .A(n5), .B(n1), .Y(n21) );
  CLKINVX1 U52 ( .A(state[0]), .Y(n5) );
  NOR4X1 U53 ( .A(state[3]), .B(n5), .C(n4), .D(n3), .Y(flag) );
  CLKINVX1 U54 ( .A(data), .Y(n7) );
endmodule

