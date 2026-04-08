module singleport_ram(input clk,wen,ren,input [7:0]din,input [4:0]addr,output reg[7:0]dataout);
	reg[7:0] ram_mem[31:0];
	always @(posedge clk)begin
		if(wen)
			ram_mem[addr]<=din;
		else
			dataout<=ram_mem[addr];
	end
endmodule
		

