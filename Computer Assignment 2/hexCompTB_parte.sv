`timescale 1ns/1ns
module hex_bit_compTB_parte();
	logic [15:0] aa=16'd400,bb=16'd400;
	logic ll=0,ee=1,gg=0;
	wire ltout,eqout,gtout,ltout1,gtout1,eqout1;
	hex_comparator CUT1(aa,bb,ee,ll,gg,gtout,ltout,eqout);
	hex_comparator_assign CUT2(aa,bb,ee,ll,gg,gtout1,ltout1,eqout1);
	initial begin
	#2000;
	#2000 aa=16'd512;
	#2000 aa=16'd200;
	#2000 aa=16'd400;
	#2000 bb=16'd512;
	#2000 bb=16'd200;
	#2000 bb=16'd400;
	end
endmodule
