set here [file dirname [file normalize [info script]]]
cd $here
read_verilog led_static.v
read_xdc led_static.xdc
synth_design -top led_static -part xc7z010clg400-1
opt_design
place_design
route_design
report_drc -file led_static_drc.rpt
write_bitstream -force led_static.bit
