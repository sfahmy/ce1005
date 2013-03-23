`timescale 1ns / 1ps


module segtoggle(
    input [3:0] a,
    input [3:0] b,
    input clk,
    input rst,
    output reg [6:0] seg,
    output tglout
    );

	wire div20;

	reg [21:0] count;
    wire [3:0] selnum;


    always@(posedge(clk))
	   if (rst==1'b0)
		  count <= 22'b0;
	   else
		  count <= count+1'b1;

	assign div20 = count[19];

	assign tglout = div20;
    assign selnum = div20 ? a : b;

// COPY YOUR ALWAYS BLOCK HERE AND USE selnum AS THE CASE CONDITION



endmodule
