module tb();
reg clk;
reg [9:0] mem_addr;
reg [7:0] mem_data;
reg [1:0] sel_mem;
wire [7:0] mem_0_out;
wire [7:0] mem_1_out;
wire [7:0] mem_2_out;
wire [7:0] mem_3_out;

top DUT(
					.clk(clk),
					.memory_addr(mem_addr),
					.memory_data(mem_data),
					.select_memory(sel_mem),
					.mem_0_out(mem_0_out),
					.mem_1_out(mem_1_out),
					.mem_2_out(mem_2_out),
					.mem_3_out(mem_3_out)
				);

initial
begin
	clk = 0;
	forever
		begin
		#5 clk = ~clk;
		end
end

initial
begin
	#20
	sel_mem = 0;
	mem_data = 21;
	mem_addr = 0;
	#10
	sel_mem = 0;
	mem_data = 30;
	mem_addr = 2;
	#10
	sel_mem = 0;
	mem_data = 8;
	mem_addr = 15;
	
	#10
	sel_mem = 3;
	mem_data = 21;
	mem_addr = 0;
	#10
	sel_mem = 3;
	mem_data = 1;
	mem_addr = 1;
	#10
	sel_mem = 3;
	mem_data = 18;
	mem_addr = 2;
	#10
	sel_mem = 3;
	mem_data = 100;
	mem_addr = 3;
	
	#100 $stop;
end
endmodule