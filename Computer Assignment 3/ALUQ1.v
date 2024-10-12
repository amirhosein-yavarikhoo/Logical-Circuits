module alualways (input signed [15:0] A,B,input C,input [2:0]opcode,output reg signed [15:0]outW,output reg zer,neg);
	always @ (A ,B ,C ,opcode) begin
		case (opcode)
		3'd0: outW=A+B+C;
		3'd1: outW=B+A<<<2'b10;
		3'd2: outW=B+1;
		3'd3: outW=B*3/4;
		3'd4: outW=A&B;
		3'd5: outW=A|B;
		3'd6: outW=~B;
		3'd7: outW=16'd0;
		default:outW=16'd0;
		endcase
	end
	assign neg=outW[15];
	assign zer=~|outW;
endmodule
