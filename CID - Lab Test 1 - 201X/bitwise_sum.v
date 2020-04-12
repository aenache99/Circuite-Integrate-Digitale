module bitwise_sum(input wire [3:0] in0,
		   input wire [3:0] in1,
		   output wire [3:0]out);
assign out = in0 ^ in1;
endmodule 
