module programcounter(input wire clk,
							input wire rst_n,
							output reg [3:0]out);
							
always @(posedge clk)
begin
	if (rst_n == 0)
		out <= 0;
	else
		out <= out+1;
end
endmodule 