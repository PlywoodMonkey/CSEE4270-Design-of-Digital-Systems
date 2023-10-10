`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:18:51 10/10/2023 
// Design Name: 
// Module Name:    Thunderbird_Top_tb 
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
module Thunderbird_Top_tb();

	reg Clk_s, DivRst_s, Reset_s, Left_s, Right_s;
	wire LA_s, LB_s, LC_s, RA_s, RB_s, RC_s;	

	Thunderbird_Top Thunderbird_Top_1(Clk_s, DivRst_s, Reset_s, Left_s, Right_s, LA_s, LB_s, LC_s, RA_s, RB_s, RC_s);
	
	//Clock Procedure
	always begin
		Clk_s <= 0;
		#10;
		Clk_s <= 1;
		#10;
	end
	
	initial begin
		DivRst_s <= 1;
		Reset_s <= 1;
		Left_s <= 0;
		Right_s <= 0;
		@(posedge Clk_s);
		#10 DivRst_s <= 0;
		@(posedge Clk_s);
		@(posedge Clk_s);
		@(posedge Clk_s);
		@(posedge Clk_s);
		@(posedge Clk_s);
		#10 Reset_s <= 0;
		Right_s <= 1;
		#100
		@(posedge Clk_s);
		@(posedge Clk_s);



	end

endmodule
