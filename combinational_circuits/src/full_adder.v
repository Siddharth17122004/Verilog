module fulladder_df(input a,b,cin,output sum,cout);
assign sum=a^b^cin;
assign cout=(a&b)|(b&cin)|(a&cin);
endmodule

module fulladder_gl(input a,b,cin,output sum,cout);
wire x,y,z;
xor g1(x,a,b);
xor g2(sum,x,cin);
and g3(y,a,b);
and g4(z,x,cin);
or g5(cout,y,z);
endmodule
