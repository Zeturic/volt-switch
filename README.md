## Volt Switch

An implementation of Volt Switch (and U-Turn) for Fire Red.

> After making its attack, the user rushes back to switch places with a party Pokémon in waiting.

### What do I do before I build this?

Update `EFFECT_VOLT_SWITCH` in `constants.s`. This will be the effect id that gets assigned to Volt Switch.

Update `ATK_JUMPIFBATTLEOVER` in `constants.s`. This code adds a new command (`jumpifbattleover`) and it will need an unused move script command id to be inserted.

The build script will search for adequate free space, but if you need to insert the code in a particular place, you can tell it where to start looking by modifying `free-space` in `config.ini`. If the given address is acceptable (i.e. is word-aligned and has enough bytes of free space), it will be inserted there.

### How do I build this?

Click [here](scripts/makinoa/README.md) for build instructions.

### What do I do after I build this?

Open a move editor and go to Volt Switch. Make sure that the move's effect matches what you set as `EFFECT_VOLT_SWITCH`.

Naturally, do the same for U-Turn.

### Any caveats?

If a Pokémon faints from Volt Switch and the opposing trainer still has more Pokémon, experience will be split between the Volt Switch user and the Pokémon that gets switched in. If a trainer's final Pokémon faints from Volt Switch, however, no switching or experience splitting will occur.

### Credits

Original implementation by [MrDollSteak](https://www.pokecommunity.com/showpost.php?p=8428982&postcount=160). The only functional differences between the one here and there are that this one doesn't force a switch out when the battle is ending, and that this one doesn't switch out if the target is immune.