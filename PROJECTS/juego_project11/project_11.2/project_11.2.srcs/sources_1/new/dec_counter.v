`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/18/2021 08:49:15 AM
// Module Name: dec_counter 
//////////////////////////////////////////////////////////////////////////////////
module dec_counter(
    input [1:0] CEN, 
    input clk, rst, inc, timer,
    output reg [3:0] ones, tens, hunds, thousands
);

//reg enabled;
//always @ (posedge(clk)) begin
//   if (CEN[0]) enabled <= 1'b1;    // start
//   else if (CEN[1]) enabled <= 1'b0;   // stop
//end
reg [2:0] PS, NS;
localparam S0 = 3'b000; // base
localparam S1 = 3'b001; // startUp
localparam S2 = 3'b010; // startDown
localparam S3 = 3'b011; // inc one
localparam S4 = 3'b100; // inc Nothing

always @ (*) begin
    case(PS)
    S0: if (!CEN[0] && !inc) NS <= S0;
        else if (CEN[0] && !timer) NS <= S1; // start up
        else if (CEN[0] && timer) NS <= S2; // start down
        else if (!CEN[0] && inc) NS <= S3; // inc one
    S1: if (!CEN[1] && !timer) NS <= S1; // up
        else if (!CEN[1] && timer) NS <= S2; // go down
        else if (CEN[1]) NS <= S0;
    S2: if (!CEN[1] && timer) NS <= S2; // down
        else if (!CEN[1] && !timer) NS <= S1; // go up
        else if (CEN[1]) NS <= S0;
    S3: NS <= S4;
    S4: if (inc) NS <= S4;
        else if (!inc) NS <= S0;
     
    default: NS = S0; 
    endcase
end

always @ (posedge(clk), posedge(rst)) begin
    PS <= NS;
    if (PS == S1 || PS == S3) ones <= ones + 1;
    else if (PS == S2) ones <= ones - 1;
    else if (PS == S1 && ones == 4'b1001) ones <= 4'b0000; // 9 -> 0
    else if (PS == S2 && ones == 4'b0000) ones <= 4'b1001; // 0 -> 9
    if (rst) ones <= 4'b0000;
end

always @(posedge(clk), posedge(rst)) begin
    if ((PS == S1 || PS == S3) && ones == 4'b1001) tens <= tens + 1;
    else if (PS == S1 && tens == 4'b1001) tens <= 4'b0000; // 9 --> 0
    else if (PS == S2 && ones == 4'b0000) tens <= tens - 1;
    else if (PS == S2 && tens == 4'b0000) tens <= 4'b1001; // 0 --> 9
    if (rst) tens <= 4'b0000;
end

always @ (posedge(clk), posedge(rst)) begin
    if ((PS == S1 || PS == S3) && tens == 4'b1001) hunds <= hunds + 1;
    else if (PS == S1 && hunds == 4'b1001) hunds = 4'b0000; // 9 --> 0
    else if (PS == S2 && tens == 4'b0000) hunds <= hunds - 1;
    else if (PS == S2 && hunds == 4'b0000) hunds <= 4'b1001; // 0 --> 9
    if (rst) hunds <= 4'b0000;
end

always @ (posedge(clk), posedge(rst)) begin
    if ((PS == S1 || PS == S3) && hunds == 4'b1001) thousands <= thousands + 1;
    else if (PS == S1 && thousands == 4'b1001) thousands = 4'b0000; // 9 --> 0
    else if (PS == S2 && hunds == 4'b0000) thousands <= thousands - 1;
    else if (PS == S2 && thousands == 4'b0000) thousands <= 4'b1001; // 0 --> 9
    if (rst) thousands <= 4'b0000;
end

endmodule
