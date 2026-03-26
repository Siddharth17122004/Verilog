`timescale 1ns/1ps
module tb_half_adder_beh;
reg a,b;
wire sum_df,sum,cout;

half_adder_beh uut1(a,b,sum,cout);


initial begin
	$dumpfile("sim/half_adder_beh.vcd");
	$dumpvars(0,tb_half_adder_beh );
	$display("HALF ADDER BEHAVIOR OUTPUT");
	$monitor("a=%b b=%b sum=%b cout=%b",a,b,sum,cout);
	a=0;b=0;
	#10 a=0;b=1;
	#10 a=1;b=0;
	#10 a=1;b=1;
	#10 $finish;
end
endmodule
