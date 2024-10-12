`timescale 1ns/1ns
module hex_bit_compTB_worstdelay();
	logic [15:0] aa=16'd0,bb=16'd0;
	logic ll=0,ee=1,gg=0;
	wire ltout,eqout,gtout;
	hex_comparator CUT1(aa,bb,ee,ll,gg,gtout,ltout,eqout);
	initial begin
	#1000;
	#1000 aa[0]=1'b1;
	#1000 aa[0]=1'b0;
	#1000 bb[0]=1'b1;
	#1000 bb[0]=1'b0;
	#1000 ;
	end
endmodule
