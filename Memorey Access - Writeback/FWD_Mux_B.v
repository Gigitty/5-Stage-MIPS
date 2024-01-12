`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2022 03:04:25 PM
// Design Name: 
// Module Name: FWD_Mux_B
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


module FWD_Mux_B(
    input [1:0] fwdb,
    input qb,
    input r,
    input mr,
    input do,
    
    output reg b 
    );
    
    always @(*)
    begin
    if (fwdb == 2'b00)
        begin
            b <= qb;
        end
    if (fwdb == 2'b01)
        begin
            b <= r;
        end
    if (fwdb == 2'b10)
        begin
            b <= mr;
        end
    if (fwdb == 2'b11)
        begin
            b <= do;
        end
    end
endmodule
