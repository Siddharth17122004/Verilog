`timescale 1ns/1ps
module tb_half_adder_df;
reg a,b;
wire sum_df,cout_df;

half_adder_df uut1(a,b,sum_df,cout_df);


initial begin
	$dumpfile("sim/half_adder_df.vcd");
	$dumpvars(0,tb_half_adder_df );
	$display("HALF ADDER DATA FLOW OUTPUT");
	$monitor("a=%b b=%b sumdf=%b cout_df=%b",a,b,sum_df,cout_df);
	a=0;b=0;
	#10 a=0;b=1;
	#10 a=1;b=0;
	#10 a=1;b=1;
	#10 $finish;
end
endmodule
