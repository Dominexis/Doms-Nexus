# Compute length of vector

scoreboard players operation #math_vector_x nexus.value = #input_vector_x nexus.value
scoreboard players operation #math_vector_y nexus.value = #input_vector_y nexus.value
scoreboard players operation #math_vector_x nexus.value /= #scale_factor nexus.value
scoreboard players operation #math_vector_y nexus.value /= #scale_factor nexus.value
scoreboard players operation #math_vector_x nexus.value *= #math_vector_x nexus.value
scoreboard players operation #math_vector_y nexus.value *= #math_vector_y nexus.value
scoreboard players operation #input nexus.value = #math_vector_x nexus.value
scoreboard players operation #input nexus.value += #math_vector_y nexus.value

function nexus:generic/root/radical/square

scoreboard players operation #output nexus.value *= #scale_factor nexus.value