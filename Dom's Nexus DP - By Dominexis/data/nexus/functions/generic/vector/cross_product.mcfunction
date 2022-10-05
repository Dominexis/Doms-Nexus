# Compute cross product

scoreboard players operation #math_term_0 nexus.value = #input_vector_1_y nexus.value
scoreboard players operation #math_term_0 nexus.value *= #input_vector_2_z nexus.value
scoreboard players operation #math_term_1 nexus.value = #input_vector_1_z nexus.value
scoreboard players operation #math_term_1 nexus.value *= #input_vector_2_y nexus.value
scoreboard players operation #output_vector_x nexus.value = #math_term_0 nexus.value
scoreboard players operation #output_vector_x nexus.value -= #math_term_1 nexus.value
scoreboard players operation #output_vector_x nexus.value /= #1000 nexus.value

scoreboard players operation #math_term_0 nexus.value = #input_vector_1_z nexus.value
scoreboard players operation #math_term_0 nexus.value *= #input_vector_2_x nexus.value
scoreboard players operation #math_term_1 nexus.value = #input_vector_1_x nexus.value
scoreboard players operation #math_term_1 nexus.value *= #input_vector_2_z nexus.value
scoreboard players operation #output_vector_y nexus.value = #math_term_0 nexus.value
scoreboard players operation #output_vector_y nexus.value -= #math_term_1 nexus.value
scoreboard players operation #output_vector_y nexus.value /= #1000 nexus.value

scoreboard players operation #math_term_0 nexus.value = #input_vector_1_x nexus.value
scoreboard players operation #math_term_0 nexus.value *= #input_vector_2_y nexus.value
scoreboard players operation #math_term_1 nexus.value = #input_vector_1_y nexus.value
scoreboard players operation #math_term_1 nexus.value *= #input_vector_2_x nexus.value
scoreboard players operation #output_vector_z nexus.value = #math_term_0 nexus.value
scoreboard players operation #output_vector_z nexus.value -= #math_term_1 nexus.value
scoreboard players operation #output_vector_z nexus.value /= #1000 nexus.value