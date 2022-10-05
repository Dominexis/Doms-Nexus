# Compute force

scoreboard players operation #input nexus.value = #math_distance nexus.value
function nexus:generic/root/radical/square
scoreboard players operation #math_numerator nexus.value = @s nexus.size
scoreboard players operation #math_numerator nexus.value += #entity_size nexus.value
scoreboard players operation #math_numerator nexus.value -= #output nexus.value

scoreboard players operation #math_vector_x nexus.value = #entity_x nexus.value
scoreboard players operation #math_vector_y nexus.value = #entity_y nexus.value
scoreboard players operation #math_vector_z nexus.value = #entity_z nexus.value
scoreboard players operation #math_vector_x nexus.value -= @s nexus.x
scoreboard players operation #math_vector_y nexus.value -= @s nexus.y
scoreboard players operation #math_vector_z nexus.value -= @s nexus.z
scoreboard players operation #math_vector_x nexus.value *= #math_numerator nexus.value
scoreboard players operation #math_vector_y nexus.value *= #math_numerator nexus.value
scoreboard players operation #math_vector_z nexus.value *= #math_numerator nexus.value
scoreboard players operation #math_vector_x nexus.value /= #output nexus.value
scoreboard players operation #math_vector_y nexus.value /= #output nexus.value
scoreboard players operation #math_vector_z nexus.value /= #output nexus.value
scoreboard players operation #math_vector_x nexus.value *= @s nexus.mass
scoreboard players operation #math_vector_y nexus.value *= @s nexus.mass
scoreboard players operation #math_vector_z nexus.value *= @s nexus.mass
scoreboard players operation #math_vector_x nexus.value /= #10 nexus.value
scoreboard players operation #math_vector_y nexus.value /= #10 nexus.value
scoreboard players operation #math_vector_z nexus.value /= #10 nexus.value

scoreboard players operation #force_x nexus.value += #math_vector_x nexus.value
scoreboard players operation #force_y nexus.value += #math_vector_y nexus.value
scoreboard players operation #force_z nexus.value += #math_vector_z nexus.value