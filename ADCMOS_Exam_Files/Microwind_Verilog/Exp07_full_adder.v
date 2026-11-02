// EXP 7 - FULL ADDER
module full_adder(input A, input B, input Cin, output Sum, output Cout);
  assign Sum  = A ^ B ^ Cin;
  assign Cout = (A & B) | (Cin & (A ^ B));
endmodule
