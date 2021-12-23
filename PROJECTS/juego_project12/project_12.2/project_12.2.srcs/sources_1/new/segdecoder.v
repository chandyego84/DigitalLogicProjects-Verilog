`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 12/02/2021 04:41:53 PM
// Module Name: segdecoder
//////////////////////////////////////////////////////////////////////////////////
module segdecoder(
    input [3:0] IN,
    output reg [6:0] segs
);

always @ (IN) begin
    case(IN)
    4'b0000: segs <= 7'b1000000;  // 0
    4'b0001: segs <= 7'b1111001;  // 1
    4'b0010: segs <= 7'b0100100;  // 2
    4'b0011: segs <= 7'b0110000;  // 3
    4'b0100: segs <= 7'b0011001;  // 4
    4'b0101: segs <= 7'b0010010;  // 5
    4'b0110: segs <= 7'b0000010;  // 6
    4'b0111: segs <= 7'b1111000;  // 7
    4'b1000: segs <= 7'b0000000;  // 8
    4'b1001: segs <= 7'b0010000;  // 9
    default: segs <= 7'b1111111;    
    endcase
end

endmodule
