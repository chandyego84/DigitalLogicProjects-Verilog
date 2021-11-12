`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 10/20/2021 10:39:54 PM
// Module Name: nand_basictb
//////////////////////////////////////////////////////////////////////////////////
module nand_basictb;

// inputs
reg S;
reg R;
// outputs
wire Q;
wire Qn;
wire Q_int, Qn_int;

nand_basic CUT (
    .S(S),
    .R(R),
    .Q(Q),
    .Qn(Qn)
);

// init inputs 
initial begin
    S = 1;
    R = 1;
    
    #100 S = 0;
    #100 S = 1;
    #100 R = 0;
    #100 R = 1;
    #100 S = 0;
         R = 0;
    #100 S = 1; // basic cell tries to hold condition from ambigious condition
         R = 1;
    #100 S = 0;
         R = 0;
    #100 ;
    
end
endmodule
