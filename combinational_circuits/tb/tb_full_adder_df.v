`timescale 1ns/1ps
module tb_full_adder_df;
reg a,b,cin;
wire sum,cout;

full_adder_df uut1(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));


initial begin
	$dumpfile("sim/full_adder_df.vcd");
	$dumpvars(0,tb_full_adder_df );
	$display("OUTPUT");
	$monitor("a=%b b=%b cin=%b sum=%b cout=%b ",a,b,cin,sum,cout);
	cin=0;
	a=0;b=0;#10;
	a=0;b=1;#10;
	a=1;b=0;#10;
	a=1;b=1;#10;
	$finish;
end
endmodule

	
