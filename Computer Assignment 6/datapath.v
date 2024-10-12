// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

// DATE "06/21/2022 13:52:56"

// 
// Device: Altera EP4CE6E22C6 Package TQFP144
// 

// 
// This Verilog file should be used for ModelSim-Altera (Verilog) only
// 

`timescale 1 ps/ 1 ps

module coshcal (
	result,
	clock,
	reset,
	templn,
	tempinit0,
	tempinit1,
	xsel,
	tempsel,
	inX,
	x2sel,
	romsel,
	x2ln,
	x2init0,
	x2init1,
	count,
	addln,
	addinit0,
	addinit1,
	firstterm);
output 	[16:0] result;
input 	clock;
input 	reset;
input 	templn;
input 	tempinit0;
input 	tempinit1;
input 	xsel;
input 	tempsel;
input 	[15:0] inX;
input 	x2sel;
input 	romsel;
input 	x2ln;
input 	x2init0;
input 	x2init1;
input 	[3:0] count;
input 	addln;
input 	addinit0;
input 	addinit1;
input 	firstterm;

// Design Ports Information
// result[16]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
// result[15]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
// result[14]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
// result[13]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
// result[12]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
// result[11]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
// result[10]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
// result[9]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
// result[8]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
// result[7]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
// result[6]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
// result[5]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
// result[4]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
// result[3]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
// result[2]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
// result[1]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
// result[0]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
// firstterm	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
// addinit1	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
// addinit0	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
// clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
// reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
// addln	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
// tempinit1	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
// tempinit0	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
// templn	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
// inX[0]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
// tempsel	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
// xsel	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
// inX[1]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
// inX[2]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
// inX[3]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// inX[4]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
// inX[5]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
// inX[6]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
// inX[7]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
// inX[8]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
// inX[9]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
// inX[10]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
// inX[11]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
// inX[12]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
// inX[13]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
// inX[14]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
// inX[15]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
// x2sel	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
// romsel	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
// x2init1	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
// x2init0	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
// x2ln	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
// count[0]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
// count[1]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
// count[2]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
// count[3]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default


wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
wire \multiplier|Mult0|auto_generated|mac_out2~dataout ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT1 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT2 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT3 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT4 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT5 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT6 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT7 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT8 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT9 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT10 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT11 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT12 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT13 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT14 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT31 ;
wire \multiplier|Mult0|auto_generated|mac_out2~0 ;
wire \multiplier|Mult0|auto_generated|mac_out2~1 ;
wire \multiplier|Mult0|auto_generated|mac_out2~2 ;
wire \multiplier|Mult0|auto_generated|mac_out2~3 ;
wire \result[16]~output_o ;
wire \result[15]~output_o ;
wire \result[14]~output_o ;
wire \result[13]~output_o ;
wire \result[12]~output_o ;
wire \result[11]~output_o ;
wire \result[10]~output_o ;
wire \result[9]~output_o ;
wire \result[8]~output_o ;
wire \result[7]~output_o ;
wire \result[6]~output_o ;
wire \result[5]~output_o ;
wire \result[4]~output_o ;
wire \result[3]~output_o ;
wire \result[2]~output_o ;
wire \result[1]~output_o ;
wire \result[0]~output_o ;
wire \firstterm~input_o ;
wire \clock~input_o ;
wire \clock~inputclkctrl_outclk ;
wire \addinit0~input_o ;
wire \addinit1~input_o ;
wire \inst3|out~0_combout ;
wire \reset~input_o ;
wire \reset~inputclkctrl_outclk ;
wire \addln~input_o ;
wire \inst3|out[15]~1_combout ;
wire \tempinit1~input_o ;
wire \tempinit0~input_o ;
wire \xsel~input_o ;
wire \inX[0]~input_o ;
wire \tempsel~input_o ;
wire \inX[1]~input_o ;
wire \inX[2]~input_o ;
wire \inX[3]~input_o ;
wire \inX[4]~input_o ;
wire \inX[5]~input_o ;
wire \inX[6]~input_o ;
wire \inX[7]~input_o ;
wire \inX[8]~input_o ;
wire \inX[9]~input_o ;
wire \inX[10]~input_o ;
wire \inX[11]~input_o ;
wire \inX[12]~input_o ;
wire \inX[13]~input_o ;
wire \inX[14]~input_o ;
wire \inX[15]~input_o ;
wire \muxA|out[15]~15_combout ;
wire \romsel~input_o ;
wire \x2sel~input_o ;
wire \muxB|out[0]~1_combout ;
wire \x2init0~input_o ;
wire \x2init1~input_o ;
wire \x2reg|out~0_combout ;
wire \x2ln~input_o ;
wire \x2reg|out[7]~1_combout ;
wire \muxB|out[0]~0_combout ;
wire \count[0]~input_o ;
wire \count[1]~input_o ;
wire \count[2]~input_o ;
wire \count[3]~input_o ;
wire \muxB|out[0]~2_combout ;
wire \x2reg|out~2_combout ;
wire \muxB|out[1]~3_combout ;
wire \muxB|out[1]~4_combout ;
wire \x2reg|out~3_combout ;
wire \muxB|out[2]~5_combout ;
wire \muxB|out[2]~6_combout ;
wire \x2reg|out~4_combout ;
wire \muxB|out[3]~7_combout ;
wire \muxB|out[3]~8_combout ;
wire \x2reg|out~5_combout ;
wire \muxB|out[4]~9_combout ;
wire \muxB|out[4]~10_combout ;
wire \x2reg|out~6_combout ;
wire \muxB|out[5]~11_combout ;
wire \muxB|out[5]~12_combout ;
wire \x2reg|out~7_combout ;
wire \muxB|out[6]~13_combout ;
wire \muxB|out[6]~14_combout ;
wire \x2reg|out~8_combout ;
wire \muxB|out[7]~15_combout ;
wire \muxB|out[7]~16_combout ;
wire \x2reg|out~9_combout ;
wire \muxB|out[8]~17_combout ;
wire \muxB|out[8]~18_combout ;
wire \x2reg|out~10_combout ;
wire \muxB|out[9]~19_combout ;
wire \muxB|out[9]~20_combout ;
wire \x2reg|out~11_combout ;
wire \muxB|out[10]~21_combout ;
wire \muxB|out[10]~22_combout ;
wire \x2reg|out~12_combout ;
wire \muxB|out[11]~23_combout ;
wire \muxB|out[11]~24_combout ;
wire \x2reg|out~13_combout ;
wire \muxB|out[12]~25_combout ;
wire \muxB|out[12]~26_combout ;
wire \x2reg|out~14_combout ;
wire \muxB|out[13]~27_combout ;
wire \muxB|out[13]~28_combout ;
wire \x2reg|out~15_combout ;
wire \muxB|out[14]~29_combout ;
wire \muxB|out[14]~30_combout ;
wire \x2reg|out~16_combout ;
wire \muxB|out[15]~31_combout ;
wire \muxB|out[15]~32_combout ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT15 ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT16 ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT17 ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT18 ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT19 ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT20 ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT21 ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT22 ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT23 ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT24 ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT25 ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT26 ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT27 ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT28 ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT29 ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT30 ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT31 ;
wire \multiplier|Mult0|auto_generated|mac_mult1~0 ;
wire \multiplier|Mult0|auto_generated|mac_mult1~1 ;
wire \multiplier|Mult0|auto_generated|mac_mult1~2 ;
wire \multiplier|Mult0|auto_generated|mac_mult1~3 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT29 ;
wire \tempreg|out~2_combout ;
wire \templn~input_o ;
wire \tempreg|out[11]~1_combout ;
wire \muxA|out[14]~14_combout ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT14 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT28 ;
wire \tempreg|out~3_combout ;
wire \muxA|out[13]~13_combout ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT13 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT27 ;
wire \tempreg|out~4_combout ;
wire \muxA|out[12]~12_combout ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT12 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT26 ;
wire \tempreg|out~5_combout ;
wire \muxA|out[11]~11_combout ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT11 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT25 ;
wire \tempreg|out~6_combout ;
wire \muxA|out[10]~10_combout ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT10 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT24 ;
wire \tempreg|out~7_combout ;
wire \muxA|out[9]~9_combout ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT9 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT23 ;
wire \tempreg|out~8_combout ;
wire \muxA|out[8]~8_combout ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT8 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT22 ;
wire \tempreg|out~9_combout ;
wire \muxA|out[7]~7_combout ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT7 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT21 ;
wire \tempreg|out~10_combout ;
wire \muxA|out[6]~6_combout ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT6 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT20 ;
wire \tempreg|out~11_combout ;
wire \muxA|out[5]~5_combout ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT5 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT19 ;
wire \tempreg|out~12_combout ;
wire \muxA|out[4]~4_combout ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT4 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT18 ;
wire \tempreg|out~13_combout ;
wire \muxA|out[3]~3_combout ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT3 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT17 ;
wire \tempreg|out~14_combout ;
wire \muxA|out[2]~2_combout ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT2 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT16 ;
wire \tempreg|out~15_combout ;
wire \muxA|out[1]~1_combout ;
wire \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT1 ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT15 ;
wire \tempreg|out~16_combout ;
wire \muxA|out[0]~0_combout ;
wire \multiplier|Mult0|auto_generated|mac_mult1~dataout ;
wire \multiplier|Mult0|auto_generated|mac_out2~DATAOUT30 ;
wire \tempreg|out~0_combout ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout ;
wire \inst3|out~16_combout ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[0]~1 ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout ;
wire \inst3|out~15_combout ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[1]~3 ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout ;
wire \inst3|out~14_combout ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[2]~5 ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout ;
wire \inst3|out~13_combout ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[3]~7 ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout ;
wire \inst3|out~12_combout ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[4]~9 ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout ;
wire \inst3|out~11_combout ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[5]~11 ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout ;
wire \inst3|out~10_combout ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[6]~13 ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout ;
wire \inst3|out~9_combout ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[7]~15 ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout ;
wire \inst3|out~8_combout ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[8]~17 ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout ;
wire \inst3|out~7_combout ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[9]~19 ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout ;
wire \inst3|out~6_combout ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[10]~21 ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout ;
wire \inst3|out~5_combout ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[11]~23 ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout ;
wire \inst3|out~4_combout ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[12]~25 ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout ;
wire \inst3|out~3_combout ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[13]~27 ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[14]~28_combout ;
wire \inst3|out~2_combout ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[14]~29 ;
wire \inst|LPM_ADD_SUB_component|auto_generated|result[15]~30_combout ;
wire [15:0] \ROM|altsyncram_component|auto_generated|q_a ;
wire [15:0] \inst3|out ;
wire [15:0] \tempreg|out ;
wire [15:0] \x2reg|out ;

wire [35:0] \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus ;
wire [35:0] \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus ;
wire [17:0] \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus ;

assign \multiplier|Mult0|auto_generated|mac_out2~0  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [0];
assign \multiplier|Mult0|auto_generated|mac_out2~1  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [1];
assign \multiplier|Mult0|auto_generated|mac_out2~2  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [2];
assign \multiplier|Mult0|auto_generated|mac_out2~3  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [3];
assign \multiplier|Mult0|auto_generated|mac_out2~dataout  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [4];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT1  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [5];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT2  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [6];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT3  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [7];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT4  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [8];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT5  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [9];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT6  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [10];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT7  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [11];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT8  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [12];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT9  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [13];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT10  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [14];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT11  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [15];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT12  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [16];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT13  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [17];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT14  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [18];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT15  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [19];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT16  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [20];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT17  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [21];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT18  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [22];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT19  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [23];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT20  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [24];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT21  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [25];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT22  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [26];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT23  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [27];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT24  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [28];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT25  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [29];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT26  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [30];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT27  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [31];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT28  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [32];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT29  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [33];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT30  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [34];
assign \multiplier|Mult0|auto_generated|mac_out2~DATAOUT31  = \multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus [35];

assign \multiplier|Mult0|auto_generated|mac_mult1~0  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [0];
assign \multiplier|Mult0|auto_generated|mac_mult1~1  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [1];
assign \multiplier|Mult0|auto_generated|mac_mult1~2  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [2];
assign \multiplier|Mult0|auto_generated|mac_mult1~3  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [3];
assign \multiplier|Mult0|auto_generated|mac_mult1~dataout  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [4];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT1  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [5];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT2  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [6];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT3  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [7];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT4  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [8];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT5  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [9];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT6  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [10];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT7  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [11];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT8  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [12];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT9  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [13];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT10  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [14];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT11  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [15];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT12  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [16];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT13  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [17];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT14  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [18];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT15  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [19];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT16  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [20];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT17  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [21];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT18  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [22];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT19  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [23];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT20  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [24];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT21  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [25];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT22  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [26];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT23  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [27];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT24  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [28];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT25  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [29];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT26  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [30];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT27  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [31];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT28  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [32];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT29  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [33];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT30  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [34];
assign \multiplier|Mult0|auto_generated|mac_mult1~DATAOUT31  = \multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus [35];

assign \ROM|altsyncram_component|auto_generated|q_a [0] = \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus [0];
assign \ROM|altsyncram_component|auto_generated|q_a [1] = \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus [1];
assign \ROM|altsyncram_component|auto_generated|q_a [2] = \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus [2];
assign \ROM|altsyncram_component|auto_generated|q_a [3] = \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus [3];
assign \ROM|altsyncram_component|auto_generated|q_a [4] = \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus [4];
assign \ROM|altsyncram_component|auto_generated|q_a [5] = \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus [5];
assign \ROM|altsyncram_component|auto_generated|q_a [6] = \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus [6];
assign \ROM|altsyncram_component|auto_generated|q_a [7] = \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus [7];
assign \ROM|altsyncram_component|auto_generated|q_a [8] = \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus [8];
assign \ROM|altsyncram_component|auto_generated|q_a [9] = \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus [9];
assign \ROM|altsyncram_component|auto_generated|q_a [10] = \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus [10];
assign \ROM|altsyncram_component|auto_generated|q_a [11] = \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus [11];
assign \ROM|altsyncram_component|auto_generated|q_a [12] = \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus [12];
assign \ROM|altsyncram_component|auto_generated|q_a [13] = \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus [13];
assign \ROM|altsyncram_component|auto_generated|q_a [14] = \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus [14];
assign \ROM|altsyncram_component|auto_generated|q_a [15] = \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus [15];

hard_block auto_generated_inst(
	.devpor(devpor),
	.devclrn(devclrn),
	.devoe(devoe));

// Location: IOOBUF_X18_Y0_N23
cycloneive_io_obuf \result[16]~output (
	.i(\firstterm~input_o ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\result[16]~output_o ),
	.obar());
// synopsys translate_off
defparam \result[16]~output .bus_hold = "false";
defparam \result[16]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X34_Y7_N9
cycloneive_io_obuf \result[15]~output (
	.i(\inst|LPM_ADD_SUB_component|auto_generated|result[15]~30_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\result[15]~output_o ),
	.obar());
// synopsys translate_off
defparam \result[15]~output .bus_hold = "false";
defparam \result[15]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X30_Y24_N23
cycloneive_io_obuf \result[14]~output (
	.i(\inst|LPM_ADD_SUB_component|auto_generated|result[14]~28_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\result[14]~output_o ),
	.obar());
// synopsys translate_off
defparam \result[14]~output .bus_hold = "false";
defparam \result[14]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X34_Y19_N16
cycloneive_io_obuf \result[13]~output (
	.i(\inst|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\result[13]~output_o ),
	.obar());
// synopsys translate_off
defparam \result[13]~output .bus_hold = "false";
defparam \result[13]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X34_Y17_N16
cycloneive_io_obuf \result[12]~output (
	.i(\inst|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\result[12]~output_o ),
	.obar());
// synopsys translate_off
defparam \result[12]~output .bus_hold = "false";
defparam \result[12]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X34_Y9_N9
cycloneive_io_obuf \result[11]~output (
	.i(\inst|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\result[11]~output_o ),
	.obar());
// synopsys translate_off
defparam \result[11]~output .bus_hold = "false";
defparam \result[11]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X30_Y0_N9
cycloneive_io_obuf \result[10]~output (
	.i(\inst|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\result[10]~output_o ),
	.obar());
// synopsys translate_off
defparam \result[10]~output .bus_hold = "false";
defparam \result[10]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X34_Y4_N16
cycloneive_io_obuf \result[9]~output (
	.i(\inst|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\result[9]~output_o ),
	.obar());
// synopsys translate_off
defparam \result[9]~output .bus_hold = "false";
defparam \result[9]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X30_Y0_N23
cycloneive_io_obuf \result[8]~output (
	.i(\inst|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\result[8]~output_o ),
	.obar());
// synopsys translate_off
defparam \result[8]~output .bus_hold = "false";
defparam \result[8]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X34_Y10_N9
cycloneive_io_obuf \result[7]~output (
	.i(\inst|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\result[7]~output_o ),
	.obar());
// synopsys translate_off
defparam \result[7]~output .bus_hold = "false";
defparam \result[7]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X34_Y18_N16
cycloneive_io_obuf \result[6]~output (
	.i(\inst|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\result[6]~output_o ),
	.obar());
// synopsys translate_off
defparam \result[6]~output .bus_hold = "false";
defparam \result[6]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X34_Y4_N23
cycloneive_io_obuf \result[5]~output (
	.i(\inst|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\result[5]~output_o ),
	.obar());
// synopsys translate_off
defparam \result[5]~output .bus_hold = "false";
defparam \result[5]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X34_Y17_N23
cycloneive_io_obuf \result[4]~output (
	.i(\inst|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\result[4]~output_o ),
	.obar());
// synopsys translate_off
defparam \result[4]~output .bus_hold = "false";
defparam \result[4]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X34_Y9_N16
cycloneive_io_obuf \result[3]~output (
	.i(\inst|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\result[3]~output_o ),
	.obar());
// synopsys translate_off
defparam \result[3]~output .bus_hold = "false";
defparam \result[3]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X34_Y9_N23
cycloneive_io_obuf \result[2]~output (
	.i(\inst|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\result[2]~output_o ),
	.obar());
// synopsys translate_off
defparam \result[2]~output .bus_hold = "false";
defparam \result[2]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X28_Y24_N23
cycloneive_io_obuf \result[1]~output (
	.i(\inst|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\result[1]~output_o ),
	.obar());
// synopsys translate_off
defparam \result[1]~output .bus_hold = "false";
defparam \result[1]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X34_Y9_N2
cycloneive_io_obuf \result[0]~output (
	.i(\inst|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\result[0]~output_o ),
	.obar());
// synopsys translate_off
defparam \result[0]~output .bus_hold = "false";
defparam \result[0]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOIBUF_X18_Y0_N15
cycloneive_io_ibuf \firstterm~input (
	.i(firstterm),
	.ibar(gnd),
	.o(\firstterm~input_o ));
// synopsys translate_off
defparam \firstterm~input .bus_hold = "false";
defparam \firstterm~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X0_Y11_N8
cycloneive_io_ibuf \clock~input (
	.i(clock),
	.ibar(gnd),
	.o(\clock~input_o ));
// synopsys translate_off
defparam \clock~input .bus_hold = "false";
defparam \clock~input .simulate_z_as = "z";
// synopsys translate_on

// Location: CLKCTRL_G2
cycloneive_clkctrl \clock~inputclkctrl (
	.ena(vcc),
	.inclk({vcc,vcc,vcc,\clock~input_o }),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\clock~inputclkctrl_outclk ));
// synopsys translate_off
defparam \clock~inputclkctrl .clock_type = "global clock";
defparam \clock~inputclkctrl .ena_register_mode = "none";
// synopsys translate_on

// Location: IOIBUF_X34_Y20_N8
cycloneive_io_ibuf \addinit0~input (
	.i(addinit0),
	.ibar(gnd),
	.o(\addinit0~input_o ));
// synopsys translate_off
defparam \addinit0~input .bus_hold = "false";
defparam \addinit0~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X28_Y0_N22
cycloneive_io_ibuf \addinit1~input (
	.i(addinit1),
	.ibar(gnd),
	.o(\addinit1~input_o ));
// synopsys translate_off
defparam \addinit1~input .bus_hold = "false";
defparam \addinit1~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X29_Y13_N24
cycloneive_lcell_comb \inst3|out~0 (
// Equation(s):
// \inst3|out~0_combout  = (!\addinit0~input_o  & ((\addinit1~input_o ) # (\inst|LPM_ADD_SUB_component|auto_generated|result[15]~30_combout )))

	.dataa(\addinit0~input_o ),
	.datab(gnd),
	.datac(\addinit1~input_o ),
	.datad(\inst|LPM_ADD_SUB_component|auto_generated|result[15]~30_combout ),
	.cin(gnd),
	.combout(\inst3|out~0_combout ),
	.cout());
// synopsys translate_off
defparam \inst3|out~0 .lut_mask = 16'h5550;
defparam \inst3|out~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X0_Y11_N15
cycloneive_io_ibuf \reset~input (
	.i(reset),
	.ibar(gnd),
	.o(\reset~input_o ));
// synopsys translate_off
defparam \reset~input .bus_hold = "false";
defparam \reset~input .simulate_z_as = "z";
// synopsys translate_on

// Location: CLKCTRL_G4
cycloneive_clkctrl \reset~inputclkctrl (
	.ena(vcc),
	.inclk({vcc,vcc,vcc,\reset~input_o }),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\reset~inputclkctrl_outclk ));
// synopsys translate_off
defparam \reset~inputclkctrl .clock_type = "global clock";
defparam \reset~inputclkctrl .ena_register_mode = "none";
// synopsys translate_on

// Location: IOIBUF_X34_Y18_N1
cycloneive_io_ibuf \addln~input (
	.i(addln),
	.ibar(gnd),
	.o(\addln~input_o ));
// synopsys translate_off
defparam \addln~input .bus_hold = "false";
defparam \addln~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X29_Y14_N16
cycloneive_lcell_comb \inst3|out[15]~1 (
// Equation(s):
// \inst3|out[15]~1_combout  = (\addln~input_o ) # ((\addinit1~input_o ) # (\addinit0~input_o ))

	.dataa(gnd),
	.datab(\addln~input_o ),
	.datac(\addinit1~input_o ),
	.datad(\addinit0~input_o ),
	.cin(gnd),
	.combout(\inst3|out[15]~1_combout ),
	.cout());
// synopsys translate_off
defparam \inst3|out[15]~1 .lut_mask = 16'hFFFC;
defparam \inst3|out[15]~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X29_Y13_N25
dffeas \inst3|out[15] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\inst3|out~0_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\inst3|out[15]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst3|out [15]),
	.prn(vcc));
// synopsys translate_off
defparam \inst3|out[15] .is_wysiwyg = "true";
defparam \inst3|out[15] .power_up = "low";
// synopsys translate_on

// Location: IOIBUF_X34_Y17_N1
cycloneive_io_ibuf \tempinit1~input (
	.i(tempinit1),
	.ibar(gnd),
	.o(\tempinit1~input_o ));
// synopsys translate_off
defparam \tempinit1~input .bus_hold = "false";
defparam \tempinit1~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X16_Y24_N15
cycloneive_io_ibuf \tempinit0~input (
	.i(tempinit0),
	.ibar(gnd),
	.o(\tempinit0~input_o ));
// synopsys translate_off
defparam \tempinit0~input .bus_hold = "false";
defparam \tempinit0~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X23_Y24_N15
cycloneive_io_ibuf \xsel~input (
	.i(xsel),
	.ibar(gnd),
	.o(\xsel~input_o ));
// synopsys translate_off
defparam \xsel~input .bus_hold = "false";
defparam \xsel~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X23_Y24_N1
cycloneive_io_ibuf \inX[0]~input (
	.i(inX[0]),
	.ibar(gnd),
	.o(\inX[0]~input_o ));
// synopsys translate_off
defparam \inX[0]~input .bus_hold = "false";
defparam \inX[0]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X16_Y24_N1
cycloneive_io_ibuf \tempsel~input (
	.i(tempsel),
	.ibar(gnd),
	.o(\tempsel~input_o ));
// synopsys translate_off
defparam \tempsel~input .bus_hold = "false";
defparam \tempsel~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X16_Y0_N1
cycloneive_io_ibuf \inX[1]~input (
	.i(inX[1]),
	.ibar(gnd),
	.o(\inX[1]~input_o ));
// synopsys translate_off
defparam \inX[1]~input .bus_hold = "false";
defparam \inX[1]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X23_Y24_N8
cycloneive_io_ibuf \inX[2]~input (
	.i(inX[2]),
	.ibar(gnd),
	.o(\inX[2]~input_o ));
// synopsys translate_off
defparam \inX[2]~input .bus_hold = "false";
defparam \inX[2]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X0_Y9_N8
cycloneive_io_ibuf \inX[3]~input (
	.i(inX[3]),
	.ibar(gnd),
	.o(\inX[3]~input_o ));
// synopsys translate_off
defparam \inX[3]~input .bus_hold = "false";
defparam \inX[3]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X28_Y24_N8
cycloneive_io_ibuf \inX[4]~input (
	.i(inX[4]),
	.ibar(gnd),
	.o(\inX[4]~input_o ));
// synopsys translate_off
defparam \inX[4]~input .bus_hold = "false";
defparam \inX[4]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X28_Y0_N1
cycloneive_io_ibuf \inX[5]~input (
	.i(inX[5]),
	.ibar(gnd),
	.o(\inX[5]~input_o ));
// synopsys translate_off
defparam \inX[5]~input .bus_hold = "false";
defparam \inX[5]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X18_Y24_N22
cycloneive_io_ibuf \inX[6]~input (
	.i(inX[6]),
	.ibar(gnd),
	.o(\inX[6]~input_o ));
// synopsys translate_off
defparam \inX[6]~input .bus_hold = "false";
defparam \inX[6]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X28_Y24_N15
cycloneive_io_ibuf \inX[7]~input (
	.i(inX[7]),
	.ibar(gnd),
	.o(\inX[7]~input_o ));
// synopsys translate_off
defparam \inX[7]~input .bus_hold = "false";
defparam \inX[7]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X23_Y0_N15
cycloneive_io_ibuf \inX[8]~input (
	.i(inX[8]),
	.ibar(gnd),
	.o(\inX[8]~input_o ));
// synopsys translate_off
defparam \inX[8]~input .bus_hold = "false";
defparam \inX[8]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X21_Y0_N8
cycloneive_io_ibuf \inX[9]~input (
	.i(inX[9]),
	.ibar(gnd),
	.o(\inX[9]~input_o ));
// synopsys translate_off
defparam \inX[9]~input .bus_hold = "false";
defparam \inX[9]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X23_Y0_N8
cycloneive_io_ibuf \inX[10]~input (
	.i(inX[10]),
	.ibar(gnd),
	.o(\inX[10]~input_o ));
// synopsys translate_off
defparam \inX[10]~input .bus_hold = "false";
defparam \inX[10]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X11_Y24_N15
cycloneive_io_ibuf \inX[11]~input (
	.i(inX[11]),
	.ibar(gnd),
	.o(\inX[11]~input_o ));
// synopsys translate_off
defparam \inX[11]~input .bus_hold = "false";
defparam \inX[11]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X16_Y24_N22
cycloneive_io_ibuf \inX[12]~input (
	.i(inX[12]),
	.ibar(gnd),
	.o(\inX[12]~input_o ));
// synopsys translate_off
defparam \inX[12]~input .bus_hold = "false";
defparam \inX[12]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X18_Y24_N15
cycloneive_io_ibuf \inX[13]~input (
	.i(inX[13]),
	.ibar(gnd),
	.o(\inX[13]~input_o ));
// synopsys translate_off
defparam \inX[13]~input .bus_hold = "false";
defparam \inX[13]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X5_Y24_N8
cycloneive_io_ibuf \inX[14]~input (
	.i(inX[14]),
	.ibar(gnd),
	.o(\inX[14]~input_o ));
// synopsys translate_off
defparam \inX[14]~input .bus_hold = "false";
defparam \inX[14]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X34_Y12_N22
cycloneive_io_ibuf \inX[15]~input (
	.i(inX[15]),
	.ibar(gnd),
	.o(\inX[15]~input_o ));
// synopsys translate_off
defparam \inX[15]~input .bus_hold = "false";
defparam \inX[15]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N30
cycloneive_lcell_comb \muxA|out[15]~15 (
// Equation(s):
// \muxA|out[15]~15_combout  = (\xsel~input_o  & (((\tempreg|out [15])))) # (!\xsel~input_o  & (\inX[15]~input_o  & (\tempsel~input_o )))

	.dataa(\inX[15]~input_o ),
	.datab(\tempsel~input_o ),
	.datac(\xsel~input_o ),
	.datad(\tempreg|out [15]),
	.cin(gnd),
	.combout(\muxA|out[15]~15_combout ),
	.cout());
// synopsys translate_off
defparam \muxA|out[15]~15 .lut_mask = 16'hF808;
defparam \muxA|out[15]~15 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X13_Y24_N22
cycloneive_io_ibuf \romsel~input (
	.i(romsel),
	.ibar(gnd),
	.o(\romsel~input_o ));
// synopsys translate_off
defparam \romsel~input .bus_hold = "false";
defparam \romsel~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X34_Y12_N15
cycloneive_io_ibuf \x2sel~input (
	.i(x2sel),
	.ibar(gnd),
	.o(\x2sel~input_o ));
// synopsys translate_off
defparam \x2sel~input .bus_hold = "false";
defparam \x2sel~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N8
cycloneive_lcell_comb \muxB|out[0]~1 (
// Equation(s):
// \muxB|out[0]~1_combout  = (!\xsel~input_o  & (\romsel~input_o  & !\x2sel~input_o ))

	.dataa(gnd),
	.datab(\xsel~input_o ),
	.datac(\romsel~input_o ),
	.datad(\x2sel~input_o ),
	.cin(gnd),
	.combout(\muxB|out[0]~1_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[0]~1 .lut_mask = 16'h0030;
defparam \muxB|out[0]~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X13_Y24_N15
cycloneive_io_ibuf \x2init0~input (
	.i(x2init0),
	.ibar(gnd),
	.o(\x2init0~input_o ));
// synopsys translate_off
defparam \x2init0~input .bus_hold = "false";
defparam \x2init0~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X16_Y24_N8
cycloneive_io_ibuf \x2init1~input (
	.i(x2init1),
	.ibar(gnd),
	.o(\x2init1~input_o ));
// synopsys translate_off
defparam \x2init1~input .bus_hold = "false";
defparam \x2init1~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N24
cycloneive_lcell_comb \x2reg|out~0 (
// Equation(s):
// \x2reg|out~0_combout  = (!\x2init0~input_o  & ((\multiplier|Mult0|auto_generated|mac_out2~DATAOUT15 ) # (\x2init1~input_o )))

	.dataa(gnd),
	.datab(\x2init0~input_o ),
	.datac(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT15 ),
	.datad(\x2init1~input_o ),
	.cin(gnd),
	.combout(\x2reg|out~0_combout ),
	.cout());
// synopsys translate_off
defparam \x2reg|out~0 .lut_mask = 16'h3330;
defparam \x2reg|out~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X9_Y24_N8
cycloneive_io_ibuf \x2ln~input (
	.i(x2ln),
	.ibar(gnd),
	.o(\x2ln~input_o ));
// synopsys translate_off
defparam \x2ln~input .bus_hold = "false";
defparam \x2ln~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X17_Y17_N4
cycloneive_lcell_comb \x2reg|out[7]~1 (
// Equation(s):
// \x2reg|out[7]~1_combout  = (\x2init0~input_o ) # ((\x2init1~input_o ) # (\x2ln~input_o ))

	.dataa(gnd),
	.datab(\x2init0~input_o ),
	.datac(\x2init1~input_o ),
	.datad(\x2ln~input_o ),
	.cin(gnd),
	.combout(\x2reg|out[7]~1_combout ),
	.cout());
// synopsys translate_off
defparam \x2reg|out[7]~1 .lut_mask = 16'hFFFC;
defparam \x2reg|out[7]~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X21_Y17_N25
dffeas \x2reg|out[0] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\x2reg|out~0_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\x2reg|out[7]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\x2reg|out [0]),
	.prn(vcc));
// synopsys translate_off
defparam \x2reg|out[0] .is_wysiwyg = "true";
defparam \x2reg|out[0] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N26
cycloneive_lcell_comb \muxB|out[0]~0 (
// Equation(s):
// \muxB|out[0]~0_combout  = (\xsel~input_o  & (((\inX[0]~input_o )))) # (!\xsel~input_o  & (\x2sel~input_o  & ((\x2reg|out [0]))))

	.dataa(\x2sel~input_o ),
	.datab(\inX[0]~input_o ),
	.datac(\xsel~input_o ),
	.datad(\x2reg|out [0]),
	.cin(gnd),
	.combout(\muxB|out[0]~0_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[0]~0 .lut_mask = 16'hCAC0;
defparam \muxB|out[0]~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X0_Y18_N22
cycloneive_io_ibuf \count[0]~input (
	.i(count[0]),
	.ibar(gnd),
	.o(\count[0]~input_o ));
// synopsys translate_off
defparam \count[0]~input .bus_hold = "false";
defparam \count[0]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X7_Y24_N1
cycloneive_io_ibuf \count[1]~input (
	.i(count[1]),
	.ibar(gnd),
	.o(\count[1]~input_o ));
// synopsys translate_off
defparam \count[1]~input .bus_hold = "false";
defparam \count[1]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X7_Y24_N8
cycloneive_io_ibuf \count[2]~input (
	.i(count[2]),
	.ibar(gnd),
	.o(\count[2]~input_o ));
// synopsys translate_off
defparam \count[2]~input .bus_hold = "false";
defparam \count[2]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X13_Y0_N1
cycloneive_io_ibuf \count[3]~input (
	.i(count[3]),
	.ibar(gnd),
	.o(\count[3]~input_o ));
// synopsys translate_off
defparam \count[3]~input .bus_hold = "false";
defparam \count[3]~input .simulate_z_as = "z";
// synopsys translate_on

// Location: M9K_X15_Y17_N0
cycloneive_ram_block \ROM|altsyncram_component|auto_generated|ram_block1a0 (
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(\clock~inputclkctrl_outclk ),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(18'b000000000000000000),
	.portaaddr({\count[3]~input_o ,\count[2]~input_o ,\count[1]~input_o ,\count[0]~input_o }),
	.portabyteenamasks(1'b1),
	.portbdatain(18'b000000000000000000),
	.portbaddr(4'b0000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(\ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus ),
	.portbdataout());
// synopsys translate_off
defparam \ROM|altsyncram_component|auto_generated|ram_block1a0 .data_interleave_offset_in_bits = 1;
defparam \ROM|altsyncram_component|auto_generated|ram_block1a0 .data_interleave_width_in_bits = 1;
defparam \ROM|altsyncram_component|auto_generated|ram_block1a0 .init_file = "Rominit.mif";
defparam \ROM|altsyncram_component|auto_generated|ram_block1a0 .init_file_layout = "port_a";
defparam \ROM|altsyncram_component|auto_generated|ram_block1a0 .logical_ram_name = "LUT:ROM|altsyncram:altsyncram_component|altsyncram_nb91:auto_generated|ALTSYNCRAM";
defparam \ROM|altsyncram_component|auto_generated|ram_block1a0 .operation_mode = "rom";
defparam \ROM|altsyncram_component|auto_generated|ram_block1a0 .port_a_address_clear = "none";
defparam \ROM|altsyncram_component|auto_generated|ram_block1a0 .port_a_address_width = 4;
defparam \ROM|altsyncram_component|auto_generated|ram_block1a0 .port_a_byte_enable_clock = "none";
defparam \ROM|altsyncram_component|auto_generated|ram_block1a0 .port_a_data_out_clear = "none";
defparam \ROM|altsyncram_component|auto_generated|ram_block1a0 .port_a_data_out_clock = "clock0";
defparam \ROM|altsyncram_component|auto_generated|ram_block1a0 .port_a_data_width = 18;
defparam \ROM|altsyncram_component|auto_generated|ram_block1a0 .port_a_first_address = 0;
defparam \ROM|altsyncram_component|auto_generated|ram_block1a0 .port_a_first_bit_number = 0;
defparam \ROM|altsyncram_component|auto_generated|ram_block1a0 .port_a_last_address = 15;
defparam \ROM|altsyncram_component|auto_generated|ram_block1a0 .port_a_logical_ram_depth = 16;
defparam \ROM|altsyncram_component|auto_generated|ram_block1a0 .port_a_logical_ram_width = 16;
defparam \ROM|altsyncram_component|auto_generated|ram_block1a0 .port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam \ROM|altsyncram_component|auto_generated|ram_block1a0 .port_a_write_enable_clock = "none";
defparam \ROM|altsyncram_component|auto_generated|ram_block1a0 .port_b_address_width = 4;
defparam \ROM|altsyncram_component|auto_generated|ram_block1a0 .port_b_data_width = 18;
defparam \ROM|altsyncram_component|auto_generated|ram_block1a0 .ram_block_type = "M9K";
defparam \ROM|altsyncram_component|auto_generated|ram_block1a0 .mem_init0 = 288'h04444124904EC4155505D141999071C42000092482AAA0CCCC40001555480003FFFCFFFF;
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N8
cycloneive_lcell_comb \muxB|out[0]~2 (
// Equation(s):
// \muxB|out[0]~2_combout  = (\muxB|out[0]~0_combout ) # ((\muxB|out[0]~1_combout  & \ROM|altsyncram_component|auto_generated|q_a [0]))

	.dataa(gnd),
	.datab(\muxB|out[0]~1_combout ),
	.datac(\muxB|out[0]~0_combout ),
	.datad(\ROM|altsyncram_component|auto_generated|q_a [0]),
	.cin(gnd),
	.combout(\muxB|out[0]~2_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[0]~2 .lut_mask = 16'hFCF0;
defparam \muxB|out[0]~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N6
cycloneive_lcell_comb \x2reg|out~2 (
// Equation(s):
// \x2reg|out~2_combout  = (!\x2init0~input_o  & ((\x2init1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT16 )))

	.dataa(\x2init1~input_o ),
	.datab(gnd),
	.datac(\x2init0~input_o ),
	.datad(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT16 ),
	.cin(gnd),
	.combout(\x2reg|out~2_combout ),
	.cout());
// synopsys translate_off
defparam \x2reg|out~2 .lut_mask = 16'h0F0A;
defparam \x2reg|out~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y17_N7
dffeas \x2reg|out[1] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\x2reg|out~2_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\x2reg|out[7]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\x2reg|out [1]),
	.prn(vcc));
// synopsys translate_off
defparam \x2reg|out[1] .is_wysiwyg = "true";
defparam \x2reg|out[1] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N4
cycloneive_lcell_comb \muxB|out[1]~3 (
// Equation(s):
// \muxB|out[1]~3_combout  = (\xsel~input_o  & (((\inX[1]~input_o )))) # (!\xsel~input_o  & (\x2sel~input_o  & ((\x2reg|out [1]))))

	.dataa(\x2sel~input_o ),
	.datab(\inX[1]~input_o ),
	.datac(\xsel~input_o ),
	.datad(\x2reg|out [1]),
	.cin(gnd),
	.combout(\muxB|out[1]~3_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[1]~3 .lut_mask = 16'hCAC0;
defparam \muxB|out[1]~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N26
cycloneive_lcell_comb \muxB|out[1]~4 (
// Equation(s):
// \muxB|out[1]~4_combout  = (\muxB|out[1]~3_combout ) # ((\muxB|out[0]~1_combout  & \ROM|altsyncram_component|auto_generated|q_a [1]))

	.dataa(gnd),
	.datab(\muxB|out[0]~1_combout ),
	.datac(\muxB|out[1]~3_combout ),
	.datad(\ROM|altsyncram_component|auto_generated|q_a [1]),
	.cin(gnd),
	.combout(\muxB|out[1]~4_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[1]~4 .lut_mask = 16'hFCF0;
defparam \muxB|out[1]~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N18
cycloneive_lcell_comb \x2reg|out~3 (
// Equation(s):
// \x2reg|out~3_combout  = (!\x2init0~input_o  & ((\x2init1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT17 )))

	.dataa(gnd),
	.datab(\x2init1~input_o ),
	.datac(\x2init0~input_o ),
	.datad(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT17 ),
	.cin(gnd),
	.combout(\x2reg|out~3_combout ),
	.cout());
// synopsys translate_off
defparam \x2reg|out~3 .lut_mask = 16'h0F0C;
defparam \x2reg|out~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X21_Y17_N19
dffeas \x2reg|out[2] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\x2reg|out~3_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\x2reg|out[7]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\x2reg|out [2]),
	.prn(vcc));
// synopsys translate_off
defparam \x2reg|out[2] .is_wysiwyg = "true";
defparam \x2reg|out[2] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N4
cycloneive_lcell_comb \muxB|out[2]~5 (
// Equation(s):
// \muxB|out[2]~5_combout  = (\xsel~input_o  & (((\inX[2]~input_o )))) # (!\xsel~input_o  & (\x2sel~input_o  & ((\x2reg|out [2]))))

	.dataa(\x2sel~input_o ),
	.datab(\xsel~input_o ),
	.datac(\inX[2]~input_o ),
	.datad(\x2reg|out [2]),
	.cin(gnd),
	.combout(\muxB|out[2]~5_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[2]~5 .lut_mask = 16'hE2C0;
defparam \muxB|out[2]~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N6
cycloneive_lcell_comb \muxB|out[2]~6 (
// Equation(s):
// \muxB|out[2]~6_combout  = (\muxB|out[2]~5_combout ) # ((\muxB|out[0]~1_combout  & \ROM|altsyncram_component|auto_generated|q_a [2]))

	.dataa(gnd),
	.datab(\muxB|out[0]~1_combout ),
	.datac(\muxB|out[2]~5_combout ),
	.datad(\ROM|altsyncram_component|auto_generated|q_a [2]),
	.cin(gnd),
	.combout(\muxB|out[2]~6_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[2]~6 .lut_mask = 16'hFCF0;
defparam \muxB|out[2]~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y17_N18
cycloneive_lcell_comb \x2reg|out~4 (
// Equation(s):
// \x2reg|out~4_combout  = (!\x2init0~input_o  & ((\x2init1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT18 )))

	.dataa(gnd),
	.datab(\x2init0~input_o ),
	.datac(\x2init1~input_o ),
	.datad(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT18 ),
	.cin(gnd),
	.combout(\x2reg|out~4_combout ),
	.cout());
// synopsys translate_off
defparam \x2reg|out~4 .lut_mask = 16'h3330;
defparam \x2reg|out~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y17_N19
dffeas \x2reg|out[3] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\x2reg|out~4_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\x2reg|out[7]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\x2reg|out [3]),
	.prn(vcc));
// synopsys translate_off
defparam \x2reg|out[3] .is_wysiwyg = "true";
defparam \x2reg|out[3] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y17_N4
cycloneive_lcell_comb \muxB|out[3]~7 (
// Equation(s):
// \muxB|out[3]~7_combout  = (\xsel~input_o  & (\inX[3]~input_o )) # (!\xsel~input_o  & (((\x2sel~input_o  & \x2reg|out [3]))))

	.dataa(\xsel~input_o ),
	.datab(\inX[3]~input_o ),
	.datac(\x2sel~input_o ),
	.datad(\x2reg|out [3]),
	.cin(gnd),
	.combout(\muxB|out[3]~7_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[3]~7 .lut_mask = 16'hD888;
defparam \muxB|out[3]~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y17_N30
cycloneive_lcell_comb \muxB|out[3]~8 (
// Equation(s):
// \muxB|out[3]~8_combout  = (\muxB|out[3]~7_combout ) # ((\muxB|out[0]~1_combout  & \ROM|altsyncram_component|auto_generated|q_a [3]))

	.dataa(\muxB|out[0]~1_combout ),
	.datab(gnd),
	.datac(\muxB|out[3]~7_combout ),
	.datad(\ROM|altsyncram_component|auto_generated|q_a [3]),
	.cin(gnd),
	.combout(\muxB|out[3]~8_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[3]~8 .lut_mask = 16'hFAF0;
defparam \muxB|out[3]~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N28
cycloneive_lcell_comb \x2reg|out~5 (
// Equation(s):
// \x2reg|out~5_combout  = (!\x2init0~input_o  & ((\x2init1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT19 )))

	.dataa(gnd),
	.datab(\x2init1~input_o ),
	.datac(\x2init0~input_o ),
	.datad(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT19 ),
	.cin(gnd),
	.combout(\x2reg|out~5_combout ),
	.cout());
// synopsys translate_off
defparam \x2reg|out~5 .lut_mask = 16'h0F0C;
defparam \x2reg|out~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X21_Y17_N29
dffeas \x2reg|out[4] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\x2reg|out~5_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\x2reg|out[7]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\x2reg|out [4]),
	.prn(vcc));
// synopsys translate_off
defparam \x2reg|out[4] .is_wysiwyg = "true";
defparam \x2reg|out[4] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N22
cycloneive_lcell_comb \muxB|out[4]~9 (
// Equation(s):
// \muxB|out[4]~9_combout  = (\xsel~input_o  & (((\inX[4]~input_o )))) # (!\xsel~input_o  & (\x2sel~input_o  & ((\x2reg|out [4]))))

	.dataa(\x2sel~input_o ),
	.datab(\xsel~input_o ),
	.datac(\inX[4]~input_o ),
	.datad(\x2reg|out [4]),
	.cin(gnd),
	.combout(\muxB|out[4]~9_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[4]~9 .lut_mask = 16'hE2C0;
defparam \muxB|out[4]~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N16
cycloneive_lcell_comb \muxB|out[4]~10 (
// Equation(s):
// \muxB|out[4]~10_combout  = (\muxB|out[4]~9_combout ) # ((\muxB|out[0]~1_combout  & \ROM|altsyncram_component|auto_generated|q_a [4]))

	.dataa(gnd),
	.datab(\muxB|out[0]~1_combout ),
	.datac(\muxB|out[4]~9_combout ),
	.datad(\ROM|altsyncram_component|auto_generated|q_a [4]),
	.cin(gnd),
	.combout(\muxB|out[4]~10_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[4]~10 .lut_mask = 16'hFCF0;
defparam \muxB|out[4]~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N10
cycloneive_lcell_comb \x2reg|out~6 (
// Equation(s):
// \x2reg|out~6_combout  = (!\x2init0~input_o  & ((\multiplier|Mult0|auto_generated|mac_out2~DATAOUT20 ) # (\x2init1~input_o )))

	.dataa(gnd),
	.datab(\x2init0~input_o ),
	.datac(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT20 ),
	.datad(\x2init1~input_o ),
	.cin(gnd),
	.combout(\x2reg|out~6_combout ),
	.cout());
// synopsys translate_off
defparam \x2reg|out~6 .lut_mask = 16'h3330;
defparam \x2reg|out~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X21_Y17_N11
dffeas \x2reg|out[5] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\x2reg|out~6_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\x2reg|out[7]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\x2reg|out [5]),
	.prn(vcc));
// synopsys translate_off
defparam \x2reg|out[5] .is_wysiwyg = "true";
defparam \x2reg|out[5] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N0
cycloneive_lcell_comb \muxB|out[5]~11 (
// Equation(s):
// \muxB|out[5]~11_combout  = (\xsel~input_o  & (\inX[5]~input_o )) # (!\xsel~input_o  & (((\x2sel~input_o  & \x2reg|out [5]))))

	.dataa(\inX[5]~input_o ),
	.datab(\xsel~input_o ),
	.datac(\x2sel~input_o ),
	.datad(\x2reg|out [5]),
	.cin(gnd),
	.combout(\muxB|out[5]~11_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[5]~11 .lut_mask = 16'hB888;
defparam \muxB|out[5]~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N30
cycloneive_lcell_comb \muxB|out[5]~12 (
// Equation(s):
// \muxB|out[5]~12_combout  = (\muxB|out[5]~11_combout ) # ((\muxB|out[0]~1_combout  & \ROM|altsyncram_component|auto_generated|q_a [5]))

	.dataa(gnd),
	.datab(\muxB|out[0]~1_combout ),
	.datac(\ROM|altsyncram_component|auto_generated|q_a [5]),
	.datad(\muxB|out[5]~11_combout ),
	.cin(gnd),
	.combout(\muxB|out[5]~12_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[5]~12 .lut_mask = 16'hFFC0;
defparam \muxB|out[5]~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N18
cycloneive_lcell_comb \x2reg|out~7 (
// Equation(s):
// \x2reg|out~7_combout  = (!\x2init0~input_o  & ((\x2init1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT21 )))

	.dataa(gnd),
	.datab(\x2init1~input_o ),
	.datac(\x2init0~input_o ),
	.datad(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT21 ),
	.cin(gnd),
	.combout(\x2reg|out~7_combout ),
	.cout());
// synopsys translate_off
defparam \x2reg|out~7 .lut_mask = 16'h0F0C;
defparam \x2reg|out~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y17_N19
dffeas \x2reg|out[6] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\x2reg|out~7_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\x2reg|out[7]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\x2reg|out [6]),
	.prn(vcc));
// synopsys translate_off
defparam \x2reg|out[6] .is_wysiwyg = "true";
defparam \x2reg|out[6] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N24
cycloneive_lcell_comb \muxB|out[6]~13 (
// Equation(s):
// \muxB|out[6]~13_combout  = (\xsel~input_o  & (((\inX[6]~input_o )))) # (!\xsel~input_o  & (\x2sel~input_o  & ((\x2reg|out [6]))))

	.dataa(\xsel~input_o ),
	.datab(\x2sel~input_o ),
	.datac(\inX[6]~input_o ),
	.datad(\x2reg|out [6]),
	.cin(gnd),
	.combout(\muxB|out[6]~13_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[6]~13 .lut_mask = 16'hE4A0;
defparam \muxB|out[6]~13 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N30
cycloneive_lcell_comb \muxB|out[6]~14 (
// Equation(s):
// \muxB|out[6]~14_combout  = (\muxB|out[6]~13_combout ) # ((\muxB|out[0]~1_combout  & \ROM|altsyncram_component|auto_generated|q_a [6]))

	.dataa(\muxB|out[0]~1_combout ),
	.datab(gnd),
	.datac(\ROM|altsyncram_component|auto_generated|q_a [6]),
	.datad(\muxB|out[6]~13_combout ),
	.cin(gnd),
	.combout(\muxB|out[6]~14_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[6]~14 .lut_mask = 16'hFFA0;
defparam \muxB|out[6]~14 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N0
cycloneive_lcell_comb \x2reg|out~8 (
// Equation(s):
// \x2reg|out~8_combout  = (!\x2init0~input_o  & ((\x2init1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT22 )))

	.dataa(gnd),
	.datab(\x2init1~input_o ),
	.datac(\x2init0~input_o ),
	.datad(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT22 ),
	.cin(gnd),
	.combout(\x2reg|out~8_combout ),
	.cout());
// synopsys translate_off
defparam \x2reg|out~8 .lut_mask = 16'h0F0C;
defparam \x2reg|out~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y17_N1
dffeas \x2reg|out[7] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\x2reg|out~8_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\x2reg|out[7]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\x2reg|out [7]),
	.prn(vcc));
// synopsys translate_off
defparam \x2reg|out[7] .is_wysiwyg = "true";
defparam \x2reg|out[7] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N2
cycloneive_lcell_comb \muxB|out[7]~15 (
// Equation(s):
// \muxB|out[7]~15_combout  = (\xsel~input_o  & (((\inX[7]~input_o )))) # (!\xsel~input_o  & (\x2sel~input_o  & ((\x2reg|out [7]))))

	.dataa(\xsel~input_o ),
	.datab(\x2sel~input_o ),
	.datac(\inX[7]~input_o ),
	.datad(\x2reg|out [7]),
	.cin(gnd),
	.combout(\muxB|out[7]~15_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[7]~15 .lut_mask = 16'hE4A0;
defparam \muxB|out[7]~15 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N16
cycloneive_lcell_comb \muxB|out[7]~16 (
// Equation(s):
// \muxB|out[7]~16_combout  = (\muxB|out[7]~15_combout ) # ((\muxB|out[0]~1_combout  & \ROM|altsyncram_component|auto_generated|q_a [7]))

	.dataa(\muxB|out[0]~1_combout ),
	.datab(gnd),
	.datac(\ROM|altsyncram_component|auto_generated|q_a [7]),
	.datad(\muxB|out[7]~15_combout ),
	.cin(gnd),
	.combout(\muxB|out[7]~16_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[7]~16 .lut_mask = 16'hFFA0;
defparam \muxB|out[7]~16 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N6
cycloneive_lcell_comb \x2reg|out~9 (
// Equation(s):
// \x2reg|out~9_combout  = (!\x2init0~input_o  & ((\x2init1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT23 )))

	.dataa(\x2init0~input_o ),
	.datab(\x2init1~input_o ),
	.datac(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT23 ),
	.datad(gnd),
	.cin(gnd),
	.combout(\x2reg|out~9_combout ),
	.cout());
// synopsys translate_off
defparam \x2reg|out~9 .lut_mask = 16'h5454;
defparam \x2reg|out~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y17_N7
dffeas \x2reg|out[8] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\x2reg|out~9_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\x2reg|out[7]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\x2reg|out [8]),
	.prn(vcc));
// synopsys translate_off
defparam \x2reg|out[8] .is_wysiwyg = "true";
defparam \x2reg|out[8] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N8
cycloneive_lcell_comb \muxB|out[8]~17 (
// Equation(s):
// \muxB|out[8]~17_combout  = (\xsel~input_o  & (((\inX[8]~input_o )))) # (!\xsel~input_o  & (\x2sel~input_o  & ((\x2reg|out [8]))))

	.dataa(\xsel~input_o ),
	.datab(\x2sel~input_o ),
	.datac(\inX[8]~input_o ),
	.datad(\x2reg|out [8]),
	.cin(gnd),
	.combout(\muxB|out[8]~17_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[8]~17 .lut_mask = 16'hE4A0;
defparam \muxB|out[8]~17 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N10
cycloneive_lcell_comb \muxB|out[8]~18 (
// Equation(s):
// \muxB|out[8]~18_combout  = (\muxB|out[8]~17_combout ) # ((\muxB|out[0]~1_combout  & \ROM|altsyncram_component|auto_generated|q_a [8]))

	.dataa(\muxB|out[0]~1_combout ),
	.datab(gnd),
	.datac(\muxB|out[8]~17_combout ),
	.datad(\ROM|altsyncram_component|auto_generated|q_a [8]),
	.cin(gnd),
	.combout(\muxB|out[8]~18_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[8]~18 .lut_mask = 16'hFAF0;
defparam \muxB|out[8]~18 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N12
cycloneive_lcell_comb \x2reg|out~10 (
// Equation(s):
// \x2reg|out~10_combout  = (!\x2init0~input_o  & ((\x2init1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT24 )))

	.dataa(gnd),
	.datab(\x2init1~input_o ),
	.datac(\x2init0~input_o ),
	.datad(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT24 ),
	.cin(gnd),
	.combout(\x2reg|out~10_combout ),
	.cout());
// synopsys translate_off
defparam \x2reg|out~10 .lut_mask = 16'h0F0C;
defparam \x2reg|out~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y17_N13
dffeas \x2reg|out[9] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\x2reg|out~10_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\x2reg|out[7]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\x2reg|out [9]),
	.prn(vcc));
// synopsys translate_off
defparam \x2reg|out[9] .is_wysiwyg = "true";
defparam \x2reg|out[9] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N26
cycloneive_lcell_comb \muxB|out[9]~19 (
// Equation(s):
// \muxB|out[9]~19_combout  = (\xsel~input_o  & (((\inX[9]~input_o )))) # (!\xsel~input_o  & (\x2sel~input_o  & ((\x2reg|out [9]))))

	.dataa(\xsel~input_o ),
	.datab(\x2sel~input_o ),
	.datac(\inX[9]~input_o ),
	.datad(\x2reg|out [9]),
	.cin(gnd),
	.combout(\muxB|out[9]~19_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[9]~19 .lut_mask = 16'hE4A0;
defparam \muxB|out[9]~19 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N4
cycloneive_lcell_comb \muxB|out[9]~20 (
// Equation(s):
// \muxB|out[9]~20_combout  = (\muxB|out[9]~19_combout ) # ((\muxB|out[0]~1_combout  & \ROM|altsyncram_component|auto_generated|q_a [9]))

	.dataa(\muxB|out[0]~1_combout ),
	.datab(gnd),
	.datac(\muxB|out[9]~19_combout ),
	.datad(\ROM|altsyncram_component|auto_generated|q_a [9]),
	.cin(gnd),
	.combout(\muxB|out[9]~20_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[9]~20 .lut_mask = 16'hFAF0;
defparam \muxB|out[9]~20 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N22
cycloneive_lcell_comb \x2reg|out~11 (
// Equation(s):
// \x2reg|out~11_combout  = (!\x2init0~input_o  & ((\x2init1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT25 )))

	.dataa(\x2init0~input_o ),
	.datab(\x2init1~input_o ),
	.datac(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT25 ),
	.datad(gnd),
	.cin(gnd),
	.combout(\x2reg|out~11_combout ),
	.cout());
// synopsys translate_off
defparam \x2reg|out~11 .lut_mask = 16'h5454;
defparam \x2reg|out~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y17_N23
dffeas \x2reg|out[10] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\x2reg|out~11_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\x2reg|out[7]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\x2reg|out [10]),
	.prn(vcc));
// synopsys translate_off
defparam \x2reg|out[10] .is_wysiwyg = "true";
defparam \x2reg|out[10] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N20
cycloneive_lcell_comb \muxB|out[10]~21 (
// Equation(s):
// \muxB|out[10]~21_combout  = (\xsel~input_o  & (((\inX[10]~input_o )))) # (!\xsel~input_o  & (\x2sel~input_o  & (\x2reg|out [10])))

	.dataa(\xsel~input_o ),
	.datab(\x2sel~input_o ),
	.datac(\x2reg|out [10]),
	.datad(\inX[10]~input_o ),
	.cin(gnd),
	.combout(\muxB|out[10]~21_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[10]~21 .lut_mask = 16'hEA40;
defparam \muxB|out[10]~21 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N14
cycloneive_lcell_comb \muxB|out[10]~22 (
// Equation(s):
// \muxB|out[10]~22_combout  = (\muxB|out[10]~21_combout ) # ((\muxB|out[0]~1_combout  & \ROM|altsyncram_component|auto_generated|q_a [10]))

	.dataa(\muxB|out[0]~1_combout ),
	.datab(gnd),
	.datac(\ROM|altsyncram_component|auto_generated|q_a [10]),
	.datad(\muxB|out[10]~21_combout ),
	.cin(gnd),
	.combout(\muxB|out[10]~22_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[10]~22 .lut_mask = 16'hFFA0;
defparam \muxB|out[10]~22 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y17_N12
cycloneive_lcell_comb \x2reg|out~12 (
// Equation(s):
// \x2reg|out~12_combout  = (!\x2init0~input_o  & ((\x2init1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT26 )))

	.dataa(\x2init1~input_o ),
	.datab(\x2init0~input_o ),
	.datac(gnd),
	.datad(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT26 ),
	.cin(gnd),
	.combout(\x2reg|out~12_combout ),
	.cout());
// synopsys translate_off
defparam \x2reg|out~12 .lut_mask = 16'h3322;
defparam \x2reg|out~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X17_Y17_N13
dffeas \x2reg|out[11] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\x2reg|out~12_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\x2reg|out[7]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\x2reg|out [11]),
	.prn(vcc));
// synopsys translate_off
defparam \x2reg|out[11] .is_wysiwyg = "true";
defparam \x2reg|out[11] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y17_N30
cycloneive_lcell_comb \muxB|out[11]~23 (
// Equation(s):
// \muxB|out[11]~23_combout  = (\xsel~input_o  & (\inX[11]~input_o )) # (!\xsel~input_o  & (((\x2sel~input_o  & \x2reg|out [11]))))

	.dataa(\xsel~input_o ),
	.datab(\inX[11]~input_o ),
	.datac(\x2sel~input_o ),
	.datad(\x2reg|out [11]),
	.cin(gnd),
	.combout(\muxB|out[11]~23_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[11]~23 .lut_mask = 16'hD888;
defparam \muxB|out[11]~23 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y17_N0
cycloneive_lcell_comb \muxB|out[11]~24 (
// Equation(s):
// \muxB|out[11]~24_combout  = (\muxB|out[11]~23_combout ) # ((\muxB|out[0]~1_combout  & \ROM|altsyncram_component|auto_generated|q_a [11]))

	.dataa(\muxB|out[0]~1_combout ),
	.datab(gnd),
	.datac(\muxB|out[11]~23_combout ),
	.datad(\ROM|altsyncram_component|auto_generated|q_a [11]),
	.cin(gnd),
	.combout(\muxB|out[11]~24_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[11]~24 .lut_mask = 16'hFAF0;
defparam \muxB|out[11]~24 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y17_N18
cycloneive_lcell_comb \x2reg|out~13 (
// Equation(s):
// \x2reg|out~13_combout  = (!\x2init0~input_o  & ((\x2init1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT27 )))

	.dataa(\x2init1~input_o ),
	.datab(gnd),
	.datac(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT27 ),
	.datad(\x2init0~input_o ),
	.cin(gnd),
	.combout(\x2reg|out~13_combout ),
	.cout());
// synopsys translate_off
defparam \x2reg|out~13 .lut_mask = 16'h00FA;
defparam \x2reg|out~13 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X17_Y17_N19
dffeas \x2reg|out[12] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\x2reg|out~13_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\x2reg|out[7]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\x2reg|out [12]),
	.prn(vcc));
// synopsys translate_off
defparam \x2reg|out[12] .is_wysiwyg = "true";
defparam \x2reg|out[12] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y17_N8
cycloneive_lcell_comb \muxB|out[12]~25 (
// Equation(s):
// \muxB|out[12]~25_combout  = (\xsel~input_o  & (\inX[12]~input_o )) # (!\xsel~input_o  & (((\x2sel~input_o  & \x2reg|out [12]))))

	.dataa(\xsel~input_o ),
	.datab(\inX[12]~input_o ),
	.datac(\x2sel~input_o ),
	.datad(\x2reg|out [12]),
	.cin(gnd),
	.combout(\muxB|out[12]~25_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[12]~25 .lut_mask = 16'hD888;
defparam \muxB|out[12]~25 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y17_N26
cycloneive_lcell_comb \muxB|out[12]~26 (
// Equation(s):
// \muxB|out[12]~26_combout  = (\muxB|out[12]~25_combout ) # ((\muxB|out[0]~1_combout  & \ROM|altsyncram_component|auto_generated|q_a [12]))

	.dataa(\muxB|out[0]~1_combout ),
	.datab(gnd),
	.datac(\muxB|out[12]~25_combout ),
	.datad(\ROM|altsyncram_component|auto_generated|q_a [12]),
	.cin(gnd),
	.combout(\muxB|out[12]~26_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[12]~26 .lut_mask = 16'hFAF0;
defparam \muxB|out[12]~26 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y17_N12
cycloneive_lcell_comb \x2reg|out~14 (
// Equation(s):
// \x2reg|out~14_combout  = (!\x2init0~input_o  & ((\x2init1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT28 )))

	.dataa(gnd),
	.datab(\x2init0~input_o ),
	.datac(\x2init1~input_o ),
	.datad(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT28 ),
	.cin(gnd),
	.combout(\x2reg|out~14_combout ),
	.cout());
// synopsys translate_off
defparam \x2reg|out~14 .lut_mask = 16'h3330;
defparam \x2reg|out~14 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y17_N13
dffeas \x2reg|out[13] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\x2reg|out~14_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\x2reg|out[7]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\x2reg|out [13]),
	.prn(vcc));
// synopsys translate_off
defparam \x2reg|out[13] .is_wysiwyg = "true";
defparam \x2reg|out[13] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y17_N10
cycloneive_lcell_comb \muxB|out[13]~27 (
// Equation(s):
// \muxB|out[13]~27_combout  = (\xsel~input_o  & (((\inX[13]~input_o )))) # (!\xsel~input_o  & (\x2sel~input_o  & ((\x2reg|out [13]))))

	.dataa(\xsel~input_o ),
	.datab(\x2sel~input_o ),
	.datac(\inX[13]~input_o ),
	.datad(\x2reg|out [13]),
	.cin(gnd),
	.combout(\muxB|out[13]~27_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[13]~27 .lut_mask = 16'hE4A0;
defparam \muxB|out[13]~27 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y17_N24
cycloneive_lcell_comb \muxB|out[13]~28 (
// Equation(s):
// \muxB|out[13]~28_combout  = (\muxB|out[13]~27_combout ) # ((\muxB|out[0]~1_combout  & \ROM|altsyncram_component|auto_generated|q_a [13]))

	.dataa(\muxB|out[0]~1_combout ),
	.datab(gnd),
	.datac(\ROM|altsyncram_component|auto_generated|q_a [13]),
	.datad(\muxB|out[13]~27_combout ),
	.cin(gnd),
	.combout(\muxB|out[13]~28_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[13]~28 .lut_mask = 16'hFFA0;
defparam \muxB|out[13]~28 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N20
cycloneive_lcell_comb \x2reg|out~15 (
// Equation(s):
// \x2reg|out~15_combout  = (!\x2init0~input_o  & ((\x2init1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT29 )))

	.dataa(\x2init1~input_o ),
	.datab(gnd),
	.datac(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT29 ),
	.datad(\x2init0~input_o ),
	.cin(gnd),
	.combout(\x2reg|out~15_combout ),
	.cout());
// synopsys translate_off
defparam \x2reg|out~15 .lut_mask = 16'h00FA;
defparam \x2reg|out~15 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y17_N21
dffeas \x2reg|out[14] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\x2reg|out~15_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\x2reg|out[7]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\x2reg|out [14]),
	.prn(vcc));
// synopsys translate_off
defparam \x2reg|out[14] .is_wysiwyg = "true";
defparam \x2reg|out[14] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N10
cycloneive_lcell_comb \muxB|out[14]~29 (
// Equation(s):
// \muxB|out[14]~29_combout  = (\xsel~input_o  & (((\inX[14]~input_o )))) # (!\xsel~input_o  & (\x2sel~input_o  & ((\x2reg|out [14]))))

	.dataa(\x2sel~input_o ),
	.datab(\xsel~input_o ),
	.datac(\inX[14]~input_o ),
	.datad(\x2reg|out [14]),
	.cin(gnd),
	.combout(\muxB|out[14]~29_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[14]~29 .lut_mask = 16'hE2C0;
defparam \muxB|out[14]~29 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N0
cycloneive_lcell_comb \muxB|out[14]~30 (
// Equation(s):
// \muxB|out[14]~30_combout  = (\muxB|out[14]~29_combout ) # ((\muxB|out[0]~1_combout  & \ROM|altsyncram_component|auto_generated|q_a [14]))

	.dataa(gnd),
	.datab(\muxB|out[0]~1_combout ),
	.datac(\ROM|altsyncram_component|auto_generated|q_a [14]),
	.datad(\muxB|out[14]~29_combout ),
	.cin(gnd),
	.combout(\muxB|out[14]~30_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[14]~30 .lut_mask = 16'hFFC0;
defparam \muxB|out[14]~30 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N18
cycloneive_lcell_comb \x2reg|out~16 (
// Equation(s):
// \x2reg|out~16_combout  = (!\x2init0~input_o  & ((\x2init1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT30 )))

	.dataa(\x2init1~input_o ),
	.datab(gnd),
	.datac(\x2init0~input_o ),
	.datad(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT30 ),
	.cin(gnd),
	.combout(\x2reg|out~16_combout ),
	.cout());
// synopsys translate_off
defparam \x2reg|out~16 .lut_mask = 16'h0F0A;
defparam \x2reg|out~16 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y17_N19
dffeas \x2reg|out[15] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\x2reg|out~16_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\x2reg|out[7]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\x2reg|out [15]),
	.prn(vcc));
// synopsys translate_off
defparam \x2reg|out[15] .is_wysiwyg = "true";
defparam \x2reg|out[15] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N28
cycloneive_lcell_comb \muxB|out[15]~31 (
// Equation(s):
// \muxB|out[15]~31_combout  = (\xsel~input_o  & (\inX[15]~input_o )) # (!\xsel~input_o  & (((\x2sel~input_o  & \x2reg|out [15]))))

	.dataa(\inX[15]~input_o ),
	.datab(\xsel~input_o ),
	.datac(\x2sel~input_o ),
	.datad(\x2reg|out [15]),
	.cin(gnd),
	.combout(\muxB|out[15]~31_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[15]~31 .lut_mask = 16'hB888;
defparam \muxB|out[15]~31 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N14
cycloneive_lcell_comb \muxB|out[15]~32 (
// Equation(s):
// \muxB|out[15]~32_combout  = (\muxB|out[15]~31_combout ) # ((\muxB|out[0]~1_combout  & \ROM|altsyncram_component|auto_generated|q_a [15]))

	.dataa(gnd),
	.datab(\muxB|out[0]~1_combout ),
	.datac(\ROM|altsyncram_component|auto_generated|q_a [15]),
	.datad(\muxB|out[15]~31_combout ),
	.cin(gnd),
	.combout(\muxB|out[15]~32_combout ),
	.cout());
// synopsys translate_off
defparam \muxB|out[15]~32 .lut_mask = 16'hFFC0;
defparam \muxB|out[15]~32 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: DSPMULT_X20_Y17_N0
cycloneive_mac_mult \multiplier|Mult0|auto_generated|mac_mult1 (
	.signa(gnd),
	.signb(gnd),
	.clk(gnd),
	.aclr(gnd),
	.ena(vcc),
	.dataa({\muxA|out[15]~15_combout ,\muxA|out[14]~14_combout ,\muxA|out[13]~13_combout ,\muxA|out[12]~12_combout ,\muxA|out[11]~11_combout ,\muxA|out[10]~10_combout ,\muxA|out[9]~9_combout ,\muxA|out[8]~8_combout ,\muxA|out[7]~7_combout ,\muxA|out[6]~6_combout ,
\muxA|out[5]~5_combout ,\muxA|out[4]~4_combout ,\muxA|out[3]~3_combout ,\muxA|out[2]~2_combout ,\muxA|out[1]~1_combout ,\muxA|out[0]~0_combout ,gnd,gnd}),
	.datab({\muxB|out[15]~32_combout ,\muxB|out[14]~30_combout ,\muxB|out[13]~28_combout ,\muxB|out[12]~26_combout ,\muxB|out[11]~24_combout ,\muxB|out[10]~22_combout ,\muxB|out[9]~20_combout ,\muxB|out[8]~18_combout ,\muxB|out[7]~16_combout ,\muxB|out[6]~14_combout ,
\muxB|out[5]~12_combout ,\muxB|out[4]~10_combout ,\muxB|out[3]~8_combout ,\muxB|out[2]~6_combout ,\muxB|out[1]~4_combout ,\muxB|out[0]~2_combout ,gnd,gnd}),
	.devclrn(devclrn),
	.devpor(devpor),
	.dataout(\multiplier|Mult0|auto_generated|mac_mult1_DATAOUT_bus ));
// synopsys translate_off
defparam \multiplier|Mult0|auto_generated|mac_mult1 .dataa_clock = "none";
defparam \multiplier|Mult0|auto_generated|mac_mult1 .dataa_width = 18;
defparam \multiplier|Mult0|auto_generated|mac_mult1 .datab_clock = "none";
defparam \multiplier|Mult0|auto_generated|mac_mult1 .datab_width = 18;
defparam \multiplier|Mult0|auto_generated|mac_mult1 .signa_clock = "none";
defparam \multiplier|Mult0|auto_generated|mac_mult1 .signb_clock = "none";
// synopsys translate_on

// Location: DSPOUT_X20_Y17_N2
cycloneive_mac_out \multiplier|Mult0|auto_generated|mac_out2 (
	.clk(gnd),
	.aclr(gnd),
	.ena(vcc),
	.dataa({\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT31 ,\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT30 ,\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT29 ,\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT28 ,
\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT27 ,\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT26 ,\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT25 ,\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT24 ,
\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT23 ,\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT22 ,\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT21 ,\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT20 ,
\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT19 ,\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT18 ,\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT17 ,\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT16 ,
\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT15 ,\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT14 ,\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT13 ,\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT12 ,
\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT11 ,\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT10 ,\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT9 ,\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT8 ,
\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT7 ,\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT6 ,\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT5 ,\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT4 ,
\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT3 ,\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT2 ,\multiplier|Mult0|auto_generated|mac_mult1~DATAOUT1 ,\multiplier|Mult0|auto_generated|mac_mult1~dataout ,\multiplier|Mult0|auto_generated|mac_mult1~3 ,
\multiplier|Mult0|auto_generated|mac_mult1~2 ,\multiplier|Mult0|auto_generated|mac_mult1~1 ,\multiplier|Mult0|auto_generated|mac_mult1~0 }),
	.devclrn(devclrn),
	.devpor(devpor),
	.dataout(\multiplier|Mult0|auto_generated|mac_out2_DATAOUT_bus ));
// synopsys translate_off
defparam \multiplier|Mult0|auto_generated|mac_out2 .dataa_width = 36;
defparam \multiplier|Mult0|auto_generated|mac_out2 .output_clock = "none";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N2
cycloneive_lcell_comb \tempreg|out~2 (
// Equation(s):
// \tempreg|out~2_combout  = (!\tempinit0~input_o  & ((\tempinit1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT29 )))

	.dataa(gnd),
	.datab(\tempinit1~input_o ),
	.datac(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT29 ),
	.datad(\tempinit0~input_o ),
	.cin(gnd),
	.combout(\tempreg|out~2_combout ),
	.cout());
// synopsys translate_off
defparam \tempreg|out~2 .lut_mask = 16'h00FC;
defparam \tempreg|out~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X28_Y24_N1
cycloneive_io_ibuf \templn~input (
	.i(templn),
	.ibar(gnd),
	.o(\templn~input_o ));
// synopsys translate_off
defparam \templn~input .bus_hold = "false";
defparam \templn~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N10
cycloneive_lcell_comb \tempreg|out[11]~1 (
// Equation(s):
// \tempreg|out[11]~1_combout  = (\tempinit0~input_o ) # ((\templn~input_o ) # (\tempinit1~input_o ))

	.dataa(\tempinit0~input_o ),
	.datab(gnd),
	.datac(\templn~input_o ),
	.datad(\tempinit1~input_o ),
	.cin(gnd),
	.combout(\tempreg|out[11]~1_combout ),
	.cout());
// synopsys translate_off
defparam \tempreg|out[11]~1 .lut_mask = 16'hFFFA;
defparam \tempreg|out[11]~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y17_N3
dffeas \tempreg|out[14] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\tempreg|out~2_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\tempreg|out[11]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\tempreg|out [14]),
	.prn(vcc));
// synopsys translate_off
defparam \tempreg|out[14] .is_wysiwyg = "true";
defparam \tempreg|out[14] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N16
cycloneive_lcell_comb \muxA|out[14]~14 (
// Equation(s):
// \muxA|out[14]~14_combout  = (\xsel~input_o  & (((\tempreg|out [14])))) # (!\xsel~input_o  & (\inX[14]~input_o  & (\tempsel~input_o )))

	.dataa(\inX[14]~input_o ),
	.datab(\tempsel~input_o ),
	.datac(\xsel~input_o ),
	.datad(\tempreg|out [14]),
	.cin(gnd),
	.combout(\muxA|out[14]~14_combout ),
	.cout());
// synopsys translate_off
defparam \muxA|out[14]~14 .lut_mask = 16'hF808;
defparam \muxA|out[14]~14 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y17_N28
cycloneive_lcell_comb \tempreg|out~3 (
// Equation(s):
// \tempreg|out~3_combout  = (!\tempinit0~input_o  & ((\tempinit1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT28 )))

	.dataa(\tempinit0~input_o ),
	.datab(gnd),
	.datac(\tempinit1~input_o ),
	.datad(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT28 ),
	.cin(gnd),
	.combout(\tempreg|out~3_combout ),
	.cout());
// synopsys translate_off
defparam \tempreg|out~3 .lut_mask = 16'h5550;
defparam \tempreg|out~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y17_N29
dffeas \tempreg|out[13] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\tempreg|out~3_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\tempreg|out[11]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\tempreg|out [13]),
	.prn(vcc));
// synopsys translate_off
defparam \tempreg|out[13] .is_wysiwyg = "true";
defparam \tempreg|out[13] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y17_N16
cycloneive_lcell_comb \muxA|out[13]~13 (
// Equation(s):
// \muxA|out[13]~13_combout  = (\xsel~input_o  & (((\tempreg|out [13])))) # (!\xsel~input_o  & (\inX[13]~input_o  & (\tempsel~input_o )))

	.dataa(\xsel~input_o ),
	.datab(\inX[13]~input_o ),
	.datac(\tempsel~input_o ),
	.datad(\tempreg|out [13]),
	.cin(gnd),
	.combout(\muxA|out[13]~13_combout ),
	.cout());
// synopsys translate_off
defparam \muxA|out[13]~13 .lut_mask = 16'hEA40;
defparam \muxA|out[13]~13 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y17_N16
cycloneive_lcell_comb \tempreg|out~4 (
// Equation(s):
// \tempreg|out~4_combout  = (!\tempinit0~input_o  & ((\multiplier|Mult0|auto_generated|mac_out2~DATAOUT27 ) # (\tempinit1~input_o )))

	.dataa(gnd),
	.datab(\tempinit0~input_o ),
	.datac(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT27 ),
	.datad(\tempinit1~input_o ),
	.cin(gnd),
	.combout(\tempreg|out~4_combout ),
	.cout());
// synopsys translate_off
defparam \tempreg|out~4 .lut_mask = 16'h3330;
defparam \tempreg|out~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X17_Y17_N17
dffeas \tempreg|out[12] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\tempreg|out~4_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\tempreg|out[11]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\tempreg|out [12]),
	.prn(vcc));
// synopsys translate_off
defparam \tempreg|out[12] .is_wysiwyg = "true";
defparam \tempreg|out[12] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y17_N22
cycloneive_lcell_comb \muxA|out[12]~12 (
// Equation(s):
// \muxA|out[12]~12_combout  = (\xsel~input_o  & (((\tempreg|out [12])))) # (!\xsel~input_o  & (\inX[12]~input_o  & (\tempsel~input_o )))

	.dataa(\xsel~input_o ),
	.datab(\inX[12]~input_o ),
	.datac(\tempsel~input_o ),
	.datad(\tempreg|out [12]),
	.cin(gnd),
	.combout(\muxA|out[12]~12_combout ),
	.cout());
// synopsys translate_off
defparam \muxA|out[12]~12 .lut_mask = 16'hEA40;
defparam \muxA|out[12]~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N28
cycloneive_lcell_comb \tempreg|out~5 (
// Equation(s):
// \tempreg|out~5_combout  = (!\tempinit0~input_o  & ((\tempinit1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT26 )))

	.dataa(\tempinit1~input_o ),
	.datab(gnd),
	.datac(\tempinit0~input_o ),
	.datad(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT26 ),
	.cin(gnd),
	.combout(\tempreg|out~5_combout ),
	.cout());
// synopsys translate_off
defparam \tempreg|out~5 .lut_mask = 16'h0F0A;
defparam \tempreg|out~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y17_N29
dffeas \tempreg|out[11] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\tempreg|out~5_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\tempreg|out[11]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\tempreg|out [11]),
	.prn(vcc));
// synopsys translate_off
defparam \tempreg|out[11] .is_wysiwyg = "true";
defparam \tempreg|out[11] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y17_N6
cycloneive_lcell_comb \muxA|out[11]~11 (
// Equation(s):
// \muxA|out[11]~11_combout  = (\xsel~input_o  & (((\tempreg|out [11])))) # (!\xsel~input_o  & (\tempsel~input_o  & (\inX[11]~input_o )))

	.dataa(\xsel~input_o ),
	.datab(\tempsel~input_o ),
	.datac(\inX[11]~input_o ),
	.datad(\tempreg|out [11]),
	.cin(gnd),
	.combout(\muxA|out[11]~11_combout ),
	.cout());
// synopsys translate_off
defparam \muxA|out[11]~11 .lut_mask = 16'hEA40;
defparam \muxA|out[11]~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N12
cycloneive_lcell_comb \tempreg|out~6 (
// Equation(s):
// \tempreg|out~6_combout  = (!\tempinit0~input_o  & ((\tempinit1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT25 )))

	.dataa(\tempinit1~input_o ),
	.datab(gnd),
	.datac(\tempinit0~input_o ),
	.datad(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT25 ),
	.cin(gnd),
	.combout(\tempreg|out~6_combout ),
	.cout());
// synopsys translate_off
defparam \tempreg|out~6 .lut_mask = 16'h0F0A;
defparam \tempreg|out~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X21_Y17_N13
dffeas \tempreg|out[10] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\tempreg|out~6_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\tempreg|out[11]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\tempreg|out [10]),
	.prn(vcc));
// synopsys translate_off
defparam \tempreg|out[10] .is_wysiwyg = "true";
defparam \tempreg|out[10] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N8
cycloneive_lcell_comb \muxA|out[10]~10 (
// Equation(s):
// \muxA|out[10]~10_combout  = (\xsel~input_o  & (((\tempreg|out [10])))) # (!\xsel~input_o  & (\inX[10]~input_o  & (\tempsel~input_o )))

	.dataa(\xsel~input_o ),
	.datab(\inX[10]~input_o ),
	.datac(\tempsel~input_o ),
	.datad(\tempreg|out [10]),
	.cin(gnd),
	.combout(\muxA|out[10]~10_combout ),
	.cout());
// synopsys translate_off
defparam \muxA|out[10]~10 .lut_mask = 16'hEA40;
defparam \muxA|out[10]~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N2
cycloneive_lcell_comb \tempreg|out~7 (
// Equation(s):
// \tempreg|out~7_combout  = (!\tempinit0~input_o  & ((\tempinit1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT24 )))

	.dataa(\tempinit1~input_o ),
	.datab(\tempinit0~input_o ),
	.datac(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT24 ),
	.datad(gnd),
	.cin(gnd),
	.combout(\tempreg|out~7_combout ),
	.cout());
// synopsys translate_off
defparam \tempreg|out~7 .lut_mask = 16'h3232;
defparam \tempreg|out~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X21_Y17_N3
dffeas \tempreg|out[9] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\tempreg|out~7_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\tempreg|out[11]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\tempreg|out [9]),
	.prn(vcc));
// synopsys translate_off
defparam \tempreg|out[9] .is_wysiwyg = "true";
defparam \tempreg|out[9] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N6
cycloneive_lcell_comb \muxA|out[9]~9 (
// Equation(s):
// \muxA|out[9]~9_combout  = (\xsel~input_o  & (((\tempreg|out [9])))) # (!\xsel~input_o  & (\inX[9]~input_o  & (\tempsel~input_o )))

	.dataa(\inX[9]~input_o ),
	.datab(\tempsel~input_o ),
	.datac(\xsel~input_o ),
	.datad(\tempreg|out [9]),
	.cin(gnd),
	.combout(\muxA|out[9]~9_combout ),
	.cout());
// synopsys translate_off
defparam \muxA|out[9]~9 .lut_mask = 16'hF808;
defparam \muxA|out[9]~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N20
cycloneive_lcell_comb \tempreg|out~8 (
// Equation(s):
// \tempreg|out~8_combout  = (!\tempinit0~input_o  & ((\tempinit1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT23 )))

	.dataa(\tempinit1~input_o ),
	.datab(gnd),
	.datac(\tempinit0~input_o ),
	.datad(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT23 ),
	.cin(gnd),
	.combout(\tempreg|out~8_combout ),
	.cout());
// synopsys translate_off
defparam \tempreg|out~8 .lut_mask = 16'h0F0A;
defparam \tempreg|out~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X21_Y17_N21
dffeas \tempreg|out[8] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\tempreg|out~8_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\tempreg|out[11]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\tempreg|out [8]),
	.prn(vcc));
// synopsys translate_off
defparam \tempreg|out[8] .is_wysiwyg = "true";
defparam \tempreg|out[8] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N0
cycloneive_lcell_comb \muxA|out[8]~8 (
// Equation(s):
// \muxA|out[8]~8_combout  = (\xsel~input_o  & (((\tempreg|out [8])))) # (!\xsel~input_o  & (\inX[8]~input_o  & (\tempsel~input_o )))

	.dataa(\inX[8]~input_o ),
	.datab(\tempsel~input_o ),
	.datac(\xsel~input_o ),
	.datad(\tempreg|out [8]),
	.cin(gnd),
	.combout(\muxA|out[8]~8_combout ),
	.cout());
// synopsys translate_off
defparam \muxA|out[8]~8 .lut_mask = 16'hF808;
defparam \muxA|out[8]~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N28
cycloneive_lcell_comb \tempreg|out~9 (
// Equation(s):
// \tempreg|out~9_combout  = (!\tempinit0~input_o  & ((\tempinit1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT22 )))

	.dataa(\tempinit0~input_o ),
	.datab(\tempinit1~input_o ),
	.datac(gnd),
	.datad(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT22 ),
	.cin(gnd),
	.combout(\tempreg|out~9_combout ),
	.cout());
// synopsys translate_off
defparam \tempreg|out~9 .lut_mask = 16'h5544;
defparam \tempreg|out~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y17_N29
dffeas \tempreg|out[7] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\tempreg|out~9_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\tempreg|out[11]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\tempreg|out [7]),
	.prn(vcc));
// synopsys translate_off
defparam \tempreg|out[7] .is_wysiwyg = "true";
defparam \tempreg|out[7] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N30
cycloneive_lcell_comb \muxA|out[7]~7 (
// Equation(s):
// \muxA|out[7]~7_combout  = (\xsel~input_o  & (((\tempreg|out [7])))) # (!\xsel~input_o  & (\inX[7]~input_o  & (\tempsel~input_o )))

	.dataa(\xsel~input_o ),
	.datab(\inX[7]~input_o ),
	.datac(\tempsel~input_o ),
	.datad(\tempreg|out [7]),
	.cin(gnd),
	.combout(\muxA|out[7]~7_combout ),
	.cout());
// synopsys translate_off
defparam \muxA|out[7]~7 .lut_mask = 16'hEA40;
defparam \muxA|out[7]~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N18
cycloneive_lcell_comb \tempreg|out~10 (
// Equation(s):
// \tempreg|out~10_combout  = (!\tempinit0~input_o  & ((\tempinit1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT21 )))

	.dataa(\tempinit0~input_o ),
	.datab(\tempinit1~input_o ),
	.datac(gnd),
	.datad(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT21 ),
	.cin(gnd),
	.combout(\tempreg|out~10_combout ),
	.cout());
// synopsys translate_off
defparam \tempreg|out~10 .lut_mask = 16'h5544;
defparam \tempreg|out~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y17_N19
dffeas \tempreg|out[6] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\tempreg|out~10_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\tempreg|out[11]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\tempreg|out [6]),
	.prn(vcc));
// synopsys translate_off
defparam \tempreg|out[6] .is_wysiwyg = "true";
defparam \tempreg|out[6] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N12
cycloneive_lcell_comb \muxA|out[6]~6 (
// Equation(s):
// \muxA|out[6]~6_combout  = (\xsel~input_o  & (((\tempreg|out [6])))) # (!\xsel~input_o  & (\tempsel~input_o  & (\inX[6]~input_o )))

	.dataa(\xsel~input_o ),
	.datab(\tempsel~input_o ),
	.datac(\inX[6]~input_o ),
	.datad(\tempreg|out [6]),
	.cin(gnd),
	.combout(\muxA|out[6]~6_combout ),
	.cout());
// synopsys translate_off
defparam \muxA|out[6]~6 .lut_mask = 16'hEA40;
defparam \muxA|out[6]~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N24
cycloneive_lcell_comb \tempreg|out~11 (
// Equation(s):
// \tempreg|out~11_combout  = (!\tempinit0~input_o  & ((\tempinit1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT20 )))

	.dataa(\tempinit0~input_o ),
	.datab(\tempinit1~input_o ),
	.datac(gnd),
	.datad(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT20 ),
	.cin(gnd),
	.combout(\tempreg|out~11_combout ),
	.cout());
// synopsys translate_off
defparam \tempreg|out~11 .lut_mask = 16'h5544;
defparam \tempreg|out~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y17_N25
dffeas \tempreg|out[5] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\tempreg|out~11_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\tempreg|out[11]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\tempreg|out [5]),
	.prn(vcc));
// synopsys translate_off
defparam \tempreg|out[5] .is_wysiwyg = "true";
defparam \tempreg|out[5] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N26
cycloneive_lcell_comb \muxA|out[5]~5 (
// Equation(s):
// \muxA|out[5]~5_combout  = (\xsel~input_o  & (((\tempreg|out [5])))) # (!\xsel~input_o  & (\tempsel~input_o  & (\inX[5]~input_o )))

	.dataa(\xsel~input_o ),
	.datab(\tempsel~input_o ),
	.datac(\inX[5]~input_o ),
	.datad(\tempreg|out [5]),
	.cin(gnd),
	.combout(\muxA|out[5]~5_combout ),
	.cout());
// synopsys translate_off
defparam \muxA|out[5]~5 .lut_mask = 16'hEA40;
defparam \muxA|out[5]~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N2
cycloneive_lcell_comb \tempreg|out~12 (
// Equation(s):
// \tempreg|out~12_combout  = (!\tempinit0~input_o  & ((\multiplier|Mult0|auto_generated|mac_out2~DATAOUT19 ) # (\tempinit1~input_o )))

	.dataa(\tempinit0~input_o ),
	.datab(gnd),
	.datac(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT19 ),
	.datad(\tempinit1~input_o ),
	.cin(gnd),
	.combout(\tempreg|out~12_combout ),
	.cout());
// synopsys translate_off
defparam \tempreg|out~12 .lut_mask = 16'h5550;
defparam \tempreg|out~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y17_N3
dffeas \tempreg|out[4] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\tempreg|out~12_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\tempreg|out[11]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\tempreg|out [4]),
	.prn(vcc));
// synopsys translate_off
defparam \tempreg|out[4] .is_wysiwyg = "true";
defparam \tempreg|out[4] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N4
cycloneive_lcell_comb \muxA|out[4]~4 (
// Equation(s):
// \muxA|out[4]~4_combout  = (\xsel~input_o  & (((\tempreg|out [4])))) # (!\xsel~input_o  & (\tempsel~input_o  & (\inX[4]~input_o )))

	.dataa(\xsel~input_o ),
	.datab(\tempsel~input_o ),
	.datac(\inX[4]~input_o ),
	.datad(\tempreg|out [4]),
	.cin(gnd),
	.combout(\muxA|out[4]~4_combout ),
	.cout());
// synopsys translate_off
defparam \muxA|out[4]~4 .lut_mask = 16'hEA40;
defparam \muxA|out[4]~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y17_N2
cycloneive_lcell_comb \tempreg|out~13 (
// Equation(s):
// \tempreg|out~13_combout  = (!\tempinit0~input_o  & ((\tempinit1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT18 )))

	.dataa(\tempinit0~input_o ),
	.datab(gnd),
	.datac(\tempinit1~input_o ),
	.datad(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT18 ),
	.cin(gnd),
	.combout(\tempreg|out~13_combout ),
	.cout());
// synopsys translate_off
defparam \tempreg|out~13 .lut_mask = 16'h5550;
defparam \tempreg|out~13 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y17_N3
dffeas \tempreg|out[3] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\tempreg|out~13_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\tempreg|out[11]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\tempreg|out [3]),
	.prn(vcc));
// synopsys translate_off
defparam \tempreg|out[3] .is_wysiwyg = "true";
defparam \tempreg|out[3] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y17_N0
cycloneive_lcell_comb \muxA|out[3]~3 (
// Equation(s):
// \muxA|out[3]~3_combout  = (\xsel~input_o  & (((\tempreg|out [3])))) # (!\xsel~input_o  & (\inX[3]~input_o  & (\tempsel~input_o )))

	.dataa(\xsel~input_o ),
	.datab(\inX[3]~input_o ),
	.datac(\tempsel~input_o ),
	.datad(\tempreg|out [3]),
	.cin(gnd),
	.combout(\muxA|out[3]~3_combout ),
	.cout());
// synopsys translate_off
defparam \muxA|out[3]~3 .lut_mask = 16'hEA40;
defparam \muxA|out[3]~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N14
cycloneive_lcell_comb \tempreg|out~14 (
// Equation(s):
// \tempreg|out~14_combout  = (!\tempinit0~input_o  & ((\tempinit1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT17 )))

	.dataa(\tempinit1~input_o ),
	.datab(gnd),
	.datac(\tempinit0~input_o ),
	.datad(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT17 ),
	.cin(gnd),
	.combout(\tempreg|out~14_combout ),
	.cout());
// synopsys translate_off
defparam \tempreg|out~14 .lut_mask = 16'h0F0A;
defparam \tempreg|out~14 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X21_Y17_N15
dffeas \tempreg|out[2] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\tempreg|out~14_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\tempreg|out[11]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\tempreg|out [2]),
	.prn(vcc));
// synopsys translate_off
defparam \tempreg|out[2] .is_wysiwyg = "true";
defparam \tempreg|out[2] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N14
cycloneive_lcell_comb \muxA|out[2]~2 (
// Equation(s):
// \muxA|out[2]~2_combout  = (\xsel~input_o  & (((\tempreg|out [2])))) # (!\xsel~input_o  & (\inX[2]~input_o  & (\tempsel~input_o )))

	.dataa(\xsel~input_o ),
	.datab(\inX[2]~input_o ),
	.datac(\tempsel~input_o ),
	.datad(\tempreg|out [2]),
	.cin(gnd),
	.combout(\muxA|out[2]~2_combout ),
	.cout());
// synopsys translate_off
defparam \muxA|out[2]~2 .lut_mask = 16'hEA40;
defparam \muxA|out[2]~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N24
cycloneive_lcell_comb \tempreg|out~15 (
// Equation(s):
// \tempreg|out~15_combout  = (!\tempinit0~input_o  & ((\tempinit1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT16 )))

	.dataa(gnd),
	.datab(\tempinit1~input_o ),
	.datac(\tempinit0~input_o ),
	.datad(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT16 ),
	.cin(gnd),
	.combout(\tempreg|out~15_combout ),
	.cout());
// synopsys translate_off
defparam \tempreg|out~15 .lut_mask = 16'h0F0C;
defparam \tempreg|out~15 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y17_N25
dffeas \tempreg|out[1] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\tempreg|out~15_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\tempreg|out[11]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\tempreg|out [1]),
	.prn(vcc));
// synopsys translate_off
defparam \tempreg|out[1] .is_wysiwyg = "true";
defparam \tempreg|out[1] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N22
cycloneive_lcell_comb \muxA|out[1]~1 (
// Equation(s):
// \muxA|out[1]~1_combout  = (\xsel~input_o  & (((\tempreg|out [1])))) # (!\xsel~input_o  & (\inX[1]~input_o  & (\tempsel~input_o )))

	.dataa(\inX[1]~input_o ),
	.datab(\tempsel~input_o ),
	.datac(\xsel~input_o ),
	.datad(\tempreg|out [1]),
	.cin(gnd),
	.combout(\muxA|out[1]~1_combout ),
	.cout());
// synopsys translate_off
defparam \muxA|out[1]~1 .lut_mask = 16'hF808;
defparam \muxA|out[1]~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N20
cycloneive_lcell_comb \tempreg|out~16 (
// Equation(s):
// \tempreg|out~16_combout  = (!\tempinit0~input_o  & ((\tempinit1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT15 )))

	.dataa(\tempinit0~input_o ),
	.datab(\tempinit1~input_o ),
	.datac(gnd),
	.datad(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT15 ),
	.cin(gnd),
	.combout(\tempreg|out~16_combout ),
	.cout());
// synopsys translate_off
defparam \tempreg|out~16 .lut_mask = 16'h5544;
defparam \tempreg|out~16 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y17_N21
dffeas \tempreg|out[0] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\tempreg|out~16_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\tempreg|out[11]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\tempreg|out [0]),
	.prn(vcc));
// synopsys translate_off
defparam \tempreg|out[0] .is_wysiwyg = "true";
defparam \tempreg|out[0] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N16
cycloneive_lcell_comb \muxA|out[0]~0 (
// Equation(s):
// \muxA|out[0]~0_combout  = (\xsel~input_o  & (((\tempreg|out [0])))) # (!\xsel~input_o  & (\inX[0]~input_o  & (\tempsel~input_o )))

	.dataa(\xsel~input_o ),
	.datab(\inX[0]~input_o ),
	.datac(\tempsel~input_o ),
	.datad(\tempreg|out [0]),
	.cin(gnd),
	.combout(\muxA|out[0]~0_combout ),
	.cout());
// synopsys translate_off
defparam \muxA|out[0]~0 .lut_mask = 16'hEA40;
defparam \muxA|out[0]~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y17_N12
cycloneive_lcell_comb \tempreg|out~0 (
// Equation(s):
// \tempreg|out~0_combout  = (!\tempinit0~input_o  & ((\tempinit1~input_o ) # (\multiplier|Mult0|auto_generated|mac_out2~DATAOUT30 )))

	.dataa(gnd),
	.datab(\tempinit1~input_o ),
	.datac(\tempinit0~input_o ),
	.datad(\multiplier|Mult0|auto_generated|mac_out2~DATAOUT30 ),
	.cin(gnd),
	.combout(\tempreg|out~0_combout ),
	.cout());
// synopsys translate_off
defparam \tempreg|out~0 .lut_mask = 16'h0F0C;
defparam \tempreg|out~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y17_N13
dffeas \tempreg|out[15] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\tempreg|out~0_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\tempreg|out[11]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\tempreg|out [15]),
	.prn(vcc));
// synopsys translate_off
defparam \tempreg|out[15] .is_wysiwyg = "true";
defparam \tempreg|out[15] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X28_Y13_N0
cycloneive_lcell_comb \inst|LPM_ADD_SUB_component|auto_generated|result[0]~0 (
// Equation(s):
// \inst|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout  = (\inst3|out [0] & (\tempreg|out [0] $ (VCC))) # (!\inst3|out [0] & (\tempreg|out [0] & VCC))
// \inst|LPM_ADD_SUB_component|auto_generated|result[0]~1  = CARRY((\inst3|out [0] & \tempreg|out [0]))

	.dataa(\inst3|out [0]),
	.datab(\tempreg|out [0]),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\inst|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout ),
	.cout(\inst|LPM_ADD_SUB_component|auto_generated|result[0]~1 ));
// synopsys translate_off
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[0]~0 .lut_mask = 16'h6688;
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[0]~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y13_N6
cycloneive_lcell_comb \inst3|out~16 (
// Equation(s):
// \inst3|out~16_combout  = (!\addinit0~input_o  & ((\addinit1~input_o ) # (\inst|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout )))

	.dataa(\addinit1~input_o ),
	.datab(gnd),
	.datac(\inst|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout ),
	.datad(\addinit0~input_o ),
	.cin(gnd),
	.combout(\inst3|out~16_combout ),
	.cout());
// synopsys translate_off
defparam \inst3|out~16 .lut_mask = 16'h00FA;
defparam \inst3|out~16 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X29_Y13_N7
dffeas \inst3|out[0] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\inst3|out~16_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\inst3|out[15]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst3|out [0]),
	.prn(vcc));
// synopsys translate_off
defparam \inst3|out[0] .is_wysiwyg = "true";
defparam \inst3|out[0] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X28_Y13_N2
cycloneive_lcell_comb \inst|LPM_ADD_SUB_component|auto_generated|result[1]~2 (
// Equation(s):
// \inst|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout  = (\inst3|out [1] & ((\tempreg|out [1] & (\inst|LPM_ADD_SUB_component|auto_generated|result[0]~1  & VCC)) # (!\tempreg|out [1] & (!\inst|LPM_ADD_SUB_component|auto_generated|result[0]~1 )))) 
// # (!\inst3|out [1] & ((\tempreg|out [1] & (!\inst|LPM_ADD_SUB_component|auto_generated|result[0]~1 )) # (!\tempreg|out [1] & ((\inst|LPM_ADD_SUB_component|auto_generated|result[0]~1 ) # (GND)))))
// \inst|LPM_ADD_SUB_component|auto_generated|result[1]~3  = CARRY((\inst3|out [1] & (!\tempreg|out [1] & !\inst|LPM_ADD_SUB_component|auto_generated|result[0]~1 )) # (!\inst3|out [1] & ((!\inst|LPM_ADD_SUB_component|auto_generated|result[0]~1 ) # 
// (!\tempreg|out [1]))))

	.dataa(\inst3|out [1]),
	.datab(\tempreg|out [1]),
	.datac(gnd),
	.datad(vcc),
	.cin(\inst|LPM_ADD_SUB_component|auto_generated|result[0]~1 ),
	.combout(\inst|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout ),
	.cout(\inst|LPM_ADD_SUB_component|auto_generated|result[1]~3 ));
// synopsys translate_off
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[1]~2 .lut_mask = 16'h9617;
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[1]~2 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y13_N20
cycloneive_lcell_comb \inst3|out~15 (
// Equation(s):
// \inst3|out~15_combout  = (!\addinit0~input_o  & ((\addinit1~input_o ) # (\inst|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout )))

	.dataa(\addinit0~input_o ),
	.datab(gnd),
	.datac(\addinit1~input_o ),
	.datad(\inst|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout ),
	.cin(gnd),
	.combout(\inst3|out~15_combout ),
	.cout());
// synopsys translate_off
defparam \inst3|out~15 .lut_mask = 16'h5550;
defparam \inst3|out~15 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X29_Y13_N21
dffeas \inst3|out[1] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\inst3|out~15_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\inst3|out[15]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst3|out [1]),
	.prn(vcc));
// synopsys translate_off
defparam \inst3|out[1] .is_wysiwyg = "true";
defparam \inst3|out[1] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X28_Y13_N4
cycloneive_lcell_comb \inst|LPM_ADD_SUB_component|auto_generated|result[2]~4 (
// Equation(s):
// \inst|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout  = ((\inst3|out [2] $ (\tempreg|out [2] $ (!\inst|LPM_ADD_SUB_component|auto_generated|result[1]~3 )))) # (GND)
// \inst|LPM_ADD_SUB_component|auto_generated|result[2]~5  = CARRY((\inst3|out [2] & ((\tempreg|out [2]) # (!\inst|LPM_ADD_SUB_component|auto_generated|result[1]~3 ))) # (!\inst3|out [2] & (\tempreg|out [2] & 
// !\inst|LPM_ADD_SUB_component|auto_generated|result[1]~3 )))

	.dataa(\inst3|out [2]),
	.datab(\tempreg|out [2]),
	.datac(gnd),
	.datad(vcc),
	.cin(\inst|LPM_ADD_SUB_component|auto_generated|result[1]~3 ),
	.combout(\inst|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout ),
	.cout(\inst|LPM_ADD_SUB_component|auto_generated|result[2]~5 ));
// synopsys translate_off
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[2]~4 .lut_mask = 16'h698E;
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[2]~4 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y13_N30
cycloneive_lcell_comb \inst3|out~14 (
// Equation(s):
// \inst3|out~14_combout  = (!\addinit0~input_o  & ((\addinit1~input_o ) # (\inst|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout )))

	.dataa(\addinit1~input_o ),
	.datab(gnd),
	.datac(\inst|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout ),
	.datad(\addinit0~input_o ),
	.cin(gnd),
	.combout(\inst3|out~14_combout ),
	.cout());
// synopsys translate_off
defparam \inst3|out~14 .lut_mask = 16'h00FA;
defparam \inst3|out~14 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X29_Y13_N31
dffeas \inst3|out[2] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\inst3|out~14_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\inst3|out[15]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst3|out [2]),
	.prn(vcc));
// synopsys translate_off
defparam \inst3|out[2] .is_wysiwyg = "true";
defparam \inst3|out[2] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X28_Y13_N6
cycloneive_lcell_comb \inst|LPM_ADD_SUB_component|auto_generated|result[3]~6 (
// Equation(s):
// \inst|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout  = (\inst3|out [3] & ((\tempreg|out [3] & (\inst|LPM_ADD_SUB_component|auto_generated|result[2]~5  & VCC)) # (!\tempreg|out [3] & (!\inst|LPM_ADD_SUB_component|auto_generated|result[2]~5 )))) 
// # (!\inst3|out [3] & ((\tempreg|out [3] & (!\inst|LPM_ADD_SUB_component|auto_generated|result[2]~5 )) # (!\tempreg|out [3] & ((\inst|LPM_ADD_SUB_component|auto_generated|result[2]~5 ) # (GND)))))
// \inst|LPM_ADD_SUB_component|auto_generated|result[3]~7  = CARRY((\inst3|out [3] & (!\tempreg|out [3] & !\inst|LPM_ADD_SUB_component|auto_generated|result[2]~5 )) # (!\inst3|out [3] & ((!\inst|LPM_ADD_SUB_component|auto_generated|result[2]~5 ) # 
// (!\tempreg|out [3]))))

	.dataa(\inst3|out [3]),
	.datab(\tempreg|out [3]),
	.datac(gnd),
	.datad(vcc),
	.cin(\inst|LPM_ADD_SUB_component|auto_generated|result[2]~5 ),
	.combout(\inst|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout ),
	.cout(\inst|LPM_ADD_SUB_component|auto_generated|result[3]~7 ));
// synopsys translate_off
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[3]~6 .lut_mask = 16'h9617;
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[3]~6 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y13_N4
cycloneive_lcell_comb \inst3|out~13 (
// Equation(s):
// \inst3|out~13_combout  = (!\addinit0~input_o  & ((\addinit1~input_o ) # (\inst|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout )))

	.dataa(\addinit1~input_o ),
	.datab(gnd),
	.datac(\inst|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout ),
	.datad(\addinit0~input_o ),
	.cin(gnd),
	.combout(\inst3|out~13_combout ),
	.cout());
// synopsys translate_off
defparam \inst3|out~13 .lut_mask = 16'h00FA;
defparam \inst3|out~13 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X29_Y13_N5
dffeas \inst3|out[3] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\inst3|out~13_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\inst3|out[15]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst3|out [3]),
	.prn(vcc));
// synopsys translate_off
defparam \inst3|out[3] .is_wysiwyg = "true";
defparam \inst3|out[3] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X28_Y13_N8
cycloneive_lcell_comb \inst|LPM_ADD_SUB_component|auto_generated|result[4]~8 (
// Equation(s):
// \inst|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout  = ((\inst3|out [4] $ (\tempreg|out [4] $ (!\inst|LPM_ADD_SUB_component|auto_generated|result[3]~7 )))) # (GND)
// \inst|LPM_ADD_SUB_component|auto_generated|result[4]~9  = CARRY((\inst3|out [4] & ((\tempreg|out [4]) # (!\inst|LPM_ADD_SUB_component|auto_generated|result[3]~7 ))) # (!\inst3|out [4] & (\tempreg|out [4] & 
// !\inst|LPM_ADD_SUB_component|auto_generated|result[3]~7 )))

	.dataa(\inst3|out [4]),
	.datab(\tempreg|out [4]),
	.datac(gnd),
	.datad(vcc),
	.cin(\inst|LPM_ADD_SUB_component|auto_generated|result[3]~7 ),
	.combout(\inst|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout ),
	.cout(\inst|LPM_ADD_SUB_component|auto_generated|result[4]~9 ));
// synopsys translate_off
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[4]~8 .lut_mask = 16'h698E;
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[4]~8 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y13_N2
cycloneive_lcell_comb \inst3|out~12 (
// Equation(s):
// \inst3|out~12_combout  = (!\addinit0~input_o  & ((\addinit1~input_o ) # (\inst|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout )))

	.dataa(\addinit0~input_o ),
	.datab(gnd),
	.datac(\addinit1~input_o ),
	.datad(\inst|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout ),
	.cin(gnd),
	.combout(\inst3|out~12_combout ),
	.cout());
// synopsys translate_off
defparam \inst3|out~12 .lut_mask = 16'h5550;
defparam \inst3|out~12 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X29_Y13_N3
dffeas \inst3|out[4] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\inst3|out~12_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\inst3|out[15]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst3|out [4]),
	.prn(vcc));
// synopsys translate_off
defparam \inst3|out[4] .is_wysiwyg = "true";
defparam \inst3|out[4] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X28_Y13_N10
cycloneive_lcell_comb \inst|LPM_ADD_SUB_component|auto_generated|result[5]~10 (
// Equation(s):
// \inst|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout  = (\tempreg|out [5] & ((\inst3|out [5] & (\inst|LPM_ADD_SUB_component|auto_generated|result[4]~9  & VCC)) # (!\inst3|out [5] & (!\inst|LPM_ADD_SUB_component|auto_generated|result[4]~9 )))) # 
// (!\tempreg|out [5] & ((\inst3|out [5] & (!\inst|LPM_ADD_SUB_component|auto_generated|result[4]~9 )) # (!\inst3|out [5] & ((\inst|LPM_ADD_SUB_component|auto_generated|result[4]~9 ) # (GND)))))
// \inst|LPM_ADD_SUB_component|auto_generated|result[5]~11  = CARRY((\tempreg|out [5] & (!\inst3|out [5] & !\inst|LPM_ADD_SUB_component|auto_generated|result[4]~9 )) # (!\tempreg|out [5] & ((!\inst|LPM_ADD_SUB_component|auto_generated|result[4]~9 ) # 
// (!\inst3|out [5]))))

	.dataa(\tempreg|out [5]),
	.datab(\inst3|out [5]),
	.datac(gnd),
	.datad(vcc),
	.cin(\inst|LPM_ADD_SUB_component|auto_generated|result[4]~9 ),
	.combout(\inst|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout ),
	.cout(\inst|LPM_ADD_SUB_component|auto_generated|result[5]~11 ));
// synopsys translate_off
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[5]~10 .lut_mask = 16'h9617;
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[5]~10 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y13_N28
cycloneive_lcell_comb \inst3|out~11 (
// Equation(s):
// \inst3|out~11_combout  = (!\addinit0~input_o  & ((\addinit1~input_o ) # (\inst|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout )))

	.dataa(\addinit0~input_o ),
	.datab(gnd),
	.datac(\addinit1~input_o ),
	.datad(\inst|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout ),
	.cin(gnd),
	.combout(\inst3|out~11_combout ),
	.cout());
// synopsys translate_off
defparam \inst3|out~11 .lut_mask = 16'h5550;
defparam \inst3|out~11 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X29_Y13_N29
dffeas \inst3|out[5] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\inst3|out~11_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\inst3|out[15]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst3|out [5]),
	.prn(vcc));
// synopsys translate_off
defparam \inst3|out[5] .is_wysiwyg = "true";
defparam \inst3|out[5] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X28_Y13_N12
cycloneive_lcell_comb \inst|LPM_ADD_SUB_component|auto_generated|result[6]~12 (
// Equation(s):
// \inst|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout  = ((\tempreg|out [6] $ (\inst3|out [6] $ (!\inst|LPM_ADD_SUB_component|auto_generated|result[5]~11 )))) # (GND)
// \inst|LPM_ADD_SUB_component|auto_generated|result[6]~13  = CARRY((\tempreg|out [6] & ((\inst3|out [6]) # (!\inst|LPM_ADD_SUB_component|auto_generated|result[5]~11 ))) # (!\tempreg|out [6] & (\inst3|out [6] & 
// !\inst|LPM_ADD_SUB_component|auto_generated|result[5]~11 )))

	.dataa(\tempreg|out [6]),
	.datab(\inst3|out [6]),
	.datac(gnd),
	.datad(vcc),
	.cin(\inst|LPM_ADD_SUB_component|auto_generated|result[5]~11 ),
	.combout(\inst|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout ),
	.cout(\inst|LPM_ADD_SUB_component|auto_generated|result[6]~13 ));
// synopsys translate_off
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[6]~12 .lut_mask = 16'h698E;
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[6]~12 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y13_N18
cycloneive_lcell_comb \inst3|out~10 (
// Equation(s):
// \inst3|out~10_combout  = (!\addinit0~input_o  & ((\addinit1~input_o ) # (\inst|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout )))

	.dataa(\addinit0~input_o ),
	.datab(gnd),
	.datac(\addinit1~input_o ),
	.datad(\inst|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout ),
	.cin(gnd),
	.combout(\inst3|out~10_combout ),
	.cout());
// synopsys translate_off
defparam \inst3|out~10 .lut_mask = 16'h5550;
defparam \inst3|out~10 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X29_Y13_N19
dffeas \inst3|out[6] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\inst3|out~10_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\inst3|out[15]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst3|out [6]),
	.prn(vcc));
// synopsys translate_off
defparam \inst3|out[6] .is_wysiwyg = "true";
defparam \inst3|out[6] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X28_Y13_N14
cycloneive_lcell_comb \inst|LPM_ADD_SUB_component|auto_generated|result[7]~14 (
// Equation(s):
// \inst|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout  = (\tempreg|out [7] & ((\inst3|out [7] & (\inst|LPM_ADD_SUB_component|auto_generated|result[6]~13  & VCC)) # (!\inst3|out [7] & (!\inst|LPM_ADD_SUB_component|auto_generated|result[6]~13 )))) 
// # (!\tempreg|out [7] & ((\inst3|out [7] & (!\inst|LPM_ADD_SUB_component|auto_generated|result[6]~13 )) # (!\inst3|out [7] & ((\inst|LPM_ADD_SUB_component|auto_generated|result[6]~13 ) # (GND)))))
// \inst|LPM_ADD_SUB_component|auto_generated|result[7]~15  = CARRY((\tempreg|out [7] & (!\inst3|out [7] & !\inst|LPM_ADD_SUB_component|auto_generated|result[6]~13 )) # (!\tempreg|out [7] & ((!\inst|LPM_ADD_SUB_component|auto_generated|result[6]~13 ) # 
// (!\inst3|out [7]))))

	.dataa(\tempreg|out [7]),
	.datab(\inst3|out [7]),
	.datac(gnd),
	.datad(vcc),
	.cin(\inst|LPM_ADD_SUB_component|auto_generated|result[6]~13 ),
	.combout(\inst|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout ),
	.cout(\inst|LPM_ADD_SUB_component|auto_generated|result[7]~15 ));
// synopsys translate_off
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[7]~14 .lut_mask = 16'h9617;
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[7]~14 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y13_N16
cycloneive_lcell_comb \inst3|out~9 (
// Equation(s):
// \inst3|out~9_combout  = (!\addinit0~input_o  & ((\addinit1~input_o ) # (\inst|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout )))

	.dataa(\addinit0~input_o ),
	.datab(gnd),
	.datac(\addinit1~input_o ),
	.datad(\inst|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout ),
	.cin(gnd),
	.combout(\inst3|out~9_combout ),
	.cout());
// synopsys translate_off
defparam \inst3|out~9 .lut_mask = 16'h5550;
defparam \inst3|out~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X29_Y13_N17
dffeas \inst3|out[7] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\inst3|out~9_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\inst3|out[15]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst3|out [7]),
	.prn(vcc));
// synopsys translate_off
defparam \inst3|out[7] .is_wysiwyg = "true";
defparam \inst3|out[7] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X28_Y13_N16
cycloneive_lcell_comb \inst|LPM_ADD_SUB_component|auto_generated|result[8]~16 (
// Equation(s):
// \inst|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout  = ((\inst3|out [8] $ (\tempreg|out [8] $ (!\inst|LPM_ADD_SUB_component|auto_generated|result[7]~15 )))) # (GND)
// \inst|LPM_ADD_SUB_component|auto_generated|result[8]~17  = CARRY((\inst3|out [8] & ((\tempreg|out [8]) # (!\inst|LPM_ADD_SUB_component|auto_generated|result[7]~15 ))) # (!\inst3|out [8] & (\tempreg|out [8] & 
// !\inst|LPM_ADD_SUB_component|auto_generated|result[7]~15 )))

	.dataa(\inst3|out [8]),
	.datab(\tempreg|out [8]),
	.datac(gnd),
	.datad(vcc),
	.cin(\inst|LPM_ADD_SUB_component|auto_generated|result[7]~15 ),
	.combout(\inst|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout ),
	.cout(\inst|LPM_ADD_SUB_component|auto_generated|result[8]~17 ));
// synopsys translate_off
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[8]~16 .lut_mask = 16'h698E;
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[8]~16 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y13_N22
cycloneive_lcell_comb \inst3|out~8 (
// Equation(s):
// \inst3|out~8_combout  = (!\addinit0~input_o  & ((\addinit1~input_o ) # (\inst|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout )))

	.dataa(\addinit1~input_o ),
	.datab(gnd),
	.datac(\inst|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout ),
	.datad(\addinit0~input_o ),
	.cin(gnd),
	.combout(\inst3|out~8_combout ),
	.cout());
// synopsys translate_off
defparam \inst3|out~8 .lut_mask = 16'h00FA;
defparam \inst3|out~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X29_Y13_N23
dffeas \inst3|out[8] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\inst3|out~8_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\inst3|out[15]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst3|out [8]),
	.prn(vcc));
// synopsys translate_off
defparam \inst3|out[8] .is_wysiwyg = "true";
defparam \inst3|out[8] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X28_Y13_N18
cycloneive_lcell_comb \inst|LPM_ADD_SUB_component|auto_generated|result[9]~18 (
// Equation(s):
// \inst|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout  = (\tempreg|out [9] & ((\inst3|out [9] & (\inst|LPM_ADD_SUB_component|auto_generated|result[8]~17  & VCC)) # (!\inst3|out [9] & (!\inst|LPM_ADD_SUB_component|auto_generated|result[8]~17 )))) 
// # (!\tempreg|out [9] & ((\inst3|out [9] & (!\inst|LPM_ADD_SUB_component|auto_generated|result[8]~17 )) # (!\inst3|out [9] & ((\inst|LPM_ADD_SUB_component|auto_generated|result[8]~17 ) # (GND)))))
// \inst|LPM_ADD_SUB_component|auto_generated|result[9]~19  = CARRY((\tempreg|out [9] & (!\inst3|out [9] & !\inst|LPM_ADD_SUB_component|auto_generated|result[8]~17 )) # (!\tempreg|out [9] & ((!\inst|LPM_ADD_SUB_component|auto_generated|result[8]~17 ) # 
// (!\inst3|out [9]))))

	.dataa(\tempreg|out [9]),
	.datab(\inst3|out [9]),
	.datac(gnd),
	.datad(vcc),
	.cin(\inst|LPM_ADD_SUB_component|auto_generated|result[8]~17 ),
	.combout(\inst|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout ),
	.cout(\inst|LPM_ADD_SUB_component|auto_generated|result[9]~19 ));
// synopsys translate_off
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[9]~18 .lut_mask = 16'h9617;
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[9]~18 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y13_N12
cycloneive_lcell_comb \inst3|out~7 (
// Equation(s):
// \inst3|out~7_combout  = (!\addinit0~input_o  & ((\addinit1~input_o ) # (\inst|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout )))

	.dataa(\addinit0~input_o ),
	.datab(gnd),
	.datac(\addinit1~input_o ),
	.datad(\inst|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout ),
	.cin(gnd),
	.combout(\inst3|out~7_combout ),
	.cout());
// synopsys translate_off
defparam \inst3|out~7 .lut_mask = 16'h5550;
defparam \inst3|out~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X29_Y13_N13
dffeas \inst3|out[9] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\inst3|out~7_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\inst3|out[15]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst3|out [9]),
	.prn(vcc));
// synopsys translate_off
defparam \inst3|out[9] .is_wysiwyg = "true";
defparam \inst3|out[9] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X28_Y13_N20
cycloneive_lcell_comb \inst|LPM_ADD_SUB_component|auto_generated|result[10]~20 (
// Equation(s):
// \inst|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout  = ((\tempreg|out [10] $ (\inst3|out [10] $ (!\inst|LPM_ADD_SUB_component|auto_generated|result[9]~19 )))) # (GND)
// \inst|LPM_ADD_SUB_component|auto_generated|result[10]~21  = CARRY((\tempreg|out [10] & ((\inst3|out [10]) # (!\inst|LPM_ADD_SUB_component|auto_generated|result[9]~19 ))) # (!\tempreg|out [10] & (\inst3|out [10] & 
// !\inst|LPM_ADD_SUB_component|auto_generated|result[9]~19 )))

	.dataa(\tempreg|out [10]),
	.datab(\inst3|out [10]),
	.datac(gnd),
	.datad(vcc),
	.cin(\inst|LPM_ADD_SUB_component|auto_generated|result[9]~19 ),
	.combout(\inst|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout ),
	.cout(\inst|LPM_ADD_SUB_component|auto_generated|result[10]~21 ));
// synopsys translate_off
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[10]~20 .lut_mask = 16'h698E;
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[10]~20 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y13_N26
cycloneive_lcell_comb \inst3|out~6 (
// Equation(s):
// \inst3|out~6_combout  = (!\addinit0~input_o  & ((\addinit1~input_o ) # (\inst|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout )))

	.dataa(\addinit0~input_o ),
	.datab(gnd),
	.datac(\addinit1~input_o ),
	.datad(\inst|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout ),
	.cin(gnd),
	.combout(\inst3|out~6_combout ),
	.cout());
// synopsys translate_off
defparam \inst3|out~6 .lut_mask = 16'h5550;
defparam \inst3|out~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X29_Y13_N27
dffeas \inst3|out[10] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\inst3|out~6_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\inst3|out[15]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst3|out [10]),
	.prn(vcc));
// synopsys translate_off
defparam \inst3|out[10] .is_wysiwyg = "true";
defparam \inst3|out[10] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X28_Y13_N22
cycloneive_lcell_comb \inst|LPM_ADD_SUB_component|auto_generated|result[11]~22 (
// Equation(s):
// \inst|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout  = (\tempreg|out [11] & ((\inst3|out [11] & (\inst|LPM_ADD_SUB_component|auto_generated|result[10]~21  & VCC)) # (!\inst3|out [11] & 
// (!\inst|LPM_ADD_SUB_component|auto_generated|result[10]~21 )))) # (!\tempreg|out [11] & ((\inst3|out [11] & (!\inst|LPM_ADD_SUB_component|auto_generated|result[10]~21 )) # (!\inst3|out [11] & ((\inst|LPM_ADD_SUB_component|auto_generated|result[10]~21 ) # 
// (GND)))))
// \inst|LPM_ADD_SUB_component|auto_generated|result[11]~23  = CARRY((\tempreg|out [11] & (!\inst3|out [11] & !\inst|LPM_ADD_SUB_component|auto_generated|result[10]~21 )) # (!\tempreg|out [11] & ((!\inst|LPM_ADD_SUB_component|auto_generated|result[10]~21 ) # 
// (!\inst3|out [11]))))

	.dataa(\tempreg|out [11]),
	.datab(\inst3|out [11]),
	.datac(gnd),
	.datad(vcc),
	.cin(\inst|LPM_ADD_SUB_component|auto_generated|result[10]~21 ),
	.combout(\inst|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout ),
	.cout(\inst|LPM_ADD_SUB_component|auto_generated|result[11]~23 ));
// synopsys translate_off
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[11]~22 .lut_mask = 16'h9617;
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[11]~22 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y13_N0
cycloneive_lcell_comb \inst3|out~5 (
// Equation(s):
// \inst3|out~5_combout  = (!\addinit0~input_o  & ((\addinit1~input_o ) # (\inst|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout )))

	.dataa(\addinit0~input_o ),
	.datab(gnd),
	.datac(\addinit1~input_o ),
	.datad(\inst|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout ),
	.cin(gnd),
	.combout(\inst3|out~5_combout ),
	.cout());
// synopsys translate_off
defparam \inst3|out~5 .lut_mask = 16'h5550;
defparam \inst3|out~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X29_Y13_N1
dffeas \inst3|out[11] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\inst3|out~5_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\inst3|out[15]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst3|out [11]),
	.prn(vcc));
// synopsys translate_off
defparam \inst3|out[11] .is_wysiwyg = "true";
defparam \inst3|out[11] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X28_Y13_N24
cycloneive_lcell_comb \inst|LPM_ADD_SUB_component|auto_generated|result[12]~24 (
// Equation(s):
// \inst|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout  = ((\tempreg|out [12] $ (\inst3|out [12] $ (!\inst|LPM_ADD_SUB_component|auto_generated|result[11]~23 )))) # (GND)
// \inst|LPM_ADD_SUB_component|auto_generated|result[12]~25  = CARRY((\tempreg|out [12] & ((\inst3|out [12]) # (!\inst|LPM_ADD_SUB_component|auto_generated|result[11]~23 ))) # (!\tempreg|out [12] & (\inst3|out [12] & 
// !\inst|LPM_ADD_SUB_component|auto_generated|result[11]~23 )))

	.dataa(\tempreg|out [12]),
	.datab(\inst3|out [12]),
	.datac(gnd),
	.datad(vcc),
	.cin(\inst|LPM_ADD_SUB_component|auto_generated|result[11]~23 ),
	.combout(\inst|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout ),
	.cout(\inst|LPM_ADD_SUB_component|auto_generated|result[12]~25 ));
// synopsys translate_off
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[12]~24 .lut_mask = 16'h698E;
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[12]~24 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y13_N14
cycloneive_lcell_comb \inst3|out~4 (
// Equation(s):
// \inst3|out~4_combout  = (!\addinit0~input_o  & ((\addinit1~input_o ) # (\inst|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout )))

	.dataa(\addinit0~input_o ),
	.datab(gnd),
	.datac(\addinit1~input_o ),
	.datad(\inst|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout ),
	.cin(gnd),
	.combout(\inst3|out~4_combout ),
	.cout());
// synopsys translate_off
defparam \inst3|out~4 .lut_mask = 16'h5550;
defparam \inst3|out~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X29_Y13_N15
dffeas \inst3|out[12] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\inst3|out~4_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\inst3|out[15]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst3|out [12]),
	.prn(vcc));
// synopsys translate_off
defparam \inst3|out[12] .is_wysiwyg = "true";
defparam \inst3|out[12] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X28_Y13_N26
cycloneive_lcell_comb \inst|LPM_ADD_SUB_component|auto_generated|result[13]~26 (
// Equation(s):
// \inst|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout  = (\tempreg|out [13] & ((\inst3|out [13] & (\inst|LPM_ADD_SUB_component|auto_generated|result[12]~25  & VCC)) # (!\inst3|out [13] & 
// (!\inst|LPM_ADD_SUB_component|auto_generated|result[12]~25 )))) # (!\tempreg|out [13] & ((\inst3|out [13] & (!\inst|LPM_ADD_SUB_component|auto_generated|result[12]~25 )) # (!\inst3|out [13] & ((\inst|LPM_ADD_SUB_component|auto_generated|result[12]~25 ) # 
// (GND)))))
// \inst|LPM_ADD_SUB_component|auto_generated|result[13]~27  = CARRY((\tempreg|out [13] & (!\inst3|out [13] & !\inst|LPM_ADD_SUB_component|auto_generated|result[12]~25 )) # (!\tempreg|out [13] & ((!\inst|LPM_ADD_SUB_component|auto_generated|result[12]~25 ) # 
// (!\inst3|out [13]))))

	.dataa(\tempreg|out [13]),
	.datab(\inst3|out [13]),
	.datac(gnd),
	.datad(vcc),
	.cin(\inst|LPM_ADD_SUB_component|auto_generated|result[12]~25 ),
	.combout(\inst|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout ),
	.cout(\inst|LPM_ADD_SUB_component|auto_generated|result[13]~27 ));
// synopsys translate_off
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[13]~26 .lut_mask = 16'h9617;
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[13]~26 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y13_N8
cycloneive_lcell_comb \inst3|out~3 (
// Equation(s):
// \inst3|out~3_combout  = (!\addinit0~input_o  & ((\addinit1~input_o ) # (\inst|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout )))

	.dataa(\addinit1~input_o ),
	.datab(gnd),
	.datac(\inst|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout ),
	.datad(\addinit0~input_o ),
	.cin(gnd),
	.combout(\inst3|out~3_combout ),
	.cout());
// synopsys translate_off
defparam \inst3|out~3 .lut_mask = 16'h00FA;
defparam \inst3|out~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X29_Y13_N9
dffeas \inst3|out[13] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\inst3|out~3_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\inst3|out[15]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst3|out [13]),
	.prn(vcc));
// synopsys translate_off
defparam \inst3|out[13] .is_wysiwyg = "true";
defparam \inst3|out[13] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X28_Y13_N28
cycloneive_lcell_comb \inst|LPM_ADD_SUB_component|auto_generated|result[14]~28 (
// Equation(s):
// \inst|LPM_ADD_SUB_component|auto_generated|result[14]~28_combout  = ((\tempreg|out [14] $ (\inst3|out [14] $ (!\inst|LPM_ADD_SUB_component|auto_generated|result[13]~27 )))) # (GND)
// \inst|LPM_ADD_SUB_component|auto_generated|result[14]~29  = CARRY((\tempreg|out [14] & ((\inst3|out [14]) # (!\inst|LPM_ADD_SUB_component|auto_generated|result[13]~27 ))) # (!\tempreg|out [14] & (\inst3|out [14] & 
// !\inst|LPM_ADD_SUB_component|auto_generated|result[13]~27 )))

	.dataa(\tempreg|out [14]),
	.datab(\inst3|out [14]),
	.datac(gnd),
	.datad(vcc),
	.cin(\inst|LPM_ADD_SUB_component|auto_generated|result[13]~27 ),
	.combout(\inst|LPM_ADD_SUB_component|auto_generated|result[14]~28_combout ),
	.cout(\inst|LPM_ADD_SUB_component|auto_generated|result[14]~29 ));
// synopsys translate_off
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[14]~28 .lut_mask = 16'h698E;
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[14]~28 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y13_N10
cycloneive_lcell_comb \inst3|out~2 (
// Equation(s):
// \inst3|out~2_combout  = (!\addinit0~input_o  & ((\addinit1~input_o ) # (\inst|LPM_ADD_SUB_component|auto_generated|result[14]~28_combout )))

	.dataa(\addinit0~input_o ),
	.datab(gnd),
	.datac(\addinit1~input_o ),
	.datad(\inst|LPM_ADD_SUB_component|auto_generated|result[14]~28_combout ),
	.cin(gnd),
	.combout(\inst3|out~2_combout ),
	.cout());
// synopsys translate_off
defparam \inst3|out~2 .lut_mask = 16'h5550;
defparam \inst3|out~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X29_Y13_N11
dffeas \inst3|out[14] (
	.clk(\clock~inputclkctrl_outclk ),
	.d(\inst3|out~2_combout ),
	.asdata(vcc),
	.clrn(!\reset~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\inst3|out[15]~1_combout ),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\inst3|out [14]),
	.prn(vcc));
// synopsys translate_off
defparam \inst3|out[14] .is_wysiwyg = "true";
defparam \inst3|out[14] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X28_Y13_N30
cycloneive_lcell_comb \inst|LPM_ADD_SUB_component|auto_generated|result[15]~30 (
// Equation(s):
// \inst|LPM_ADD_SUB_component|auto_generated|result[15]~30_combout  = \inst3|out [15] $ (\inst|LPM_ADD_SUB_component|auto_generated|result[14]~29  $ (\tempreg|out [15]))

	.dataa(gnd),
	.datab(\inst3|out [15]),
	.datac(gnd),
	.datad(\tempreg|out [15]),
	.cin(\inst|LPM_ADD_SUB_component|auto_generated|result[14]~29 ),
	.combout(\inst|LPM_ADD_SUB_component|auto_generated|result[15]~30_combout ),
	.cout());
// synopsys translate_off
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[15]~30 .lut_mask = 16'hC33C;
defparam \inst|LPM_ADD_SUB_component|auto_generated|result[15]~30 .sum_lutc_input = "cin";
// synopsys translate_on

assign result[16] = \result[16]~output_o ;

assign result[15] = \result[15]~output_o ;

assign result[14] = \result[14]~output_o ;

assign result[13] = \result[13]~output_o ;

assign result[12] = \result[12]~output_o ;

assign result[11] = \result[11]~output_o ;

assign result[10] = \result[10]~output_o ;

assign result[9] = \result[9]~output_o ;

assign result[8] = \result[8]~output_o ;

assign result[7] = \result[7]~output_o ;

assign result[6] = \result[6]~output_o ;

assign result[5] = \result[5]~output_o ;

assign result[4] = \result[4]~output_o ;

assign result[3] = \result[3]~output_o ;

assign result[2] = \result[2]~output_o ;

assign result[1] = \result[1]~output_o ;

assign result[0] = \result[0]~output_o ;

endmodule

module hard_block (

	devpor,
	devclrn,
	devoe);

// Design Ports Information
// ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
// ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
// ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
// ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
// ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

input 	devpor;
input 	devclrn;
input 	devoe;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

wire \~ALTERA_ASDO_DATA1~~padout ;
wire \~ALTERA_FLASH_nCE_nCSO~~padout ;
wire \~ALTERA_DATA0~~padout ;
wire \~ALTERA_ASDO_DATA1~~ibuf_o ;
wire \~ALTERA_FLASH_nCE_nCSO~~ibuf_o ;
wire \~ALTERA_DATA0~~ibuf_o ;


endmodule

