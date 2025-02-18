`timescale 1ns/1ns
module mux (input a,b,c,d,input[1:0] sel,output w);
	assign w=sel[1]?(sel[0]?d:c):(sel[0]?b:a);
endmodule
module msrr8latch(input [1:0]sel,input clk,rst,Sin,output[7:0]Po);
	wire [7:0] Pin;
	mux mux7(.a(Po[7]),.b(Po[0]),.c(Po[1]),.d(Sin),.w(Pin[7]),.sel(sel));
	mux mux6(.a(Po[6]),.b(Po[7]),.c(Po[0]),.d(Po[7]),.w(Pin[6]),.sel(sel));
	mux mux5(.a(Po[5]),.b(Po[6]),.c(Po[7]),.d(Po[6]),.w(Pin[5]),.sel(sel));
	mux mux4(.a(Po[4]),.b(Po[5]),.c(Po[6]),.d(Po[5]),.w(Pin[4]),.sel(sel));
	mux mux3(.a(Po[3]),.b(Po[4]),.c(Po[5]),.d(Po[4]),.w(Pin[3]),.sel(sel));
	mux mux2(.a(Po[2]),.b(Po[3]),.c(Po[4]),.d(Po[3]),.w(Pin[2]),.sel(sel));
	mux mux1(.a(Po[1]),.b(Po[2]),.c(Po[3]),.d(Po[2]),.w(Pin[1]),.sel(sel));
	mux mux0(.a(Po[0]),.b(Po[1]),.c(Po[2]),.d(Po[1]),.w(Pin[0]),.sel(sel));
	memoryrst m7(.D(Pin[7]),.clk(clk),.rst(rst),.Q(Po[7]));
	memoryrst m6(.D(Pin[6]),.clk(clk),.rst(rst),.Q(Po[6]));
	memoryrst m5(.D(Pin[5]),.clk(clk),.rst(rst),.Q(Po[5]));
	memoryrst m4(.D(Pin[4]),.clk(clk),.rst(rst),.Q(Po[4]));
	memoryrst m3(.D(Pin[3]),.clk(clk),.rst(rst),.Q(Po[3]));
	memoryrst m2(.D(Pin[2]),.clk(clk),.rst(rst),.Q(Po[2]));
	memoryrst m1(.D(Pin[1]),.clk(clk),.rst(rst),.Q(Po[1]));
	memoryrst m0(.D(Pin[0]),.clk(clk),.rst(rst),.Q(Po[0]));
endmodule
