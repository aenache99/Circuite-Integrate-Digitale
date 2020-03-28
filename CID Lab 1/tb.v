module tb();

reg in0_tb;
reg in1_tb;
wire out0_tb;

// instantiere
	//conectez circuitul
top var1 (
				.in0(in0_tb),
				.in1(in1_tb),
				.out0(out0_tb)
				);
// dau valori
initial
begin
	in0_tb = 0;
	in1_tb = 0;
	#100 in0_tb = 1;
	#50 in1_tb = 1;
	#50 in0_tb = 0;
end
// opresc candva simularea
initial 
begin
	#1000 $stop;
end
endmodule //tb