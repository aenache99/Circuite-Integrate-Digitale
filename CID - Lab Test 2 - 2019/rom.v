module rom (input wire [9:0]addr,
				input wire [7:0]data_w,
				input wire w_en,
				input clk,
				output reg [7:0]data_r
				);
				
reg [7:0] mem [0:1023];
always @(posedge clk)
begin
	data_r <= mem[addr];
end
endmodule