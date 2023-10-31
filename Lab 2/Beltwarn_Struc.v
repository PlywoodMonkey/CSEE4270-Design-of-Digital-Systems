`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:33:02 09/12/2023 
// Design Name: 
// Module Name:    Beltwarn_Struc 
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
module Beltwarn_Struc();
	input K,P,S;
	output W;
	
	wire WS;
	
	not Not_1(NS, S);
	and And_1(W,K,P,NS);

endmodule
