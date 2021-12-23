`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 12/02/2021 04:40:14 PM
// Module Name: muxBus_4_1 
//////////////////////////////////////////////////////////////////////////////////
module muxBus_4_1(
    input [3:0] I0, I1, I2, I3,
    input [1:0] sel,
    output reg [3:0] Y
);

always @ (*) begin
    case(sel)
    2'b00: Y <= I0;
    2'b01: Y <= I1;
    2'b10: Y <= I2;
    2'b11: Y <= I3;
    endcase
end

endmodule
