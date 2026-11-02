// Experiment 6: CMOS Basic Gates
// Compatible with Microwind: Compile -> Compile Verilog File
module gates(
    input  A,
    input  B,
    output Yinv,
    output Ynand,
    output Ynor
);
    assign Yinv  = ~A;
    assign Ynand = ~(A & B);
    assign Ynor  = ~(A | B);
endmodule

