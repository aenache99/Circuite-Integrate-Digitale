module reg0(input wire load,
				input wire clk,
				input wire rst,
				input wire [10:0]data_in,
				output reg [10:0]data_out);

always @(posedge clk)
begin
	if (rst == 1)
		data_out <= 0;
	else 
		begin 
			if (load == 1)
				data_out <= data_in;
			else
				data_out <= data_out; // do nothing
		end
end
endmodule 