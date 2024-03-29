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
	always @ (a[i], b[i], carrys[i])
	begin	  
	   assert((a[i] == 1'b1) || (a[i] == 1'b0))
	     else $error("Input 'a' is not a digital logical value");
           assert((b[i] == 1'b1)||(b[i] == 1'b0))
	     else $error("Input 'b' is not a digital logical value");
	   assert((carrys[i] == 1'b1)||(carrys[i] == 1'b0))
	     else $error("Input 'carry_in' is not a digital logical value");
	end   
	   end 
   endgenerate
   assign overflow = carrys[BIT_WIDTH];
endmodule
