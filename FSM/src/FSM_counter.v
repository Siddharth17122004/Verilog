module FSM_counter(input clk,rst,output reg [1:0]count);
parameter [1:0]s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;

reg[1:0]cs,ns;
always @(posedge clk or posedge rst)begin
	if(rst)
		//count<=2'b00;implicit as ns=s0
		cs<=s0;
	else
		cs<=ns;
end

always @(*)begin
	// implicit so not needed count=2'b00;
	case(cs)
		s0:ns=s1;
		s1:ns=s2;
		s2:ns=s3;
		s3:ns=s0;
		default:ns=s0;
	endcase
end

always @(*)begin
	count=cs;
// or no always block and simple assign count=cs;
end
endmodule
	
