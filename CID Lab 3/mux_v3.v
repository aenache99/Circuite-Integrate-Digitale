module mux_v3(input wire in0,
				  input wire in1,
				  input wire sel,
				  output reg out0
				  );
always@( * )
begin
	if (sel == 0)
		out0 = in0;
	else 
		out0 = in1;
end
endmodule // mux_v3
