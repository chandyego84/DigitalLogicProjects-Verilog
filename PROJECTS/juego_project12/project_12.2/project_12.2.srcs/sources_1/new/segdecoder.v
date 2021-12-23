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
    4'd0: segs <= 7'b1000000;  // 0
    4'd1: segs <= 7'b1111001;  // 1
    4'd2: segs <= 7'b0100100;  // 2
    4'd3: segs <= 7'b0110000;  // 3
    4'd4: segs <= 7'b0011001;  // 4
    4'd5: segs <= 7'b0010010;  // 5
    4'd6: segs <= 7'b0000010;  // 6
    4'd7: segs <= 7'b1111000;  // 7
    4'd8: segs <= 7'b0000000;  // 8
    4'd9: segs <= 7'b0010000;  // 9
    default: segs <= 7'b1000000;   // default: 0 
    endcase
end

endmodule
