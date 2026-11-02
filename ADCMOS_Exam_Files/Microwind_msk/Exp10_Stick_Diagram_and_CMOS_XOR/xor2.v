// Experiment 10: 2-Input CMOS XOR Gate
// Compatible with Microwind: Compile -> Compile Verilog File
module xor2(
    input  A,
    input  B,
    output Y
);
    assign Y = A ^ B;
endmodule

