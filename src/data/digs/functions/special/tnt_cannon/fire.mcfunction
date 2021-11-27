# summon temporary entity "in front of the player", if the player was standing at 0 0 0
execute positioned 0.0 0 0.0 run summon marker ^ ^0.7 ^2 {Tags:["direction"]}

# summon projectile entity
summon tnt ~ ~1 ~ {Fuse:60,Tags:["projectile"]}
tp @e[tag=projectile,limit=1,sort=nearest] ~ ~1 ~ ~ ~

# copy the aecs position tag to the sheeps motion tag
data modify entity @e[type=tnt,tag=projectile,limit=1] Motion set from entity @e[type=marker,tag=direction,limit=1] Pos

# clean up
tag @e[tag=projectile] remove projectile
kill @e[tag=direction]