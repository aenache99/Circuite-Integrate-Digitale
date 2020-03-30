module mux2(input wire in0,
				  input wire in1,
				  input wire sel,
				  output wire out
				  );
assign out = (in0 & !sel) || (in1 & sel);
endmodule 