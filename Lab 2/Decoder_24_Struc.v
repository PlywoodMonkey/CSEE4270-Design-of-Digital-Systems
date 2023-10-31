`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:18:19 09/12/2023 
// Design Name: 
// Module Name:    Decoder_24_Struc 
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
module Decoder_24_Struc(I1,I0,D3,D2,D1,D0);

	input I1,I0;
	output D3,D2,D1,D0;
	
	wire I1S, I0S;
	
	not Not_1(I1S, I1);
	not Not_2(I0S, I0);
	and And_1(D0,I1S,I0S);
	and And_2(D1,I1S,I0);
	and And_3(D2,I1,I0S);
	and And_4(D3,I1,I0);

endmodule
