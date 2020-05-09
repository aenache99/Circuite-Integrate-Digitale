module freq_div(input wire clk,
					input wire rst_n,
					input wire en,
					output reg out);
					
always @(posedge clk)
begin 
	if (rst_n == 0)
		out <= 0;
	else 
		begin 
			case (en)
			01: out <= ~out;
			10: out <= out + 4;
			11: out <= out + 8;
			default: out <= out;
			endcase
		end
end
endmodule 