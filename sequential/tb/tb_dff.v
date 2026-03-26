module tb_dff;
reg clk,rst,d;
wire q;

dff uut(.clk(clk),.rst(rst),.d(d),.q(q));
always #5 clk=~clk;
initial begin
	$dumpfile("dff.vcd");
	$dumpvars(0,tb_dff);
       	$monitor("d=%b | q=%b |clk=%t |rst=%b",d,q,clk,rst);
	rst=1;clk=0;d=0;
	#10 rst=0;d=0;
	#10 d=1;
	#10 d=0;
	#10 d=1;
	#10 $finish;
	end
endmodule
	
