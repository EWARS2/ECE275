transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Admin/Documents/ECE275/Lab7/Lab7.vhd}
vcom -93 -work work {C:/Users/Admin/Documents/ECE275/Lab7/JK_FF.vhd}

