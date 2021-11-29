
execute store result score $success ds.temp run clear @s carrot_on_a_stick{digs:{type:"tnt_cannon"}} 0
execute if score $success ds.temp matches 2.. run function digs:special/tnt_cannon/replace
advancement revoke @s only digs:util/check/tnt_cannon