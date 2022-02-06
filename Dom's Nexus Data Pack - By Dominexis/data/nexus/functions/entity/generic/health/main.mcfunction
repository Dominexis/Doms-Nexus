# Manage timer

scoreboard players remove @s[scores={nexus.hp_time=1..}] nexus.hp_time 1







# Inflict damage and grant healing

execute if score @s nexus.damage matches 1.. unless score @s nexus.hp_time matches 1.. run function nexus:entity/generic/health/damage/main
execute if score @s nexus.heal matches 001.. unless score @s nexus.hp_time matches 1.. run function nexus:entity/generic/health/heal/main