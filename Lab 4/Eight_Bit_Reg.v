`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:58:52 09/26/2023 
// Design Name: 
// Module Name:    Eight_Bit_Reg 
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
module Eight_Bit_Reg(I, Q, Clk, Rst);

	input [7:0] I;
	output [7:0] Q;
	reg [7:0] Q;
	input Clk, Rst;
	
	always @(posedge Clk) begin
		if (Rst == 1)
			Q <= 8'b00000000;
		else
			Q <= I;
	end
endmodule
