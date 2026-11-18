# mod-temucraft-well-of-eternity

Well of Eternity (dungeon): the instance script (encounter states and doors). The bosses have no scripts yet.

The scripts are the Cataclysm (4.3.4) scripts of the Cataclysm Preservation Project's TrinityCore fork for Well of Eternity, ported to AzerothCore 3.3.5a. The ported files keep
TrinityCore's GNU GPL v2 licence and copyright notice. The creatures,
objects and loot come from [mod-temucraft-world](https://github.com/Temucraft/mod-temucraft-world); this module adds the boss and trash behaviour and sets the script
names on them.

## What to expect

- Built against AzerothCore's script API with the same encounter logic as the original.
- Some Cataclysm spell effects and auras don't exist in the 3.3.5 core, so a few abilities can do nothing or less
  than intended until they get a 3.3.5 replacement. Things the 3.3.5 client can't show at all (animation kits,
  alternate power bars, map light overrides, phase groups) are kept as close as possible or left out; each spot is
  marked in the source with a comment.
- `TemucraftTCCompat.h` holds the few TrinityCore names the scripts use that AzerothCore doesn't have.

## Install

1. Install [mod-temucraft-world](https://github.com/Temucraft/mod-temucraft-world) first (it holds the spawns this module scripts).
2. Put this folder in `modules/`, re-run CMake and build.
3. The SQL in `data/sql/` is applied by the worldserver on its next start.

## What it changes

| Database | Table | What |
|---|---|---|
| world | `instance_template` | script name of the instance |
| world | `creature_template`, `gameobject_template`, `creature` | `ScriptName` of the scripted creatures and objects |
| world | `spell_script_names`, `areatrigger_scripts` | the spell and area trigger scripts |

## Works with other modules

- Needs [mod-temucraft-world](https://github.com/Temucraft/mod-temucraft-world) (spawns, creatures, loot). Nothing else.

Part of the Temucraft modules for AzerothCore 3.3.5a.
