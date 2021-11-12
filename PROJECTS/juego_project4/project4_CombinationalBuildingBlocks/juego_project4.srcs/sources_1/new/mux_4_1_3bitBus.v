`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 09/29/2021 04:04:38 PM
// Module Name: mux_4_1_3bitBus 
// 4:1 3-bit bus multiplexor 
// 12 switches as data inputs
// 2 btns as select inputs 
// 3 LEDs as output
//////////////////////////////////////////////////////////////////////////////////

module mux_4_1_3bitBus(
    input [2:0] I0, I1, I2, I3,
    input [1:0] sel,
    output [2:0] Y
);

reg [2:0] tmp;

always @(I0, I1, I2, I3, sel) begin
    case(sel)
    2'b00: tmp <= I0;
    2'b01: tmp <= I1;
    2'b10: tmp <= I2; 
    2'b11: tmp <= I3;
    default: tmp <= 2'b00;
    endcase
end
assign Y = tmp;

endmodule
