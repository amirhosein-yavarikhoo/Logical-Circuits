module mux2to1(input [15:0] A,B,input xsel,tempsel,output [15:0] out);
	assign out=xsel?A:tempsel?B:16'd0;
endmodule
