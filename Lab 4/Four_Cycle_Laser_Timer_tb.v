`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:39:50 09/26/2023 
// Design Name: 
// Module Name:    Four_Cycle_Laser_Timer_tb 
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
module Four_Cycle_Laser_Timer_tb();
	
	reg B_s;
	wire X_s;
	reg Clk_s, Rst_s;

	Four_Cycle_Laser_Timer Four_Cycle_Laser_Timer_1(B_s, X_s, Clk_s, Rst_s);

	// Clock Procedure
	always begin
		Clk_s <= 0;
		#5;
		Clk_s <= 1;
		#5;
	end // Note: Procedure repeats
	
	// Vector Procedure
	initial begin
		Rst_s <= 1;
		B_s <= 0;
		@(posedge Clk_s);
		#5 Rst_s <= 0;
		@(posedge Clk_s);
		#5 B_s <= 1;
		@(posedge Clk_s);
		#5 B_s <= 0;
		@(posedge Clk_s);
		@(posedge Clk_s);
		@(posedge Clk_s);
		@(posedge Clk_s);
	
	end
	
endmodule
