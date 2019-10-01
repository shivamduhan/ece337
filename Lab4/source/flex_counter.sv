module flex_counter
#(parameter NUM_CNT_BITS = 4)
(
 input wire clk,
 input wire n_rst,
 input wire clear,
 input wire count_enable,
 input wire [NUM_CNT_BITS - 1: 0] rollover_val,
 output wire [NUM_CNT_BITS - 1: 0] count_out,
 output reg rollover_flag
 );

   reg [NUM_CNT_BITS - 1: O] count;
   reg [NUM_CNT_BITS - 1: O] next_count;

always_ff @ (posedge clk, negedge n_rst) begin
   if (n_rst == 0) begin
      count <= 0;
   end
   else begin
      count <= next_count;
      rollover_flag <= roll;
   end
end

always_comb begin
   if clear == 1'b1 begin
      next_count = 0;
   end
   else if count_enable == 1'b1 begin
      if rollover_flag == 1'b1 begin
	 next_count = 1;

      end
      else begin
	 next_count = count + 1;

      end
   end
   else begin
      next_count = count;
   end // else: !ifcount_enable
   
   if next_count == rollover_val begin
      roll = 1'b1;
   end
   else begin
      roll = 1'b0;
   end
end // always_comb
   assign count_out = count;

endmodule // flex_counter

   
