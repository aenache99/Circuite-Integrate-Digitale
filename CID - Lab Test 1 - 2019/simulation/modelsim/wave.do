onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group tb /tb/in0_tb
add wave -noupdate -group tb /tb/in1_tb
add wave -noupdate -group tb /tb/in2_tb
add wave -noupdate -group tb /tb/in3_tb
add wave -noupdate -group tb /tb/sel_tb
add wave -noupdate -group tb /tb/data_tb
add wave -noupdate -group tb /tb/out0_tb
add wave -noupdate -group tb /tb/out1_tb
add wave -noupdate -group tb /tb/out2_tb
add wave -noupdate -group tb /tb/out3_tb
add wave -noupdate -expand -group dut /tb/DUT/in0
add wave -noupdate -expand -group dut /tb/DUT/in1
add wave -noupdate -expand -group dut /tb/DUT/in2
add wave -noupdate -expand -group dut /tb/DUT/in3
add wave -noupdate -expand -group dut /tb/DUT/sel
add wave -noupdate -expand -group dut /tb/DUT/data
add wave -noupdate -expand -group dut /tb/DUT/out0
add wave -noupdate -expand -group dut /tb/DUT/out1
add wave -noupdate -expand -group dut /tb/DUT/out2
add wave -noupdate -expand -group dut /tb/DUT/out3
add wave -noupdate -expand -group dut /tb/DUT/mux4lademux
add wave -noupdate -expand -group dut /tb/DUT/paritycalclamux2
add wave -noupdate -expand -group dut /tb/DUT/mux2lademux
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {350 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {500 ps}
