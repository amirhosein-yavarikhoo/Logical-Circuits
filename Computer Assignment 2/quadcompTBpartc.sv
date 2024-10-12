`timescale 1ns/1ns
module quad_bit_compTB_partC();
	logic [3:0] aa=4'b1111,bb=4'b1101;
	logic ll=0,ee=1,gg=0;
	wire ltout,eqout,gtout;
	quad_comparator CUT1(aa,bb,ee,ll,gg,gtout,ltout,eqout);
	initial begin
	#500;
	#800 aa=4'b1101;
	#800 aa=4'b1001;
	#800 aa=4'b1101;
	#800 bb=4'b1000;
	#800 bb=4'b1111;
	end
endmodule
