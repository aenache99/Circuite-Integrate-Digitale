module mux24bit(input wire [3:0]in0,
				  input wire [3:0]in1,
				  input wire oe,
				  output wire [3:0]out
				  );
assign out = oe ? in1 : in0;
endmodule 