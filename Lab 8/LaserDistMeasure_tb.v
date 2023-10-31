`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:41:33 10/31/2023 
// Design Name: 
// Module Name:    LaserDistMeasure_tb 
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
module LaserDistMeasure_tb();

	reg B_s, S_s, rst_s, clk_s;
	wire [15:0] D_s;
	wire L_s;
	
	LaserDistMeasurer LaserDistMeasurer_1(clk_s, rst_s, B_s, S_s, L_s, D_s);
	
	always begin
	clk_s <= 0;
	#10;
	clk_s <= 1;
	#10;
	end
	
	always @ (posedge clk_s) begin
	rst_s <= 1;
	@ (posedge clk_s);
	@ (posedge clk_s);
	#5 rst_s <= 0;
	B_s <= 1;
	S_s <= 0;
	@ (posedge clk_s);
	@ (posedge clk_s);
	@ (posedge clk_s);
	#5 B_s <= 0;
	@ (posedge clk_s);
	@ (posedge clk_s);
	@ (posedge clk_s);
	@ (posedge clk_s);
	@ (posedge clk_s);
	@ (posedge clk_s);
	@ (posedge clk_s);
	@ (posedge clk_s);
	#5 S_s <= 1;
	@ (posedge clk_s);
	#5 S_s <= 0;
	@ (posedge clk_s);
	@ (posedge clk_s);
	
	end
	
endmodule
