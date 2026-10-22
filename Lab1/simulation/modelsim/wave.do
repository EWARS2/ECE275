onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /comb_logic/X1
add wave -noupdate /comb_logic/X2
add wave -noupdate /comb_logic/F
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {800 ps} 0}
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
WaveRestoreZoom {50 ps} {1050 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 50ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/comb_logic/X1 
wave create -driver freeze -pattern clock -initialvalue 0 -period 85ps -dutycycle 35 -starttime 0ps -endtime 1000ps sim:/comb_logic/X2 
WaveCollapseAll -1
wave clipboard restore
