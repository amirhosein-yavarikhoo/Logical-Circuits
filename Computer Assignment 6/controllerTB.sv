`timescale 1ns/1ns
module controllerTB();
	reg clock;
	reg xsel,tempsel,x2sel,romsel,x2init0,x2init1,x2ln,templn,tempinit0,tempinit1,reset,addinit0,addinit1,addln,busy,ready;
	reg [16:0] result;
	reg [3:0] count;
	reg [15:0] inX;
	controller UUT(result,clock,count,xsel,tempsel,x2sel,romsel,x2init0,x2init1,x2ln,templn,tempinit0,tempinit1,reset,addinit0,addinit1,addln,busy,ready);
	initial begin
	clock=1'b0;
	repeat (100) #40 clock=~clock;
	end
endmodule
