module tb_singleport_ram;
	parameter clk_period=10;
	reg [7:0]din;
	reg[4:0]addr;
	wire[7:0]dataout;
	reg clk,wen,ren;
	
	singleport_ram uut(.din(din),.addr(addr),.dataout(dataout),.clk(clk),.wen(wen));
	always #(clk_period/2) clk=~clk;
	
	task write_operation;
		input [4:0]waddr;
		input [7:0]wdin;
		begin
			@(posedge clk);
			addr=waddr;
			din=wdin;
			wen=1;
			@(posedge clk);
			wen=0;
		end
	endtask
	
	task read_operation;
		input [4:0]raddr;
		begin 
			@(posedge clk);
			addr=raddr;
			wen=0;
			
			@(posedge clk);
			$display("Data at address %d = %h",addr,dataout);
		end
	endtask
	
	initial begin
		clk=0;wen=0;addr=0;
		write_operation(5'd6,8'hAA);
		write_operation(5'd10,8'h55);
		
		read_operation(5'd6);
		read_operation(5'd10);
		#20;
		$finish;
	end
endmodule
			
	
