# Get distance from center of sphere

scoreboard players operation #math_vector_x temp.value = #index_tree_x nexus.value
scoreboard players operation #math_vector_y temp.value = #index_tree_y nexus.value
scoreboard players operation #math_vector_z temp.value = #index_tree_z nexus.value
scoreboard players remove #math_vector_x temp.value 12
scoreboard players remove #math_vector_y temp.value 12
scoreboard players remove #math_vector_z temp.value 12
scoreboard players operation #math_vector_x temp.value *= #math_vector_x temp.value
scoreboard players operation #math_vector_y temp.value *= #math_vector_y temp.value
scoreboard players operation #math_vector_z temp.value *= #math_vector_z temp.value
scoreboard players operation #radius temp.value = #math_vector_x temp.value
scoreboard players operation #radius temp.value += #math_vector_y temp.value
scoreboard players operation #radius temp.value += #math_vector_z temp.value







# Place glass block if within proper range

execute if score #radius temp.value matches 95..118 if block ~ ~ ~ air run setblock ~ ~ ~ glass