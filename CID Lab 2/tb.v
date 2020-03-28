module tb();
reg a_tb;
reg b_tb;
reg c_tb;
reg d_tb;
wire x_tb;

// instantiere
	//conectez circuitul
top mega_project (
				.a(a_tb),
				.b(b_tb),
				.c(c_tb),
				.d(d_tb),
				.x(x_tb),
				);
// dau valori
initial
begin
	a_tb = 0;
	b_tb = 0;
	c_tb = 0;
	d_tb = 0;
	#100 a_tb = 1;
	b_tb = 1;
	c_tb = 1;
	#50 d_tb = 1;
	#50 a_tb = 0;
	b_tb = 0;
	c_tb = 0;
	#50 d_tb = 0;
end
// opresc candva simularea
initial 
begin
	#300 $stop;
end
endmodule //tb