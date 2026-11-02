module half_adder (input a, b, output sum, cout);
    assign sum = a ^ b;
    assign cout = a & b;
endmodule

module full_adder (input a, b, cin, output sum, cout);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);
endmodule
