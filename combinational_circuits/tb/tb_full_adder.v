module tb_fulladder;
reg a,b,cin;
wire sum_df,sum_gl;
wire cout_df,cout_gl;

fulladder_df uut1(.a(a),.b(b),.cin(cin),.sum(sum_df),.cout(cout_df));
fulladder_gl uut2(.a(a),.b(b),.cin(cin),.sum(sum_gl),.cout(cout_gl));

initial begin
	$display("OUTPUT");
	$monitor("a=%b b=%b cin=%b sum_df=%b cout_df=%b sum_gl=%b cout_gl=%b",a,b,cin,sum_df,cout_df,sum_gl,cout_gl);
	cin=0;
	a=0;b=0;#10;
	a=0;b=1;#10;
	a=1;b=0;#10;
	a=1;b=1;#10;
	$finish;
end
endmodule

	
