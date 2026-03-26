`timescale 1ns/1ps
module tb_half_adder_gl;
reg a,b;
wire sum_gl,cout_gl;

half_adder_gl uut1(a,b,sum_gl,cout_gl);


initial begin
	$dumpfile("sim/half_adder_gl.vcd");
	$dumpvars(0,tb_half_adder_gl );
	$display("HALF ADDER GATE OUTPUT");
	$monitor("a=%b b=%b sum_gl=%b cout_gl=%b",a,b,sum_gl,cout_gl);
	a=0;b=0;
	#10 a=0;b=1;
	#10 a=1;b=0;
	#10 a=1;b=1;
	#10 $finish;
end
endmodule
