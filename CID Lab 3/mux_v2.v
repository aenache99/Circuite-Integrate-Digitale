module mux_v2(input wire in0,
				  input wire in1,
				  input wire sel,
				  output wire out0
				  );
assign out0 = (sel == 0) ? in0 : in1;
endmodule // mux_v2