// EXP 8 - 2:1 MUX, ONE-LINE EQUATION FORM
module mux_eq(input X0, input X1, input S, output Y);
  assign Y = (~S & X0) | (S & X1);
endmodule
