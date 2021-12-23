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