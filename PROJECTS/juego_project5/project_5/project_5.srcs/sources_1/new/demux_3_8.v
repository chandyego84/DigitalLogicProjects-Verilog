`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego 
// Create Date: 10/03/2021 07:04:41 PM
// Module Name: demux_3_8
//////////////////////////////////////////////////////////////////////////////////
module demux_3_8(
    input EN,
    input [2:0] I,
    output reg [7:0] Y
);

always @(EN, I) 
begin
    if (EN != 1'b0)
        case(I)
        3'd0: Y <= 8'd1;
        3'd1: Y <= 8'd2;
        3'd2: Y <= 8'd4;
        3'd3: Y <= 8'd8;
        3'd4: Y <= 8'd16;
        3'd5: Y <= 8'd32;
        3'd6: Y <= 8'd64;
        3'd7: Y <= 8'd128;
        default: Y <= 8'd0;
        endcase
    else
        Y <= 8'd0;
end
endmodule
