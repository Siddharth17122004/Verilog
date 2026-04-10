module mux2_1(input d1,d2,s,output y);
	assign y=s?d1:d2;
endmodule
