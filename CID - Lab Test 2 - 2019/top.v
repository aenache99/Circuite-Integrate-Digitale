module top (input wire reset,
				input wire clk,
				input wire enable,
				input wire fast,
				output wire q
				);
wire firsel;
wire firrom;
sumator counter();
rom trans_d();
rom trans_c();
rom trans_a();
rom trans_e();
mux4 mux
endmodule 