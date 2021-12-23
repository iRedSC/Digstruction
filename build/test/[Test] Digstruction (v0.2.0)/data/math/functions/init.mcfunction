scoreboard objectives add lcg dummy
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["lcg_seed"]}
execute store result score $rng lcg run data get entity @e[tag=lcg_seed, limit=1] UUID[0] 0.0001
execute store result score $rng.multiplier lcg run data get entity @e[tag=lcg_seed, limit=1] UUID[1] 0.0001
execute store result score $rng.increment lcg run data get entity @e[tag=lcg_seed, limit=1] UUID[2] 0.0001
execute if score $rng.multiplier lcg matches ..-1 run scoreboard players operation $rng.multiplier lcg *= $num.-1 const
execute if score $rng.increment lcg matches ..-1 run scoreboard players operation $rng.increment lcg *= $num.-1 const
kill @e[tag=lcg_seed]
