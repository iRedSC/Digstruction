fill ~-1 ~ ~-1 ~1 ~2 ~1 iron_bars
fill ~ ~ ~ ~ ~2 ~ air
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 stone_bricks
fill ~-1 ~3 ~-1 ~1 ~3 ~1 stone_bricks
effect give @a[distance=..1] mining_fatigue 10 100 true
playsound block.anvil.place master @a ~ ~ ~ 2 0 0
kill @s
