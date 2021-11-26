
execute store result entity @s Pos[0] double 1 run scoreboard players get $game.location.x ds.const
execute store result entity @s Pos[2] double 1 run scoreboard players get $game.location.z ds.const

gamemode spectator @a
clear @a
tp @a @s
worldborder set 432
schedule function digs:start/mid/set_mid 3s
