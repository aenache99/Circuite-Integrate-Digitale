module top(input wire clk,
				input wire rst,
				input wire en,
				output wire pwm_out);
wire counter_to_comp_ae;
counter_W_autoreset numarator(.clk(clk),
										.rst(rst),
										.en(en),
										.autoreset_limit(100),
										.value(counter_to_comp_ae));
comp_ae comparator(.in0(counter_to_comp_ae),
						.in1(20),
						.out(pwm_out));
						
endmodule