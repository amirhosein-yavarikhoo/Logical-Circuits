`timescale 1ns/1ns
module memory1 (input D,clk,output Q);
	wire w0,w1,w2;
	nand #8 G1(w0,D,clk),G2(w1,w0,clk),G3(Q,w0,w2),G4(w2,w1,Q);
endmodule
