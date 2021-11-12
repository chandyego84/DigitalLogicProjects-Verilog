`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/11/2021 12:06:21 PM
// Module Name: status 
//////////////////////////////////////////////////////////////////////////////////
module status(
    input [8:0] ALUin,
    output [2:0] state,
    output reg [15:0] bcd
);

integer i;
	
always @(ALUin) begin
    bcd=0;		 	
    for (i=0;i<14;i=i+1) begin					//Iterate once for each bit in input number
        if (bcd[3:0] >= 5) bcd[3:0] = bcd[3:0] + 3;		//If any BCD digit is >= 5, add three
	if (bcd[7:4] >= 5) bcd[7:4] = bcd[7:4] + 3;
	if (bcd[11:8] >= 5) bcd[11:8] = bcd[11:8] + 3;
	if (bcd[15:12] >= 5) bcd[15:12] = bcd[15:12] + 3;
	bcd = {bcd[14:0],ALUin[13-i]};				//Shift one bit, and shift in proper bit from input 
    end
end    
endmodule