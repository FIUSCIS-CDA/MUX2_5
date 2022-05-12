///////////////////////////////////////////////////////////////////////////////////
// Testbench for Component: MUX2_5
// Package: FIUSCIS-CDA
// Course: CDA3102 (Computer Architecture), Florida International University
// Developer: Trevor Cickovski
// License: MIT, (C) 2020 All Rights Reserved
///////////////////////////////////////////////////////////////////////////////////

module testbench();
`include "../Test/Test.v"

///////////////////////////////////////////////////////////////////////////////////
// Inputs: A, B (5-bit); S (1-bit)
reg[4:0] A;
reg[4:0] B;
reg S;
///////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////
// Output: Y (5-bit)
wire[4:0] Y;
///////////////////////////////////////////////////////////////////////////////////

MUX2_5 myMUX(.S(S), 
             .A(A), 
             .B(B), 
             .Y(Y));

initial begin
////////////////////////////////////////////////////////////////////////////////////////
// Test: S=0
$display("Testing: S=0");
A=13; B=27; S=0;  #10;
verifyEqual5(Y, A); 
////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////
// Test: S=1
$display("Testing: S=1");
S=1;  #10; 
verifyEqual5(Y, B);
////////////////////////////////////////////////////////////////////////////////////////

$display("All tests passed.");
end

endmodule