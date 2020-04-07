module mux4 (input wire i0,
				input wire i1,
				input wire i2,
				input wire i3,
				input wire [28:27] sel,
				output wire q
				 );
wire firout0;
wire firout1;
mux2 multiplex1 (	.in0(i0),
						.in1(i1),
						.sel(sel[27]),
						.out(firout0)
						);
mux2 multiplex2 (	.in0(i2),
						.in1(i3),
						.sel(sel[27]),
						.out(firout1)
						);
mux2 multiplex3 (.in0(firout0),
						.in1(firout1),
						.sel(sel[28]),
						.out(q)
						);
endmodule 