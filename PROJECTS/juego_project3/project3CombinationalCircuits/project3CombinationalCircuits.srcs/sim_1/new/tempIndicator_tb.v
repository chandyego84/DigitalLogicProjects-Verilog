`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 09/23/2021 11:39:15 AM
// Module Name: tempIndicator_tb
//////////////////////////////////////////////////////////////////////////////////

module tempIndicator_tb;

// inputs 
reg [7:0] sw; 
// outputs 
wire [1:0] led;

tempIndicator cut (.sw(sw), .led(led));

integer k;
// 8 bits, 255 combos 
initial begin
    sw = 0;
    for (k=0;k<255;k=k+1)
        #20 sw = k;
    #20 $finish;

end
endmodule
