execute as @a[scores={ds.use_coas=1..}] at @s run function digs:special/coas/test

execute at @e[type=egg] run fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 bricks

execute as @e[type=snowball] at @s run fill ~-0.7 ~-0.7 ~-0.7 ~0.7 ~0.7 ~0.7 air destroy

execute as @e[type=item_frame] at @s run function digs:special/item_frame/test

execute as @e[type=item,tag=!eval] at @s run function digs:special/item/test
execute as @e[tag=slime_pad] at @s run function digs:special/item/remove_slime_pad

execute as @a[predicate=digs:builder_boots] at @s run function digs:special/builder_boots/test
