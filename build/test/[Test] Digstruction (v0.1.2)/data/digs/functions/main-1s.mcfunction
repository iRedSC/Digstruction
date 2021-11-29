execute store result score $players.alive ds.const if entity @a[gamemode=survival]
execute unless score $players.alive ds.const matches 2.. if score $game.mode ds.const matches 1 run function digs:start/end
execute if score $game.mode ds.const matches 1 if score $game.grace ds.const matches 1.. run scoreboard players remove $game.grace ds.const 1
execute if score $game.mode ds.const matches 1 if score $game.grace ds.const matches 0 run function digs:grace_end
execute as @e[tag=chest] at @s run function digs:structures/chests/summon
effect give @a[gamemode=survival] haste 5 25 true
effect give @a[gamemode=survival] dolphins_grace 5 25 true
execute as @e[tag=tower_marker] at @s run function digs:structures/tower/build
execute as @a[scores={ds.rejoin=1..}] run function digs:join/rejoin
execute as @a[scores={ds.death=1..}] run function digs:death
execute as @e[type=arrow] at @s run function digs:special/summon_tnt
schedule function digs:main-1s 1s
