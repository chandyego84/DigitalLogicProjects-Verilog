`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 10/28/2021 11:23:43 AM
// Module Name: dlatch
//////////////////////////////////////////////////////////////////////////////////
module dlatch(
    input D, G,
    output Q, Qn  
);

wire S, R;
wire Q_int, Qn_int, D_int;

assign #1 D_int = ~D;
assign #1 Q_int = ~(S & Qn_int);
assign #1 Qn_int = ~(R & Q_int);
assign #1 S = ~(D & G);
assign #2 R = ~(D_int & G);
assign Q = Q_int;
assign Qn = Qn_int;
    
endmodule
