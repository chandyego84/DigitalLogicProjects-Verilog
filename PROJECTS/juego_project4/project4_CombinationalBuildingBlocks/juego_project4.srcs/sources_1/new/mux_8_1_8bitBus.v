`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Chandler Juego
// Create Date: 09/30/2021 10:49:53 AM
// Module Name: mux_8_1_8bitBus
//////////////////////////////////////////////////////////////////////////////////
module mux_8_1_8bitBus(
    input [7:0] I0,
    input [7:0] I1,
    input [7:0] I2,
    input [7:0] I3,
    input [7:0] I4,
    input [7:0] I5,
    input [7:0] I6, 
    input [7:0] I7,
    input [2:0] sel,
    // outputs 
    output [7:0] Y

);
reg [7:0] tmp;

always @(I0, I1, I2, I3, I4, I5, I6, I7, sel) begin
    case(sel)
    3'b000: tmp <= I0;
    3'b001: tmp <= I1;
    3'b010: tmp <= I2; 
    3'b011: tmp <= I3;
    3'b100: tmp <= I4;
    3'b101: tmp <= I5;
    3'b110: tmp <= I6; 
    3'b111: tmp <= I7;
    default: tmp <= 8'd0;
    endcase
end
assign Y = tmp;


endmodule
