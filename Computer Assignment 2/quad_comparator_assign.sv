`timescale 1ns/1ns
module quad_comparator_assign(input [3:0] a,b,input e,l,g,output GT,LT,EQ);
	assign #(200,180) LT=(a<b)|((a==b)&l);
	assign #(220,212) GT=(a>b)|((a==b)&g);
	assign #(120,168) EQ=(a==b)&(e==1'b1);
endmodule

