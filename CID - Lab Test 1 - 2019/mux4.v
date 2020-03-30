module mux4(input wire in0,
				input wire in1,
				input wire in2,
				input wire in3,
				input wire [1:0] sel,
				output wire out
				);
wire firout0;
wire firout1;
mux2 multiplex1 (	.in0(in0),
						.in1(in1),
						.sel(sel[0]),
						.out(firout0)
						);
mux2 multiplex2 (	.in0(in2),
						.in1(in3),
						.sel(sel[0]),
						.out(firout1)
						);
mux2 multiplex3 (.in0(firout0),
						.in1(firout1),
						.sel(sel[1]),
						.out(out)
						);
endmodule 