execute if block ~ 62 ~ #digs:water run setblock ~ 62 ~ white_wool
summon falling_block ~ 256 ~ {BlockState: {Name: "minecraft:barrel", Properties: {facing: "up"}}, TileEntityData: {LootTable: "digs:chests/drop"}, Time: 1, DropItem: 0b, HurtEntities: 1b}
kill @s
