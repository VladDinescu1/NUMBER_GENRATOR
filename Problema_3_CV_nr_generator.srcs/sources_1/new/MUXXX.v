`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 21:26:15
// Design Name: 
// Module Name: MUXXX
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


module MUXXX(output reg[7:0] out,
             input sel,
             input[7:0] in0,in1 );
             
             always @(*)
             case(sel)
             0:out=in0;
             1:out=in1;
             endcase
             
endmodule
