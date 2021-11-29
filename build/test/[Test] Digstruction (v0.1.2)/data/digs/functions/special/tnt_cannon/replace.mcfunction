clear @s carrot_on_a_stick{digs:{type:"tnt_cannon"}} 1
give @s tnt{BlockStateTag:{unstable:"true"}} 16
tellraw @s ["", {"storage": "digs:messages", "nbt": "game.special.tnt_cannon.replace", "interpret": true}]
function digs:special/tnt_cannon/check
