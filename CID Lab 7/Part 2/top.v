module top(input wire clk,
				input wire rst,
				output wire pwm_out);
wire counter_to_comp_ae;
wire auto_reset_enable1;
wire auto_reset_enable2;
counter_W_autoreset_mark1 numarator1(.clk(clk),
												.rst(rst),
												.en(1),
												.autoreset_limit(100),
												.autoreset(auto_reset_enable1),
												.value(counter_to_comp_ae));
counter_W_autoreset_mark2 numarator2(.clk(clk),
												.rst(rst),
												.en(auto_reset_enable1),
												.autoreset_limit(50),
												.autoreset(auto_reset_enable2));
counter_W_autoreset_mark3 numarator3(.clk(clk),
												.rst(rst),
												.en(auto_reset_enable2),
												.autoreset_limit(100),
												.value(counter3_to_comp_ae));
comp_ae comparator(.in0(counter3_to_comp_ae),
						.in1(counter_to_comp_ae),
						.out(pwm_out));
						
endmodule