module ALUhardware(input signed [15:0] A,B,input C,input [2:0] opcode,output reg signed [15:0]outW,output reg zer,neg);
	reg signed [15:0] shifterout2A,shifteroutqB,adderout,AA,BB;
	reg [1:0] AAselect;
	reg BBselect,cc;
	assign BB=BBselect?(~shifteroutqB+16'd1):B;
	assign AA=AAselect[1]?(AAselect[0]?B:16'd1):(AAselect[0]?shifterout2A:A);
	assign adderout=AA+BB+cc;
	assign shifterout2A=A<<<1;
	assign shifteroutqB=B>>>2;
		always @(A,B,C,opcode,AAselect,BBselect,cc) begin
		cc = 1'b0;
		case(opcode)
			3'd0: begin
				AAselect=2'b00;
				BBselect=1'b0;
				outW=adderout;
				cc=C;
				end
			3'd1: begin
				AAselect=2'b01;
				BBselect=1'b0;
				outW=adderout;
				end
			3'd2: begin
				AAselect=2'b10;
				BBselect=1'b0;
				outW=adderout;
				end
			3'd3: begin
				AAselect=2'b11;
				BBselect=1'b1;
				outW=adderout;
				end
			3'd4: begin
				AAselect=2'b00;
				BBselect=2'b0;
				outW=A&B;
				end
			3'd5: begin
				AAselect=2'b00;
				BBselect=2'b0;
				outW=A|B;
				end
			3'd6: begin
				AAselect=2'b00;
				BBselect=2'b0;
				outW=~B;
				end
			3'd7: begin
				AAselect=2'b00;
				BBselect=2'b0;
				outW=16'd0;
				end
			default:outW=16'd0;
			endcase
		end
		assign neg=outW[15];
		assign zer=~|outW;
endmodule

