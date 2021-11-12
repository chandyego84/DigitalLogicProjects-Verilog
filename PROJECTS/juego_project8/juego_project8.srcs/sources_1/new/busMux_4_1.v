`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/01/2021 04:17:28 PM
// Module Name: busMux_4_1
//////////////////////////////////////////////////////////////////////////////////
module busMux_4_1(
    input [3:0] I0, I1, I2, I3,
    input [1:0] sel,
    output reg [3:0] Y
);

always @(*) begin
    case (sel)
    4'b00: Y <= I0;
    4'b01: Y <= I1;
    4'b10: Y <= I2;
    4'b11: Y <= I3;
    endcase    
end

endmodule
