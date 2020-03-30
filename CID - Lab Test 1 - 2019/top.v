module top(input wire in0,
				input wire in1,
				input wire in2,
				input wire in3,
				input wire [1:0] sel,
				input wire [3:0] data,
				output wire out0,
				output wire out1,
				output wire out2,
				output wire out3);
wire mux4lademux;
wire paritycalclamux2;
wire mux2lademux;
mux4 MUX4 (.in0(in0),
				.in1(in1),
				.in2(in2),
				.in3(in3),
				.sel(sel),
				.out(mux4lademux)
				);
mux22bit MUX2 (.in0(~sel),
				.in1(sel),
				.sel(paritycalclamux2),
				.out(mux2lademux)
				);
demux DEMUX4(.in(mux4lademux),
					.sel(mux2lademux),
					.out0(out0),
					.out1(out1),
					.out2(out2),
					.out3(out3)
					);
ParityChecker paritycalc(.in (data),
									.out(paritycalclamux2)
									);

endmodule 