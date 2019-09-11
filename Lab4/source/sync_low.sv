module sync_low
  (
   input reg clk,
   input reg n_rst,
   input reg async_in,
   output reg sync_out
   );   

   reg 	       pass;
   
  always_ff @ (posedge clk, negedge n_rst)
  begin
     if (1'b0 == n_rst) begin
	sync_out <= 1'b0;
       	pass <= 1'b0;
	      
     end else begin
	pass <= async_in;	
	sync_out <= pass;
     end 	 
  end
   endmodule
	  
  
