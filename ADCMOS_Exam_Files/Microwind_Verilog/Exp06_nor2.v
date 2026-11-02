// EXP 6 - 2-INPUT NOR
module nor2(input A, input B, output Y);
  assign Y = ~(A | B);
endmodule
