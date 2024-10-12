`timescale 1ns/1ns
module hex_comparator(input [15:0] a,b,input e,l,g,output GT,LT,EQ);
	wire [2:0] eqout,ltout,gtout;
	quad_comparator_assign RTL1(.a(a[3:0]),.b(b[3:0]),.l(l),.e(e),.g(g),.LT(ltout[0]),.GT(gtout[0]),.EQ(eqout[0]));
	quad_comparator_assign RTL2(.a(a[7:4]),.b(b[7:4]),.l(ltout[0]),.e(eqout[0]),.g(gtout[0]),.LT(ltout[1]),.GT(gtout[1]),.EQ(eqout[1]));
	quad_comparator_assign RTL3(.a(a[11:8]),.b(b[11:8]),.l(ltout[1]),.e(eqout[1]),.g(gtout[1]),.LT(ltout[2]),.GT(gtout[2]),.EQ(eqout[2]));
	quad_comparator_assign RTL4(.a(a[15:12]),.b(b[15:12]),.l(ltout[2]),.e(eqout[2]),.g(gtout[2]),.LT(LT),.GT(GT),.EQ(EQ));
endmodule
	
