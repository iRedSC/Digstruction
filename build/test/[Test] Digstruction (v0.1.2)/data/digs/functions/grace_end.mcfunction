#> digs:grace_end
# when the grace timer runs out

worldborder set 48 300
tellraw @a ["", {"storage": "digs:messages", "nbt": "game.grace.ended", "interpret": true}]
scoreboard players set $game.grace ds.const -1
