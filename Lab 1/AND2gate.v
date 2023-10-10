`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:59:00 08/29/2023 
// Design Name: 
// Module Name:    AND2gate 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module AND2gate(A, B, F);

	input A, B;
	output F;
	reg F;
	
	always@(A or B)
	begin
		F <= A & B;
		
	end

endmodule
