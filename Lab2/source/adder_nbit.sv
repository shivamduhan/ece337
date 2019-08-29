// File name:   adder_nbit.sv
// Created:     8/28/2019
// Author:      Shivam Duhan
// Lab Section: 337-03
// Description: n-bit full adder design

module adder_nbit
#(
 parameter BIT_WIDTH = 4
)
(
 input wire [(BIT_WIDTH-1):0] a,
 input wire [(BIT_WIDTH-1):0] b,
 input wire carry_in,
 output wire [(BIT_WIDTH-1):0] sum,
 output wire overflow
 );

   wire [BIT_WIDTH:0] carrys; //intermediate state
   genvar     i; //variable used for generate loop
   assign carrys[0] =  carry_in;
   generate
      for (i=0; i <= BIT_WIDTH-1; i = i + 1)
	begin
	   adder_1bit X1 (.a(a[i]), .b(b[i]), .carry_in(carrys[i]), .sum(sum[i]), .carry_out(carrys[i+1]));	  
	end
   endgenerate
   assign overflow = carrys[BIT_WIDTH];
endmodule
