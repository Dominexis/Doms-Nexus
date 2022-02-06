# Rotate vectors

scoreboard players operation #input_vector_x nexus.value = #input_matrix_x_x nexus.value
scoreboard players operation #input_vector_y nexus.value = #input_matrix_x_y nexus.value
function nexus:generic/vector/rotate/2d/standard
scoreboard players operation #output_matrix_x_x nexus.value = #output_vector_x nexus.value
scoreboard players operation #output_matrix_x_y nexus.value = #output_vector_y nexus.value

scoreboard players operation #input_vector_x nexus.value = #input_matrix_y_x nexus.value
scoreboard players operation #input_vector_y nexus.value = #input_matrix_y_y nexus.value
function nexus:generic/vector/rotate/2d/standard
scoreboard players operation #output_matrix_y_x nexus.value = #output_vector_x nexus.value
scoreboard players operation #output_matrix_y_y nexus.value = #output_vector_y nexus.value