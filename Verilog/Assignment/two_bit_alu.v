`timescale 1ns / 1ps
module TWO_BIT_ALU(
input [3:0]a,
input [3:0]b,
input [2:0]sel,
output reg[3:0]result,
output reg carry_out
    );
    always @(*)begin
    case(sel)
        3'b000:{carry_out,result}=a+b;
        3'b001:{carry_out,result}=a-b;
        3'b010:{carry_out,result}={1'b0,a&b};
        3'b011:{carry_out,result}={1'b0,a|b};
        3'b100:{carry_out,result}={1'b0,a^b};
        default:{carry_out,result}={1'b0,4'b0000};
        endcase
    end
endmodule
