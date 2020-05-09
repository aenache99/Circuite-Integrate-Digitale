module mux(input wire [10:0]in,
				input wire [3:0]sel,
				output reg out);

always @(*)
begin
	case (sel)
		0: out = in[0];
		1: out = in[1];
		2: out = in[2];
		3: out = in[3];
		4: out = in[4];
		5: out = in[5];
		6: out = in[6];
		7: out = in[7];
		8: out = in[8];
		9: out = in[9];
		10: out = in[10];
		default: out = 0;
	endcase
end
endmodule 