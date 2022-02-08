# Damage causes

# 00001 - Skull
# 00002 - Spider brain







# Generate random number

scoreboard players set #input nexus.value 100
function nexus:generic/rng/lcg







# Return custom message

execute if score @s nexus.source matches 999900001 if score #output nexus.value matches 00..49 run tellraw @a ["",{"selector":"@s"},{"text":" was slain by a skull"}]
execute if score @s nexus.source matches 999900001 if score #output nexus.value matches 50..99 run tellraw @a ["",{"selector":"@s"},{"text":" was murdered by a skull"}]

execute if score @s nexus.source matches 999900002 if score #output nexus.value matches 00..49 run tellraw @a ["",{"selector":"@s"},{"text":" was impaled by a spider brain"}]
execute if score @s nexus.source matches 999900002 if score #output nexus.value matches 50..99 run tellraw @a ["",{"selector":"@s"},{"text":" was murdered by a spider brain"}]