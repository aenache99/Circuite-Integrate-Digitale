module demux4(input wire [1:0] sel,
				input wire [7:0]in,
				output reg [7:0]out0,
				output reg [7:0]out1,
				output reg [7:0]out2,
				output reg [7:0]out3
				);
always @(sel)
begin
if(sel==0)
	begin
	out0=in;
	out1=0;
	out2=0;
	out3=0;
	end
else if (sel==1)
	begin
	out0=0;
	out1=in;
	out2=0;
	out3=0;
	end
else if (sel==2)
	begin
	out0=0;
	out1=0;
	out2=in;
	out3=0;
	end
else
	begin
	out0=0;
	out1=0;
	out2=0;
	out3=in;
	end
end
endmodule 