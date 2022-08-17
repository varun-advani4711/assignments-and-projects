vsim -voptargs=+acc work.tb_final_proj
onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_final_proj/CLK
add wave -noupdate /tb_final_proj/RST_N
add wave -noupdate /tb_final_proj/EX_N
add wave -noupdate /tb_final_proj/DAT_IN
add wave -noupdate /tb_final_proj/MODE
add wave -noupdate /tb_final_proj/U_DUT/alu_op
add wave -noupdate /tb_final_proj/U_DUT/alu_out
add wave -noupdate /tb_final_proj/U_DUT/rd_addr_a
add wave -noupdate /tb_final_proj/U_DUT/rd_addr_b
add wave -noupdate /tb_final_proj/U_DUT/rd_data_a
add wave -noupdate /tb_final_proj/U_DUT/rd_data_b
add wave -noupdate /tb_final_proj/U_DUT/reg0
add wave -noupdate /tb_final_proj/U_DUT/reg0_vld
add wave -noupdate /tb_final_proj/U_DUT/reg1
add wave -noupdate /tb_final_proj/U_DUT/reg1_vld
add wave -noupdate /tb_final_proj/U_DUT/reg2
add wave -noupdate /tb_final_proj/U_DUT/reg2_vld
add wave -noupdate /tb_final_proj/U_DUT/reg3
add wave -noupdate /tb_final_proj/U_DUT/reg3_vld
add wave -noupdate /tb_final_proj/U_DUT/wr_addr
add wave -noupdate /tb_final_proj/U_DUT/wr_data
add wave -noupdate /tb_final_proj/U_DUT/wr_en
add wave -noupdate /tb_final_proj/U_DUT/wr_sel
add wave -noupdate /tb_final_proj/HEX3_A
add wave -noupdate /tb_final_proj/HEX3_B
add wave -noupdate /tb_final_proj/HEX3_C
add wave -noupdate /tb_final_proj/HEX3_D
add wave -noupdate /tb_final_proj/HEX3_E
add wave -noupdate /tb_final_proj/HEX3_F
add wave -noupdate /tb_final_proj/HEX3_G
add wave -noupdate /tb_final_proj/HEX2_A
add wave -noupdate /tb_final_proj/HEX2_B
add wave -noupdate /tb_final_proj/HEX2_C
add wave -noupdate /tb_final_proj/HEX2_D
add wave -noupdate /tb_final_proj/HEX2_E
add wave -noupdate /tb_final_proj/HEX2_F
add wave -noupdate /tb_final_proj/HEX2_G
add wave -noupdate /tb_final_proj/HEX1_A
add wave -noupdate /tb_final_proj/HEX1_B
add wave -noupdate /tb_final_proj/HEX1_C
add wave -noupdate /tb_final_proj/HEX1_D
add wave -noupdate /tb_final_proj/HEX1_E
add wave -noupdate /tb_final_proj/HEX1_F
add wave -noupdate /tb_final_proj/HEX1_G
add wave -noupdate /tb_final_proj/HEX0_A
add wave -noupdate /tb_final_proj/HEX0_B
add wave -noupdate /tb_final_proj/HEX0_C
add wave -noupdate /tb_final_proj/HEX0_D
add wave -noupdate /tb_final_proj/HEX0_E
add wave -noupdate /tb_final_proj/HEX0_F
add wave -noupdate /tb_final_proj/HEX0_G
add wave -noupdate /tb_final_proj/ERR_OVFL
add wave -noupdate /tb_final_proj/ERR_UNFL
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {515306 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 280
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
WaveRestoreZoom {0 ps} {145268 ps}
