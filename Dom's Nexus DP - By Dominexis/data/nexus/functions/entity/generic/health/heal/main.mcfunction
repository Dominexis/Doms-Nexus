# Get current health

function nexus:entity/generic/data/extract/objective







# Apply health

execute store result score #max_health nexus.value run attribute @s generic.max_health get 1000
scoreboard players operation @s nexus.health += #heal_amount nexus.value
scoreboard players operation @s nexus.health < #max_health nexus.value

execute store result entity @s Health float 0.001 run scoreboard players get @s nexus.health







# Manage values

scoreboard players set @s nexus.hp_time 10