module top(input wire [15:0]instruction,
				input wire [7:0]data0,
				input wire [7:0]data1,
				output wire overflow_flag,
				output wire zero_flag,
				output wire out0,
				output wire out1,
				output wire out2,
				output wire out3);
				
				
				
// and1 or1 si xor1 sunt pt ca fara acel 1 ar fi fost sintaxa verilog de and or si xor
wire in0_mux4_1;
wire in1_mux4_1;
wire in2_mux4_1;
wire in3_mux4_1;
wire out_mux4_1_la_mux4_3; // cablurile pt mux4 1

wire in0_mux4_2;
wire in1_mux4_2;
wire in2_mux4_2; // caburile pt mux4 2

wire in0_mux4_3;
wire in1_mux4_3; // cablurile pt mux 4 3

wire special_la_mux4_3;

wire mux4_3_la_demux4_si_comp;

shift_right shiftdreapta (.in0(data0),
									.in1(data1),
									.out0(in0_mux4_1));
									
shift_left shiftstanga (.in0(data0),
									.in1(data1),
									.out0(in1_mux4_1));
									
add adun (.in0(data0),
			.in1(data1),
			.out0({in2_mux4_1, overflow_flag}));
			
sub scad (.in0(data0),
			.in1(data1),
			.out0(in3_mux4_1));
			
and1 si (.in0(data0),
			.in1(data1),
			.out0(in0_mux4_2));
			
or1 sau (.in0(data0),
			.in1(data1),
			.out0(in1_mux4_2));
			
xor1 sau_exclusiv (.in0(data0),
			.in1(data1),
			.out0(in2_mux4_2));
			
special special1 (.in0(data0),
			.in1(data1),
			.sel(special_la_mux4_3));
			
mux4 multiplex1(.in0(in0_mux4_1),
				.in1(in1_mux4_1),
				.in2(in2_mux4_1),
				.in3(in3_mux4_1),
				.sel({instruction[11],instruction[10]}),
				.out(out_mux4_1_la_mux4_3)
				);
				
mux4 multiplex2(.in0(in0_mux4_2),
				.in1(in1_mux4_2),
				.in2(in2_mux4_2),
				.in3(1),
				.sel({instruction[11],instruction[10]}),
				.out(out_mux4_2_la_mux4_3)
				);
				
mux4 multiplex3(.in0(out_mux4_1_la_mux4_3),
				.in1(out_mux4_2_la_mux4_3),
				.in2(0),
				.in3(special_la_mux4_3),
				.sel({instruction[13],instruction[12]}),
				.out(mux4_3_la_demux4_si_comp)
				);
				
demux4 demux(.sel({instruction[15],instruction[14]}),
				.in(mux4_3_la_demux4_si_comp),
				.out0(out0),
				.out1(out1),
				.out2(out2),
				.out3(out3)
				);
				
comp_eq equality(.in0(mux4_3_la_demux4_si_comp),
					.in1(0),
					.out0(zero_flag));
endmodule 