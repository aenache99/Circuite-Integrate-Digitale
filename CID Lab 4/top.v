module top (input wire [3:0]data,
				input wire load,
				output wire [3:0]out
					);
					
latchmux ltch1(.load(load),
				  .data(data),
				  .out(out)
				  );
endmodule 
