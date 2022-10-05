# Rotate vector based on angle

scoreboard players operation #input nexus.value = #input_yaw nexus.value
function nexus:generic/trigonometry/cosine
scoreboard players operation #math_cosine nexus.value = #output nexus.value
function nexus:generic/trigonometry/sine
scoreboard players operation #math_sine nexus.value = #output nexus.value

scoreboard players operation #math_vector nexus.value = #input_vector_z nexus.value
scoreboard players operation #math_vector nexus.value *= #math_sine nexus.value
scoreboard players operation #math_vector nexus.value /= #1000 nexus.value
scoreboard players operation #output_vector_x nexus.value = #input_vector_x nexus.value
scoreboard players operation #output_vector_x nexus.value *= #math_cosine nexus.value
scoreboard players operation #output_vector_x nexus.value /= #1000 nexus.value
scoreboard players operation #output_vector_x nexus.value -= #math_vector nexus.value

scoreboard players operation #math_vector nexus.value = #input_vector_z nexus.value
scoreboard players operation #math_vector nexus.value *= #math_cosine nexus.value
scoreboard players operation #math_vector nexus.value /= #1000 nexus.value
scoreboard players operation #output_vector_z nexus.value = #input_vector_x nexus.value
scoreboard players operation #output_vector_z nexus.value *= #math_sine nexus.value
scoreboard players operation #output_vector_z nexus.value /= #1000 nexus.value
scoreboard players operation #output_vector_z nexus.value += #math_vector nexus.value