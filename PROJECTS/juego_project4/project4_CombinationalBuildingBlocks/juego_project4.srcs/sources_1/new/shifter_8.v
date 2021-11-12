`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 09/30/2021 12:08:17 PM
// Module Name: shifter_8 
// 8-bit shifter 
// shift/rotate left/right by 0, 1, 2, 3 bit positions 
// 8 switches for shifter input 
// 8 LEDs for outputs, 
// 4 remaining switches to select shifter fxn 
// ^ 2 used for shift amount, one for direction, one for shift/rotate
// use pushbtn to define fill input
//////////////////////////////////////////////////////////////////////////////////
module shifter_8(
    input [7:0] I,
    input En,
    input F,
    input [1:0] A, 
    input D, 
    input R,
    output reg [7:0] Y
);

always @ (I, A, En)
begin
    if (En == 0)
        Y <= I;
        
    else begin
        // shift
        if (R == 0)
            case (A)
            2'd0: Y <= I;
            2'd1: Y <= (D==0) ? {I[6:0], F} : {F, I[7:1]};
            2'd2: Y <= (D==0) ? {I[5:0], F, F} : {F, F, I[7:2]};
            2'd3: Y <= (D==0) ? {I[4:0], F, F, F} : {F, F, F, I[7:3]};
            default: Y <= I;
            endcase
        //rotate 
        else 
            case (A)
            2'd0: Y <= I;
            2'd1: Y <= (D==0) ? {I[6:0], I[7]} : {I[0], I[7:1]};
            2'd2: Y <= (D==0) ? {I[5:0], I[7:6]} : {I[1:0], I[7:2]};
            2'd3: Y <= (D==0) ? {I[4:0], I[7:5]} : {I[2:0], I[7:3]};
            default: Y <= I;
            endcase
    end
end
endmodule
