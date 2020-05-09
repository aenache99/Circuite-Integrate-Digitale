module comp_eq_20bit(input wire [19:0]in0,
					input wire [19:0]in1,
					output reg out0);
					
always@( * )		
begin	
	if (in0 == in1)
		out0 = 1;
	else 
		out0 = 0;
end
endmodule 