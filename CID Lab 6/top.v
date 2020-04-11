module top(input wire clk,
				input wire rst,
				input wire load,
				input wire up_not_down,
				output wire [31:0]freq_div_out,
				output wire counter_1s);
wire [31:0]counter_comp;
wire comp_ff;
counter unit1(.clk(clk),
					.rst(rst || comp_ff),
					.load(load),
					.up_not_down(up_not_down),
					.load_value(32'hffff_ffff),
					.out_value(counter_comp));
comparator_ae unit2(.in0(counter_comp),
							.in1(50*1000*1000),
							.out(comp_ff));
toggle_ff unit3(.clk(clk),
						.rst(rst),
						.toggle(comp_ff),
						.value(counter_1s));
freq_div unit4(.clk(clk),
					.rst(rst),
					.value(freq_div_out));

endmodule 