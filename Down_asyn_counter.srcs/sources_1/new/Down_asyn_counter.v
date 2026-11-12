`timescale 1ns / 1ps


module Down_asyn_counter(clk,rst,q

    );
    input clk,rst;
    output reg [2:0]q;
    
    always@(posedge clk  or negedge rst)
    begin 
    if(!rst)
    q<=3'b111;
    else 
    q<=q-1'b1;
    end 
    
endmodule
