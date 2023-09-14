`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:47:59 09/12/2023 
// Design Name: 
// Module Name:    Boolean_tb 
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
module Boolean_tb();
	reg A_t,B_t,C_t;
	wire F_t;
	
	Boolean Boolean_1(A_t,B_t,C_t,F_t);
	
	initial begin
	//case 0
	A_t<=0;B_t<=0;C_t<=0;
	#1$display("F_t=%b",F_t);
	
	//case 1
	A_t<=0;B_t<=0;C_t<=1;
	#1$display("F_t=%b",F_t);
	
	//case 2
	A_t<=0;B_t<=1;C_t<=0;
	#1$display("F_t=%b",F_t);
	
	//case 3
	A_t<=0;B_t<=1;C_t<=1;
	#1$display("F_t=%b",F_t);
	
	//case 4
	A_t<=1;B_t<=0;C_t<=0;
	#1$display("F_t=%b",F_t);
	
	//case 5
	A_t<=1;B_t<=0;C_t<=1;
	#1$display("F_t=%b",F_t);
	
	//case 6
	A_t<=1;B_t<=1;C_t<=0;
	#1$display("F_t=%b",F_t);
	
	//case 7
	A_t<=1;B_t<=1;C_t<=1;
	#1$display("F_t=%b",F_t);
	end
endmodule

