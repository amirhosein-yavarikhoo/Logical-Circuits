`timescale 1ns/1ns
module MyNor(input a, input b, output w);
	supply1 Vdd;
	supply0 Gnd;
	wire x;
	pmos #(5,6,7)T7(x,Vdd,a);
	pmos #(5,6,7)T8(w,x,b);
	nmos #(3,4,5)T9(w,Gnd,a);
	nmos #(3,4,5)T10(w,Gnd,b);
endmodule

	
