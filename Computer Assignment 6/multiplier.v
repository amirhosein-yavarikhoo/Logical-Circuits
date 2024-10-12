module multiplier (input [15:0] A,B,output [15:0] w);
	wire [31:0] temp;
	assign temp=A*B;
	assign w=temp[31:15];
endmodule
