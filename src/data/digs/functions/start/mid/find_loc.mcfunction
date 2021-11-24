scoreboard players add $game.location.x ds.const 432
summon minecraft:marker 0 60 0 {Tags:["mid"]}

execute as @e[tag=mid] at @s run function digs:start/mid/setup_mid