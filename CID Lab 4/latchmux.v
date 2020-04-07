module latchmux( input wire load, // 1 bit
					 input wire [3:0]data, // 4 biti
					 output wire [3:0]out // tot 4 biti
					);
					
wire [3:0]bucla;
					
mux2 multiplex(.in0(bucla), // legam in0 cu out pt a forma bucla de reactie
			  .in1(data),
			  .sel(load),
			  .out(bucla)
			  );
assign out = bucla;
					
endmodule 