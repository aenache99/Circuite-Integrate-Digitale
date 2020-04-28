module tb();
reg clk;
reg load50bani_tb;
reg load1leu_tb;
wire out_cioco_tb;

FSM DUT (
	.clk(clk),
	.load50bani(load50bani_tb),
	.load1leu(load1leu_tb),
	.out_cioco(out_cioco_tb)
	);

initial
begin
	clk = 0;
	forever 
		begin
		#2 clk = ~clk;
		end
end

initial
begin
load50bani_tb = 0;
load1leu_tb = 0;

#2
load50bani_tb = 1;
load1leu_tb = 0;

#4
load50bani_tb = 1;
load1leu_tb = 0;

#6
load50bani_tb = 0;
load1leu_tb = 1;

#8
load50bani_tb = 1;
load1leu_tb = 0;

#10
$stop;

end

endmodule 