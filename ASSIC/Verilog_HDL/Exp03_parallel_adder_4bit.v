// -------------------------------------------------------------
// EXPERIMENT 3: 4-bit Parallel Adder (Behavioral, Dataflow, Structural)
// -------------------------------------------------------------
module parallel_adder_4bit (
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout
);
    // Dataflow / Behavioral description
    assign {Cout, Sum} = A + B + Cin;
endmodule
