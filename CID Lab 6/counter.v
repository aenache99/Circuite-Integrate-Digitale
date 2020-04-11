module counter(input wire clk,
					input wire rst,
					input wire load,
					input wire up_not_down,
					input wire [31:0]load_value,
					output reg [31:0]out_value);
always @(posedge clk)
begin
	if (rst == 1)
		out_value <= 32'b0;
	else if (load == 1)
		out_value = load_value;
	else if (up_not_down == 0)
		out_value <= out_value - 1'b1;
	else
		out_value <= out_value + 1'b1;
end
endmodule 