module mux22bit(input wire [1:0]in0,
				  input wire [1:0]in1,
				  input wire sel,
				  output reg [1:0]out
				  );
always @(*)
begin
case(sel)
0: out=in0;
1: out=in1;
default: out= 0;
endcase
end
endmodule 