`timescale 1ns/1ps
module encoder4_2df(input [3:0]d,output [1:0]y);
assign y[0]=d[1] | d[3];
assign y[1]=d[2] | d[3];
endmodule

module encoder4_2gl(input [3:0]d,output [1:0]y);
or g1(y[0],d[1],d[3]);
or g2(y[1],d[2],d[3]);
endmodule
