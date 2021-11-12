`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 10/28/2021 11:25:49 AM
// Module Name: dlatch_tb
//////////////////////////////////////////////////////////////////////////////////
module dlatch_tb;

// inputs 
reg G, D;
// outputs 
wire Q, Qn;
wire S, R, Q_int, Qn_int;

dlatch CUT (
    .D(D),
    .G(G),
    .Q(Q),
    .Qn(Qn)
);

initial begin
    D=0;
    G=0;
    #4 G=1;
    #1 D=1;
    #1 D=0;
    #1 G=0;
    #3 D=1;
    #1 G=1;
    #1 D=0;
    #5;
    
end

endmodule
