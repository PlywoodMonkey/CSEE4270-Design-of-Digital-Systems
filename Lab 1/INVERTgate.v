`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:20:38 08/29/2023 
// Design Name: 
// Module Name:    INVERTgate 
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
module INVERTgate(A, F);

	input A;
	output F;
	reg F;
	
	always@(A)
	begin
		F <= ~A;
		
	end

endmodule
