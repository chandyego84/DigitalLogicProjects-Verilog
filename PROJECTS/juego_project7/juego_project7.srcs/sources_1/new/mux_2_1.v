`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Module Name: mux_2_1
//////////////////////////////////////////////////////////////////////////////////
module mux_2_1(
    input [7:0] slide,  // slide = sw, mem = Q
    input [7:0] mem,
    input Sel,  // btn1
    output reg [7:0] Y    // LED[7:0]
);

always @(slide, mem, Sel) begin
    case (Sel)
    1'd0: Y <= slide;
    1'd1: Y <= mem;
    endcase
end

endmodule
