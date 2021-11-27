scoreboard players set $game.mode ds.const -1

scoreboard players set $rng.range.max lcg 10
scoreboard players set $rng.range.min lcg 0
function digs:start/display

tellraw @a "f%game.winner%"
gamemode spectator @a
effect clear @a
clear @a