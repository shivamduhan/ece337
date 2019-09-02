/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Mon Sep  2 15:46:34 2019
/////////////////////////////////////////////////////////////


module adder_16_DW01_add_1 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n19, n21, n22, n23, n24, n25, n27, n29, n30, n31, n32, n33, n35,
         n37, n38, n39, n40, n41, n42, n44, n46, n48, n106, n107, n108;

  FAX1 U2 ( .A(B[15]), .B(A[15]), .C(n8), .YC(SUM[16]), .YS(SUM[15]) );
  FAX1 U3 ( .A(B[14]), .B(A[14]), .C(n9), .YC(n8), .YS(SUM[14]) );
  FAX1 U4 ( .A(B[13]), .B(A[13]), .C(n10), .YC(n9), .YS(SUM[13]) );
  FAX1 U5 ( .A(B[12]), .B(A[12]), .C(n11), .YC(n10), .YS(SUM[12]) );
  FAX1 U6 ( .A(B[11]), .B(A[11]), .C(n12), .YC(n11), .YS(SUM[11]) );
  FAX1 U7 ( .A(B[10]), .B(A[10]), .C(n13), .YC(n12), .YS(SUM[10]) );
  FAX1 U8 ( .A(B[9]), .B(A[9]), .C(n14), .YC(n13), .YS(SUM[9]) );
  FAX1 U9 ( .A(B[8]), .B(A[8]), .C(n15), .YC(n14), .YS(SUM[8]) );
  FAX1 U10 ( .A(B[7]), .B(A[7]), .C(n16), .YC(n15), .YS(SUM[7]) );
  FAX1 U11 ( .A(B[6]), .B(A[6]), .C(n42), .YC(n16), .YS(SUM[6]) );
  XNOR2X1 U13 ( .A(n22), .B(n1), .Y(SUM[5]) );
  AOI21X1 U14 ( .A(n108), .B(n22), .C(n19), .Y(n17) );
  NAND2X1 U17 ( .A(n21), .B(n108), .Y(n1) );
  NAND2X1 U20 ( .A(B[5]), .B(A[5]), .Y(n21) );
  XOR2X1 U21 ( .A(n25), .B(n2), .Y(SUM[4]) );
  OAI21X1 U22 ( .A(n25), .B(n23), .C(n24), .Y(n22) );
  NAND2X1 U23 ( .A(n24), .B(n44), .Y(n2) );
  NOR2X1 U25 ( .A(B[4]), .B(A[4]), .Y(n23) );
  NAND2X1 U26 ( .A(B[4]), .B(A[4]), .Y(n24) );
  XNOR2X1 U27 ( .A(n30), .B(n3), .Y(SUM[3]) );
  AOI21X1 U28 ( .A(n107), .B(n30), .C(n27), .Y(n25) );
  NAND2X1 U31 ( .A(n29), .B(n107), .Y(n3) );
  NAND2X1 U34 ( .A(B[3]), .B(A[3]), .Y(n29) );
  XOR2X1 U35 ( .A(n33), .B(n4), .Y(SUM[2]) );
  OAI21X1 U36 ( .A(n33), .B(n31), .C(n32), .Y(n30) );
  NAND2X1 U37 ( .A(n32), .B(n46), .Y(n4) );
  NOR2X1 U39 ( .A(B[2]), .B(A[2]), .Y(n31) );
  NAND2X1 U40 ( .A(B[2]), .B(A[2]), .Y(n32) );
  XNOR2X1 U41 ( .A(n38), .B(n5), .Y(SUM[1]) );
  AOI21X1 U42 ( .A(n106), .B(n38), .C(n35), .Y(n33) );
  NAND2X1 U45 ( .A(n37), .B(n106), .Y(n5) );
  NAND2X1 U48 ( .A(B[1]), .B(A[1]), .Y(n37) );
  XNOR2X1 U49 ( .A(n6), .B(CI), .Y(SUM[0]) );
  OAI21X1 U50 ( .A(n39), .B(n41), .C(n40), .Y(n38) );
  NAND2X1 U51 ( .A(n40), .B(n48), .Y(n6) );
  NOR2X1 U53 ( .A(B[0]), .B(A[0]), .Y(n39) );
  NAND2X1 U54 ( .A(B[0]), .B(A[0]), .Y(n40) );
  OR2X2 U59 ( .A(B[1]), .B(A[1]), .Y(n106) );
  OR2X2 U60 ( .A(B[3]), .B(A[3]), .Y(n107) );
  OR2X2 U61 ( .A(B[5]), .B(A[5]), .Y(n108) );
  INVX2 U62 ( .A(n39), .Y(n48) );
  INVX2 U63 ( .A(n31), .Y(n46) );
  INVX2 U64 ( .A(n23), .Y(n44) );
  INVX2 U65 ( .A(n17), .Y(n42) );
  INVX2 U66 ( .A(CI), .Y(n41) );
  INVX2 U67 ( .A(n37), .Y(n35) );
  INVX2 U68 ( .A(n29), .Y(n27) );
  INVX2 U69 ( .A(n21), .Y(n19) );
endmodule


module adder_16 ( a, b, carry_in, sum, overflow );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input carry_in;
  output overflow;


  adder_16_DW01_add_1 r304 ( .A({1'b0, a}), .B({1'b0, b}), .CI(carry_in), 
        .SUM({overflow, sum}) );
endmodule

