module prescaler(input wire clk,
					input wire rst_n,
					input wire [3:0]en,
					output reg out);
// aici se afla blocul prescaler optimizat.
reg [1:0] freq_div2x;					
reg [3:0] freq_div4x;
reg [7:0] freq_div8x;
always @(posedge clk)
begin 
	case (en)
		clk: out <= clk; // frecventa normala
		01: begin // frecventa de 2 ori mai mica
				if (rst_n == 0)
					begin
					out <= 0;
					freq_div2x <= 0;
					end
				else if (freq_div2x == 0)
					begin
					freq_div2x <= 0;
					out <= ~out ;
					end
				else 
					freq_div2x <= freq_div2x + 1;
				end
		10: begin // frecventa de 4 ori mai mica
				if (rst_n == 0)
					begin
					out <= 0;
					freq_div4x <= 0;
					end
				else if (freq_div4x == 0)
					begin
					freq_div4x <= 0;
					out <= ~out ;
					end
				else 
					freq_div4x <= freq_div4x + 1;
				end
		11: begin // frecventa de 8 ori mai mica
				if (rst_n == 0)
					begin
					out <= 0;
					freq_div8x <= 0;
					end
				else if (freq_div8x == 0)
					begin
					freq_div8x <= 0;
					out <= ~out ;
					end
				else 
					freq_div8x <= freq_div8x + 1;
				end
		default: out <= out; // nu face nimic
		endcase
end
endmodule 