#> math:lcg
#
# LCG (Random Number)
#
# @context global
# @requires
#   scoreboard
#       lcg
#       ds.const
# @ops
#   scoreboard

# Generate random number
scoreboard players operation $rng lcg *= $rng.multiplier lcg
scoreboard players operation $rng lcg += $rng.increment lcg

execute if score $rng lcg matches ..-1 run scoreboard players operation $rng lcg *= #-1 ds.const
scoreboard players operation $rng lcg /= #10000 ds.const
# Return output
scoreboard players operation $rng.output lcg = $rng lcg

# subract min from max
scoreboard players operation $rng.range.max lcg -= $rng.range.min lcg
# add 1 to max
scoreboard players operation $rng.range.max lcg += #1 ds.const

# get output
scoreboard players operation $rng.output lcg %= $rng.range.max lcg
scoreboard players operation $rng.output lcg += $rng.range.min lcg

# reset max
scoreboard players operation $rng.range.max lcg += $rng.range.min lcg
scoreboard players operation $rng.range.max lcg -= #1 ds.const
