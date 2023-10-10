`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:38:23 09/19/2023 
// Design Name: 
// Module Name:    Seven_Seg_Display 
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
module Seven_Seg_Display(In0, In1, In2, In3, SegSel, A, B, C, D, E, F, G);

	input In0, In1, In2, In3;
	output SegSel, A, B, C, D, E, F, G;
	reg SegSel, A, B, C, D, E, F, G;
	
	always@(In0, In1, In2, In3) begin 
	
		SegSel = 1;
		
		if (In0 == 0 && In1 == 0 && In2 ==0 && In3 == 0) //0000 = 0
			begin
			A = 1; B = 1; C = 1; D = 1; E = 1; F = 1; G= 0;
			end
		else if (In0 == 0 && In1 == 0 && In2 ==0 && In3 == 1) //0001 = 1
			begin
			A = 0; B = 1; C = 1; D = 0; E = 0; F = 0; G= 0;
			end
		else if (In0 == 0 && In1 == 0 && In2 == 1 && In3 == 0) //0010 = 2
			begin
			A = 1; B = 1; C = 0; D = 1; E = 1; F = 0; G= 1;
			end
		else if (In0 == 0 && In1 == 0 && In2 ==1 && In3 == 1) //0011 = 3
			begin
			A = 1; B = 1; C = 1; D = 1; E = 0; F = 0; G= 1;
			end
		else if (In0 == 0 && In1 == 1 && In2 ==0 && In3 == 0) //0100 = 4
			begin
			A = 0; B = 1; C = 1; D = 0; E = 0; F = 1; G= 1;
			end
		else if (In0 == 0 && In1 == 1 && In2 ==0 && In3 == 1) //0101 = 5
			begin
			A = 1; B = 0; C = 1; D = 1; E = 0; F = 1; G= 1; 
			end
		else if (In0 == 0 && In1 == 1 && In2 ==1 && In3 == 0) //0110 = 6
			begin
			A = 1; B = 0; C = 1; D = 1; E = 1; F = 1; G= 1;
			end
		else if (In0 == 0 && In1 == 1 && In2 ==1 && In3 == 1) //0111 = 7
			begin
			A = 1; B = 1; C = 1; D = 0; E = 0; F = 0; G= 0;
			end
		else if (In0 == 1 && In1 == 0 && In2 ==0 && In3 == 0) //1000 = 8
			begin
			A = 1; B = 1; C = 1; D = 1; E = 1; F = 1; G= 1;
			end
		else if (In0 == 1 && In1 == 0 && In2 ==0 && In3 == 1) //1001 = 9
			begin
			A = 1; B = 1; C = 1; D = 1; E = 0; F = 1; G= 1;
			end
		else if (In0 == 1 && In1 == 0 && In2 ==1 && In3 == 0) //1010 = A
			begin
			A = 1; B = 1; C = 1; D = 0; E = 1; F = 1; G= 1;
			end
		else if (In0 == 1 && In1 == 0 && In2 ==1 && In3 == 1) //1011 = B
			begin
			A = 0; B = 0; C = 1; D = 1; E = 1; F = 1; G= 1;
			end
		else if (In0 == 1 && In1 == 1 && In2 ==0 && In3 == 0) //1100 = C
			begin
			A = 1; B = 0; C = 0; D = 1; E = 1; F = 1; G= 0;
			end
		else if (In0 == 1 && In1 == 1 && In2 ==0 && In3 == 1) //1101 = D
			begin
			A = 0; B = 1; C = 1; D = 1; E = 1; F = 0; G= 1;
			end
		else if (In0 == 1 && In1 == 1 && In2 ==1 && In3 == 0) //1110 = E
			begin
			A = 1; B = 0; C = 0; D = 1; E = 1; F = 1; G= 1;
			end
		else if (In0 == 1 && In1 == 1 && In2 ==1 && In3 == 1) //1111 = F
			begin
			A = 1; B = 0; C = 0; D = 0; E = 1; F = 1; G= 1;
			end
	end
			
endmodule
