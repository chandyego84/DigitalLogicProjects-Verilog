`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/21/2021 04:16:02 PM
// Module Name: bcdcounter
//////////////////////////////////////////////////////////////////////////////////
module bcdcounter(
    input clk, rst, en, digitSel, 
    input [3:0] bcdLoad,
    output reg [3:0] bcd_digit,
    output reg tc
);

always @ (posedge(clk), posedge(rst))
begin
    if (rst) begin   
        bcd_digit <= 0;
        tc = 0;
    end
    else if (en) begin 
        if (bcd_digit == 4'b1001) // detecs 9
        begin
                bcd_digit <= 0; 
                tc = 1;
        end
        else begin
            bcd_digit = bcd_digit + 1;
            tc = 0;
        end
    end 
   // enable/rst not asserted
   else
       if (digitSel) bcd_digit <= bcdLoad;
       else bcd_digit <= bcd_digit;
end
endmodule