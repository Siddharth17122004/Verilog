module tb_mux4_1;
	reg [3:0]d;
	reg [1:0]s;
	wire y;

	mux4_1 dut(.d(d),.s(s),.y(y));
		
	initial begin
		$monitor("s0=%b s1=%b d=%b y=%b",s[0],s[1],d,y);
		$dumpfile("mux4_1.vcd");
		$dumpvars(0,tb_mux4_1);
		s[0]=0;s[1]=0;d[0]=0;d[1]=1;d[2]=0;d[3]=1;
		#10 s[0]=0;s[1]=1;d[0]=1;d[1]=0;
		#10 s[1]=1;s[0]=0;d[1]=0;d[2]=1;
		#10 s[1]=1;s[0]=1;d[2]=1;d[3]=0;
		$finish;
	end
endmodule
