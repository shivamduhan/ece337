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

   always @ (a, b, carry_in)
     begin
   	assert((a == 'h1)||(a == 'h0))
	  else $error("Input 'a' is not a digital logical value");
        assert((b == 'h1)||(b == 'h0))
	  else $error("Input 'b' is not a digital logical value");
	assert((carry_in == 1'b1)||(carry_in == 1'b0))
	  else $error("Input 'carry_in' is not a digital logical value");
	end
   wire [BIT_WIDTH:0] carrys; //intermediate state
   genvar     i; //variable used for generate loop
   assign carrys[0] =  carry_in;
   generate
      for (i=0; i <= BIT_WIDTH-1; i = i + 1)
	begin
	   adder_1bit X1 (.a(a[i]), .b(b[i]), .carry_in(carrys[i]), .sum(sum[i]), .carry_out(carrys[i+1]));	  
	end
      always @ (a[0], b[0], carrys[0])
	begin
	    assert (((a[0] + b[0] + carrys[0]) % 2) == sum[0])
	     else $error("Output s of the first 1 bit adder is not correct");
	   end 
   endgenerate
   assign overflow = carrys[BIT_WIDTH];
endmodule
