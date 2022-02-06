# Extract position

execute if entity @s[tag=!nexus.entity] run function nexus:entity/generic/data/extract/objective/pos







# Verify that entities are close enough

scoreboard players operation #math_vector_x nexus.value = #entity_x nexus.value
scoreboard players operation #math_vector_y nexus.value = #entity_y nexus.value
scoreboard players operation #math_vector_z nexus.value = #entity_z nexus.value
scoreboard players operation #math_vector_x nexus.value -= @s nexus.x
scoreboard players operation #math_vector_y nexus.value -= @s nexus.y
scoreboard players operation #math_vector_z nexus.value -= @s nexus.z
scoreboard players operation #math_vector_x nexus.value *= #math_vector_x nexus.value
scoreboard players operation #math_vector_y nexus.value *= #math_vector_y nexus.value
scoreboard players operation #math_vector_z nexus.value *= #math_vector_z nexus.value

scoreboard players operation #math_distance nexus.value = #math_vector_x nexus.value
scoreboard players operation #math_distance nexus.value += #math_vector_y nexus.value
scoreboard players operation #math_distance nexus.value += #math_vector_z nexus.value
scoreboard players operation #math_size nexus.value = @s nexus.size
scoreboard players operation #math_size nexus.value += #entity_size nexus.value
scoreboard players operation #math_size nexus.value *= #math_size nexus.value







# Compute force

execute if score #math_distance nexus.value < #math_size nexus.value unless entity @s[gamemode=spectator] run function nexus:entity/generic/push/force