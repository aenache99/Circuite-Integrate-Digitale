module comparator_ae(input wire [31:0]in0,
							input wire [31:0]in1,
							output reg out);
					
always@( * )		
begin	
if (in0 >= in1)
	out = 1;
else 
	out = 0;
end
endmodule 