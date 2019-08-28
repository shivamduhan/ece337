// File name:   adder_4bit.sv
// Created:     8/28/2019
// Author:      Shivam Duhan
// Lab Section: 337-03
// Description: 4-bit full adder design

module adder_4bit
(
 input wire [3:0] a,
 input wire [3:0] b,
 input wire carry_in,
 output wire [3:0] sum,
 output wire carry_out
 );

   wire [4:0] carrys; //intermediate state
   genvar     i; //variable used for generate loop
   assign carrys[0] =  carry_in;
   generate
      for (i=0; i <= 3; i = i + 1)
	begin
	   adder_1bit X1 (.a(a[i]), .b(b[i]), .carry_in(carrys[i]), .sum(sum[i]), .carry_out(carrys[i+1]));
	end
   endgenerate
   assign carry_out = carrys[4];
endmodule
