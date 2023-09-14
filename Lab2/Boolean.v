`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:46:09 09/12/2023 
// Design Name: 
// Module Name:    Boolean 
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
module Boolean(A,B,C,F);

	input A,B,C;
	output F;
	reg F;
	
	always @(A,B,C) begin
		F <= (~A&~B&~C) | (A&~B&~C) | (A&~B&C);
	end
	
endmodule
