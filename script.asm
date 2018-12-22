.include "battlescript.s"
.loadtable "character-encoding.tbl"

FALSE equ 0
TRUE equ 1

NULL equ 0

volt_switch_script:
    attackcanceler 
    accuracycheck 0x081D695E, 0x0 
    attackstring 
    ppreduce 
    critcalc 
    damagecalc 
    typecalc 
    adjustnormaldamage 
    attackanimation 
    waitanimation 
    effectivenesssound 
    hitanimation 0x00 
    waitstate 
    healthbarupdate 0x00 
    datahpupdate 0x00 
    critmessage 
    waitmessage DELAY_1SECOND 
    resultmessage 
    waitmessage DELAY_1SECOND 
    seteffectwithchance 
    tryfaintmon BS_TARGET, FALSE, NULL 
    jumpifcantswitch (ATK4F_DONT_CHECK_STATUSES | BS_ATTACKER), 0x081D694E 
    jumpifbattleover 0x081D694E
    goto 0x81D79A0