`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:51:48 09/19/2023 
// Design Name: 
// Module Name:    Seven_Seg_Display_tb 
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
module Seven_Seg_Display_tb();

	reg In0_t, In1_t, In2_t, In3_t;
	wire SegSel_t, A_t, B_t, C_t, D_t, E_t, F_t, G_t;
	
	Seven_Seg_Display Seven_Seg_Display_1(In0_t, In1_t, In2_t, In3_t, SegSel_t, A_t, B_t, C_t, D_t, E_t, F_t, G_t);
	
	initial begin
	// case 0
	In0_t <= 0; In1_t <= 0; In2_t <= 0; In3_t <= 0;
	#1$display("A_t=%b", A_t);
	
	// case 1
	In0_t <= 0; In1_t <= 0; In2_t <= 0; In3_t <= 1;
	#1$display("A_t=%b", A_t);
	
	// case 2
	In0_t <= 0; In1_t <= 0; In2_t <= 1; In3_t <= 0;
	#1$display("A_t=%b", A_t);
	
	// case 3
	In0_t <= 0; In1_t <= 0; In2_t <= 1; In3_t <= 1;
	#1$display("A_t=%b", A_t);
	
	// case 4
	In0_t <= 0; In1_t <= 1; In2_t <= 0; In3_t <= 0;
	#1$display("A_t=%b", A_t);
	
	// case 5
	In0_t <= 0; In1_t <= 1; In2_t <= 0; In3_t <= 1;
	#1$display("A_t=%b", A_t);
	
	// case 6
	In0_t <= 0; In1_t <= 1; In2_t <= 1; In3_t <= 0;
	#1$display("A_t=%b", A_t);
	
	// case 7
	In0_t <= 0; In1_t <= 1; In2_t <= 1; In3_t <= 1;
	#1$display("A_t=%b", A_t);
	
	// case 8
	In0_t <= 1; In1_t <= 0; In2_t <= 0; In3_t <= 0;
	#1$display("A_t=%b", A_t);
	
	// case 9
	In0_t <= 1; In1_t <= 0; In2_t <= 0; In3_t <= 1;
	#1$display("A_t=%b", A_t);
	
	// case A
	In0_t <= 1; In1_t <= 0; In2_t <= 1; In3_t <= 0;
	#1$display("A_t=%b", A_t);
	
	// case B
	In0_t <= 1; In1_t <= 0; In2_t <= 1; In3_t <= 1;
	#1$display("A_t=%b", A_t);
	
	// case C
	In0_t <= 1; In1_t <= 1; In2_t <= 0; In3_t <= 0;
	#1$display("A_t=%b", A_t);
	
	// case D
	In0_t <= 1; In1_t <= 1; In2_t <= 0; In3_t <= 1;
	#1$display("A_t=%b", A_t);
	
	// case E
	In0_t <= 1; In1_t <= 1; In2_t <= 1; In3_t <= 0;
	#1$display("A_t=%b", A_t);
	
	// case F
	In0_t <= 1; In1_t <= 1; In2_t <= 1; In3_t <= 1;
	#1$display("A_t=%b", A_t);
	
	end

endmodule
