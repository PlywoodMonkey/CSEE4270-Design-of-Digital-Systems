`timescale 1ns / 1ns

// Generate a 1 kHz clock from 50 MHz clock
module ClkDiv(Clk, Rst, ClkOut);

   input Clk, Rst;
	output reg ClkOut;

	parameter MaxCount = 25000; // Makes a max size number
	reg [24:0] Counter; // Makes a 24 bit counter
	reg ClkInt;
	
	//Cominational Logic
	always @(posedge Clk) begin
		if(Rst == 1) begin
			Counter <= 0; // Reset Counter

			// Inspired From Video
			ClkOut <= 0;  
			ClkInt <= 0; 
		end
		else begin
			// Checks If Count Has Maxed
			if (Counter == (MaxCount - 1)) begin 
				Counter <= 0; // Resets Count
				ClkOut <= ~ClkInt; // Inputs a Flipped signal
				ClkInt <= ~ClkInt; // Switches from L to H or H to L
			end
			else begin		
				Counter <= Counter + 1; // Increments
				ClkOut <= ClkInt; // Continues the signal output
				ClkInt <= ClkInt; // Prevents Clk from changing
			end
		end
	end 

endmodule