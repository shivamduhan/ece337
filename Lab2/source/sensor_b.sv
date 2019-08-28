// $Id: $
// File name:   sensor_b.sv
// Created:     8/27/2019
// Author:      Shivam Duhan
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: Behavorial style Sensor Error Detector Code

module sensor_b
(
 input wire [3:0] sensors,
 output reg error
 );
   always_comb
   begin
      error = sensors[0] | ((sensors[3] | sensors[2]) & sensors[1]);
   end   
endmodule 
