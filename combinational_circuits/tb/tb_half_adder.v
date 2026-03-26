`timescale 1ns/1ps
module tb_half_adder;
reg a,b;
wire sum_df,sum_gl,cout_df,cout_gl;

half_adder_df uut1(a,b,sum_df,cout_df);
half_adder_gl uut2(a,b,sum_gl,cout_gl);

initial begin
	$display("HALF ADDER GATE AND DATA FLOW OUTPUT");
	$monitor("a=%b b=%b sumdf=%b cout_df=%b sum_gl=%b cout_gl=%b",a,b,sum_df,cout_df,sum_gl,cout_gl);
	a=0;b=0;
	#10 a=0;b=1;
	#10 a=1;b=0;
	#10 a=1;b=1;
	#10 $finish;
end
endmodule
