//16 bit adder wrapper file based on 8-bit adder wrapper file from Lab2

module adder_16bit
(
	input wire [15:0] a,
	input wire [15:0] b,
	input wire carry_in,
	output wire [15:0] sum,
	output wire overflow
);
   parameter BIT_WIDTH = 16;
   genvar 	    j;
   
   generate
      for (j=0; j <= BIT_WIDTH-1; j = j + 1)
	always @ (a[j], b[j], carry_in)
	begin
	   assert((a[j] == 1'b1)||(a[j] == 1'b0))
	     else $error("Input 'a' is not a digital logical value");
           assert((b[j] == 1'b1)||(b[j] == 1'b0))
	     else $error("Input 'b' is not a digital logical value");
	   assert((carry_in == 1'b1)||(carry_in == 1'b0))
	     else $error("Input 'carry_in' is not a digital logical value");	    
        end 
   endgenerate
	// STUDENT: Fill in the correct port map with parameter override syntax for using your n-bit ripple carry adder design to be an 8-bit ripple carry adder design

   adder_nbit #(.BIT_WIDTH(BIT_WIDTH)) X1 (.a(a), .b(b), .carry_in(carry_in), .sum(sum), .overflow(overflow));
   
endmodule
