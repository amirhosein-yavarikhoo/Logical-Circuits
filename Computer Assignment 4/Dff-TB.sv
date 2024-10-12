`timescale 1ns/1ns 
module DffTB();
	reg dd,clkq7,rst,QQ;
	Dff UUT(.D(dd),.rst(rst),.clk(clkq7),.Qout(QQ));
	initial begin
	clkq7=1;
	repeat (100) #100 clkq7=~clkq7;
	end
	initial begin
	$monitor("monitor clk:%b rst:%b d:%b Q=%b",clkq7,rst,dd,QQ);
	rst=1;
	#1000 rst=0;
	repeat (200) #75 dd=$random;
	end
endmodule
