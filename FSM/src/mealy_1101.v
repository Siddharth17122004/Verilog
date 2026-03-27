module mealy_1101(input clk,rst,x,output reg z);
parameter [1:0]s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;

reg[1:0]cs,ns;
always @(posedge clk or posedge rst)begin
	if(rst)
		cs<=2'b00;
	else
		cs<=ns;
end

always @(*)begin
	z=0;
	case(cs)
		s0:if(x)
			ns=s1;
		   else
			ns=s0;
		s1:if(x)
			ns=s2;
		   else
			ns=s0;
		s2:if(x)
			ns=s2;
		   else
			ns=s3;
		s3:if(x)begin
			z=1;
			ns=s1;
		   end else
		        ns=s0;
		default:ns=s0;
	endcase
end
endmodule
