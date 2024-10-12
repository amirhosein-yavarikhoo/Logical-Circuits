`timescale 1ns/1ns
module Dffalways(input D,rst,clk,output reg Q);
	always @(posedge clk) begin
		if(rst) #64 Q<=1'b0;
		else #64 Q<=D;
	end
endmodule
