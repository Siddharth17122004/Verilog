module half_adder_df(input a,b,output sum,cout);
assign sum=a^b;
assign cout=a&b;
endmodule

module half_adder_gl(input a,b,output sum,cout);
xor g1(sum,a,b);
and g2(cout,a,b);
endmodule
