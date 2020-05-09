module counter_bit_select(input wire clk,
									input wire rst,
									input wire en,
									output reg [3:0]out);

always @(posedge clk)
begin
	if (rst == 1)
		out <= 0;
	else
		begin
			if (en == 1)
				out <= out + 1;
			else
				out <= out;
		end
end
endmodule 