module mux_v4(input wire in0,
				  input wire in1,
				  input wire sel,
				  output reg out0
				  );
always@( * )
case(sel)
0: out0=in0;
1: out0=in1;
default: out0 = 0;
endcase
endmodule // mux_v4