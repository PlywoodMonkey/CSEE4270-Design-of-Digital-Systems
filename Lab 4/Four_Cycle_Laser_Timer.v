`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:30:00 09/26/2023 
// Design Name: 
// Module Name:    Four_Cycle_Laser_Timer 
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
module Four_Cycle_Laser_Timer(B, X, Clk, Rst);

	input B;
	output reg X;
	input Clk, Rst;
	parameter S_Off = 0, S_On1 = 1, S_On2 = 2, S_On3 = 3, S_On4 = 4;
	reg [2:0] State, StateNext;
	
	//Combinational Logic
	always @(State, B) begin
		case (State)
			S_Off: begin
				X <= 0;
				if (B == 0)
					StateNext <= S_Off;
				else
					StateNext <= S_On1;
			end
	
			S_On1: begin
				X <= 1;
				StateNext <= S_On2;
			end
			S_On2: begin
				X <= 1;
				StateNext <= S_On3;
			end
			S_On3: begin
				X <= 1;
				StateNext <= S_On4;
			end
			S_On4: begin
				X <= 1;
				StateNext <= S_Off;
			end
			endcase
		end

	// StateReg
	always @(posedge Clk) begin
	if (Rst == 1 )
		State <= S_Off;
	else
		State <= StateNext;
	end

endmodule
