`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego 
// Create Date: 09/22/2021 08:57:59 AM
// Module Name: majorityxFive
// Project Name: P3 Combinational Circuits
// Description: 5 inputs, output asseretd when >= 3 inputs asserted
// Design minimized circuit using K-maps 
// Simulate circuit 
//////////////////////////////////////////////////////////////////////////////////


module majorityxFive(
    input [4:0] sw,
    output[9:0] led
);

assign led[0] = (sw[0]&sw[1]&sw[2]) | 
             (sw[0]&sw[1]&sw[3]) | 
             (sw[0]&sw[1]&sw[4]) |
             (sw[0]&sw[2]&sw[3]) | 
             (sw[0]&sw[2]&sw[4]) | 
             (sw[0]&sw[3]&sw[4]) | 
             (sw[1]&sw[2]&sw[3]) | 
             (sw[1]&sw[2]&sw[4]) | 
             (sw[1]&sw[3]&sw[4]) | 
             (sw[2]&sw[3]&sw[4]);
endmodule
