`timescale 1ns/1ns 
module DffalwaysTB();
	reg dd,clkq9,rst,QQ;
	Dffalways UUT(.D(dd),.rst(rst),.clk(clkq9),.Q(QQ));
	initial begin
	clkq9=1;
	repeat (100) #100 clkq9=~clkq9;
	end
	initial begin
	$monitor("monitor clk:%b rst:%b d:%b Q=%b",clkq9,rst,dd,QQ);
	rst=1;
	#1000 rst=0;
	repeat (200) #75 dd=$random;
	end
endmodule
