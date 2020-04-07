module sumator (input wire clk,
					input wire rst,
					input wire fst,
					input wire en,
					output reg [3:0]q);
always @(posedge clk)
	begin
	if (rst == 0)
		q <= 0;
	else if (en == 0)
		begin
		if (fst == 1)
			q <= q+2;
		else 
			q <= q+1;
		end
	end
endmodule 