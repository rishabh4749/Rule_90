`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2024 16:27:34
// Design Name: 
// Module Name: des
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


module des(
    input clk,
    input load,
    input [511:0] data,
    output reg [511:0] q
    );
    integer i;
    always @ (posedge clk) begin
    if(load)
    q<=data;
    else begin
    q[0]<=0^q[1];
    q[511]<=0^q[510];
    for(i=1;i<511;i=i+1) begin
    q[i]<=q[i-1]^q[i+1];
    end
    end
    end
endmodule
