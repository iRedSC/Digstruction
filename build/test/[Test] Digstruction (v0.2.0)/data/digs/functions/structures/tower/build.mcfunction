execute unless predicate digs:tower_height run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author: "iRedSC", ignoreEntities: 0b, integrity: 1.0f, metadata: "", mirror: "NONE", mode: "LOAD", name: "digs:tower", posX: -15, posY: 0, posZ: -15, powered: 0b, rotation: "NONE", seed: 0L, showair: 0b, showboundingbox: 0b, sizeX: 31, sizeY: 7, sizeZ: 31}
execute unless predicate digs:tower_height run setblock ~ ~-1 ~-1 redstone_block
kill @s
