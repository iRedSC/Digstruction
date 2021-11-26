execute store result bossbar game:timer value run scoreboard players get $game.timer ds.const
bossbar set game:timer name ["",{"text":"Game starts in: ","color":"dark_purple"},{"score":{"name":"$game.timer","objective":"ds.const"},"bold":true,"color":"yellow"}]

function math:init

execute at @e[tag=mid] run function digs:chests/spawn
execute at @e[tag=mid] run function digs:chests/spawn
execute at @e[tag=mid] run function digs:chests/spawn
execute at @e[tag=mid] run function digs:chests/spawn
execute at @e[tag=mid] run function digs:chests/spawn

execute unless score $game.timer ds.const matches 0 run schedule function digs:start/timer 1s
execute if score $game.timer ds.const matches 0 run function digs:start/start

execute unless score $game.timer ds.const matches 0 run scoreboard players remove $game.timer ds.const 1
