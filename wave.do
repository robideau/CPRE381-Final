onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu0/imem_addr
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu0/inst
add wave -noupdate -format Literal -height 15 -radix hexadecimal /tb_cpu1/cpu0/dmem_addr
add wave -noupdate -format Logic -height 15 /tb_cpu1/cpu0/dmem_read
add wave -noupdate -format Logic -height 15 /tb_cpu1/cpu0/dmem_write
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu0/dmem_wmask
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu0/dmem_rdata
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu0/dmem_wdata
add wave -noupdate -format Logic -height 15 /tb_cpu1/cpu0/reg_write
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu0/reg_dst
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu0/reg_wdata
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu0/inst_text
add wave -noupdate -format Logic -height 15 /tb_cpu1/cpu0/clock
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu0/pc
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu0/regfile
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu1/imem_addr
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu1/inst
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu1/dmem_addr
add wave -noupdate -format Logic -height 15 /tb_cpu1/cpu1/dmem_read
add wave -noupdate -format Logic -height 15 /tb_cpu1/cpu1/dmem_write
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu1/dmem_wmask
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu1/dmem_rdata
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu1/dmem_wdata
add wave -noupdate -format Logic -height 15 /tb_cpu1/cpu1/reg_write
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu1/reg_dst
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu1/reg_wdata
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu1/inst_text
add wave -noupdate -format Logic -height 15 /tb_cpu1/cpu1/clock
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu1/pc
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu1/npc
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu1/pc_plus_4
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu1/br_target
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu1/j_target
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu1/opcode
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu1/imme
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu1/rs
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu1/rt
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu1/rd
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu1/shamt
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu1/funct
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu1/j_address
add wave -noupdate -format Literal -height 15 /tb_cpu1/cpu1/ext_imme
add wave -noupdate -format Literal /tb_cpu1/cpu1/ext_shamt
add wave -noupdate -format Literal /tb_cpu1/cpu1/br_offset
add wave -noupdate -format Literal /tb_cpu1/cpu1/aluop
add wave -noupdate -format Literal /tb_cpu1/cpu1/alusrc
add wave -noupdate -format Logic /tb_cpu1/cpu1/regdst
add wave -noupdate -format Logic /tb_cpu1/cpu1/jump
add wave -noupdate -format Literal /tb_cpu1/cpu1/branch
add wave -noupdate -format Logic /tb_cpu1/cpu1/memread
add wave -noupdate -format Logic /tb_cpu1/cpu1/memwrite
add wave -noupdate -format Logic /tb_cpu1/cpu1/regwrite
add wave -noupdate -format Logic /tb_cpu1/cpu1/memtoreg
add wave -noupdate -format Logic /tb_cpu1/cpu1/link
add wave -noupdate -format Logic /tb_cpu1/cpu1/jr
add wave -noupdate -format Logic /tb_cpu1/cpu1/use_shamt
add wave -noupdate -format Literal /tb_cpu1/cpu1/alu_code
add wave -noupdate -format Literal /tb_cpu1/cpu1/rdata1
add wave -noupdate -format Literal /tb_cpu1/cpu1/rdata2
add wave -noupdate -format Literal /tb_cpu1/cpu1/wdata
add wave -noupdate -format Literal /tb_cpu1/cpu1/alu_input1
add wave -noupdate -format Literal /tb_cpu1/cpu1/alu_input2
add wave -noupdate -format Literal /tb_cpu1/cpu1/alu_result
add wave -noupdate -format Logic /tb_cpu1/cpu1/alu_zero
add wave -noupdate -format Literal /tb_cpu1/cpu1/dst
add wave -noupdate -format Literal /tb_cpu1/cpu1/branch_target
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
configure wave -namecolwidth 248
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
WaveRestoreZoom {0 ns} {847 ns}
