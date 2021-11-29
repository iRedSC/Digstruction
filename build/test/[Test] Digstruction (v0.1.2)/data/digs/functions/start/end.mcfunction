scoreboard players set $game.mode ds.const -1

scoreboard players set $rng.range.max lcg 10
scoreboard players set $rng.range.min lcg 0
function digs:start/display

tellraw @a ["", {"storage": "digs:messages", "nbt": "game.winner", "interpret": true}]
gamemode spectator @a
effect clear @a
clear @a
