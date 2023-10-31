`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:03:44 09/12/2023 
// Design Name: 
// Module Name:    Beltwarn 
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
module Beltwarn(K,P,S,W);

	input K, P, S;
	output W;
	reg W;
	
	always@(K,P,S)
	begin
		W <= K & P & !S;
		end
endmodule
