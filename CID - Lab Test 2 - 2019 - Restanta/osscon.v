module osscon(input wire clk,
					input wire rst_n,
					input wire [3:0]data,
					input wire save,
					output reg [1:0]out);
					
always @(posedge clk)
begin
	if (rst_n == 0)
		out <= 0;
	else 
		begin 
			if (save == 1)
				out <= {data[0], data[1]};
			else
				out <= out;
		end
end
endmodule