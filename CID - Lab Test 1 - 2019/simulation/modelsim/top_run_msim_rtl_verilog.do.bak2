transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/thema/Documents/Laborator\ CID\ -\ Mihai\ Antonescu/testcid {C:/Users/thema/Documents/Laborator CID - Mihai Antonescu/testcid/mux4.v}
vlog -vlog01compat -work work +incdir+C:/Users/thema/Documents/Laborator\ CID\ -\ Mihai\ Antonescu/testcid {C:/Users/thema/Documents/Laborator CID - Mihai Antonescu/testcid/mux2.v}
vlog -vlog01compat -work work +incdir+C:/Users/thema/Documents/Laborator\ CID\ -\ Mihai\ Antonescu/testcid {C:/Users/thema/Documents/Laborator CID - Mihai Antonescu/testcid/demux.v}
vlog -vlog01compat -work work +incdir+C:/Users/thema/Documents/Laborator\ CID\ -\ Mihai\ Antonescu/testcid {C:/Users/thema/Documents/Laborator CID - Mihai Antonescu/testcid/ParityChecker.v}
vlog -vlog01compat -work work +incdir+C:/Users/thema/Documents/Laborator\ CID\ -\ Mihai\ Antonescu/testcid {C:/Users/thema/Documents/Laborator CID - Mihai Antonescu/testcid/top.v}
vlog -vlog01compat -work work +incdir+C:/Users/thema/Documents/Laborator\ CID\ -\ Mihai\ Antonescu/testcid {C:/Users/thema/Documents/Laborator CID - Mihai Antonescu/testcid/mux22bit.v}

vlog -vlog01compat -work work +incdir+C:/Users/thema/Documents/Laborator\ CID\ -\ Mihai\ Antonescu/testcid {C:/Users/thema/Documents/Laborator CID - Mihai Antonescu/testcid/tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
