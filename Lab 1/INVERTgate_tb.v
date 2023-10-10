`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:24:46 08/29/2023 
// Design Name: 
// Module Name:    INVERTgate_tb 
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
module INVERTgate_tb();

	reg A_t, B_t;
	wire F_t;
	
	INVERTgate INVERTgate_1(A_t, F_t);
	
	initial
	begin
	
	//case 0
	A_t<=0;
	#1 $display("F_t=%b", F_t);
	
	//case 1
	A_t<=1;
	#1 $display("F_t=%b", F_t);
	
	end

endmodule
