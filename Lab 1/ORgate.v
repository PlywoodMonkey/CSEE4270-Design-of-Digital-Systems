`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:17:24 08/29/2023 
// Design Name: 
// Module Name:    ORgate 
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
module ORgate(A, B, F);

	input A, B;
	output F;
	reg F;
	
	always@(A or B)
	begin
		F <= A | B;
		
	end

endmodule
