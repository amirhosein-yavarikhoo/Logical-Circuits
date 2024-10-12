`timescale 1ns/1ns
module ALUHTB();
	wire ZERout,NEGout;
	wire [15:0] Wout;
	//wire ZERoutSynth,NEGoutSynth;
	//wire [15:0] WoutSynth;
	logic [15:0] AA=16'd0,BB=16'd2235;
	logic carryinputC=1'b1;
	logic [2:0] opcode=3'd0;
	ALUhardware  UUT (AA,BB,carryinputC,opcode,Wout,ZERout,NEGout);
	//ALUhardwareSynth UUT2(AA,BB,carryinputC,opcode,WoutSynth,ZERoutSynth,NEGoutSynth);
	initial begin
	$monitor("monitor a:%d  b:%d carryinputC:%d opcode:%b Wout:%d", $signed(AA), $signed(BB),carryinputC,opcode,$signed(Wout));
	repeat(50000) begin
		#100 AA=$random;
		#100 BB=$random;
		#100 carryinputC=~carryinputC;
	end
	opcode=3'd1;
	repeat(50000) begin
		AA=$random;
		BB=$random;
		#200;
	end
	opcode=3'd2;
	repeat(50000) begin
		AA=$random;
		BB=$random;
		#200;
	end
	opcode=3'd3;
	repeat(50000) begin
		AA=$random;
		BB=$random;
		#200;
	end
	opcode=3'd4;
	repeat(50000) begin
		AA=$random;
		BB=$random;
		#200;
	end
	opcode=3'd5;
	repeat(50000) begin
		AA=$random;
		BB=$random;
		#200;
	end
	opcode=3'd6;
	repeat(50000) begin
		AA=$random;
		BB=$random;
		#200;
	end
	opcode=3'd7;
	repeat(50000) begin
		AA=$random;
		BB=$random;
		#200;
	end
	end
endmodule
	
