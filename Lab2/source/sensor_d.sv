// $Id: $
// File name:   sensor_d.sv
// Created:     8/27/2019
// Author:      Shivam Duhan
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: Dataflow style sensor error detector code

module sensor_d
(
 input wire [3:0] sensors,
 output wire error
 );
   assign error = sensors[0] | ((sensors[3] | sensors[2]) & sensors[1]);
endmodule 
