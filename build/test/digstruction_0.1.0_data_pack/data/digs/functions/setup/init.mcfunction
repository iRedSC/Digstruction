#> digs:setup/init
# initilization function

say Reloaded

# scoreboard setup
scoreboard objectives add ds.temp dummy
scoreboard objectives add ds.const dummy
scoreboard objectives add ds.id dummy
scoreboard objectives add ds.rejoin minecraft.custom:minecraft.leave_game
scoreboard objectives add ds.death deathCount
scoreboard objectives add ds.use_coas minecraft.used:minecraft.carrot_on_a_stick


# define variables
#define score_holder $game.location.x
#define score_holder $game.location.z

#define score_holder $game.mode

#define score_holder $global

#define score_holder $players.alive

# set variables
scoreboard players set $game.location.x ds.const 8
execute unless score $game.location.z ds.const = $game.location.z ds.const run scoreboard players set $game.location.z ds.const 8
scoreboard players add $game.location.z ds.const 432
scoreboard players set #22 ds.const 22

scoreboard players set #-1 ds.const -1
scoreboard players set #10000 ds.const 10000
scoreboard players set #1 ds.const 1

# create bossbars
bossbar add game:timer "Timer"
bossbar set game:timer max 15
bossbar set game:timer color purple

# forceload chunk for setup
forceload add 0 0

# initiate loop
function digs:main-1s
