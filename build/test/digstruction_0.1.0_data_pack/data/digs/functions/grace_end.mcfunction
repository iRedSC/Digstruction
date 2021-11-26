worldborder set 16 300
tellraw @a ["", {"storage": "digs:messages", "nbt": "game.grace.ended", "interpret": true}]
scoreboard players set $game.grace ds.const -1
