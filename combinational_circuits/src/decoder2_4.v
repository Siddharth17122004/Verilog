`timescale 1ns/1ps
module decoder2_4df(input a,b,output[3:0]y);
assign y[0]=~a&~b;
assign y[1]=~a&b;
assign y[2]=a&~b;
assign y[3]=a&b;
endmodule

module decoder2_4gl(input a,b,output[3:0]y);
wire na,nb;
not g1(na,a);
not g2(nb,b);
and g3(y[0],na,nb);
and g4(y[1],na,b);
and g5(y[2],a,nb);
and g6(y[3],a,b);
endmodule
