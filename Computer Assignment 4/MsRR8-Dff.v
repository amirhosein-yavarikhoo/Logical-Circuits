`timescale 1ns/1ns
module mux (input a,b,c,d,input[1:0] sel,output w);
	assign w=sel[1]?(sel[0]?d:c):(sel[0]?b:a);
endmodule
module msrr8dff(input [1:0]sel,input clk,rst,Sin,output[7:0]Po);
	wire [7:0] Pin;
	genvar i,k;
		generate
			for(i=0;i<6;i=i+1) begin:mm
				mux mr(.a(Po[i]),.b(Po[i+1]),.c(Po[i+2]),.d(Po[i+1]),.w(Pin[i]),.sel(sel));
			end
			for (k=0;k<6;k=k+1) begin:ff
				Dff dr(.D(Pin[k]),.clk(clk),.rst(rst),.Qout(Po[k]));
			end
		endgenerate
	mux mux7(.a(Po[7]),.b(Po[0]),.c(Po[1]),.d(Sin),.w(Pin[7]),.sel(sel));
	mux mux6(.a(Po[6]),.b(Po[7]),.c(Po[0]),.d(Po[7]),.w(Pin[6]),.sel(sel));
	Dff m7(.D(Pin[7]),.clk(clk),.rst(rst),.Qout(Po[7]));
	Dff m6(.D(Pin[6]),.clk(clk),.rst(rst),.Qout(Po[6]));
endmodule
