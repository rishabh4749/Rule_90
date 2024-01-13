`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2024 16:45:59
// Design Name: 
// Module Name: tb
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


module tb(

    );
    reg clk;
    reg load;
    reg [511:0] data;
    wire [511:0] q;
    always #5 clk=~clk;
    des dut(.clk(clk),.load(load),.data(data),.q(q));
    initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $display("time=%t load=%b data=%b q=%b",$time,load,data,q);
    clk<=0;
    load<=1;
    data<=86459384;
    #9 load<=0;
    #100 $finish;
    end
endmodule
