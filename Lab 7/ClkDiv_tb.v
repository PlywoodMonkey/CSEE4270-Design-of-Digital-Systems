`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:57:22 10/10/2023 
// Design Name: 
// Module Name:    ClkDiv_tb 
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
module ClkDiv_tb();

	reg Clk_s, DivRst_s;
	wire ClkOut_s;
	
	ClkDiv ClkDiv_1(Clk_s, DivRst_s, ClkOut_s);
	
	//Clock Procedure
	always begin
		Clk_s <= 0;
		#10;
		Clk_s <= 1;
		#10;
	end
	
	//Vector Procedure
	initial begin
		DivRst_s <= 1;
		@(posedge Clk_s);
		#10 DivRst_s <= 0;
		@(posedge Clk_s);
		@(posedge Clk_s);
		@(posedge Clk_s);
		@(posedge Clk_s);
		@(posedge Clk_s);
		@(posedge Clk_s);
		@(posedge Clk_s);

	end
	
endmodule
