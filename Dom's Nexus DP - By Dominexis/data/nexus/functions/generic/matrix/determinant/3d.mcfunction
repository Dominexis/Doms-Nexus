# Compute determinant

scoreboard players operation #math_term_0 nexus.value = #input_matrix_y_y nexus.value
scoreboard players operation #math_term_0 nexus.value *= #input_matrix_z_z nexus.value
scoreboard players operation #math_term_1 nexus.value = #input_matrix_y_z nexus.value
scoreboard players operation #math_term_1 nexus.value *= #input_matrix_z_y nexus.value
scoreboard players operation #math_term_0 nexus.value -= #math_term_1 nexus.value
scoreboard players operation #math_term_0 nexus.value /= #1000 nexus.value
scoreboard players operation #math_term_0 nexus.value *= #input_matrix_x_x nexus.value
scoreboard players operation #output nexus.value = #math_term_0 nexus.value

scoreboard players operation #math_term_0 nexus.value = #input_matrix_y_z nexus.value
scoreboard players operation #math_term_0 nexus.value *= #input_matrix_z_x nexus.value
scoreboard players operation #math_term_1 nexus.value = #input_matrix_y_x nexus.value
scoreboard players operation #math_term_1 nexus.value *= #input_matrix_z_z nexus.value
scoreboard players operation #math_term_0 nexus.value -= #math_term_1 nexus.value
scoreboard players operation #math_term_0 nexus.value /= #1000 nexus.value
scoreboard players operation #math_term_0 nexus.value *= #input_matrix_x_y nexus.value
scoreboard players operation #output nexus.value += #math_term_0 nexus.value

scoreboard players operation #math_term_0 nexus.value = #input_matrix_y_x nexus.value
scoreboard players operation #math_term_0 nexus.value *= #input_matrix_z_y nexus.value
scoreboard players operation #math_term_1 nexus.value = #input_matrix_y_y nexus.value
scoreboard players operation #math_term_1 nexus.value *= #input_matrix_z_x nexus.value
scoreboard players operation #math_term_0 nexus.value -= #math_term_1 nexus.value
scoreboard players operation #math_term_0 nexus.value /= #1000 nexus.value
scoreboard players operation #math_term_0 nexus.value *= #input_matrix_x_z nexus.value
scoreboard players operation #output nexus.value += #math_term_0 nexus.value

scoreboard players operation #output nexus.value /= #1000 nexus.value