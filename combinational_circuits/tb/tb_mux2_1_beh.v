`timescale 1ns/1ps
module tb_mux2_1_beh;
reg a,b,s;
wire y;

mux2_1_beh uut1(a,b,s,y);


initial begin
	$dumpfile("sim/mux2_1_beh.vcd");
	$dumpvars(0,tb_mux2_1_beh );
	$display("2_to_1_MUX Output");
	$monitor("a=%b b=%b s=%b y=%b",a,b,s,y);
	a=0; b=0; s=0;
  	#10 a=0; b=0; s=1;
  	#10 a=0; b=1; s=0;
  	#10 a=0; b=1; s=1;
  	#10 a=1; b=0; s=0;
  	#10 a=1; b=0; s=1;
  	#10 a=1; b=1; s=0;
  	#10 a=1; b=1; s=1;

  	#10 $finish;
end

endmodule
