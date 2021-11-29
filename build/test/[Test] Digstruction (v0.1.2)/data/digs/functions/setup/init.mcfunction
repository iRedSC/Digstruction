say Reloaded Pro
scoreboard objectives add ds.temp dummy
scoreboard objectives add ds.const dummy
scoreboard objectives add ds.id dummy
scoreboard objectives add ds.rejoin minecraft.custom:minecraft.leave_game
scoreboard objectives add ds.death deathCount
scoreboard objectives add ds.use_coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard players set $game.location.x ds.const 8
execute unless score $game.location.z ds.const = $game.location.z ds.const run scoreboard players set $game.location.z ds.const 8
scoreboard players add $game.location.z ds.const 432
scoreboard players set #22 ds.const 22
scoreboard players set #-1 ds.const -1
scoreboard players set #10000 ds.const 10000
scoreboard players set #1 ds.const 1
bossbar add game:timer "Timer"
bossbar set game:timer max 15
bossbar set game:timer color purple
forceload add 0 0
function digs:main-1s
scoreboard players set $game.mode ds.const -1
function digs:start/end
function digs:start/display
