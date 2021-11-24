execute at @e[tag=mid] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"iRedSC",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"digs:mid",posX:-15,posY:0,posZ:-15,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:31,sizeY:5,sizeZ:31} replace
#.
execute at @e[tag=mid] run setblock ~ ~1 ~ redstone_block replace
execute at @e[tag=mid] align xz run worldborder center ~1 ~

execute at @e[tag=mid] run tp @a ~-1 ~1 ~-15

execute as @a at @s run function digs:start/encase
