# Set vector from yaw and pitch

scoreboard players operation #input nexus.value = #input_yaw nexus.value
function nexus:generic/trigonometry/sine
scoreboard players operation #output_vector_x nexus.value = #output nexus.value
scoreboard players operation #output_vector_x nexus.value *= #-1 nexus.value
function nexus:generic/trigonometry/cosine
scoreboard players operation #output_vector_z nexus.value = #output nexus.value

scoreboard players operation #input nexus.value = #input_pitch nexus.value
function nexus:generic/trigonometry/cosine
scoreboard players operation #output_vector_x nexus.value *= #output nexus.value
scoreboard players operation #output_vector_z nexus.value *= #output nexus.value
scoreboard players operation #output_vector_x nexus.value /= #1000 nexus.value
scoreboard players operation #output_vector_z nexus.value /= #1000 nexus.value
function nexus:generic/trigonometry/sine
scoreboard players operation #output_vector_y nexus.value = #output nexus.value
scoreboard players operation #output_vector_y nexus.value *= #-1 nexus.value