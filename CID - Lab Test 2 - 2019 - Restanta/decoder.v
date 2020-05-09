module decoder(input wire [1:0]sel,
					output wire [2:0]out);

assign out = 1 << sel;
endmodule 