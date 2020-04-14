module counter_W_autoreset_mark1(input wire clk,
											input wire rst,
											input wire en,
											input wire [7:0] autoreset_limit,
											output reg autoreset,
											output reg [7:0]value);

always @(posedge clk)
begin
	if(rst==1) // reset triggered
		begin
			value<=0;
			autoreset<=0;
		end
	else
		begin
			if(value>=autoreset_limit) // valoarea depaseste limita de autoreset
				begin
					value<=0;
					autoreset<=1;
				end
			else
				begin
					if(en==1) // enable triggered
						begin
							value<=value+1;
							autoreset<=0;
						end
					else 
						begin	
							value<=value;	// aici e pauza, nu face nimic
							autoreset<=0;
						end
				end
		end
end
endmodule
