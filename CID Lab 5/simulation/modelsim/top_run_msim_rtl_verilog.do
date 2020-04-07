transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/thema/Documents/Laborator\ CID\ -\ Mihai\ Antonescu/CID\ Lab\ 5 {C:/Users/thema/Documents/Laborator CID - Mihai Antonescu/CID Lab 5/decodor.v}
vlog -vlog01compat -work work +incdir+C:/Users/thema/Documents/Laborator\ CID\ -\ Mihai\ Antonescu/CID\ Lab\ 5 {C:/Users/thema/Documents/Laborator CID - Mihai Antonescu/CID Lab 5/rom.v}
vlog -vlog01compat -work work +incdir+C:/Users/thema/Documents/Laborator\ CID\ -\ Mihai\ Antonescu/CID\ Lab\ 5 {C:/Users/thema/Documents/Laborator CID - Mihai Antonescu/CID Lab 5/top.v}

vlog -vlog01compat -work work +incdir+C:/Users/thema/Documents/Laborator\ CID\ -\ Mihai\ Antonescu/CID\ Lab\ 5 {C:/Users/thema/Documents/Laborator CID - Mihai Antonescu/CID Lab 5/tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
