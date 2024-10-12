`timescale 1ns/1ns 
module Q6TB();
	reg dd,clkq6,rst;
	reg [7:0] ww;
	reg[1:0] selin;
	msrr8latch UUT(.sel(selin),.Sin(dd),.clk(clkq6),.rst(rst),.Po(ww));
	initial begin
	clkq6=1;
	repeat (100) #101 clkq6=~clkq6;
	end
	initial begin
	$monitor("monitor clk:%b rst:%b d:%b Po: %b",clkq6,rst,dd,ww);
	rst=1;
	#1000 rst=0;
	selin=3;
	#203 dd=1;
	#203 dd=0;
	#203 dd=1;
	#203 dd=1;
	#203 dd=0;
	#203 dd=1;
	#203 dd=0;
	#203 dd=0;
	end
endmodule
