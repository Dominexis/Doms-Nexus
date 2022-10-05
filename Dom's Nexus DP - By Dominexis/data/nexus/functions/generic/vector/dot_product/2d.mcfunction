# Compute dot product

scoreboard players operation #math_term_0 nexus.value = #input_vector_1_x nexus.value
scoreboard players operation #math_term_0 nexus.value *= #input_vector_2_x nexus.value
scoreboard players operation #math_term_1 nexus.value = #input_vector_1_y nexus.value
scoreboard players operation #math_term_1 nexus.value *= #input_vector_2_y nexus.value
scoreboard players operation #output nexus.value = #math_term_0 nexus.value
scoreboard players operation #output nexus.value += #math_term_1 nexus.value
scoreboard players operation #output nexus.value /= #1000 nexus.value