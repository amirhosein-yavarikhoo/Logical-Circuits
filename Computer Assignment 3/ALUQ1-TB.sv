`timescale 1ns/1ns
module ALUQ1TB();
	//wire ZERoutSynth,NEGoutSynth;
	wire ZERout,NEGout;
	wire [15:0] Wout;
	//wire [15:0] WoutSynth;
	logic [15:0] AA=16'd0,BB=16'd2235;
	logic carryinputC=1'b0;
	logic [2:0] opcode=3'd0;
	alualways UUT (AA,BB,carryinputC,opcode,Wout,ZERout,NEGout);
	//alualwaysSynth UUT2(AA,BB,carryinputC,opcode,WoutSynth,ZERoutSynth,NEGoutSynth);
	initial begin
	$monitor("monitor a:%d  b:%d carryinputC:%d opcode:%b Wout:%d", $signed(AA), $signed(BB),carryinputC,opcode,$signed(Wout));
	repeat(200) begin
		#100 AA=$random;
		#100 BB=$random;
		#100 carryinputC=~carryinputC;
	end
	#200 opcode=3'd1;
	repeat(50000) begin
		#100 AA=$random;
		#100 BB=$random;
	end
	#200 opcode=3'd2;
	repeat(50000) begin
		#100 AA=$random;
		#100 BB=$random;
	end
	#200 opcode=3'd3;
	repeat(100) begin
		#100 AA=$random;
		#100 BB=$random;
	end
	#200 opcode=3'd4;
	repeat(50000) begin
		#100 AA=$random;
		#100 BB=$random;
	end
	#200 opcode=3'd5;
	repeat(50000) begin
		#100 AA=$random;
		#100 BB=$random;
	end
	#200 opcode=3'd6;
	repeat(50000) begin
		#100 AA=$random;
		#100 BB=$random;
	end
	#200 opcode=3'd7;
	repeat(50000) begin
		#100 AA=$random;
		#100 BB=$random;
	end
	end
endmodule
	
