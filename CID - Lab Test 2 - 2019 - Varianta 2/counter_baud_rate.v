module counter_baud_rate(input wire clk,
									input wire rst_async,
									input wire rst_sync,
									input wire en,
									output reg [19:0]out);

always @(posedge clk or posedge rst_async)
begin
	if (rst_async == 1)
		out <= 0;
	else
		begin
			if (rst_sync == 1)
				out <= 0;
			else
				begin
				if (en == 1)
					out <= out + 1;
				else
					out <= out;
				end
		end
end
endmodule 