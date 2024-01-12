`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2022 20:17:59
// Design Name: 
// Module Name: WB_Mux
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


module WB_Mux(
    input [31:0] wr,
    input [31:0] wdo,
    input wm2reg,
    
    output reg [31:0] wbData
    );
    
    always @(*)
    begin
        if (wm2reg == 0)
        begin
            wbData <= wr;
        end
        if (wm2reg ==1)
        begin
            wbData <= wdo;
        end    
    end
endmodule
