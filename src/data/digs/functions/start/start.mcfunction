scoreboard players set $game.mode ds.const 1
scoreboard players set $game.grace ds.const 300

kill @e[tag=mid]

bossbar set game:timer players
tellraw @a "f%game.started%"

effect give @a instant_health 15 100 true
effect give @a saturation 15 100 true
execute as @a run attribute @s generic.max_health base set 80
effect give @a regeneration 120 1 true
execute at @a run fill ~-1 ~ ~-1 ~1 ~2 ~1 air replace barrier