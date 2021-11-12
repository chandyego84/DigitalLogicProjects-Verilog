`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 09/30/2021 08:55:07 AM
// Module Name: encoder_4_2_tb
//////////////////////////////////////////////////////////////////////////////////


module encoder_4_2_tb;

// inputs 
reg [3:0] I;
reg Ein;
// outputs
wire [1:0] Y;
wire GS;
wire Eout;

encoder_4_2 CUT (
    .I(I),
    .Ein(Ein),
    .Y(Y),
    .GS(GS),
    .Eout(Eout)
);

integer k;
initial begin
    Ein = 1;
    for(k=0;k<16;k=k+1) begin
        I = k;
        #10;
    end
    $finish;
    
end 
endmodule
