`timescale 1ns/1ps
module mux2_1_df(input a,b,s,output y);
assign y=s?a:b;
endmodule
