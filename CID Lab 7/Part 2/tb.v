module tb();

reg clk; 
reg rst;
wire pwm_out;

top DUT (
	.clk(clk),
	.rst(rst),
	.pwm_out(pwm_out)
	);

initial
begin
	clk = 0;
	forever 
		begin
		#5 clk = ~clk;
		end
end

initial
begin
	rst = 1;
	repeat(10)
		begin
		@(posedge clk);
		end
	rst = 0;
	repeat(10)
		begin
		@(posedge clk);
		end 
	#1000 $stop;
end 
endmodule 