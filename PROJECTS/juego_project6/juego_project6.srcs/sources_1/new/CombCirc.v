`timescale 1ns / 1ps
module CombCirc(
    input A,
    input B,
    input C,
    output X
);

wire N1, N2, N3;

// AND gate with 1ns delay
assign #1 N1 = A & B;
// Not Gate with 1ns delay
assign #1 N2 = ~B;
// And Gate with 1ns delay
assign #1 N3 = N2 & C;
// Or Gate with 1ns delay
assign #2 X = N1 | N3;

endmodule

