`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2025 12:54:42 PM
// Design Name: 
// Module Name: PC_1
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


module PC_1(clk,rst,PC_IN,PC_OUT);
    input clk,rst;
    input [31:0]PC_IN;
    output reg [31:0]PC_OUT;
   

    always @(posedge clk)
    begin
        if(rst)
            PC_OUT<= {32{1'b0}};
        else
            PC_OUT <= PC_IN;
    end
endmodule