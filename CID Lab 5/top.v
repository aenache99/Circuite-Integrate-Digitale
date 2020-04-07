module top(input wire [9:0]memory_addr,
				input wire [7:0]memory_data,
				input wire [1:0]select_memory,
				input clk,
				output wire [7:0]mem_0_out,
				output wire [7:0]mem_1_out,
				output wire [7:0]mem_2_out,
				output wire [7:0]mem_3_out);
wire enable_wire0;
wire enable_wire1;
wire enable_wire2;
wire enable_wire3;
decodor decod(.in(select_memory),
					.out({enable_wire3, enable_wire2, enable_wire1, enable_wire0})
					);

memory mem0(.addr(memory_addr),
			.data_w(memory_data),
			.w_en(enable_wire0),
			.clk(clk),
			.data_r(mem_0_out)
			);
memory mem1(.addr(memory_addr),
			.data_w(memory_data),
			.w_en(enable_wire1),
			.clk(clk),
			.data_r(mem_1_out)
			);
memory mem2(.addr(memory_addr),
			.data_w(memory_data),
			.w_en(enable_wire2),
			.clk(clk),
			.data_r(mem_2_out)
			);
memory mem3(.addr(memory_addr),
			.data_w(memory_data),
			.w_en(enable_wire3),
			.clk(clk),
			.data_r(mem_3_out)
			);
endmodule 