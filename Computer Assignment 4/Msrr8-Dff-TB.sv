`timescale 1ns/1ns 
module Q8TB();
	reg dd,clkq8,rst;
	reg [7:0] ww;
	reg[1:0] selin;
	msrr8dff UUT(.sel(selin),.Sin(dd),.clk(clkq8),.rst(rst),.Po(ww));
	initial begin
	clkq8=1;
	repeat (500) #200 clkq8=~clkq8;
	end
	initial begin
	repeat (50) #1000 rst=$random;
	end
	initial begin
	repeat (500) #182 selin=$random;
	end
	initial begin
	$monitor("monitor clk:%b rst:%b d:%b Po: %b",clkq8,rst,dd,ww);
	repeat (800) #132 dd=$random;
	end
endmodule
