`timescale 1ns/1ps
module mux2_1_gl(input a,b,s,output y);
wire ns,w,x;
not g1(ns,s);
and g2(w,ns,a);
and g3(x,s,b);
or g4(y,w,x);
endmodule
