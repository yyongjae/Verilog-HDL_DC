module M_and(in1, in2, out1);
    input in1, in2;
    output out1;
    wire in1, in2;
    wire out1;
    assign out1 = in1 & in2;
endmodule

module M_not(in1, out1);
    input in1;
    output out1;
    wire in1;
    wire out1;
    assign out1 = ~in1;
endmodule

module M_or(in1, in2, out1);
    input in1, in2;
    output out1;
    wire in1, in2;
    wire out1;
    assign out1 = in1 | in2;
endmodule

