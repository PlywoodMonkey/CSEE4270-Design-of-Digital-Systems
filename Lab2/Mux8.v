`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:50:17 09/12/2023 
// Design Name: 
// Module Name:    Mux8 
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
module Mux8(D7,D6,D5,D4,D3,D2,D1,D0,S2,S1,S0,Y);

	input D7,D6,D5,D4,D3,D2,D1,D0;
	input S2,S1,S0;
	output Y;
	reg Y;
	
	always @* begin
		if(S2==0 && S1==0 && S0==0)
			Y<=D0;
		else if(S2==0 && S1==0 && S0==1)
			Y<=D1;
		else if(S2==0 && S1==1 && S0==0)
			Y<=D2;
		else if(S2==0 && S1==1 && S0==1)
			Y<=D3;
		else if(S2==1 && S1==0 && S0==0)
			Y<=D4;
		else if(S2==1 && S1==0 && S0==1)
			Y<=D5;
		else if(S2==1 && S1==1 && S0==0)
			Y<=D6;
		else if(S2==1 && S1==1 && S0==1)
			Y<=D7;
		end

endmodule
