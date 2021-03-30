`timescale 1ns/1ns
`include "ex01.v"
`include "ex02.v" 
module ex02_test;
reg inA, inB, inC;
wire outA, outB;
ex01 A(.in1(inA), .in2(inB), .out1(outA));
ex02 B(.in1(inA), .in2(inB), .in3(inC), .out1(outB));
initial begin
    $dumpfile("test_out.vcd");
    $dumpvars(1);
end
initial begin
    #10 inA = 0; inB = 0; inC =0;
    #10 inA = 0; inB = 0; inC =1;
    #10 inA = 0; inB = 1; inC =0;
    #10 inA = 0; inB = 1; inC =1;
    #10 inA = 1; inB = 0; inC =0;
    #10 inA = 1; inB = 0; inC =1;
    #10 inA = 1; inB = 1; inC =0;
    #10 inA = 1; inB = 1; inC =1;
    #10 $finish;
end
endmodule