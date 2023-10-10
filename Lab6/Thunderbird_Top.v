`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:11:05 10/10/2023 
// Design Name: 
// Module Name:    Thunderbird_Top 
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
module Thunderbird_Top(Clk, DivRst, Reset, Left, Right, LA, LB, LC, RA, RB, RC);

	input Clk, DivRst, Reset, Left, Right;
	output LA, LB, LC, RA, RB, RC;
	
	wire ClkOut;
	
	ClkDiv ClkDiv_1(Clk, DivRst, ClkOut);
	Thunderbird Thunderbird_1(Reset, Left, Right, LA, LB, LC, RA, RB, RC, ClkOut);

endmodule
