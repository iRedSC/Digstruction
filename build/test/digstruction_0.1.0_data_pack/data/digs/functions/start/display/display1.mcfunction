title @a times 40 40 40

function math:lcg

execute if score $rng.output lcg matches 0 run title @a title {"text":"[ Digstruction ]","bold":true,"color":"#FF00FF"}
execute if score $rng.output lcg matches 1 run title @a title {"text":"[ Digstruction ]","bold":true,"color":"#7300ff"}
execute if score $rng.output lcg matches 2 run title @a title {"text":"[ Digstruction ]","bold":true,"color":"#15ff00"}
execute if score $rng.output lcg matches 3 run title @a title {"text":"[ Digstruction ]","bold":true,"color":"#ffff00"}
execute if score $rng.output lcg matches 4 run title @a title {"text":"[ Digstruction ]","bold":true,"color":"#ff1e00"}
execute if score $rng.output lcg matches 5 run title @a title {"text":"[ Digstruction ]","bold":true,"color":"#00eeff"}
execute if score $rng.output lcg matches 6 run title @a title {"text":"[ Digstruction ]","bold":true,"color":"#93e6ba"}
execute if score $rng.output lcg matches 7 run title @a title {"text":"[ Digstruction ]","bold":true,"color":"#cbe693"}
execute if score $rng.output lcg matches 8 run title @a title {"text":"[ Digstruction ]","bold":true,"color":"#e693a5"}
execute if score $rng.output lcg matches 9 run title @a title {"text":"[ Digstruction ]","bold":true,"color":"#a993e6"}
execute if score $rng.output lcg matches 10 run title @a title {"text":"[ Digstruction ]","bold":true,"color":"#3d8550"}

execute unless score $display.cycle ds.const matches 1.. run title @a subtitle {"text":"Locate chests and barrels to find items","bold":true,"color":"#FF00FF"}
execute if score $display.cycle ds.const matches 1 run title @a subtitle {"text":"Eggs and snowballs have special properties","bold":true,"color":"#7300ff"}
execute if score $display.cycle ds.const matches 2 run title @a subtitle {"text":"Watch out for arrows, or you might be in for a surprise","bold":true,"color":"#15ff00"}
execute if score $display.cycle ds.const matches 3 run title @a subtitle {"text":"The border shrinks after 5 minutes","bold":true,"color":"#ffff00"}
execute if score $display.cycle ds.const matches 4 run title @a subtitle {"text":"Punch tnt to ignite it","bold":true,"color":"#ff1e00"}
execute if score $display.cycle ds.const matches 5 run title @a subtitle {"text":"Game will start soon...","bold":true,"color":"#00eeff"}
execute if score $display.cycle ds.const matches 6 run title @a subtitle {"text":"Lake drainers can be very dangerous","bold":true,"color":"#93e6ba"}
execute if score $display.cycle ds.const matches 7 run title @a subtitle {"text":"Slime pads might save you in a rut, but they don't last long","bold":true,"color":"#cbe693"}
execute if score $display.cycle ds.const matches 8 run title @a subtitle {"text":"Seek shelter underground from an air strike","bold":true,"color":"#e693a5"}

scoreboard players add $display.cycle ds.const 1
execute if score $display.cycle ds.const matches 9.. run scoreboard players set $display.cycle ds.const 0

particle explosion 0 -10 0 2 0 2 0 50 force @a 

execute if score $game.mode ds.const matches -1 run schedule function digs:start/display/display1 6s replace
