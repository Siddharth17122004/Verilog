`timescale 1ns/1ps
module tb_FSM_counter;
reg clk,rst;
wire [1:0]count;

 
FSM_counter uut(.clk(clk),.rst(rst),.count(count));

always #5 clk=~clk;

initial begin
	$dumpfile("FSM_counter.vcd");
	$dumpvars(0,tb_FSM_counter);
	clk=0;rst=1;
	$monitor("clk=%t | rst=%b | count=%d",clk,rst,count);
	
	#10 rst=0;
	#10;
	#10;
	#10;
	#10;
	$finish;
end
endmodule
	
