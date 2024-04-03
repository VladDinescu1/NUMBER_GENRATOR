`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 20:25:40
// Design Name: 
// Module Name: COMP_EQ
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


module COMP_EQ(output reg out,
               input [7:0]in0,in1 );
               
               always @(*)
               if(in0-in1==0)
                out=1;
               else
                out=0;
endmodule
