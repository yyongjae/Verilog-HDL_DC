`timescale 10ns/10ns
`include "ex03_struct.v"
`include "ex03_mod.v"
module ex03_test;
reg inT1, inT2;
wire outT;
ex03_str T(.in1(inT1), .in2(inT2), .out1(outT));
initial begin
    $dumpfile("test_out.vcd");
    $dumpvars(1);
end
initial begin
    #10 inT1 =0; inT2 = 0;
    #10 inT1 =0; inT2 = 1;
    #10 inT1 =1; inT2 = 0;
    #10 inT1 =1; inT2 = 1;
    #10 $finish;
end
endmodule