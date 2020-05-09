module ram_instr(input wire clk,
					input wire [3:0]rd_addr,
					input wire [3:0]wr_data,
					input wire [3:0] wr_addr,
					input wire save,
					output reg [3:0]rd_data
				);
				
reg [3:0] mem [0:15];
always @(posedge clk)
begin
	rd_data <= mem[rd_addr];
end
always @(posedge clk)
begin
	if (save == 1)
		mem[wr_addr] <= wr_data;
end
endmodule 