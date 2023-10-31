`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:56:45 10/17/2023 
// Design Name: 
// Module Name:    Top 
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
module Top(Enable, UpDown, A, B, C, D, E, F, G, SegSel, Clk, Rst, DivRst);

	input Enable, UpDown; 
	output A, B, C, D, E, F, G, SegSel;
	input Clk, Rst, DivRst;

		wire ClkCount;
		wire [3:0] Count;
		
		ClkDiv ClkDiv_0 (Clk, DivRst, ClkCount);
		Counter Counter_0 (Enable, UpDown, Count, ClkCount, Rst);
		Bin2LED Bin2LED_0 (Count[3], Count[2], Count[1], Count[0], SegSel, A, B, C, D, E, F, G);

endmodule
