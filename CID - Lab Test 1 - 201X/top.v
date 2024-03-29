module top (input wire [3:0]in0,
				input wire [3:0]in1,
				input wire [1:0]sel,
				input wire oe,
				output wire [6:0]out);
wire [3:0]in0mux4;
wire [3:0]in1mux4;
wire [3:0]in2mux4;
wire [3:0]in3mux4;
wire [3:0]mux4mux2;
wire [3:0]mux2trans;
bitwise_and si(.in0(in0),
					.in1(in1),
					.out(in0mux4));
bitwise_sum suma(.in0(in0),
					.in1(in1),
					.out(in1mux4));
bitwise_xor sauexcl(.in0(in0),
							.in1(in1),
							.out(in2mux4));
bitwise_and andbit(.in0(in0),
						.in1(in1),
						.out(in3mux4));
mux44bit mux4in1(.in0(in0mux4),
						.in1(in1mux4),
						.in2(in2mux4),
						.in3(in3mux4),
						.sel(sel),
						.out(mux4mux2));
mux24bit mux2in1(.in0(mux4mux2),
						.in1(4'b0000),
						.oe(oe),
						.out(mux2trans));
transcodor trans (.in(mux2trans),
						.out(out));
endmodule 