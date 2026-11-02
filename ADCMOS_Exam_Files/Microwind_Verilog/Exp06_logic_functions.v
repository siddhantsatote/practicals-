// EXP 6 - LARGER FUNCTIONS FROM THE JOURNAL FIGURE
module funcs(input A, input B, input C, input D,
             output Y3, output Y4, output Y1, output Y2);
  assign Y3 = ~A;
  assign Y4 = ~(A & B & C);
  assign Y1 = ~((A | B | C) & D);
  assign Y2 = ~((A & B) | (C & D));
endmodule
