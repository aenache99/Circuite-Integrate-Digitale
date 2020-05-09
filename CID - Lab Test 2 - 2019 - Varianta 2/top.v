module top(input wire start,
				input wire clk,
				input wire rst,
				input wire [7:0] data_in,
				output wire out_tx);

wire a;
wire toggle_ff_out;
wire clc_calc_out;
wire [3:0]bit_select_out;
wire [19:0]baud_rate_out;
wire comp_eq_20bit_out1;
wire comp_eq_20bit_out2;
wire comp_eq_4bit_out1;
wire comp_eq_4bit_out2;
wire [10:0]reg0_out;
wire mux_out;
wire toggle_toggle_ff;

assign a = (comp_eq_20bit_out1 & comp_eq_4bit_out1);
assign toggle_toggle_ff = (start & !toggle_ff_out) | a;

toggle_ff uut1(.clk(clk),
					.rst(rst),
					.toggle(toggle_toggle_ff),
					.out(toggle_ff_out));
crc_calc uut2(.in(data_in),
					.out(crc_calc_out));
counter_bit_select uut3 (.clk(clk),
								.rst(a | rst),
								.en(toggle_ff_out),
								.out(bit_select_out));
counter_baud_rate uut4 (.clk(clk),
								.rst_async(rst),
								.rst_sync(comp_eq_20bit_out1),
								.en(toggle_ff_out),
								.out(baud_rate_out));
comp_eq_20bit comp1 (.in0(5200),
						.in1(baud_rate_out),
						.out0(comp_eq_20bit_out1));
comp_eq_20bit comp2 (.in0(4),
						  .in1(baud_rate_out),
						.out0(comp_eq_20bit_out2));
comp_eq_4bit comp3 (.in0(10),
						.in1(bit_select_out),
						.out0(comp_eq_4bit_out1));
comp_eq_4bit comp4 (.in0(bit_select_out),
						.in1(0),
						.out0(comp_eq_4bit_out2));
reg0 uut8 (.load(start & comp_eq_20bit_out2 & comp_eq_4bit_out2),
			.clk(clk),
			.rst(rst),
			.data_in({1'b1, crc_calc_out, data_in[7], data_in[6], data_in[5], data_in[4], data_in[3], data_in[2], data_in[1], data_in[0], 1'b0}),
			.data_out(reg0_out));
mux uut9 (.in(reg0_out),
			.sel(bit_select_out),
			.out(mux_out));
				
assign out_tx = (!toggle_ff_out | mux_out);

endmodule 