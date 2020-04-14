`timescale 1ns / 1ps
// IMPORTANT : do not simulate with current values. will take hours. change repeat values and values in design to 
// match the desired timings
module tb();

reg clk; 
reg rst;
reg load;
reg up_not_down;
wire counter_1s;
wire [31:0] freq_div_out;

top dut (
	.clk(clk), //100 MHz 
	.rst(rst),
	.load(load),
	.up_not_down(up_not_down),
	.counter_1s(counter_1s), 
	.freq_div_out(freq_div_out)
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
	load = 0;
	up_not_down = 1;
	repeat(10) //wait for 10 posedges
		begin
		@(posedge clk);
		end
	rst = 0;
	
	repeat(10) //wait for 10 posedges
		begin
		@(posedge clk);
		end	
	load = 1;
	repeat(10) //wait for 10 posedges
		begin
		@(posedge clk);
		end
	load = 0;
	
	repeat(8 * 500 * 1000 * 100) //wait a lot
		begin
		@(posedge clk);
		end
	
	up_not_down = 0;
	
	repeat(2 * 500 * 1000 * 100) //wait a lot again
		begin
		@(posedge clk);
		end
		
	#1000 $stop;
end 








endmodule








