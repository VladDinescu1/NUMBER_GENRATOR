`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 21:07:03
// Design Name: 
// Module Name: modul
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


module modul(output reg [7:0] out,
             input[7:0] in);
             
   reg [7:0]vt ;
          
          always @(*)  begin 
 
    vt= in;

    while (vt >= 256) 
        vt = vt - 256;
        
       out=vt;
         end
        
         endmodule
