`timescale 1ns/1ns
module bit_comparator_assign(input a,b,l,e,g,output LT,GT,EQ);
	assign #(50,45) LT=(~a&b)|(b&l)|(~a&l);
	assign #(55,53) GT=(a&~b)|(a&g)|(~b&g);
	assign #(30,42) EQ=(e&a&b)|(e&~a&~b);
endmodule

