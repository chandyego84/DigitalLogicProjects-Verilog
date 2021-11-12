`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 10/12/2021 06:09:24 PM
// Module Name: CombCirc_tb
//////////////////////////////////////////////////////////////////////////////////
module CombCirc_tb;
// inputs 
reg A, B, C;
// outputs
wire X;
wire N1, N2, N3;

CombCirc CUT (
    .A(A),
    .B(B),
    .C(C),
    .X(X)
);

integer k = 0;

initial begin
    A = 0;
    B = 0;
    C = 0;
    
    for(k=0; k<4; k=k+1) 
    begin
        {A, C} = k;
        #5 B = 1;
        #5 B = 0;
        #5;
    end
    
end 
endmodule