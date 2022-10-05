# Damage causes

# 00001 - Fall damage







# Generate random number

scoreboard players set #input nexus.value 100
function nexus:generic/rng/lcg







# Return custom message

execute if score @s nexus.source matches 000000001 if score #output nexus.value matches 00..99 run tellraw @a ["",{"selector":"@s"},{"text":" hit the ground too hard"}]