//16 bit adder wrapper file based on 8-bit adder wrapper file from Lab2

module adder_8bit
(
	input wire [15:0] a,
	input wire [15:0] b,
	input wire carry_in,
	output wire [15:0] sum,
	output wire overflow
);

	// STUDENT: Fill in the correct port map with parameter override syntax for using your n-bit ripple carry adder design to be an 8-bit ripple carry adder design
   parameter BIT_WIDTH = 16;
   adder_nbit #(.BIT_WIDTH(BIT_WIDTH)) X1 (.a(a), .b(b), .carry_in(carry_in), .sum(sum), .overflow(overflow));
   
endmodule
