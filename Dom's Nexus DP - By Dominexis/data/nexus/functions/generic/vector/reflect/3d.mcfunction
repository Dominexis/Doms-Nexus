# Reflect vector, first vector is the input, second vector is the axis

function nexus:generic/vector/dot_product/3d

scoreboard players operation #output_vector_x nexus.value = #input_vector_2_x nexus.value
scoreboard players operation #output_vector_y nexus.value = #input_vector_2_y nexus.value
scoreboard players operation #output_vector_z nexus.value = #input_vector_2_z nexus.value
scoreboard players operation #output_vector_x nexus.value *= #output nexus.value
scoreboard players operation #output_vector_y nexus.value *= #output nexus.value
scoreboard players operation #output_vector_z nexus.value *= #output nexus.value
scoreboard players operation #output_vector_x nexus.value *= #2 nexus.value
scoreboard players operation #output_vector_y nexus.value *= #2 nexus.value
scoreboard players operation #output_vector_z nexus.value *= #2 nexus.value
scoreboard players operation #output_vector_x nexus.value /= #1000 nexus.value
scoreboard players operation #output_vector_y nexus.value /= #1000 nexus.value
scoreboard players operation #output_vector_z nexus.value /= #1000 nexus.value
scoreboard players operation #output_vector_x nexus.value -= #input_vector_1_x nexus.value
scoreboard players operation #output_vector_y nexus.value -= #input_vector_1_y nexus.value
scoreboard players operation #output_vector_z nexus.value -= #input_vector_1_z nexus.value