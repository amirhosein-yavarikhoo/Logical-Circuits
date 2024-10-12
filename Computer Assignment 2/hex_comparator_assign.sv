`timescale 1ns/1ns
module hex_comparator_assign(input [15:0] a,b,input e,l,g,output GT,LT,EQ);
	assign #(800,720) LT=(a<b)|((a==b)&l);
	assign #(880,848) GT=(a>b)|((a==b)&g);
	assign #(672,480) EQ=(a==b)&(e==1'b1);
endmodule
	
