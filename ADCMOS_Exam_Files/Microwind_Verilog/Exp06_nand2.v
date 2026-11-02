// EXP 6 - 2-INPUT NAND
module nand2(input A, input B, output Y);
  assign Y = ~(A & B);
endmodule
