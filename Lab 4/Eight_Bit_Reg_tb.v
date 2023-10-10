`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:05:45 09/26/2023 
// Design Name: 
// Module Name:    Eight_Bit_Reg_tb 
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
module Eight_Bit_Reg_tb();

	reg [7:0] I_s;
	reg Clk_s, Rst_s;
	wire [7:0] Q_s;
	Eight_Bit_Reg Eight_Bit_Reg_1(I_s, Q_s, Clk_s, Rst_s);
	
	// Clock Procedure
	always begin
	Clk_s <= 0;
	#10;
	Clk_s <= 1;
	#10;
	end // Note: Procedure repeats
	
	// Vector Procedure
	initial begin
	Rst_s <= 1;
	I_s <= 8'b00000000;
	@(posedge Clk_s);
	#5 Rst_s <= 0;
	I_s <= 8'b00000001;
	@(posedge Clk_s);
	#5 Rst_s <= 0;
	I_s <= 8'b00000010;
	@(posedge Clk_s);
	#5 Rst_s <= 0;
	I_s <= 8'b00000011;
	@(posedge Clk_s);
	#5 Rst_s <= 0;
	I_s <= 8'b00000100;
	@(posedge Clk_s);
	#5 Rst_s <= 0;
	I_s <= 8'b00000101;
	@(posedge Clk_s);
	#5 Rst_s <= 0;
	I_s <= 8'b10000001;
	@(posedge Clk_s);
	#5 Rst_s <= 0;
	I_s <= 8'b11111111;
end
endmodule
