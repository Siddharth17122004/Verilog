module pipo(input [3:0]pin,input clk,rst,load,output reg [3:0]out);

always @(posedge clk or posedge rst)begin
	if(rst)
		out<=4'b0000;
	else if(load)
		out<=pin;
		
	else
		out<={out[2:0],1'b0};
	end
endmodule
		
