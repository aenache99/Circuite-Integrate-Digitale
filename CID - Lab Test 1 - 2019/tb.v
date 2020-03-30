module tb();

reg in0_tb;
reg in1_tb;
reg in2_tb;
reg in3_tb;
reg [1:0]sel_tb;
reg [3:0]data_tb;
wire out0_tb;
wire out1_tb;
wire out2_tb;
wire out3_tb;
// instantiere DUT:
top DUT(.in0(in0_tb),
			.in1(in1_tb),
			.in2(in2_tb),
			.in3(in3_tb),
			.sel(sel_tb),
			.data(data_tb),
			.out0(out0_tb),
			.out1(out1_tb),
			.out2(out2_tb),
			.out3(out3_tb)
			);
//Dam valori:
initial
begin
	in0_tb = 0;
	in1_tb = 0;
	in2_tb = 0;
	in3_tb = 0;
	sel_tb = 0;
	data_tb = 0;
#10  	sel_tb = 1;
		data_tb = 1;
#20  in0_tb = 1;
		in1_tb = 1;
		in2_tb = 1;
		in3_tb = 1;
		sel_tb = 2;
		data_tb = 2;
#25 	sel_tb = 3;
		data_tb = 3;
#30 	sel_tb = 2;
		data_tb = 4;
#35 	sel_tb = 0;
		data_tb = 5;
#40 	in0_tb = 0;
		in2_tb = 0;
		in3_tb = 0;
		data_tb = 6;
#45 	data_tb = 7;
#50 	in0_tb = 1;
		in3_tb = 1;
		data_tb = 0;
end
// Oprire simulare:
initial 
begin
	#1000 $stop;
end
endmodule