execute store success score $success ds.temp run clear @s tnt 1

execute if score $success ds.temp matches 1 run function digs:special/tnt_cannon/fire
