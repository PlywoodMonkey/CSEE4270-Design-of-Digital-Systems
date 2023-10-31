`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:04:31 10/17/2023 
// Design Name: 
// Module Name:    Counter 
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
module Counter(Enable, UpDown, Count, Clk, Rst);

	input Enable, UpDown;
	output reg [3:0] Count;
	input Clk, Rst;
	
	parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3, S4 = 4, S5 = 5,
	S6 = 6, S7 = 7, S8 = 8, S9 = 9, SA = 10, SB = 11, SC = 12,
	SD = 13, SE = 14, SF = 15;
	
	reg [3:0] State, StateNext;
	
	//Combinational Logic
	always @(State, Enable, UpDown) begin
		case (State)
			S0: begin
				Count <= 0;
				if(Enable == 0)
					StateNext <= S0;
				else if(UpDown == 1)
					StateNext <= S1;
				else 
					StateNext <= SF;
			end
			S1: begin
				Count <= 1;
				if(Enable == 0)
					StateNext <= S1;
				else if(UpDown == 1)
					StateNext <= S2;
				else 
					StateNext <= S0;
			end
			S2: begin
				Count <= 2;
				if(Enable == 0)
					StateNext <= S2;
				else if(UpDown == 1)
					StateNext <= S3;
				else 
					StateNext <= S1;
			end
			S3: begin
				Count <= 3;
				if(Enable == 0)
					StateNext <= S3;
				else if(UpDown == 1)
					StateNext <= S4;
				else 
					StateNext <= S2;
			end
			S4: begin
				Count <= 4;
				if(Enable == 0)
					StateNext <= S4;
				else if(UpDown == 1)
					StateNext <= S5;
				else 
					StateNext <= S3;
			end
			S5: begin
				Count <= 5;
				if(Enable == 0)
					StateNext <= S5;
				else if(UpDown == 1)
					StateNext <= S6;
				else 
					StateNext <= S4;
			end
			S6: begin
				Count <= 6;
				if(Enable == 0)
					StateNext <= S6;
				else if(UpDown == 1)
					StateNext <= S7;
				else 
					StateNext <= S5;
			end
			S7: begin
				Count <= 7;
				if(Enable == 0)
					StateNext <= S7;
				else if(UpDown == 1)
					StateNext <= S8;
				else 
					StateNext <= S6;
			end
			S8: begin
				Count <= 8;
				if(Enable == 0)
					StateNext <= S8;
				else if(UpDown == 1)
					StateNext <= S9;
				else 
					StateNext <= S7;
			end
			S9: begin
				Count <= 9;
				if(Enable == 0)
					StateNext <= S9;
				else if(UpDown == 1)
					StateNext <= SA;
				else 
					StateNext <= S8;
			end
			SA: begin
				Count <= 10;
				if(Enable == 0)
					StateNext <= SA;
				else if(UpDown == 1)
					StateNext <= SB;
				else 
					StateNext <= S9;
			end
			SB: begin
				Count <= 11;
				if(Enable == 0)
					StateNext <= SB;
				else if(UpDown == 1)
					StateNext <= SC;
				else 
					StateNext <= SA;
			end
			SC: begin
				Count <= 12;
				if(Enable == 0)
					StateNext <= SC;
				else if(UpDown == 1)
					StateNext <= SD;
				else 
					StateNext <= SB;
			end
			SD: begin
				Count <= 13;
				if(Enable == 0)
					StateNext <= SD;
				else if(UpDown == 1)
					StateNext <= SE;
				else 
					StateNext <= SC;
			end
			SE: begin
				Count <= 14;
				if(Enable == 0)
					StateNext <= SE;
				else if(UpDown == 1)
					StateNext <= SF;
				else 
					StateNext <= SD;
			end
			SF: begin
				Count <= 15;
				if(Enable == 0)
					StateNext <= SF;
				else if(UpDown == 1)
					StateNext <= S0;
				else 
					StateNext <= SE;
			end
			
			default: begin
				Count <= 0;
				StateNext <= S0;
			end
		endcase
	end
			
	//StateReg
	always @(posedge Clk) begin
		if(Rst == 1)
			State <= S0;
		else
			State <= StateNext;
	end
endmodule
