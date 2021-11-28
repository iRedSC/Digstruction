clear @s leather_boots{digs:{type:"builder_boots"}} 1
give @s bricks{BlockStateTag:{unstable:"true"}} 64
tellraw @s "f%game.special.builder_boots.replace%"
function digs:special/builder_boots/check