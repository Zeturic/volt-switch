EFFECT_VOLT_SWITCH equ 233
ATK_JUMPIFBATTLEOVER equ 0xFE

// -----------------------------------------------------------------------------

.definelabel b_movescr_cursor, 0x02023D74

.definelabel party_opponent, 0x0202402C
.definelabel party_player, 0x02024284

.definelabel b_defender, 0x02023D6C

.definelabel b_attack_effectivity, 0x02023DCC

.definelabel move_scripts_ptr, 0x08025CF8
.definelabel move_cmds_ptr, 0x08014C1C