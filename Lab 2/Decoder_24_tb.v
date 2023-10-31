`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:05:59 09/12/2023 
// Design Name: 
// Module Name:    Decoder_24_tb 
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
module Decoder_24_tb();

	reg I1_t,I0_t;
	wire D3,D2,D1,D0;
	
	Decoder_24 Decoder_24_1(I1_t,I0_t,D3,D2,D1,D0);
	
	initial begin
	//case 0
	I1_t<=0;I0_t<=0;
	#1$display("D0=%b",D0);
	
	//case 1
	I1_t<=0;I0_t<=1;
	#1$display("D1=%b",D1);
	
	//case 2
	I1_t<=1;I0_t<=0;
	#1$display("D2=%b",D2);
	
	//case 3
	I1_t<=1;I0_t<=1;
	#1$display("D3=%b",D3);
	
	end
endmodule
