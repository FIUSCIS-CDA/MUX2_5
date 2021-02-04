// Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus II License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"
// CREATED		"Tue Feb  2 07:04:21 2021"

module MUX2_5(
	S,
	A,
	B,
	Y
);


input wire	S;
input wire	[4:0] A;
input wire	[4:0] B;
output wire	[4:0] Y;

wire	[4:0] Y_ALTERA_SYNTHESIZED;





MUX2	b2v_bit0(
	.S(S),
	.A(A[0]),
	.B(B[0]),
	.Y(Y_ALTERA_SYNTHESIZED[0]));


MUX2	b2v_bit1(
	.S(S),
	.A(A[1]),
	.B(B[1]),
	.Y(Y_ALTERA_SYNTHESIZED[1]));


MUX2	b2v_bit2(
	.S(S),
	.A(A[2]),
	.B(B[2]),
	.Y(Y_ALTERA_SYNTHESIZED[2]));


MUX2	b2v_bit3(
	.S(S),
	.A(A[3]),
	.B(B[3]),
	.Y(Y_ALTERA_SYNTHESIZED[3]));


MUX2	b2v_bit4(
	.S(S),
	.A(A[4]),
	.B(B[4]),
	.Y(Y_ALTERA_SYNTHESIZED[4]));

assign	Y = Y_ALTERA_SYNTHESIZED;

endmodule
