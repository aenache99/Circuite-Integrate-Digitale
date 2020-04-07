module tb();

reg [3:0] data_tb;
reg load_tb;
wire [3:0] out_tb;

top DUT(.data(data_tb),
			.load(load_tb),
			.out(out_tb)
			);

initial
begin
load_tb = 0;
data_tb = 0;
#5 data_tb = 1;
#5 data_tb = 2;
#5 data_tb = 3;
#5 data_tb = 4;
#5 load_tb = 1;
#5 data_tb = 0;
#5 load_tb = 0;
#10 load_tb = 1;
#10 load_tb = 0;
#5 data_tb = 5;
#5 load_tb = 1;
#10 load_tb = 0;
#10 load_tb = 1;
	 data_tb = 6;
#10 load_tb = 0;
	 data_tb = 0;
#10 load_tb = 1;
	 data_tb = 0;
#10 load_tb = 0;
#10 load_tb = 1;
#10 load_tb = 0;
#10 $stop;
end
endmodule //tb