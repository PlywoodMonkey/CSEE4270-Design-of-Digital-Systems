`timescale 1ns / 1ns

module ReactionTimer(Clk, Rst, Start, LED, ReactionTime, Cheat, Slow, Wait, RandomValue, LCDUpdate, LCDAck);

   input Start, LCDAck, Clk, Rst;
	input [12:0] RandomValue;
   output reg [9:0] ReactionTime;
	output reg [7:0] LED;
   output reg Cheat, Slow, Wait;
	output reg LCDUpdate;
	
	parameter S_Init		  = 0,
				 S_WaitMsg    = 1,
				 S_RandomWait = 2,
				 S_Measure    = 3,
				 S_Cheat      = 4,
				 S_Slow		  = 5,
				 S_Display    = 6,
				 S_EndWait    = 7;
				 
	reg [3:0] State;
	reg [9:0] MeasuredTime;
	reg [12:0] WaitTime;
	reg [12:0] WaitCnt;
	
	always @(posedge Clk) begin
		if	(Rst == 1) begin
		State <= S_Init;
		LED <= 0;
		Cheat <= 0;
		Slow <= 0;
		Wait <= 0;
		ReactionTime <= 0;
		LCDUpdate <= 0;
		WaitTime <= 0;
		WaitCnt <= 0;
		MeasuredTime <= 0;
		end
		else begin
			//Default Values
			LED <= 0;
			Cheat <= 0;
			Slow <= 0;
			Wait <= 0;
			ReactionTime <= 0;
			LCDUpdate <= 0;
		
			case (State)
				S_Init: begin
					MeasuredTime <= 0;
					if(Start == 1) begin
						State <= S_WaitMsg;
					end
					else begin
						State <= S_Init;
					end
				end
				
				S_WaitMsg: begin
					Wait <= 1;
					LCDUpdate <= 1;
					if(LCDAck == 1) begin
						WaitTime <= RandomValue;
						WaitCnt <= 0;
						State <= S_RandomWait;
					end
					else begin
						State <= S_WaitMsg;
					end
				end
				
				S_RandomWait: begin
					if(Start == 1 && WaitCnt > 500) begin
						State <= S_Cheat;
					end
					else if (WaitCnt == WaitTime) begin
						LED <= 8'hFF;
						State <= S_Measure;
					end
					else begin
						WaitCnt <= WaitCnt + 1;
						State <= S_RandomWait;
					end
				end
				
				S_Measure: begin
					LED <= 8'hFF;
					if(Start == 1) begin
						State <= S_Display;
					end
				end
				
				S_EndWait: begin
					if(Start == 1) begin
						State <= S_EndWait;
					end
					else if(WaitCnt == 1000) begin
						State <= S_Init;
					end
					else begin
						WaitCnt <= WaitCnt + 1;
						State <= S_EndWait;
					end
				end
				
				default: begin
					State <= S_Init;
					WaitTime <= 0;
					MeasuredTime <= 0;
				end
			endcase
		end
	end
endmodule
