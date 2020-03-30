module top (input wire in0,
				input wire in1,
				input wire sel,
				output wire out0,
				output wire out1,
				output wire out2,
				output wire out3,
				output wire out4
				);
mux_v1 multiplex (.in0(in0),
						.in1(in1),
						.sel(sel),
						.out0(out0)
						);
mux_v2 multiplex2 (.in0(in0),
						.in1(in1),
						.sel(sel),
						.out0(out1)
						);
mux_v3 multiplex3 (.in0(in0),
						.in1(in1),
						.sel(sel),
						.out0(out2)
						);
mux_v4 multiplex4 (.in0(in0),
						.in1(in1),
						.sel(sel),
						.out0(out3)
						);
mux_v5 multiplex5 (.in({in1,in0}),
						.sel(sel),
						.out0(out4)
						);
endmodule // top 