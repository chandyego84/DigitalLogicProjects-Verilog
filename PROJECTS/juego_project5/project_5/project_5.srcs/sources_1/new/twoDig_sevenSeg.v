`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 10/07/2021 07:19:29 AM
// Module Name: twoDig_sevenSeg
//////////////////////////////////////////////////////////////////////////////////
module twoDig_sevenSeg(
    input [3:0] I0, I1,
    input btn,
    output reg [3:0] seg_an,
    output reg [6:0] seg_cat
);

always @(btn, I0, I1, seg_cat) begin
    if (btn == 0)
    begin
        seg_an[0] = 1'b0;
        seg_an[1] = 1'b1;
        case (I0)
            4'd0: seg_cat <= 7'b1000000;
            4'd1: seg_cat <= 7'b1111001;
            4'd2: seg_cat <= 7'b0100100;
            4'd3: seg_cat <= 7'b0110000;
            4'd4: seg_cat <= 7'b0011001;
            4'd5: seg_cat <= 7'b0010010;
            4'd6: seg_cat <= 7'b0000010;
            4'd7: seg_cat <= 7'b1111000;
            4'd8: seg_cat <= 7'b0000000;
            4'd9: seg_cat <= 7'b0010000;
            4'd10: seg_cat <= 7'b0001000; // a
            4'd11: seg_cat <= 7'b0000011; // b
            4'd12: seg_cat <= 7'b1000110; // c
            4'd13: seg_cat <= 7'b0100001; // d 
            4'd14: seg_cat <= 7'b0000110; // e 
            4'd15: seg_cat <= 7'b0001110; // f
            default: seg_cat <= 7'b1111111;
            endcase
    end
    
    else
    begin
        seg_an[1] = 1'b0;
        seg_an[0] = 1'b1;
            case (I1)
            4'd0: seg_cat <= 7'b1000000;
            4'd1: seg_cat <= 7'b1111001;
            4'd2: seg_cat <= 7'b0100100;
            4'd3: seg_cat <= 7'b0110000;
            4'd4: seg_cat <= 7'b0011001;
            4'd5: seg_cat <= 7'b0010010;
            4'd6: seg_cat <= 7'b0000010;
            4'd7: seg_cat <= 7'b1111000;
            4'd8: seg_cat <= 7'b0000000;
            4'd9: seg_cat <= 7'b0010000;
            4'd10: seg_cat <= 7'b0001000; // a
            4'd11: seg_cat <= 7'b0000011; // b
            4'd12: seg_cat <= 7'b1000110; // c
            4'd13: seg_cat <= 7'b0100001; // d 
            4'd14: seg_cat <= 7'b0000110; // e 
            4'd15: seg_cat <= 7'b0001110; // f
            default: seg_cat <= 7'b1111111;
            endcase    
   end         
end
endmodule
