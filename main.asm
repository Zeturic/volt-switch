.gba

.arm
.include "constants.s"

.thumb
.include "functions.s"

.open "test.gba", 0x08000000

.org allocation
.area allocation_size
    .importobj "obj/relocatable.o"
    .include "script.asm"
.endarea

.org readu32("rom.gba", move_scripts_ptr & 0x1FFFFFF) + EFFECT_VOLT_SWITCH *4
.word volt_switch_script

.org readu32("rom.gba", move_cmds_ptr & 0x1FFFFFF) + ATK_JUMPIFBATTLEOVER *4
.word atkxx_jumpifbattleover |1

.close