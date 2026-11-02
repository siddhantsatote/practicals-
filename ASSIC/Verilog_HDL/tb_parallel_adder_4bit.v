`timescale 1ns / 1ps
module tb_parallel_adder_4bit;
    reg [3:0] A, B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;

    parallel_adder_4bit uut (
        .A(A), .B(B), .Cin(Cin),
        .Sum(Sum), .Cout(Cout)
    );

    initial begin
        A=4'b0000; B=4'b0000; Cin=1'b0; #20;
        A=4'b0101; B=4'b0011; Cin=1'b0; #20;
        A=4'b1111; B=4'b0001; Cin=1'b0; #20;
        A=4'b1010; B=4'b0101; Cin=1'b1; #20;
        A=4'b0111; B=4'b0111; Cin=1'b1; #20;
        A=4'b1111; B=4'b1111; Cin=1'b1; #20;
        A=4'b0000; B=4'b1111; Cin=1'b0; #20;
        A=4'b1000; B=4'b1000; Cin=1'b0; #20;
        #20 $finish;
    end
endmodule
