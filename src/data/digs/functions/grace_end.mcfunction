#> digs:grace_end
# when the grace timer runs out

worldborder set 48 300
tellraw @a "f%game.grace.ended%"
scoreboard players set $game.grace ds.const -1