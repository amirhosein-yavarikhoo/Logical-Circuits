`timescale 1ns/1ns
module quad_comparator(input [3:0] a,b,input e,l,g,output GT,LT,EQ);
	wire [2:0] eqout,ltout,gtout;
	bit_comparator_assign RTL1(.a(a[0]),.b(b[0]),.l(l),.e(e),.g(g),.LT(ltout[0]),.GT(gtout[0]),.EQ(eqout[0]));
	bit_comparator_assign RTL2(.a(a[1]),.b(b[1]),.l(ltout[0]),.e(eqout[0]),.g(gtout[0]),.LT(ltout[1]),.GT(gtout[1]),.EQ(eqout[1]));
	bit_comparator_assign RTL3(.a(a[2]),.b(b[2]),.l(ltout[1]),.e(eqout[1]),.g(gtout[1]),.LT(ltout[2]),.GT(gtout[2]),.EQ(eqout[2]));
	bit_comparator_assign RTL4(.a(a[3]),.b(b[3]),.l(ltout[2]),.e(eqout[2]),.g(gtout[2]),.LT(LT),.GT(GT),.EQ(EQ));
endmodule
	
