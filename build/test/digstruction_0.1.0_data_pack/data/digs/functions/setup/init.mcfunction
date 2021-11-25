#> digs:setup/init
# initilization function

# scoreboard setup
scoreboard objectives add ds.temp dummy
scoreboard objectives add ds.const dummy
scoreboard objectives add ds.id dummy

# define variables
#define score_holder $game.location.x
#define score_holder $game.location.z

#define score_holder $game.mode

#define score_holder $global

# set variables
scoreboard players set $game.location.x ds.const 8
scoreboard players set $game.location.z ds.const 8
scoreboard players set #22 ds.const 22

# forceload chunk for setup
forceload add 0 0
