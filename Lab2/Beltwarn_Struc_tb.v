`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:40:21 09/12/2023 
// Design Name: 
// Module Name:    Beltwarn_Struc_tb 
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
module Beltwarn_Struc_tb();

	reg K_s,P_s,S_s;
	wire W_s;
	
	Beltwarn_Struc Beltwarn_Struc_1(K_s,P_s,S_s,W_s);
	
	initial begin
	K_s<=0;P_s<=0;S_s<=0;
	#10 K_s<=0;P_s<=0;S_s<=1;
	#10 K_s<=0;P_s<=1;S_s<=0;
	#10 K_s<=0;P_s<=1;S_s<=1;
	#10 K_s<=1;P_s<=0;S_s<=0;
	#10 K_s<=1;P_s<=0;S_s<=1;
	#10 K_s<=1;P_s<=1;S_s<=0;
	#10 K_s<=1;P_s<=1;S_s<=1;
	end
	
endmodule
