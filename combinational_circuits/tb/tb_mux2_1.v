`timescale 1ns/1ps
module tb_mux2_1;
reg a,b,s;
wire y_df,y_gl;

mux2_1df uut1(a,b,s,y_df);
mux2_1gl uut2(a,b,s,y_gl);

initial begin
	$display("2_to_1_MUX Output");
	$monitor("a=%b b=%b s=%b y_df=%b y_gl=%b",a,b,s,y_df,y_gl);
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
