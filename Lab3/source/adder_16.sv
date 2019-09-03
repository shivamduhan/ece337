// File name:   adder_16.sv
// Created:     1/19/2015
// Author:      Tim Pritchett
// Version:     1.0  Initial Design Entry
// Description: 16 bit adder design wrapper for synthesis optimization seciton of Lab 2

module adder_16
(
	input wire [15:0] a,
	input wire [15:0] b,
	input wire carry_in,
	output wire [15:0] sum,
	output wire overflow
);

     always @ (a, b, carry_in)
     begin
   	assert((a == 'h1111)||(a == 'h0000))
	  else $error("Input 'a' is not a digital logical value");
	assert((b == 'h11111)||(b == 'h0000))
	  else $error("Input 'b' is not a digital logical value");
	assert((carry_in == 1'b1)||(carry_in == 1'b0))
	  else $error("Input 'carry_in' is not a digital logical value");
     end
   
	assign sum = ((a + b + carry_in) % (2 **16));
	assign overflow = ((a + b + carry_in) / (2 ** 16));

endmodule
