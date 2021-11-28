
execute store result score $chest.x ds.temp run data get entity @s Pos[0] 1
execute store result score $chest.z ds.temp run data get entity @s Pos[2] 1

function math:lcg
scoreboard players operation $chest.x ds.temp += $rng.output lcg

function math:lcg
scoreboard players operation $chest.z ds.temp += $rng.output lcg

execute store result entity @s Pos[0] double 1 run scoreboard players get $chest.x ds.temp
execute store result entity @s Pos[2] double 1 run scoreboard players get $chest.z ds.temp

tag @s add calced
