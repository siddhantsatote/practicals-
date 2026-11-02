// EXP 6 - INVERTER, NAND, NOR TOGETHER
module gates(input A, input B, output Yinv, output Ynand, output Ynor);
  assign Yinv  = ~A;
  assign Ynand = ~(A & B);
  assign Ynor  = ~(A | B);
endmodule
