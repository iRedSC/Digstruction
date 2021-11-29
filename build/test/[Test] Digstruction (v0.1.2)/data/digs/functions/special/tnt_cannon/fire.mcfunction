execute positioned 0.0 0 0.0 run summon marker ^ ^0.7 ^2 {Tags: ["direction"]}
summon tnt ~ ~1 ~ {Fuse: 60, Tags: ["projectile"]}
tp @e[tag=projectile, limit=1, sort=nearest] ~ ~1 ~ ~ ~
data modify entity @e[type=tnt, tag=projectile, limit=1] Motion set from entity @e[type=marker, tag=direction, limit=1] Pos
tag @e[tag=projectile] remove projectile
kill @e[tag=direction]
