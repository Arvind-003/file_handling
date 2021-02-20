vlog tb_file.v
vsim -novopt tb 
add wave sim:/tb/*
run -all
