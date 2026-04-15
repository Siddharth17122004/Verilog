module lfsr(input rst,clk,output reg [7:0]lfsr);
	wire feedback;
	assign feedback=lfsr[7]^lfsr[6]^lfsr[5]^lfsr[4];

	always @(posedge clk)begin
		if(rst)
			lfsr<=8'b00000001;
		else
			lfsr<={lfsr[6:0],feedback};
	end
endmodule
