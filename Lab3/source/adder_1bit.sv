// File name:   adder_1bit.sv
// Created:     8/28/2019
// Author:      Shivam Duhan
// Lab Section: 337-03
// Description: 1-bit full adder design

module adder_1bit
(
 input wire a,
 input wire b,
 input wire carry_in,
 output wire sum,
 output wire carry_out
 );
   assign sum = carry_in ^ (a^b);
   assign carry_out = (!(carry_in) & b & a)|(carry_in & (b|a));

endmodule


