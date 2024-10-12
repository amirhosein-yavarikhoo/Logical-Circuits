`timescale 1ns/1ns
module hex_bit_comp_Signed_TB();
	logic [15:0] aa=16'b00000000000000000,bb=16'b00000000000000000;
	logic ll=0,ee=1,gg=0;
	wire ltout,eqout,gtout;
	hex_comparator_signed CUT1(aa,bb,ee,ll,gg,gtout,ltout,eqout);
	initial begin
	#2000;
	#2000 aa[15]=1'b1;
	#2000 bb[15]=1'b1;
	#2000 bb[15]=1'b0;
	end
endmodule
