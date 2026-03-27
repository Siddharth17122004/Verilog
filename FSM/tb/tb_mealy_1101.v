module tb_mealy_1101;
reg clk,rst,x;
wire z;

mealy_1101 uut(.clk(clk),.rst(rst),.x(x),.z(z));

always #5 clk=~clk;

initial begin
	$dumpfile("mealy_1101.vcd");
	$dumpvars(0,tb_mealy_1101);
	
	clk=0;rst=1;x=0;
	#10 rst=0;
	#10 x=1;
	#10 x=1;
	#10 x=0;
	#10 x=1;
	
	#10 x=1;//overlapping 
	#10 x=0;
	#10 x=1;
	
	$monitor("clk=%t | rst=%b | x=%b | z=%b",clk,rst,x,z);
	#20 $finish;
end
endmodule

