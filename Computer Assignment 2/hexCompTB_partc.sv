`timescale 1ns/1ns
module hex_bit_compTB_partC();
	logic [15:0] aa=16'd21,bb=16'd15;
	logic ll=0,ee=1,gg=0;
	wire ltout,eqout,gtout;
	hex_comparator CUT1(aa,bb,ee,ll,gg,gtout,ltout,eqout);
	initial begin
	#1000;
	#1000 aa=16'd12;
	#1000 bb=16'd12;
	#1000 aa=16'd200;
	#1000 bb=16'd200;
	#1000 bb=4'd300;
	end
endmodule
