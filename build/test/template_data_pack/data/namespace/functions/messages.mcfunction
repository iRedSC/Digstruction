#> namespace:messages
#
#
#
#declare storage this:test -m
data modify storage this:test _.exception.notDefined set value '{"text":"[Not Defined]","color":"white"}'

tellraw @s ["",{"nbt": "first.placeholder","storage": "this:test"},{"nbt": "second.placeholder","storage": "this:test"},{"nbt": "third.placeholder","storage": "this:test"}]
