`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 09/16/2021 01:26:40 PM
// Module Name: Automobile Circuit
//////////////////////////////////////////////////////////////////////////////////

module automobile(
    /*
    Coolant Temp: sw0
    Coolant Level: sw1 
    Oil Temp: sw2
    Oil Level: sw3
    
    */
    input [3:0] sw,
    // need to make red and yellow leds
    output [1:0] RGB_led_A,
    output [1:0] RGB_led_B
);

/* yellow when any true:
Only the Coolant Level is low
Only the Oil Level is low
The Oil Temperature is too high and the Oil Level is OK
The Coolant Temperature is too high and the Oil Level is too low
*/
wire yellow = (sw[1] & ~sw[0] & ~sw[2] & ~sw[3]) | (sw[3] & ~sw[0] & ~sw[1] & ~sw[2]) | 
(sw[2] & ~sw[3]) | (sw[0] & sw[3]);
assign RGB_led_A[0] = yellow;
assign RGB_led_A[1] = yellow;


/*red when any true:
The Coolant temperature is too high and the Coolant level is too low
The Oil Temperature is too high and the Oil Level is too low
The Coolant and Oil Temperatures are too high at the same time
The Coolant and Oil levels are too low at the same time that the Coolant Temperature is too high and the Oil Temperature is OK.
*/

assign RGB_led_B[0] = (sw[0] & sw[1]) | (sw[2] & sw[3]) | (sw[0] & sw[2]) | 
((sw[1] & sw[3]) & (sw[0] & ~sw[2])); 

endmodule
