#include "global.h"

void atkxx_jumpifbattleover() {
    u8* ptr = T1_READ_PTR(b_movescr_cursor +1);
    struct pokemon* party = battle_side_get_party_owner(b_defender);

    for (u32 i = 0; i < 6; ++i)
        if (pokemon_getattr(&party[i], ATTR_SPECIES) && pokemon_getattr(&party[i], ATTR_HP)) {
            b_movescr_cursor += sizeof(u8*) + 1;
            return;
        }

    b_movescr_cursor = ptr;
}