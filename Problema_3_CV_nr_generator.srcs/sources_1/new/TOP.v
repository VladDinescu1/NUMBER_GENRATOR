`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 22:32:56
// Design Name: 
// Module Name: TOP
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


module TOP(output tester,
           output[7:0] sir,
           input en,rst,clk,
           input[10:0] in_top );
    wire[7:0] n_1,n_2,cm_bh,out_beh,cmp;
    wire[10:0] ct_ram,sub_ram;
           
    reg_8b reg1(.out(n_1),
                .in(cm_bh),
                .en(en),
                .rst(rst),
                .clk(clk));
                
    reg_8b reg2(.out(n_2),
                .in(n_1),
                .en(en),
                .rst(rst),
                .clk(clk));
    ct_11b ct1(.out(ct_ram),
               .en(en),
               .rst(rst),
               .clk(clk));
               
    subs  sub1(.out(sub_ram),
               .in0(ct_ram),
               .in1(in_top));
               
    COM_BEH beh1(.out(cm_bh),
                 .in0(n_1),
                 .in1(n_2));
                 
    compute_struct cmps(.out(cmp),
                        .in0(n_1),
                        .in1(n_2));
                        
    COMP_EQ compeq(.out(tester),
            .in0(cmp),
            .in1(cm_bh));
            
    RAM2k ram2k(.sir(sir),
           .w_en(en),
           .clk(clk),
           .addr_w(ct_ram),
           .addr_r(sub_ram),
           .data_w(cm_bh));
      
endmodule
