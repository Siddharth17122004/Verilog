`timescale 1ns/1ps
module mux2_1_beh(input a,b,s,output reg y);
always @(*)begin 
	if(s)
	y=b;
	else
	y=a;
	end
endmodule
