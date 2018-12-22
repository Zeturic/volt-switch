#include "types.h"

#include "defines/pokemon_attributes.h"

#include "structs.h"
#include "locations.h"
#include "functions.h"

#define battle_side_get_party_owner(bank) (battle_side_get_owner(bank) ? party_opponent : party_player)

#define T1_READ_32(ptr) ((ptr)[0] | ((ptr)[1] << 8) | ((ptr)[2] << 16) | ((ptr)[3] << 24))
#define T1_READ_PTR(ptr) (u8*) T1_READ_32(ptr)