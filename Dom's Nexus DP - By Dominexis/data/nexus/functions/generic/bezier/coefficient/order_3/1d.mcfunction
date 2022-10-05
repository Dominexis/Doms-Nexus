# Compute coefficients

scoreboard players operation #bezier_coefficient_0 nexus.value = #input_point_1 nexus.value

scoreboard players operation #bezier_coefficient_1 nexus.value = #input_point_2 nexus.value
scoreboard players operation #bezier_coefficient_1 nexus.value -= #input_point_1 nexus.value
scoreboard players operation #bezier_coefficient_1 nexus.value *= #3 nexus.value

scoreboard players operation #bezier_coefficient_2 nexus.value = #input_point_3 nexus.value
scoreboard players operation #bezier_coefficient_2 nexus.value -= #input_point_2 nexus.value
scoreboard players operation #bezier_coefficient_2 nexus.value -= #input_point_2 nexus.value
scoreboard players operation #bezier_coefficient_2 nexus.value += #input_point_1 nexus.value
scoreboard players operation #bezier_coefficient_2 nexus.value *= #3 nexus.value

scoreboard players operation #bezier_coefficient_3 nexus.value = #input_point_2 nexus.value
scoreboard players operation #bezier_coefficient_3 nexus.value -= #input_point_3 nexus.value
scoreboard players operation #bezier_coefficient_3 nexus.value *= #3 nexus.value
scoreboard players operation #bezier_coefficient_3 nexus.value += #input_point_4 nexus.value
scoreboard players operation #bezier_coefficient_3 nexus.value -= #input_point_1 nexus.value