`timescale 1ns/1ns
module quad_bit_compTB_parte();
	logic [3:0] aa=4'b1111,bb=4'b1101;
	logic ll=0,ee=1,gg=0;
	wire ltout,eqout,gtout,ltout1,gtout1,eqout1;
	quad_comparator CUT1(aa,bb,ee,ll,gg,gtout,ltout,eqout);
	quad_comparator_assign CUT2(aa,bb,ee,ll,gg,gtout1,ltout1,eqout1);
	initial begin
	#1000;
	#1000 aa=4'b1101;
	#1000 aa=4'b1001;
	#1000 aa=4'b1101;
	#1000 bb=4'b1000;
	#1000 bb=4'b1111;
	end
endmodule

