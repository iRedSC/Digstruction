scoreboard players set $game.mode ds.const 1
scoreboard players set $game.grace ds.const 300

kill @e[tag=mid]

bossbar set game:timer players
tellraw @a "f%game.started%"

execute as @a run attribute @s generic.max_health base set 80
effect give @a regeneration 120 5 true
execute at @a run fill ~-1 ~ ~-1 ~1 ~2 ~1 air replace barrier