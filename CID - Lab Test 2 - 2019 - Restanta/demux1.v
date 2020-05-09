module demux1(input wire in,
					input wire sel,
					output reg out0,
					output reg out1);
					
always @(*)
begin
	case (sel)
	0:	begin
		out0 = in;
		out1 = 0;
		end 
	1: begin
		out0 = 0;
		out1 = in;
		end
	default: begin 
				out0 = 0;
				out1 = 0;
				end
	endcase
end
endmodule 