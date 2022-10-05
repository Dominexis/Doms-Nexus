# Compute cramer terms

scoreboard players operation #math_cramer_1 nexus.value = #input_point_1_x nexus.value
scoreboard players operation #math_cramer_1 nexus.value -= #input_point_2_x nexus.value

scoreboard players operation #math_cramer_2 nexus.value = #input_point_1_z nexus.value
scoreboard players operation #math_cramer_2 nexus.value -= #input_point_2_z nexus.value

scoreboard players operation #math_cramer_3 nexus.value = #input_point_1_x nexus.value
scoreboard players operation #math_cramer_3 nexus.value -= #input_point_3_x nexus.value

scoreboard players operation #math_cramer_4 nexus.value = #input_point_1_z nexus.value
scoreboard players operation #math_cramer_4 nexus.value -= #input_point_3_z nexus.value



scoreboard players operation #math_00 nexus.value = #input_point_1_x nexus.value
scoreboard players operation #math_00 nexus.value *= #input_point_1_x nexus.value
scoreboard players operation #math_cramer_5 nexus.value = #math_00 nexus.value

scoreboard players operation #math_00 nexus.value = #input_point_2_x nexus.value
scoreboard players operation #math_00 nexus.value *= #input_point_2_x nexus.value
scoreboard players operation #math_cramer_5 nexus.value -= #math_00 nexus.value

scoreboard players operation #math_00 nexus.value = #input_point_1_z nexus.value
scoreboard players operation #math_00 nexus.value *= #input_point_1_z nexus.value
scoreboard players operation #math_cramer_5 nexus.value += #math_00 nexus.value

scoreboard players operation #math_00 nexus.value = #input_point_2_z nexus.value
scoreboard players operation #math_00 nexus.value *= #input_point_2_z nexus.value
scoreboard players operation #math_cramer_5 nexus.value -= #math_00 nexus.value

scoreboard players operation #math_00 nexus.value = #input_point_1_distance nexus.value
scoreboard players operation #math_00 nexus.value *= #input_point_1_distance nexus.value
scoreboard players operation #math_cramer_5 nexus.value -= #math_00 nexus.value

scoreboard players operation #math_00 nexus.value = #input_point_2_distance nexus.value
scoreboard players operation #math_00 nexus.value *= #input_point_2_distance nexus.value
scoreboard players operation #math_cramer_5 nexus.value += #math_00 nexus.value



scoreboard players operation #math_00 nexus.value = #input_point_1_x nexus.value
scoreboard players operation #math_00 nexus.value *= #input_point_1_x nexus.value
scoreboard players operation #math_cramer_6 nexus.value = #math_00 nexus.value

scoreboard players operation #math_00 nexus.value = #input_point_3_x nexus.value
scoreboard players operation #math_00 nexus.value *= #input_point_3_x nexus.value
scoreboard players operation #math_cramer_6 nexus.value -= #math_00 nexus.value

scoreboard players operation #math_00 nexus.value = #input_point_1_z nexus.value
scoreboard players operation #math_00 nexus.value *= #input_point_1_z nexus.value
scoreboard players operation #math_cramer_6 nexus.value += #math_00 nexus.value

scoreboard players operation #math_00 nexus.value = #input_point_3_z nexus.value
scoreboard players operation #math_00 nexus.value *= #input_point_3_z nexus.value
scoreboard players operation #math_cramer_6 nexus.value -= #math_00 nexus.value

scoreboard players operation #math_00 nexus.value = #input_point_1_distance nexus.value
scoreboard players operation #math_00 nexus.value *= #input_point_1_distance nexus.value
scoreboard players operation #math_cramer_6 nexus.value -= #math_00 nexus.value

scoreboard players operation #math_00 nexus.value = #input_point_3_distance nexus.value
scoreboard players operation #math_00 nexus.value *= #input_point_3_distance nexus.value
scoreboard players operation #math_cramer_6 nexus.value += #math_00 nexus.value







# Compute denominator

scoreboard players operation #math_00 nexus.value = #math_cramer_1 nexus.value
scoreboard players operation #math_00 nexus.value *= #math_cramer_4 nexus.value
scoreboard players operation #math_01 nexus.value = #math_cramer_2 nexus.value
scoreboard players operation #math_01 nexus.value *= #math_cramer_3 nexus.value
scoreboard players operation #denominator nexus.value = #math_00 nexus.value
scoreboard players operation #denominator nexus.value -= #math_01 nexus.value
scoreboard players operation #denominator nexus.value *= #2 nexus.value







# Compute X numerator

scoreboard players operation #math_00 nexus.value = #math_cramer_5 nexus.value
scoreboard players operation #math_00 nexus.value *= #math_cramer_4 nexus.value
scoreboard players operation #math_01 nexus.value = #math_cramer_2 nexus.value
scoreboard players operation #math_01 nexus.value *= #math_cramer_6 nexus.value
scoreboard players operation #numerator_x nexus.value = #math_00 nexus.value
scoreboard players operation #numerator_x nexus.value -= #math_01 nexus.value







# Compute Z numerator

scoreboard players operation #math_00 nexus.value = #math_cramer_1 nexus.value
scoreboard players operation #math_00 nexus.value *= #math_cramer_6 nexus.value
scoreboard players operation #math_01 nexus.value = #math_cramer_5 nexus.value
scoreboard players operation #math_01 nexus.value *= #math_cramer_3 nexus.value
scoreboard players operation #numerator_z nexus.value = #math_00 nexus.value
scoreboard players operation #numerator_z nexus.value -= #math_01 nexus.value







# Compute final position

scoreboard players operation #output_x nexus.value = #numerator_x nexus.value
scoreboard players operation #output_x nexus.value /= #denominator nexus.value

scoreboard players operation #output_z nexus.value = #numerator_z nexus.value
scoreboard players operation #output_z nexus.value /= #denominator nexus.value