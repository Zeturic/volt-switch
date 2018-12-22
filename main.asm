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

.org move_scripts + EFFECT_VOLT_SWITCH *4
.word test_script

.org move_cmds + ATK_JUMPIFBATTLEOVER *4
.word atkxx_jumpifbattleover |1

.close