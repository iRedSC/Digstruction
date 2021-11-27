
scoreboard players add @s ds.temp 1
execute if score @s ds.temp matches 60.. run fill ~-1 ~ ~-1 ~1 ~ ~1 air replace slime_block
execute if score @s ds.temp matches 60.. run kill @s
