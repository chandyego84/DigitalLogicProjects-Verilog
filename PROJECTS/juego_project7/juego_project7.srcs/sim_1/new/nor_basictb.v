`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego 
// Create Date: 10/21/2021 12:10:41 AM
// Module Name: nor_basictb
//////////////////////////////////////////////////////////////////////////////////
module nor_basictb;

// inputs 
reg S;
reg R;
// outputs 
wire Q;
wire Qn;
wire Q_int, Qn_int;

nor_basic CUT(
    .S(S),
    .R(R),
    .Q(Q),
    .Qn(Qn)
);

// init inputs 
initial begin
    S = 0;
    R = 0;
    
    #100 S = 0;
    #100 S = 1;
    #100 R = 0;
    #100 R = 1;
    #100 S = 1;
         R = 1;
    #100 S = 0;
         R = 0;
    #100 S = 1;
         R = 1;
    #100 ;
 end

endmodule
