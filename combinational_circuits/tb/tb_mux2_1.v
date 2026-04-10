module tb_mux2_1;
	reg d1,d2,s;
	wire y;
	mux2_1 dut(.d1(d1),.d2(d2),.s(s),.y(y));
	
	initial begin
		$monitor("d1=%b d2=%b s=%b y=%b",d1,d2,s,y);
		s=0;d1=0;d2=1;
		#10 s=1;d1=1;d2=0;
		#10 s=0;d1=1;d2=0;
		$finish;
	end
endmodule

