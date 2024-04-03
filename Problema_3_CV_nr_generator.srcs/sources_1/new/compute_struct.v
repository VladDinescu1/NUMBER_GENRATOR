`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 20:32:16
// Design Name: 
// Module Name: compute_struct
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


module compute_struct(output reg  [7:0] out,
                      input in0,in1 
    );
    always @(*)
    if(in0%2==0)
     out=(2*in1 + in0 +3)%256;
    else
     out=(2*in1 + in0 -1)%256;
    
endmodule
