// Experiment 7: CMOS Half Adder
// Compatible with Microwind: Compile -> Compile Verilog File
module half_adder(
    input  A,
    input  B,
    output S,
    output C
);
    assign S = A ^ B;
    assign C = A & B;
endmodule

