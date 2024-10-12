module mux3to1(input [15:0] A,B,C,input xsel,x2sel,romsel,output [15:0] out);
	assign out=xsel?A:x2sel?B:romsel?C:16'd0;
endmodule
