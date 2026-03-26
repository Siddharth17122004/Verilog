`timescale 1ns/1ps
module decoder2_4_df(input a,b,output[3:0]y);
assign y[0]=~a&~b;
assign y[1]=~a&b;
assign y[2]=a&~b;
assign y[3]=a&b;
endmodule
