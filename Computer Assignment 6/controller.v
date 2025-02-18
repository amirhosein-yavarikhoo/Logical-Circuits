`timescale 1ns/1ns
module controller (input clock,output reg [3:0] count,output reg xsel,tempsel,
			x2sel,romsel,x2init0,x2init1,x2ln,templn,tempinit0,tempinit1,reset,addinit0,addinit1,addln,busy,ready,output firstterm);
	assign firstterm=1'b1;
	reg [2:0] pstate,nstate;
	parameter [2:0] state0=3'd0,stateA=3'd1,stateB=3'd2,stateC=3'd3,stateD=3'd4,stateE=3'd5,stateF=3'd6,stateG=3'd7;
	always @(pstate) begin
		case (pstate)
			state0:begin
				reset=1;
				count=4'd0;
				ready=1;
				count=0;x2init0=0;x2init1=0;addinit0=0;addinit1=0;busy=0;
				nstate<=stateA;
				end
			stateA:begin
				xsel=1;x2sel=0;romsel=0;templn=0;busy=1;tempsel=0;tempinit0=0;tempinit1=1;
				x2ln=1;ready=0;
				nstate<=stateB;
				end
			stateB:begin
				tempinit1=0;xsel=0;tempsel=1;x2sel=1;romsel=0;x2ln=0;addln=0;templn=1;
				nstate<=stateC;
				end
			stateC: begin 
				tempsel=1;x2sel=0;romsel=1;
				nstate<=stateD;
				end
			stateD:begin
				templn=0;count=count+1;
				nstate<=stateE;
				end
			stateE: begin
		 		tempsel=1;x2sel=0;romsel=1;templn=1;
				nstate<=stateF;
				end
			stateF: begin
				addln=1;templn=0;
				nstate<=stateG;
			 	end
			stateG:begin
				addln=0;
				if (count==15) nstate<=state0;
				else begin nstate<=stateB;count=count+1;end
				end
		endcase
	end
	always@(posedge clock) begin
		pstate<=nstate;
		end
endmodule
			