# Compute coefficients

scoreboard players operation #bezier_coefficient_0_x nexus.value = #input_point_1_x nexus.value

scoreboard players operation #bezier_coefficient_1_x nexus.value = #input_point_2_x nexus.value
scoreboard players operation #bezier_coefficient_1_x nexus.value -= #input_point_1_x nexus.value
scoreboard players operation #bezier_coefficient_1_x nexus.value *= #3 nexus.value

scoreboard players operation #bezier_coefficient_2_x nexus.value = #input_point_3_x nexus.value
scoreboard players operation #bezier_coefficient_2_x nexus.value -= #input_point_2_x nexus.value
scoreboard players operation #bezier_coefficient_2_x nexus.value -= #input_point_2_x nexus.value
scoreboard players operation #bezier_coefficient_2_x nexus.value += #input_point_1_x nexus.value
scoreboard players operation #bezier_coefficient_2_x nexus.value *= #3 nexus.value

scoreboard players operation #bezier_coefficient_3_x nexus.value = #input_point_2_x nexus.value
scoreboard players operation #bezier_coefficient_3_x nexus.value -= #input_point_3_x nexus.value
scoreboard players operation #bezier_coefficient_3_x nexus.value *= #3 nexus.value
scoreboard players operation #bezier_coefficient_3_x nexus.value += #input_point_4_x nexus.value
scoreboard players operation #bezier_coefficient_3_x nexus.value -= #input_point_1_x nexus.value



scoreboard players operation #bezier_coefficient_0_y nexus.value = #input_point_1_y nexus.value

scoreboard players operation #bezier_coefficient_1_y nexus.value = #input_point_2_y nexus.value
scoreboard players operation #bezier_coefficient_1_y nexus.value -= #input_point_1_y nexus.value
scoreboard players operation #bezier_coefficient_1_y nexus.value *= #3 nexus.value

scoreboard players operation #bezier_coefficient_2_y nexus.value = #input_point_3_y nexus.value
scoreboard players operation #bezier_coefficient_2_y nexus.value -= #input_point_2_y nexus.value
scoreboard players operation #bezier_coefficient_2_y nexus.value -= #input_point_2_y nexus.value
scoreboard players operation #bezier_coefficient_2_y nexus.value += #input_point_1_y nexus.value
scoreboard players operation #bezier_coefficient_2_y nexus.value *= #3 nexus.value

scoreboard players operation #bezier_coefficient_3_y nexus.value = #input_point_2_y nexus.value
scoreboard players operation #bezier_coefficient_3_y nexus.value -= #input_point_3_y nexus.value
scoreboard players operation #bezier_coefficient_3_y nexus.value *= #3 nexus.value
scoreboard players operation #bezier_coefficient_3_y nexus.value += #input_point_4_y nexus.value
scoreboard players operation #bezier_coefficient_3_y nexus.value -= #input_point_1_y nexus.value



scoreboard players operation #bezier_coefficient_0_z nexus.value = #input_point_1_z nexus.value

scoreboard players operation #bezier_coefficient_1_z nexus.value = #input_point_2_z nexus.value
scoreboard players operation #bezier_coefficient_1_z nexus.value -= #input_point_1_z nexus.value
scoreboard players operation #bezier_coefficient_1_z nexus.value *= #3 nexus.value

scoreboard players operation #bezier_coefficient_2_z nexus.value = #input_point_3_z nexus.value
scoreboard players operation #bezier_coefficient_2_z nexus.value -= #input_point_2_z nexus.value
scoreboard players operation #bezier_coefficient_2_z nexus.value -= #input_point_2_z nexus.value
scoreboard players operation #bezier_coefficient_2_z nexus.value += #input_point_1_z nexus.value
scoreboard players operation #bezier_coefficient_2_z nexus.value *= #3 nexus.value

scoreboard players operation #bezier_coefficient_3_z nexus.value = #input_point_2_z nexus.value
scoreboard players operation #bezier_coefficient_3_z nexus.value -= #input_point_3_z nexus.value
scoreboard players operation #bezier_coefficient_3_z nexus.value *= #3 nexus.value
scoreboard players operation #bezier_coefficient_3_z nexus.value += #input_point_4_z nexus.value
scoreboard players operation #bezier_coefficient_3_z nexus.value -= #input_point_1_z nexus.value