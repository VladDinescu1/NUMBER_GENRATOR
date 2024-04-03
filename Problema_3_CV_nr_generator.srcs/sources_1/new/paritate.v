`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 21:29:58
// Design Name: 
// Module Name: paritate
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


module paritate(output reg out,
                input[7:0]  in    
    );
    always @(*)
    if(in%2==0)
       out<=0;
      else
        out<=1;
endmodule
