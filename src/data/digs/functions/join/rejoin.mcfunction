execute if score $game.mode ds.const matches 1 run kill @s
execute unless score $game.mode ds.const matches 1 run gamemode spectator @s
scoreboard players reset @s ds.rejoin