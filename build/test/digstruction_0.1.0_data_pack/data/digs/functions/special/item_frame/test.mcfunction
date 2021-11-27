#> digs:special/item_frame/test
# Evaluate custom item frames

execute if data entity @s Item.tag.digs{type:"air_strike"} run function digs:special/item_frame/air_strike
execute if data entity @s Item.tag.digs{type:"fort"} run function digs:special/item_frame/fort
execute if data entity @s Item.tag.digs{type:"lake_drainer"} run function digs:special/item_frame/lake_drainer

tag @s add eval
