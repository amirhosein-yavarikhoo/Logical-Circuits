`timescale 1ns/1ns 
module Dff (input D,clk,rst,output Qout);
	wire L0,L1,L2,L3;
	nand #8 G2(L2,D,L4);
	not #6 G3(L0,L2),G1(L3,clk),G4(L4,rst);
	memory1 m1(.D(L0),.clk(clk),.Q(L1));
	memory1 m2(.D(L1),.clk(L3),.Q(Qout));
endmodule
