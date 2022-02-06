# Compute determinant

scoreboard players operation #math_term_0 nexus.value = #input_matrix_x_x nexus.value
scoreboard players operation #math_term_0 nexus.value *= #input_matrix_y_y nexus.value
scoreboard players operation #math_term_1 nexus.value = #input_matrix_x_y nexus.value
scoreboard players operation #math_term_1 nexus.value *= #input_matrix_y_x nexus.value
scoreboard players operation #determinant_denominator nexus.value = #math_term_0 nexus.value
scoreboard players operation #determinant_denominator nexus.value -= #math_term_1 nexus.value
scoreboard players operation #determinant_denominator nexus.value /= #1000 nexus.value







# Compute components of vector

scoreboard players operation #math_term_0 nexus.value = #input_vector_x nexus.value
scoreboard players operation #math_term_0 nexus.value *= #input_matrix_y_y nexus.value
scoreboard players operation #math_term_1 nexus.value = #input_vector_y nexus.value
scoreboard players operation #math_term_1 nexus.value *= #input_matrix_y_x nexus.value
scoreboard players operation #output_vector_x nexus.value = #math_term_0 nexus.value
scoreboard players operation #output_vector_x nexus.value -= #math_term_1 nexus.value
scoreboard players operation #output_vector_x nexus.value /= #determinant_denominator nexus.value

scoreboard players operation #math_term_0 nexus.value = #input_matrix_x_x nexus.value
scoreboard players operation #math_term_0 nexus.value *= #input_vector_y nexus.value
scoreboard players operation #math_term_1 nexus.value = #input_matrix_x_y nexus.value
scoreboard players operation #math_term_1 nexus.value *= #input_vector_x nexus.value
scoreboard players operation #output_vector_y nexus.value = #math_term_0 nexus.value
scoreboard players operation #output_vector_y nexus.value -= #math_term_1 nexus.value
scoreboard players operation #output_vector_y nexus.value /= #determinant_denominator nexus.value