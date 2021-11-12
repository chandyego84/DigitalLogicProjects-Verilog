`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 09/29/2021 08:58:46 PM
// Module Name: mux_8_1_8bitBus_tb 
//////////////////////////////////////////////////////////////////////////////////
module mux_8_1_8bitBus_tb;

// inputs
reg [7:0] I0 = 8'd3; 
reg [7:0] I1 = 8'd5;
reg [7:0] I2 = 8'd13;
reg [7:0] I3 = 8'd16;
reg [7:0] I4 = 8'd30;
reg [7:0] I5 = 8'd42;
reg [7:0] I6 = 8'd50; 
reg [7:0] I7 = 8'd60;
reg [2:0] sel;
// outputs 
wire [7:0] Y;

// connect test signals to our mux
mux_8_1_8bitBus CUT (
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .I4(I4),
    .I5(I5),
    .I6(I6),
    .I7(I7),
    .sel(sel),
    .Y(Y)
);

integer k;
initial begin
    for (k=0;k<8;k=k+1) begin
        sel = k;
        #10;
    end
    
    $finish;  
    
end
endmodule 