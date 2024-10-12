`timescale 1ns/1ns
module hex_comparator_signed(input [15:0] a,b,input e,l,g,output GT,LT,EQ);
	wire [15:0] aa,bb;
	assign aa[14:0]=a[14:0];
	assign bb[14:0]=b[14:0];
	assign #(7,5) aa[15]=~a[15];
	assign #(7,5) bb[15]=~b[15];
	hex_comparator_assign RTL1(aa,bb,e,l,g,GT,LT,EQ);
endmodule
