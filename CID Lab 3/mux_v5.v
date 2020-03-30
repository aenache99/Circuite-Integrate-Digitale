module mux_v5(input wire [1:0]in,
				  input wire sel,
				  output wire out0
				  );
assign out0 = in[sel];

endmodule // mux_v3