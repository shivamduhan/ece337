/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Thu Aug 29 00:09:09 2019
/////////////////////////////////////////////////////////////


module adder_1bit_3 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n1, n2;

  XOR2X1 U1 ( .A(carry_in), .B(n1), .Y(sum) );
  INVX1 U2 ( .A(n2), .Y(carry_out) );
  AOI22X1 U3 ( .A(b), .B(a), .C(n1), .D(carry_in), .Y(n2) );
  XOR2X1 U4 ( .A(a), .B(b), .Y(n1) );
endmodule


module adder_1bit_0 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n1, n2;

  XOR2X1 U1 ( .A(carry_in), .B(n1), .Y(sum) );
  INVX1 U2 ( .A(n2), .Y(carry_out) );
  AOI22X1 U3 ( .A(b), .B(a), .C(n1), .D(carry_in), .Y(n2) );
  XOR2X1 U4 ( .A(a), .B(b), .Y(n1) );
endmodule


module adder_1bit_1 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n1, n2;

  XOR2X1 U1 ( .A(carry_in), .B(n1), .Y(sum) );
  INVX1 U2 ( .A(n2), .Y(carry_out) );
  AOI22X1 U3 ( .A(b), .B(a), .C(n1), .D(carry_in), .Y(n2) );
  XOR2X1 U4 ( .A(a), .B(b), .Y(n1) );
endmodule


module adder_1bit_2 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n1, n2;

  XOR2X1 U1 ( .A(carry_in), .B(n1), .Y(sum) );
  INVX1 U2 ( .A(n2), .Y(carry_out) );
  AOI22X1 U3 ( .A(b), .B(a), .C(n1), .D(carry_in), .Y(n2) );
  XOR2X1 U4 ( .A(a), .B(b), .Y(n1) );
endmodule


module adder_nbit ( a, b, carry_in, sum, overflow );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input carry_in;
  output overflow;

  wire   [3:1] carrys;

  adder_1bit_3 \genblk1[0].X1  ( .a(a[0]), .b(b[0]), .carry_in(carry_in), 
        .sum(sum[0]), .carry_out(carrys[1]) );
  adder_1bit_2 \genblk1[1].X1  ( .a(a[1]), .b(b[1]), .carry_in(carrys[1]), 
        .sum(sum[1]), .carry_out(carrys[2]) );
  adder_1bit_1 \genblk1[2].X1  ( .a(a[2]), .b(b[2]), .carry_in(carrys[2]), 
        .sum(sum[2]), .carry_out(carrys[3]) );
  adder_1bit_0 \genblk1[3].X1  ( .a(a[3]), .b(b[3]), .carry_in(carrys[3]), 
        .sum(sum[3]), .carry_out(overflow) );
endmodule

