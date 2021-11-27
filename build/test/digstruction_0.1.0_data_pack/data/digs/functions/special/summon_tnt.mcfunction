summon tnt ~0.3 ~ ~ {Fuse:60,Tags:["special_tnt"]}
summon tnt ~ ~ ~ {Fuse:80,Tags:["special_tnt"]}
summon tnt ~0.1 ~ ~0.3 {Fuse:100,Tags:["special_tnt"]}

execute if data entity @s {inGround:1b} run kill @s
