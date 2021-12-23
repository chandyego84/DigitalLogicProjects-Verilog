`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 12/09/2021 08:39:11 PM
// Module Name: stateMachine 
//////////////////////////////////////////////////////////////////////////////////
module stateMachine(
    input start, react, clk, slowClk,
    output reg led = 0,
    output reg [3:0] ones, tens, hunnids, thousands
);

reg [1:0] PS, NS;
localparam S0 = 2'b00; // base
localparam S1 = 2'b01; // display zeros
localparam S2 = 2'b10; // start counting

// random counter to start reaction time display
localparam rand = 3'b101; // 5 seconds
reg randEnable; // start random counter
reg [3:0] counter; // start counting when counter == rand number
reg [3:0] randcounter; // 

// start counter to random number (1 second clk)
always @ (posedge(slowClk)) begin
    if (PS == S0) counter <= 0;
    else counter <= counter + 1;
end

// start reaction time counter
always @ (posedge(clk)) begin
    if (randEnable)
        randcounter <= randcounter + 1;
end

// SM
always @ (*) begin
    case (PS)
    S0: begin
        if (!start) NS <= S0;
        else if (start) NS <= S1;
        end
    S1: if (counter != rand) NS <= S1;
        else if (counter == rand) NS <= S2;
    S2: begin 
        randEnable <= 1; // start randcounter
        led <= 1; // signifies reaction time timer ON
        if (!react) NS <= S2;
        else if (react) NS <= S0;
        end
        
    default: NS = S0;
    endcase
end

always @ (posedge(clk)) begin
    PS <= NS;
    if (PS == S0) ones <= 4'b0000;
    else if (PS == S2) ones <= ones + 1;
    else if (PS == S2 && ones == 4'b1001) ones <= 4'b0000; // 9 -> 0
end

always @(posedge(clk)) begin
    if (PS == S0) tens <= 4'b0000;
    else if ((PS == S2) && ones == 4'b1001) tens <= tens + 1;
    else if (PS == S2 && tens == 4'b1001) tens <= 4'b0000; // 9 --> 0
end

always @ (posedge(clk)) begin
    if (PS == S0) hunnids <= 4'b0000;
    else if ((PS == S2) && tens == 4'b1001) hunnids <= hunnids + 1;
    else if (PS == S2 && hunnids == 4'b1001) hunnids = 4'b0000; // 9 --> 0
end

always @ (posedge(clk)) begin
    if (PS == S0) thousands <= 4'b0000;
    else if ((PS == S2) && hunnids == 4'b1001) thousands <= thousands + 1;
    else if (PS == S2 && thousands == 4'b1001) thousands = 4'b0000; // 9 --> 0
end


endmodule
