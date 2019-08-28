// $Id: $
// File name:   sensor_s.sv
// Created:     8/27/2019
// Author:      Shivam Duhan
// Lab Section: 337-03
// Version:     1.0  Initial Design Entry
// Description: Structural style description of Sensor Error Detector

 module sensor_s
(
 	input wire [3:0] sensors,
 	output wire error
);
 
   wire      ms1;
   wire      ms2;
   OR2X1 A1 (.Y(ms1), .A(sensors[2]), .B(sensors[3]));
   AND2X1 A2 (.Y(ms2), .A(ms1), .B(sensors[1]));
   OR2X1 A3 (.Y(error), .A(ms2), .B(sensors[0]));
      
endmodule
