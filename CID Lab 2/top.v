module top (
				input wire a,
				input wire b,
				input wire c,
				input wire d,
				output wire x
				);
wire w0;
and4_gate caracatita(
				.in0(a),
				.in1(b),
				.in2(c),
				.in3(d),
				.out0(w0)
				);
not_gate final(
				.in0(w0),
				.out0(x)
				);
endmodule //top