`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 10/31/2021 03:22:53 PM
// Module Name: bcdcounter
//////////////////////////////////////////////////////////////////////////////////
//module bcdcounter(
//    input clk, rst,
//    output reg[3:0] bcd_digit
//);

//always @ (posedge(clk), posedge(rst))
//begin
//    if (rst) bcd_digit <= 0;
//    else if (bcd_digit == 4'b1001) bcd_digit <= 0;  // detects 9
//    else bcd_digit <= bcd_digit + 1;
//end
//endmodule
module bcdcounter(
    input clk, rst, en,
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
end

endmodule
