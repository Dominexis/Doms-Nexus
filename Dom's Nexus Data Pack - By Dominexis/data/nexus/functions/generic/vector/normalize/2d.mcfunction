# Get length of vector

function nexus:generic/vector/length/2d







# Normalize vector

scoreboard players operation #output_vector_x nexus.value = #input_vector_x nexus.value
scoreboard players operation #output_vector_y nexus.value = #input_vector_y nexus.value
scoreboard players operation #output_vector_x nexus.value *= #1000 nexus.value
scoreboard players operation #output_vector_y nexus.value *= #1000 nexus.value
scoreboard players operation #output_vector_x nexus.value /= #output nexus.value
scoreboard players operation #output_vector_y nexus.value /= #output nexus.value