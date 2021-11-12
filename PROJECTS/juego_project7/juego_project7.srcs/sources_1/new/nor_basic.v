`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego 
// Create Date: 10/20/2021 11:42:44 PM
// Module Name: nor_basic
//////////////////////////////////////////////////////////////////////////////////
module nor_basic(
    input S, 
    input R,
    output Q,
    output Qn
);

wire Q_int, Qn_int; // internal feedback 

// NOR gates in SR-Latch have 1ns delay 
assign #1 Q_int = ~(S | Qn_int);
assign #1 Qn_int = ~(R | Q_int);
assign Q = Q_int;
assign Qn = Qn_int; 

endmodule
