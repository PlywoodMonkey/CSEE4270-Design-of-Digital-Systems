`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:59:09 09/12/2023 
// Design Name: 
// Module Name:    Mux8_tb 
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
module Mux8_tb();

	reg D7_t,D6_t,D5_t,D4_t,D3_t,D2_t,D1_t,D0_t;
	reg S2_t,S1_t,S0_t;
	wire Y_t;
	
	Mux8 Mux8_1(D7_t,D6_t,D5_t,D4_t,D3_t,D2_t,D1_t,D0_t,S2_t,S1_t,S0_t,Y_t);
	
	initial begin
	D7_t<=0;D6_t<=0;D5_t<=0;D4_t<=0;D3_t<=0;D2_t<=0;D1_t<=0;D0_t<=0;S2_t<=0;S1_t<=0;S0_t<=0;
	#10 D7_t<=1;D6_t<=0;D5_t<=0;D4_t<=0;D3_t<=0;D2_t<=0;D1_t<=0;D0_t<=0;S2_t<=1;S1_t<=1;S0_t<=1;
	#10 D7_t<=0;D6_t<=0;D5_t<=0;D4_t<=1;D3_t<=0;D2_t<=0;D1_t<=0;D0_t<=0;S2_t<=0;S1_t<=1;S0_t<=0;
	#10 D7_t<=0;D6_t<=0;D5_t<=0;D4_t<=0;D3_t<=0;D2_t<=0;D1_t<=0;D0_t<=1;S2_t<=1;S1_t<=0;S0_t<=0;
	
	end
endmodule
