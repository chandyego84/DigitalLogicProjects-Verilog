`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/21/2021 06:29:10 PM
// Module Name: shifter 
//////////////////////////////////////////////////////////////////////////////////
module shifter(
    input [7:0] D, // bits from register
    input [3:0] val, // shift/rotate amount
    input sel, dir, // sel: shift/rotate, dir: left/right
    input fillEN, // enable fill bit/s (sw)
    output reg [7:0] result
);

always @ (*) begin
    if (sel) begin // rotate
        if (!dir) begin // left
            case(val)
            4'b0000: result <= D;
            4'b0001: result <= {D[6:0], D[7]};
            4'b0010: result <= {D[5:0], D[7:6]};
            4'b0011: result <= {D[4:0], D[7:5]};
            4'b0100: result <= {D[3:0], D[7:4]};
            4'b0101: result <= {D[2:0], D[7:3]};
            4'b0110: result <= {D[1:0], D[7:2]};
            4'b0111: result <= {D[0], D[7:1]};
            4'b1000: result <= {D[7:0]};
            default: result <= D;
            endcase
        end
        else begin// right
            case(val)
            4'b0000: result <= D;
            4'b0001: result <= {D[0], D[7:1]};
            4'b0010: result <= {D[1:0], D[7:2]};
            4'b0011: result <= {D[2:0], D[7:3]};
            4'b0100: result <= {D[3:0], D[7:4]};
            4'b0101: result <= {D[4:0], D[7:5]};
            4'b0110: result <= {D[5:0], D[7:6]};
            4'b0111: result <= {D[6:0], D[7]};
            4'b1000: result <= {D[7:0]};
            default: result <= D;
            endcase
        end
    end
    
    else if (!sel) begin // shift
        if (!dir) begin // left
            case(val)
            4'b0000: result <= D;
            4'b0001: result <= {D[6:0], fillEN};
            4'b0010: result <= {D[5:0], fillEN, fillEN};
            4'b0011: result <= {D[4:0], fillEN, fillEN, fillEN};
            4'b0100: result <= {D[3:0], fillEN, fillEN, fillEN, fillEN};
            4'b0101: result <= {D[2:0], fillEN, fillEN, fillEN, fillEN, fillEN};
            4'b0110: result <= {D[1:0], fillEN, fillEN, fillEN, fillEN, fillEN, fillEN};
            4'b0111: result <= {D[0], fillEN, fillEN, fillEN, fillEN, fillEN, fillEN, fillEN};
            4'b1000: result <= {fillEN, fillEN, fillEN, fillEN, fillEN, fillEN, fillEN, fillEN};
            default: result <= D;
            endcase
        end
        else begin // right
            case(val)
            4'b0000: result <= D;
            4'b0001: result <= {fillEN, D[7:1]};
            4'b0010: result <= {fillEN, fillEN, D[7:2]};
            4'b0011: result <= {fillEN, fillEN, fillEN, D[7:3]};
            4'b0100: result <= {fillEN, fillEN, fillEN, fillEN, D[7:4]};
            4'b0101: result <= {fillEN, fillEN, fillEN, fillEN, fillEN, D[7:5]};
            4'b0110: result <= {fillEN, fillEN, fillEN, fillEN, fillEN, fillEN, D[7:6]};
            4'b0111: result <= {fillEN, fillEN, fillEN, fillEN, fillEN, fillEN, fillEN, D[7]};
            4'b1000: result <= {fillEN, fillEN, fillEN, fillEN, fillEN, fillEN, fillEN, fillEN};
            default: result <= D;
            endcase
       end
    end

end
endmodule
