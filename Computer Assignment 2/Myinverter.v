`timescale 1ns/1ns
module Myinverter(input a,output w);
	supply1 Vdd;
	supply0 Gnd;
	pmos #(5,6,7) T11(w,Vdd,a);
	nmos #(3,4,5) T12(w,Gnd,a);
endmodule

