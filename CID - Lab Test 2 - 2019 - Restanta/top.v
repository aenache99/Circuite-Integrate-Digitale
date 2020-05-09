module top(input wire clk,
				input rst_n,
				input wire save_n,
				input wire sel,
				input wire [3:0] data,
				input wire [3:0]wr_addr,
				output wire [3:0] instructions);
				
wire demux1out0;
wire demux1out1;			
wire [3:0]demux2out0;						
wire [3:0]demux2out1;						
wire [2:0]ossconout;
wire [2:0]to_freq_div;
wire [2:0]to_mux;
wire [3:0]read_addrress;



demux1 dmx1(.in(save_n),
				.sel(sel),
				.out0(demux1out0),
				.out1(demux1out1));
				
demux2 dmx2(.in(data),
				.sel(sel),
				.out0(demux2out0),
				.out1(demux2out1));
	
osscon oss(.clk(clk),
				.rst_n(rst_n),
				.data(demux2out1),
				.save(demux1out0),
				.out(ossconout));

decoder dec(.sel(ossconout),
				.out(to_freq_div));
				
freq_div(.clk(clk),
			.rst_n(rst_n),
			.en(to_freq_div),
			.out(to_mux));
			
mux mux4(.in({clk, to_mux[2], to_mux[1], to_mux[0]}),
			.sel(ossconout),
			.out(to_pc));
			
programcounter pc(.clk(to_pc),
						.rst_n(rst_n),
						.out(read_address));
						
ram_instr ram(.rd_addr(read_address),
					.save(demux1out1),
					.wr_data(demux2out1),
					.wr_addr(wr_addr),
					.rd_data(instructions));
					
endmodule 