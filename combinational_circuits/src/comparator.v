`timescale 1ns/1ps

module comparator2_df(input [1:0] a,b, output eq,gt,lt);

assign eq = (a==b);
assign gt = (a>b);
assign lt = (a<b);

endmodule

module comparator2_gl(input [1:0] a,b, output eq,gt,lt);

wire x0,x1,na0,na1,nb0,nb1,w1,w2,w3,w4;

xnor g1(x0,a[0],b[0]);
xnor g2(x1,a[1],b[1]);
and g3(eq,x0,x1);

not g4(na0,a[0]);
not g5(na1,a[1]);
not g6(nb0,b[0]);
not g7(nb1,b[1]);

and g8(w1,a[1],nb1);
and g9(w2,x1,a[0],nb0);
or g10(gt,w1,w2);

and g11(w3,na1,b[1]);
and g12(w4,x1,na0,b[0]);
or g13(lt,w3,w4);

endmodule
