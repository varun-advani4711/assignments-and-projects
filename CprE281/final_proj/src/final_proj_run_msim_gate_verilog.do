transcript on
if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

vlib verilog_libs/altera_ver
vmap altera_ver ./verilog_libs/altera_ver
vlog -vlog01compat -work altera_ver {/opt/tools/Intel/intelFPGA_lite/20.1/quartus/eda/sim_lib/altera_primitives.v}

vlib verilog_libs/cycloneive_ver
vmap cycloneive_ver ./verilog_libs/cycloneive_ver
vlog -vlog01compat -work cycloneive_ver {/opt/tools/Intel/intelFPGA_lite/20.1/quartus/eda/sim_lib/cycloneive_atoms.v}

if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {final_proj.vo}

vlog -sv -work work +incdir+/home/cctsang/Projects/PHH_15.4.22_VarunAd/final_proj/src {/home/cctsang/Projects/PHH_15.4.22_VarunAd/final_proj/src/tb_final_proj.sv}

vsim -t 1ps -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  final_proj

add wave *
view structure
view signals
run -all
