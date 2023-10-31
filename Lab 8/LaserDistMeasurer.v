`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:56:33 10/31/2023 
// Design Name: 
// Module Name:    LaserDistMeasurer 
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
module LaserDistMeasurer(clk, rst, B, S, L, D);

	input clk, rst, B, S;
	output L;
	output [15:0] D;
	reg L;
	reg [15:0] D;
	
	parameter	S0 = 3'b000,
					S1 = 3'b001,
					S2 = 3'b010,
					S3 = 3'b011,
					S4 = 3'b100;
	
	reg [2:0] State, StateNext;
	reg [15:0] Dctr, DctrNext;
	reg [15:0] Dreg, DregNext;
	
	// Registers
	always@(posedge clk, posedge rst) begin
		if (rst == 1) begin // asynchronous reset
			State <= S0;
			Dctr <= 0;
			Dreg <= 0;
		end
		else begin
			State <= StateNext;
			Dctr <= DctrNext;
			Dreg <= DregNext;
		end
	end
	
	always @ (Dreg) begin
		D <= Dreg;
	end
	
	// Combinational Logic
	always @ (State, Dctr, B, S) begin
		case (State)
			S0: begin
				L <= 0;
				DregNext <= 0;
				StateNext <= S1;
				DctrNext <= 0;
			end // S0
			S1: begin
				DctrNext <= 0;
				L <= 0;
				
				if (B == 1)
					StateNext <= S2;
				else
					StateNext <= S1;
			end // S1
			S2: begin
				L <= 1; // Laser on
				DctrNext <= 0;
				StateNext <= S3;
			end // S2
			S3: begin
				L <= 0; // Laser off
				DctrNext <= Dctr + 1;
				
				if (S == 1)
					StateNext <= S4;
				else
					StateNext <= S3;
			end // S3
			S4: begin
				DregNext <= Dctr >> 1;
				StateNext <= S1;
			end // S4
		endcase // case
	end // always
endmodule // main
