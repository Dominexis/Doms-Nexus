# Perform linear transformation

scoreboard players operation #math_vector_0 nexus.value = #input_matrix_x_x nexus.value
scoreboard players operation #math_vector_1 nexus.value = #input_matrix_y_x nexus.value
scoreboard players operation #math_vector_0 nexus.value *= #input_vector_x nexus.value
scoreboard players operation #math_vector_1 nexus.value *= #input_vector_y nexus.value
scoreboard players operation #output_vector_x nexus.value = #math_vector_0 nexus.value
scoreboard players operation #output_vector_x nexus.value += #math_vector_1 nexus.value
scoreboard players operation #output_vector_x nexus.value /= #1000 nexus.value

scoreboard players operation #math_vector_0 nexus.value = #input_matrix_x_y nexus.value
scoreboard players operation #math_vector_1 nexus.value = #input_matrix_y_y nexus.value
scoreboard players operation #math_vector_0 nexus.value *= #input_vector_x nexus.value
scoreboard players operation #math_vector_1 nexus.value *= #input_vector_y nexus.value
scoreboard players operation #output_vector_y nexus.value = #math_vector_0 nexus.value
scoreboard players operation #output_vector_y nexus.value += #math_vector_1 nexus.value
scoreboard players operation #output_vector_y nexus.value /= #1000 nexus.value