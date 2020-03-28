module and4_gate (
				input wire in0,
				input wire in1,
				input wire in2,
				input wire in3,
				output wire out0
				);
wire firw0;
wire firw1;
and2_gate primul (
				.in0(in0),
				.in1(in1),
				.out0(firw0)
				);
and2_gate al_doilea (
				.in0(in2),
				.in1(in3),
				.out0(firw1)
				);
and2_gate al_treilea (
				.in0(firw0),
				.in1(firw1),
				.out0(out0)
				);

endmodule //and4_gate