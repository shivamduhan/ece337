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
 
 	wire ms1;
 	wire ms2;
 	AND2X1 A1 (.Y(ms1), .A(sensors[1]), .B(sensors[2]));
 	AND2X1 A2 (.Y(ms2), .A(sensors[3]), .B(sensors[1]));
	OR3X1 A3 (.Y(error), .A(sensors[0]), .B(A1), .C(A2));
endmodule
