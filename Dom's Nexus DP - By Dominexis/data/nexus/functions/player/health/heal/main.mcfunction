# Extract NBT

function nexus:entity/generic/data/extract/objective







# Apply health

execute store result score #max_health nexus.value run attribute @s generic.max_health get 1000
scoreboard players operation #math_00 nexus.value = @s nexus.health
scoreboard players operation #math_00 nexus.value += #heal_amount nexus.value
scoreboard players operation #math_00 nexus.value < #max_health nexus.value
scoreboard players operation #math_00 nexus.value -= @s nexus.health
scoreboard players operation @s nexus.hp_offset += #math_00 nexus.value







# Manage values

scoreboard players set @s nexus.hp_time 10