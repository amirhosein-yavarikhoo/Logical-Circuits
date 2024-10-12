`timescale 1ns/1ns
module bitcompTB_partc();
	logic aa=0,bb=0;
	logic eqout,ltout,gtout;
	logic ll=0,gg=0,ee=1;
	bit_comparator CUT(.a(aa),.b(bb),.LT(ltout),.GT(gtout),.EQ(eqout),.l(ll),.g(gg),.e(ee));
	initial begin
	#200;
	#200 bb=1;
	#200 bb=0;ee=0;gg=1;
	#200 aa=1;
	#200 aa=0;ee=0;gg=0;ll=1;
	#200 bb=1;
	#200 aa=1;
	#200 bb=0;
	end
endmodule

