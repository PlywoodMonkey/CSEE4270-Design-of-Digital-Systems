`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:15:53 09/12/2023 
// Design Name: 
// Module Name:    Beltwarn_tb 
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
module Beltwarn_tb();
	reg K_t,P_t,S_t;
	wire W_t;
	
	Beltwarn Beltwarn_1(K_t,P_t,S_t,W_t);
	
	initial begin
	//case 0
	K_t<=0;P_t<=0;S_t<=0;
	#1$display("W_t=%b",W_t);
	
	//case 1
	K_t<=0;P_t<=0;S_t<=1;
	#1$display("W_t=%b",W_t);
	
	//case 2
	K_t<=0;P_t<=1;S_t<=0;
	#1$display("W_t=%b",W_t);
	
	//case 3
	K_t<=0;P_t<=1;S_t<=1;
	#1$display("W_t=%b",W_t);
	
	//case 4
	K_t<=1;P_t<=0;S_t<=0;
	#1$display("W_t=%b",W_t);
	
	//case 5
	K_t<=1;P_t<=0;S_t<=1;
	#1$display("W_t=%b",W_t);
	
	//case 6
	K_t<=1;P_t<=1;S_t<=0;
	#1$display("W_t=%b",W_t);
	
	//case 7
	K_t<=1;P_t<=1;S_t<=1;
	#1$display("W_t=%b",W_t);
	end
endmodule
