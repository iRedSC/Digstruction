clear @s carrot_on_a_stick{digs:{type:"tnt_cannon"}} 1
give @s tnt{BlockStateTag:{unstable:"true"}} 16
tellraw @s "f%game.special.tnt_cannon.replace%"
function digs:special/tnt_cannon/check