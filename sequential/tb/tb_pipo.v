module tb_pipo;
reg [3:0]pin;
reg clk,rst,load;
wire [3:0]out;

pipo uut(.pin(pin),.out(out),.clk(clk),.rst(rst),.load(load));

always #5 clk=~clk;

initial begin
	$dumpfile("pipo.vcd");
	$dumpvars(0,tb_pipo);
	clk=0;rst=1;
	#10 rst=0;load=1;
	#10 pin=4'b1000;
	#40; 
	#10 rst=1;
	#10 rst=0;load=1;
	#10 pin=4'b0001;
	#50 $finish;
	end
endmodule
