# Get yaw from vector

scoreboard players operation #input_x nexus.value = #input_vector_z nexus.value
scoreboard players operation #input_y nexus.value = #input_vector_x nexus.value
scoreboard players operation #input_y nexus.value *= #-1 nexus.value
function nexus:generic/trigonometry/arctangent
scoreboard players operation #output_yaw nexus.value = #output nexus.value







# Compute length of horizontal component of vector

scoreboard players operation #math_vector_x nexus.value = #input_vector_x nexus.value
scoreboard players operation #math_vector_y nexus.value = #input_vector_z nexus.value
scoreboard players operation #math_vector_x nexus.value /= #scale_factor nexus.value
scoreboard players operation #math_vector_y nexus.value /= #scale_factor nexus.value
scoreboard players operation #math_vector_x nexus.value *= #math_vector_x nexus.value
scoreboard players operation #math_vector_y nexus.value *= #math_vector_y nexus.value
scoreboard players operation #input nexus.value = #math_vector_x nexus.value
scoreboard players operation #input nexus.value += #math_vector_y nexus.value

function nexus:generic/root/radical/square

scoreboard players operation #output nexus.value *= #scale_factor nexus.value







# Get pitch from vector

scoreboard players operation #input_x nexus.value = #output nexus.value
scoreboard players operation #input_y nexus.value = #input_vector_y nexus.value
scoreboard players operation #input_y nexus.value *= #-1 nexus.value
function nexus:generic/trigonometry/arctangent
scoreboard players operation #output_pitch nexus.value = #output nexus.value