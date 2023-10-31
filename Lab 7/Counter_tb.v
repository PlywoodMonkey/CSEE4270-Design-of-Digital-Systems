`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:23:43 10/17/2023 
// Design Name: 
// Module Name:    Counter_tb 
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
module Counter_tb();

	reg Enable_s, UpDown_s, Clk_s, Rst_s;
	wire [3:0] Count_s;
	
	Counter Counter_0(Enable_s, UpDown_s, Count_s, Clk_s, Rst_s);
	
	always begin
		Clk_s <= 0;
		#10;
		Clk_s <= 1;
		#10;
	end
	
	initial begin
		Rst_s <= 1;
		Enable_s <= 0;
		UpDown_s <= 0;
		@(posedge Clk_s);
		#5 Rst_s <= 0;
		@(posedge Clk_s);
		Enable_s <= 1;
		UpDown_s <= 1;
		@(posedge Clk_s);
		#100;
		@(posedge Clk_s);
		Enable_s <= 0;
		#200;
		@(posedge Clk_s);
		Rst_s <= 1;
		#80;
		@(posedge Clk_s);
		Rst_s <= 0;
		#80;
		
	end
endmodule
