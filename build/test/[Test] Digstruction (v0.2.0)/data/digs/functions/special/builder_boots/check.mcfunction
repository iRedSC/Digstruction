execute store result score $success ds.temp run clear @s leather_boots{digs: {type: "builder_boots"}} 0
execute if score $success ds.temp matches 2.. run function digs:special/builder_boots/replace
advancement revoke @s only digs:util/check/builder_boots
