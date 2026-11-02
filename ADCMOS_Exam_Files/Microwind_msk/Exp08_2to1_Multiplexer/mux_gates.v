// Experiment 8: 2:1 Multiplexer using Logic Gates
// Compatible with Microwind: Compile -> Compile Verilog File
module mux_gates(
    input  X0,
    input  X1,
    input  S,
    output Y
);
    wire Sb, a, b;

    assign Sb = ~S;
    assign a  = ~(X0 & Sb);
    assign b  = ~(X1 & S);
    assign Y  = ~(a & b);
endmodule

