`timescale 1ns/1ns
module quad_bit_compTB_worstdelay();
	logic [3:0] aa=4'b0000,bb=4'b0000;
	logic ll=0,ee=1,gg=0;
	wire ltout,eqout,gtout;
	quad_comparator CUT1(aa,bb,ee,ll,gg,gtout,ltout,eqout);
	initial begin
	#800;
	#800 aa=4'b0001;
	#800 aa=4'b0000;
	#800 bb=4'b0001;
	#800 bb=4'b0000;
	#800;
	end
endmodule
