module half_adder_gl(input a,b,output sum,cout);
xor g1(sum,a,b);
and g2(cout,a,b);
endmodule
