module decodor(input wire [1:0]in,
					output wire [3:0]out);

assign out = 1 << in;
endmodule 