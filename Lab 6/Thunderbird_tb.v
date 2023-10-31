`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:22:38 10/03/2023 
// Design Name: 
// Module Name:    Thunderbird_tb 
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
module Thunderbird_tb();

	reg Reset_s, Left_s, Right_s;
	wire LA_s, LB_s, LC_s, RA_s, RB_s, RC_s;
	reg Clk_s;
	
	Thunderbird Thunderbird_1(Reset_s, Left_s, Right_s, LA_s, LB_s, LC_s, RA_s, RB_s, RC_s, Clk_s);
	
	//Clock Procedure
	always begin
		Clk_s <= 0;
		#10;
		Clk_s <= 1;
		#10;
	end
	
	//Vector Procedure
	initial begin
		Reset_s <= 1;
		Left_s <= 0;
		Right_s <= 0;
		@(posedge Clk_s);
		#10 Reset_s <= 0;
		@(posedge Clk_s);
		#10 Left_s <= 1; // left signal
		#90
		@(posedge Clk_s);
		#10 Left_s <= 0; // left off
		@(posedge Clk_s);
		#10
		@(posedge Clk_s);
		#10
		@(posedge Clk_s);
		#10 Right_s <= 1; // right signal 
		#90
		@(posedge Clk_s);
		#10 Right_s <= 0; // right off
		#10
		@(posedge Clk_s);
		#40
		#10 Left_s <= 1; Right_s <= 1; // both running simultaneously
		#10 @(posedge Clk_s);
		#10 Left_s <= 0; Right_s <= 0; // both off
		
	end
endmodule
