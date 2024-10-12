module register(input [15:0] in,input clock,reset,len,L0,L1,output reg [15:0] out);
	always @(posedge clock,posedge reset) begin
		if (reset) out<=16'd0;
		else if (L0) out<=16'd0;
		else if (L1) out<=16'd65535;
		else if (len) out<=in;
	end
endmodule
