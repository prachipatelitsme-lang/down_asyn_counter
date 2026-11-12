`timescale 1ns / 1ps



module down_asyn_counter_tb(

    );
    reg clk,rst;
    wire [2:0]q;
    
    Down_asyn_counter dut(.clk(clk),.rst(rst),.q(q));
    always #5 clk=~clk;
    initial
     begin 
     clk=0;
     rst=1;
     #10 
     rst=0;
     #100
     $stop;
     end 
    
    
endmodule
