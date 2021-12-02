`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/21/2021 04:19:45 PM
// Module Name: sevseg_decoder
//////////////////////////////////////////////////////////////////////////////////
module sevseg_decoder(
    input [3:0] segIn,
    output reg [6:0] segs
);

always @ (segIn) begin
    case (segIn)
    4'd0: segs <= 8'b1000000; // 0
    4'd1: segs <= 8'b1111001;
    4'd2: segs <= 8'b0100100;
    4'd3: segs <= 8'b0110000;
    4'd4: segs <= 8'b0011001;
    4'd5: segs <= 8'b0010010;
    4'd6: segs <= 8'b0000010;
    4'd7: segs <= 8'b1111000;
    4'd8: segs <= 8'b0000000;
    4'd9: segs <= 8'b0010000; // 9
    endcase
    
end
endmodule
