`timescale 1ns/1ns
module calTB();
	reg clock;
	reg xsel,tempsel,x2sel,romsel,x2init0,x2init1,x2ln,templn,tempinit0,tempinit1,reset,addinit0,addinit1,addln,busy,ready,firstterm;
	reg [16:0] result;
	reg [3:0] count;
	reg [15:0] inX;
	controller UUT(clock,count,xsel,tempsel,x2sel,romsel,x2init0,x2init1,x2ln,templn,tempinit0,tempinit1,reset,addinit0,addinit1,addln,busy,ready,firstterm);
	//coshcal CUT(result,clock,reset,templn,tempinit0,tempinit1,xsel,tempsel,inX,x2sel,romsel,x2ln,x2init0,x2init1,count,addln,addinit0,addinit1,firstterm);
	initial begin
	clock=1'b0;
	inX=16'd16384;
	repeat (120) #40 clock=~clock;
	end
endmodule
