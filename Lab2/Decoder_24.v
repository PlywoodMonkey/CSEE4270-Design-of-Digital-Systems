`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:58:06 09/12/2023 
// Design Name: 
// Module Name:    Decoder_24 
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
module Decoder_24(I1,I0,D3,D2,D1,D0);

	input I1,I0;
	output D3,D2,D1,D0;
	reg D3,D2,D1,D0;
	
	always @(I1,I0) begin
		if(I1==0 && I0==0)
		begin
		D3<=0;D2<=0;D1<=0;D0<=1;
		end
		
		else if(I1==0 && I0==1)
		begin
		D3<=0;D2<=0;D1<=1;D0<=0;
		end
		
		else if(I1==1 && I0==0)
		begin
		D3<=0;D2<=1;D1<=0;D0<=0;
		end
		
		else if(I1==1 && I0==1)
		begin
		D3<=1;D2<=0;D1<=0;D0<=0;
		end
	end
	
endmodule
