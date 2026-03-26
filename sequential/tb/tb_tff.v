module tb_tff;
reg clk,rst,t;
wire q;

tff uut(.clk(clk),.rst(rst),.t(t),.q(q));

always #5 clk=~clk;

initial begin
	$dumpfile("tff.vcd");
	$dumpvars(0,tb_tff);
	$monitor("t=%b | clk=%t | rst=%b | q=%b",t,clk,rst,q);
	clk=0;rst=0;t=0;
	#10 rst=1;t=0;
	#10 t=1;
	#10 t=0;
	#10 t=1;
	$finish; 
	end
endmodule
