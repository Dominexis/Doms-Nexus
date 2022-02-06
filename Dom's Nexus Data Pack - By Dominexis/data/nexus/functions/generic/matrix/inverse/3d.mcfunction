# Compute determinant denominator

scoreboard players operation #math_term_0 nexus.value = #input_matrix_y_y nexus.value
scoreboard players operation #math_term_0 nexus.value *= #input_matrix_z_z nexus.value
scoreboard players operation #math_term_1 nexus.value = #input_matrix_y_z nexus.value
scoreboard players operation #math_term_1 nexus.value *= #input_matrix_z_y nexus.value
scoreboard players operation #math_term_0 nexus.value -= #math_term_1 nexus.value
scoreboard players operation #math_term_0 nexus.value /= #1000 nexus.value
scoreboard players operation #math_term_0 nexus.value *= #input_matrix_x_x nexus.value
scoreboard players operation #determinant_denominator nexus.value = #math_term_0 nexus.value

scoreboard players operation #math_term_0 nexus.value = #input_matrix_y_z nexus.value
scoreboard players operation #math_term_0 nexus.value *= #input_matrix_z_x nexus.value
scoreboard players operation #math_term_1 nexus.value = #input_matrix_y_x nexus.value
scoreboard players operation #math_term_1 nexus.value *= #input_matrix_z_z nexus.value
scoreboard players operation #math_term_0 nexus.value -= #math_term_1 nexus.value
scoreboard players operation #math_term_0 nexus.value /= #1000 nexus.value
scoreboard players operation #math_term_0 nexus.value *= #input_matrix_x_y nexus.value
scoreboard players operation #determinant_denominator nexus.value += #math_term_0 nexus.value

scoreboard players operation #math_term_0 nexus.value = #input_matrix_y_x nexus.value
scoreboard players operation #math_term_0 nexus.value *= #input_matrix_z_y nexus.value
scoreboard players operation #math_term_1 nexus.value = #input_matrix_y_y nexus.value
scoreboard players operation #math_term_1 nexus.value *= #input_matrix_z_x nexus.value
scoreboard players operation #math_term_0 nexus.value -= #math_term_1 nexus.value
scoreboard players operation #math_term_0 nexus.value /= #1000 nexus.value
scoreboard players operation #math_term_0 nexus.value *= #input_matrix_x_z nexus.value
scoreboard players operation #determinant_denominator nexus.value += #math_term_0 nexus.value

scoreboard players operation #determinant_denominator nexus.value /= #1000 nexus.value







# Compute components of X vector

scoreboard players operation #math_term nexus.value = #input_matrix_y_z nexus.value
scoreboard players operation #math_term nexus.value *= #input_matrix_z_y nexus.value
scoreboard players operation #output_matrix_x_x nexus.value = #input_matrix_y_y nexus.value
scoreboard players operation #output_matrix_x_x nexus.value *= #input_matrix_z_z nexus.value
scoreboard players operation #output_matrix_x_x nexus.value -= #math_term nexus.value
scoreboard players operation #output_matrix_x_x nexus.value /= #determinant_denominator nexus.value

scoreboard players operation #math_term nexus.value = #input_matrix_y_x nexus.value
scoreboard players operation #math_term nexus.value *= #input_matrix_z_z nexus.value
scoreboard players operation #output_matrix_x_y nexus.value = #input_matrix_y_z nexus.value
scoreboard players operation #output_matrix_x_y nexus.value *= #input_matrix_z_x nexus.value
scoreboard players operation #output_matrix_x_y nexus.value -= #math_term nexus.value
scoreboard players operation #output_matrix_x_y nexus.value /= #determinant_denominator nexus.value

scoreboard players operation #math_term nexus.value = #input_matrix_y_y nexus.value
scoreboard players operation #math_term nexus.value *= #input_matrix_z_x nexus.value
scoreboard players operation #output_matrix_x_z nexus.value = #input_matrix_y_x nexus.value
scoreboard players operation #output_matrix_x_z nexus.value *= #input_matrix_z_y nexus.value
scoreboard players operation #output_matrix_x_z nexus.value -= #math_term nexus.value
scoreboard players operation #output_matrix_x_z nexus.value /= #determinant_denominator nexus.value







# Compute components of Y vector

scoreboard players operation #math_term nexus.value = #input_matrix_x_y nexus.value
scoreboard players operation #math_term nexus.value *= #input_matrix_z_z nexus.value
scoreboard players operation #output_matrix_y_x nexus.value = #input_matrix_x_z nexus.value
scoreboard players operation #output_matrix_y_x nexus.value *= #input_matrix_z_y nexus.value
scoreboard players operation #output_matrix_y_x nexus.value -= #math_term nexus.value
scoreboard players operation #output_matrix_y_x nexus.value /= #determinant_denominator nexus.value

scoreboard players operation #math_term nexus.value = #input_matrix_x_z nexus.value
scoreboard players operation #math_term nexus.value *= #input_matrix_z_x nexus.value
scoreboard players operation #output_matrix_y_y nexus.value = #input_matrix_x_x nexus.value
scoreboard players operation #output_matrix_y_y nexus.value *= #input_matrix_z_z nexus.value
scoreboard players operation #output_matrix_y_y nexus.value -= #math_term nexus.value
scoreboard players operation #output_matrix_y_y nexus.value /= #determinant_denominator nexus.value

scoreboard players operation #math_term nexus.value = #input_matrix_x_x nexus.value
scoreboard players operation #math_term nexus.value *= #input_matrix_z_y nexus.value
scoreboard players operation #output_matrix_y_z nexus.value = #input_matrix_x_y nexus.value
scoreboard players operation #output_matrix_y_z nexus.value *= #input_matrix_z_x nexus.value
scoreboard players operation #output_matrix_y_z nexus.value -= #math_term nexus.value
scoreboard players operation #output_matrix_y_z nexus.value /= #determinant_denominator nexus.value







# Compute components of Z vector

scoreboard players operation #math_term nexus.value = #input_matrix_x_z nexus.value
scoreboard players operation #math_term nexus.value *= #input_matrix_y_y nexus.value
scoreboard players operation #output_matrix_z_x nexus.value = #input_matrix_x_y nexus.value
scoreboard players operation #output_matrix_z_x nexus.value *= #input_matrix_y_z nexus.value
scoreboard players operation #output_matrix_z_x nexus.value -= #math_term nexus.value
scoreboard players operation #output_matrix_z_x nexus.value /= #determinant_denominator nexus.value

scoreboard players operation #math_term nexus.value = #input_matrix_x_x nexus.value
scoreboard players operation #math_term nexus.value *= #input_matrix_y_z nexus.value
scoreboard players operation #output_matrix_z_y nexus.value = #input_matrix_x_z nexus.value
scoreboard players operation #output_matrix_z_y nexus.value *= #input_matrix_y_x nexus.value
scoreboard players operation #output_matrix_z_y nexus.value -= #math_term nexus.value
scoreboard players operation #output_matrix_z_y nexus.value /= #determinant_denominator nexus.value

scoreboard players operation #math_term nexus.value = #input_matrix_x_y nexus.value
scoreboard players operation #math_term nexus.value *= #input_matrix_y_x nexus.value
scoreboard players operation #output_matrix_z_z nexus.value = #input_matrix_x_x nexus.value
scoreboard players operation #output_matrix_z_z nexus.value *= #input_matrix_y_y nexus.value
scoreboard players operation #output_matrix_z_z nexus.value -= #math_term nexus.value
scoreboard players operation #output_matrix_z_z nexus.value /= #determinant_denominator nexus.value