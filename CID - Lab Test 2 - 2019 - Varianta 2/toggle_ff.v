module toggle_ff(input wire clk,
						input wire rst,
						input wire toggle,
						output reg out);
						
always @(posedge clk)
begin
	if (rst == 1)
		out <= 0;
	else 
		begin
			if (toggle == 1)
				out <= ~out;
			else
				out <= out;
		end
end
endmodule 