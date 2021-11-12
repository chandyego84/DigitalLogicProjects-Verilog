`timescale 1ns/1ps
module xor_tb;

// inputs are stored in registers since registers can hold values
reg A, B, C;

// outputs are assigned to wires
wire Y, Z;

// instantiate our xor_3 module, name this instance "CUT_1"
// we can change the name CUT_1 to just about anything we want
// "CUT" commonly stands for "Circuit Under Test"
xor_3 CUT_1 (
    .A(A),
    .B(B),
    .C(C),
    .Y(Y)
);

// connect the output of the xnor gate to wire "Z"
xnor_3 CUT_2 (
    .A(A),
    .B(B),
    .C(C),
    .Y(Z)
);

// run the simulation, testing all possible combinations of A, B, and C
integer k;
initial begin
    for(k = 0; k < 8; k=k+1) begin
        #10 {A,B,C} = k;
    end
    #10 $finish;
end

endmodule