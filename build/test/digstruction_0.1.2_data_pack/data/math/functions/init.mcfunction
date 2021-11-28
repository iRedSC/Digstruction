#> math:init
#
#
# Setup for the MATH module
#
# @context global
# @requires
#   [scoreboard]
#       lcg
#       const
# @ops
#   summon
#   scoreboard
#   kill

#> lcg setup
#region
    # declare score_holders
    #declare score_holder $rng.range.max
    #declare score_holder $rng.range.min
    #declare score_holder $rng.output

    # add scoreboard
    scoreboard objectives add lcg dummy
    
    # set rng seed numbers

    # summon AEC to grab the UUID from
    summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["lcg_seed"]}
    # store the UUID into each of the lcg seed numbers
    execute store result score $rng lcg run data get entity @e[tag=lcg_seed,limit=1] UUID[0] 0.0001
    execute store result score $rng.multiplier lcg run data get entity @e[tag=lcg_seed,limit=1] UUID[1] 0.0001
    execute store result score $rng.increment lcg run data get entity @e[tag=lcg_seed,limit=1] UUID[2] 0.0001

    execute if score $rng.multiplier lcg matches ..-1 run scoreboard players operation $rng.multiplier lcg *= $num.-1 const
    execute if score $rng.increment lcg matches ..-1 run scoreboard players operation $rng.increment lcg *= $num.-1 const


    # kill the AEC
    kill @e[tag=lcg_seed]
#endregion
