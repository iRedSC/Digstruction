execute if entity @s[nbt={Item: {tag: {digs: {type: "slime_pad"}}}}] if entity @a[distance=..5] run function digs:special/item/slime_pad
tag @s add eval
