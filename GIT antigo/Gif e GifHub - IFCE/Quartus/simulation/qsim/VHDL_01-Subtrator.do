onerror {exit -code 1}
vlib work
vcom -work work SUBTRATOR.vho
vcom -work work SUBTRATOR.vwf.vht
vsim -novopt -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.SUBTRATOR_vhd_vec_tst
vcd file -direction VHDL_01-Subtrator.msim.vcd
vcd add -internal SUBTRATOR_vhd_vec_tst/*
vcd add -internal SUBTRATOR_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

