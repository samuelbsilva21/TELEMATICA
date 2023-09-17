onerror {exit -code 1}
vlib work
vcom -work work DIV_CLK.vho
vcom -work work SIMUL_DIV_CLK.vwf.vht
vsim -novopt -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.DIV_CLK_vhd_vec_tst
vcd file -direction DIV_CLK.msim.vcd
vcd add -internal DIV_CLK_vhd_vec_tst/*
vcd add -internal DIV_CLK_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

