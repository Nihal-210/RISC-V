`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2025 12:49:38 AM
// Design Name: 
// Module Name: MAIN_DECODER
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

module Main_Decoder(
    input  [6:0] Op,
    output reg       RegWrite,
    output reg       ALUSrc,
    output reg       MemWrite,
    output reg       ResultSrc,
    output reg       Branch,
    output reg [1:0] ImmSrc,
    output reg [1:0] ALUOp
);

always @(*) begin
    RegWrite  = 0;
    ALUSrc    = 0;
    MemWrite  = 0;
    ResultSrc = 0;
    Branch    = 0;
    ImmSrc    = 2'b00;
    ALUOp     = 2'b00;

    if (Op == 7'b0110011) begin
        RegWrite  = 1;
        ALUSrc    = 0;
        MemWrite  = 0;
        ResultSrc = 0;
        Branch    = 0;
        ImmSrc    = 2'b00;
        ALUOp     = 2'b10;
    end
    else if (Op == 7'b0000011) begin
        RegWrite  = 1;
        ALUSrc    = 1;
        MemWrite  = 0;
        ResultSrc = 1;
        Branch    = 0;
        ImmSrc    = 2'b00;
        ALUOp     = 2'b00;
    end
    else if (Op == 7'b0100011) begin
        RegWrite  = 0;
        ALUSrc    = 1;
        MemWrite  = 1;
        ResultSrc = 0;
        Branch    = 0;
        ImmSrc    = 2'b01;
        ALUOp     = 2'b00;
    end
    else if (Op == 7'b1100011) begin
        RegWrite  = 0;
        ALUSrc    = 0;
        MemWrite  = 0;
        ResultSrc = 0;
        Branch    = 1;
        ImmSrc    = 2'b10;
        ALUOp     = 2'b01;
    end
end

endmodule
