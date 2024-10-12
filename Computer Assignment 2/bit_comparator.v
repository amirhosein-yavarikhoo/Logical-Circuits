`timescale 1ns/1ns
module bit_comparator(input a,b,l,e,g,output LT,GT,EQ);
	wire [26:0] j;
	Myinverter G1(.a(a),.w(j[1]));
	Myinverter G2(.a(b),.w(j[2]));
	Myinverter G3(.a(l),.w(j[3]));
	Myinverter G4(.a(g),.w(j[4]));
	Myinverter G5(.a(e),.w(j[5]));
	MyNor G6(.a(a),.b(j[2]),.w(j[6])),G7(.a(j[2]),.b(j[3]),.w(j[7])),G8(.a(a),.b(j[3]),.w(j[8])),G9(.a(j[6]),.b(j[7]),.w(j[9])),G12(.a(j[10]),.b(j[8]),.w(j[12]));
	Myinverter G10(.a(j[9]),.w(j[10])),G13(.a(j[12]),.w(LT));
	MyNor G14(.a(j[1]),.b(b),.w(j[14])),G15(.a(j[1]),.b(j[4]),.w(j[15])),G16(.a(b),.b(j[4]),.w(j[16])),G17(.a(j[14]),.b(j[15]),.w(j[17])),G20(.a(j[18]),.b(j[16]),.w(j[20]));
	Myinverter G18(.a(j[17]),.w(j[18])),G21(.a(j[20]),.w(GT));
	MyNor G22(.a(a),.b(b),.w(j[22])),G23(.a(j[1]),.b(j[2]),.w(j[23])),G24(.a(j[22]),.b(j[23]),.w(j[24])),G26(.a(j[24]),.b(j[5]),.w(EQ));

endmodule