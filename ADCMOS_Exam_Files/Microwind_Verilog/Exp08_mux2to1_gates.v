// EXP 8 - 2:1 MUX USING LOGIC GATES (NAND form)
module mux_gates(input X0, input X1, input S, output Y);
  wire Sb, a, b;
  assign Sb = ~S;
  assign a  = ~(X0 & Sb);
  assign b  = ~(X1 & S);
  assign Y  = ~(a & b);
endmodule
