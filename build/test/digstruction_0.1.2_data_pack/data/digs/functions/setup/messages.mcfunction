

data modify storage digs:messages game.winner set value '["",{"selector":"@a[gamemode=survival]","bold":true,"color":"yellow"},{"text":" has won the game!","color":"gold"}]'

data modify storage digs:messages game.started set value '{"text":"Game has started!","color":"gold"}'

data modify storage digs:messages game.grace.ended set value '{"text":"Border is shrinking!","color":"red"}'

data modify storage digs:messages game.special.air_strike set value '{"text":"Air strike incoming!","color":"red","bold": true}'

data modify storage digs:messages game.special.tnt_cannon.replace set value '{"text":"TNT Stick -> 16 TNT","color":"dark_red"}'
data modify storage digs:messages game.special.builder_boots.replace set value '{"text":"Builder Boots -> 64 Bricks","color":"gold"}'
