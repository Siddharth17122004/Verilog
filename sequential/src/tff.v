module tff(input clk,rst,t,output reg q);
always @(posedge clk or negedge rst)begin
	if(!rst)
		q<=0;
	else begin
		case(t)
		      1'b0:q<=q;				 	
		      1'b1:q<=~q;
		      default:q<=q;
		endcase
	end
end
endmodule
