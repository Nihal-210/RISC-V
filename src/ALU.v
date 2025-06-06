`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2025 12:49:38 AM
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU(function_sel, a ,b, result, overflow,sign,zero);

    input  [2:0]  function_sel;
    input  [31:0] a, b;
    output reg [31:0] result;
    output reg       overflow;
    output reg       sign;
    output reg       zero;

    reg [32:0] temp;

    always @(*) begin
        result   = 32'd0;
        temp     = 33'd0;
        overflow = 1'b0;
        sign     = 1'b0;
        zero     = 1'b0;

        if (function_sel == 3'b000) begin
            temp = {1'b0, a} + {1'b0, b};
            result = temp[31:0];
            overflow = temp[32];
        end
        else if (function_sel == 3'b001) begin
            temp = {1'b0, a} - {1'b0, b};
            result = temp[31:0];
            overflow = temp[32];
        end
        else if (function_sel == 3'b010) begin
            result = a & b;
            overflow = 1'b0;
        end
        else if (function_sel == 3'b011) begin
            result = a | b;
            overflow = 1'b0;
        end
        else if (function_sel == 3'b100) begin
            result = a ^ b;
            overflow = 1'b0;
        end
        else if (function_sel == 3'b101) begin
            result = ~(a | b);
            overflow = 1'b0;
        end
        else if (function_sel == 3'b110) begin
            result = ($signed(a) < $signed(b)) ? 32'd1 : 32'd0;
            overflow = 1'b0;
        end
        else begin
            result = 32'd0;
            overflow = 1'b0;
        end

        sign = result[31];
        zero = (result == 32'd0) ? 1'b1 : 1'b0;
    end

endmodule
