module ex03_str(in1, in2, out1);
    input in1, in2;
    output out1;
    wire in1, in2;
    wire and_or1, and_or2, not_and;
    wire out1;

    M_and A1(in1, in2, and_or1);
    M_not N(in2,not_and);
    M_and A2(in1, not_and, and_or2);

    M_or O(and_or1, and_or2, out1);

endmodule