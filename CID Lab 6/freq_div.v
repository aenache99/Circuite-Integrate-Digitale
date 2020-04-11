module freq_div(input wire clk,
					input wire rst,
					output reg [31:0]value);

always @(posedge clk) 
begin
    if (rst == 1)
        value <= 32'b0;
    else
        value <= value + 1'b1;
end

endmodule 