module full_adder_beh(input a,b,c,output reg sum,cout);
always @(*)begin
	sum=a^b^c;
	cout=(a&b)|(b&c)|(a&c);
	end
endmodule
