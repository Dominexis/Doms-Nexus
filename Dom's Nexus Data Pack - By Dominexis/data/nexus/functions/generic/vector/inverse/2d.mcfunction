# Compute inverse vector

scoreboard players operation #vector_numerator nexus.value = #invert_point nexus.value
scoreboard players operation #vector_numerator nexus.value *= #invert_point nexus.value
scoreboard players operation #vector_numerator nexus.value /= #1000 nexus.value

scoreboard players operation #math_term_0 nexus.value = #input_vector_x nexus.value
scoreboard players operation #math_term_1 nexus.value = #input_vector_y nexus.value
scoreboard players operation #math_term_0 nexus.value *= #input_vector_x nexus.value
scoreboard players operation #math_term_1 nexus.value *= #input_vector_y nexus.value
scoreboard players operation #vector_denominator nexus.value = #math_term_0 nexus.value
scoreboard players operation #vector_denominator nexus.value += #math_term_1 nexus.value
scoreboard players operation #vector_denominator nexus.value /= #1000 nexus.value

scoreboard players operation #output_vector_x nexus.value = #input_vector_x nexus.value
scoreboard players operation #output_vector_y nexus.value = #input_vector_y nexus.value
scoreboard players operation #output_vector_x nexus.value *= #vector_numerator nexus.value
scoreboard players operation #output_vector_y nexus.value *= #vector_numerator nexus.value
scoreboard players operation #output_vector_x nexus.value /= #vector_denominator nexus.value
scoreboard players operation #output_vector_y nexus.value /= #vector_denominator nexus.value