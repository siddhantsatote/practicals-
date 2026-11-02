// Experiment 7: CMOS Full Adder
// Compatible with Microwind: Compile -> Compile Verilog File
module full_adder(
    input  A,
    input  B,
    input  Cin,
    output Sum,
    output Cout
);
    assign Sum  = A ^ B ^ Cin;
    assign Cout = (A & B) | (Cin & (A ^ B));
endmodule

