`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:55:29 10/09/2023 
// Design Name: 
// Module Name:    Lab6APreLab
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
module Lab6APreLab(Clk, DivRst, ClkOut);

	input Clk, DivRst;
	output ClkOut;

	parameter MaxCount = 'd4; // Makes a max size number
	reg [24:0] Counter; // Makes a 24 bit counter
	reg ClkInt;
	
	//Cominational Logic
	always @(posedge Clk) begin
		if(DivRst == 1) begin
			Counter <= 0; // Reset Counter

			// Inspired From Video
			ClkOut <= 0;  
			ClkInt <= 0; 
		end
		else begin
			// Checks If Count Has Maxed
			if (Counter == MaxCount) begin 
				Counter <= 0; // Resets Count
				ClkOut <= ~ClkInt // Inputs a Flipped signal
				ClkInt <= ~ClkInt; // Switches from L to H or H to L
			end
			else begin		
				Counter <= Counter + 1; // Increments
				ClkOut <= ClkInt; // Continues the signal output
				ClkInt <= ClkInt; // Prevents Clk from changing
			end
		end
	end 

endmodule
