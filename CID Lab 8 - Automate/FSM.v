module FSM(
    input wire clk,
    input wire load50bani,
	 input wire load1leu,
	 output reg out_cioco
);
// definim starile automatului de ciocolata
localparam STATE_0bani = 0;
localparam STATE_50bani = 1;
localparam STATE_100bani = 2;
localparam STATE_150bani = 3;
localparam STATE_200bani = 4;
localparam STATE_250bani = 5;
localparam STATE_300bani = 6;

reg state;

always @(posedge clk)
begin
   case (state)
        STATE_0bani:
				begin
					out_cioco <= 0;
					if (load50bani == 1)
						state <= STATE_50bani;
					else if (load1leu == 1)
						state <= STATE_100bani;
					else
						state <= STATE_0bani; // adica do nothing
				end
        STATE_50bani:
				begin
					out_cioco <= 0;
					if (load50bani == 1)
						state <= STATE_100bani;
					else if (load1leu == 1)
						state <= STATE_150bani;
					else
						state <= STATE_50bani; // adica do nothing
				end
        STATE_100bani:
				begin
					out_cioco <= 0;
					if (load50bani == 1)
						state <= STATE_150bani;
					else if (load1leu == 1)
						state <= STATE_200bani;
					else
						state <= STATE_100bani; // adica do nothing
				end
			STATE_150bani:
				begin
					out_cioco <= 0;
					if (load50bani == 1)
						state <= STATE_200bani;
					else if (load1leu == 1)
						state <= STATE_250bani;
					else
						state <= STATE_150bani; // adica do nothing
				end
         STATE_200bani:
				begin
					out_cioco <= 0;
					if (load50bani == 1)
						state <= STATE_250bani;
					else if (load1leu == 1)
						state <= STATE_300bani;
					else
						state <= STATE_200bani; // adica do nothing
				end
         STATE_250bani:
				begin
					out_cioco <= 1; // cioco livrata
					if (load50bani == 1)
						state <= STATE_50bani; // au mai ramas 50 de bani, ne ducem la STATE_50bani
					else
						state <= STATE_0bani; // gata cu banii, ne ducem la STATE_0bani
				end
         STATE_300bani:	
				begin
				out_cioco <= 1; // cioco livrata
				state <= STATE_50bani; // au mai ramas 50 de bani, ne ducem la STATE_50bani
				end
         default:
				state <= STATE_0bani; // daca nu se baga niciun ban
        endcase
end
endmodule 