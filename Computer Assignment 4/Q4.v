`timescale 1ns/1ns
module memoryrst (input D,clk,rst,output Q);
	wire w0,w1,w2,w3;
	nand #8 G1(w0,D,clk,w3),G2(w1,w0,clk),G3(Q,w0,w2),G4(w2,w1,Q,w3);
	not #6 G5(w3,rst);
endmodule
