`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:55:29 10/03/2023 
// Design Name: 
// Module Name:    Thunderbird 
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
module Thunderbird(Reset, Left, Right, LA, LB, LC, RA, RB, RC, Clk);

	input Reset, Left, Right;
	output reg LA, LB, LC, RA, RB, RC;
	input Clk;
	
	parameter Off = 0, L1 = 1, L2 = 2, L3 = 3, R1 = 4, R2 = 5, R3 = 6, Null = 7;

	reg [3:0] State, StateNext;
	
	//Cominational Logic
	always @(State, Left, Right) begin
		case(State)
			Off: begin
				LA <= 0; LB <= 0; LC <= 0; RA <= 0; RB <= 0; RC <= 0;
				if(Left == 1 && Right == 1)
					StateNext <= Off;
				else if (Left == 1 && Right == 0)
					StateNext <= L1;
				else if (Left == 0 && Right == 1)
					StateNext <= R1;
				else
					StateNext <= Off;
				end
			L1: begin
				LA <= 1; LB <= 0; LC <= 0; RA <= 0; RB <= 0; RC <= 0;
				StateNext <= L2;
				end
			L2: begin
				LA <= 1; LB <= 1; LC <= 0; RA <= 0; RB <= 0; RC <= 0;
				StateNext <= L3;
				end
			L3: begin
				LA <= 1; LB <= 1; LC <= 1; RA <= 0; RB <= 0; RC <= 0;
				StateNext <= Off;
				end
			R1: begin
				LA <= 0; LB <= 0; LC <= 0; RA <= 1; RB <= 0; RC <= 0;
				StateNext <= R2;
				end
			R2: begin
				LA <= 0; LB <= 0; LC <= 0; RA <= 1; RB <= 1; RC <= 0;
				StateNext <= R3;
				end
			R3: begin
				LA <= 0; LB <= 0; LC <= 0; RA <= 1; RB <= 1; RC <= 1;
				StateNext <= Off;
				end
			//Null: begin
			//	LA <= 0; LB <= 0; LC <= 0; RA <= 0; RB <= 0; RC <= 0;
			//	StateNext <= Off;
			//	end
			endcase
		end
		
	//State Registers
	always @(posedge Clk) begin
		if(Reset == 1)
			State <= Off;
		else
			State <= StateNext;
		end
endmodule
