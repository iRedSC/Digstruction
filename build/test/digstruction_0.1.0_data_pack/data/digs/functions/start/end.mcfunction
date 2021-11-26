scoreboard players set $game.mode ds.const 0

tellraw @a ["", {"storage": "digs:messages", "nbt": "game.winner", "interpret": true}]
gamemode spectator @a
effect clear @a
clear @a
