
---
`@function digs:main`
<details>

```mcfunction

##################################################

#> digs:main
# One tick loop 

# Detect when a players uses a CoaS
execute as @a[scores={ds.use_coas=1..}] at @s run function digs:special/coas/test

# Bridge eggs
execute at @e[type=egg] run fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 bricks replace #digs:air
# Destruction snowballs

execute as @e[type=snowball] at @s run fill ~-0.7 ~-0.7 ~-0.7 ~0.7 ~0.7 ~0.7 air destroy

execute as @e[tag=trap] at @s run function digs:special/item_frame/trap/test

# item frame detection
execute as @e[type=item_frame,tag=!eval] at @s run function digs:special/item_frame/test

# custom item detection
execute as @e[type=item,tag=!eval] at @s run function digs:special/item/test

# remove slime pad trigger
execute as @e[tag=slime_pad] at @s run function digs:special/item/remove_slime_pad

# builder boots trigger
execute as @a[predicate=digs:builder_boots] at @s run function digs:special/builder_boots/test

##################################################

```
</details>

---
`@function digs:main-1s`
<details>

```mcfunction

##################################################

#> digs:main-1s
# One second loop

# store the amount of alive players in a score
execute store result score $players.alive ds.const if entity @a[gamemode=survival]
# if less than two alive players exist, end the game
execute unless score $players.alive ds.const matches 2.. if score $game.mode ds.const matches 1 run function digs:start/end

# grace period handling
execute if score $game.mode ds.const matches 1 if score $game.grace ds.const matches 1.. run scoreboard players remove $game.grace ds.const 1
execute if score $game.mode ds.const matches 1 if score $game.grace ds.const matches 0 run function digs:grace_end

# spawn chests
execute as @e[tag=chest] at @s run function digs:structures/chests/summon

# give all players these effects
effect give @a[gamemode=survival] dolphins_grace 5 25 true

# build towers
execute as @e[tag=tower_marker] at @s run function digs:structures/tower/build

# handle death/rejoining
execute as @a[scores={ds.rejoin=1..}] run function digs:join/rejoin
execute as @a[scores={ds.death=1..}] run function digs:death

# tnt arrows
execute as @e[type=arrow] at @s run function digs:special/summon_tnt

# reschedule self
schedule function digs:main-1s 1s

##################################################

```
</details>