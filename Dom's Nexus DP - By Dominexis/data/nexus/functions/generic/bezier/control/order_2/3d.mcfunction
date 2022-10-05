# Compute denominator

scoreboard players operation #denominator nexus.value = #input_point_2_value nexus.value
scoreboard players operation #denominator nexus.value *= #input_point_2_value nexus.value
scoreboard players operation #denominator nexus.value /= #1000 nexus.value
scoreboard players operation #denominator nexus.value -= #input_point_2_value nexus.value
scoreboard players operation #denominator nexus.value *= #2 nexus.value







# Compute control points

scoreboard players operation #power nexus.value = #input_point_2_value nexus.value
scoreboard players operation #power nexus.value *= #input_point_2_value nexus.value
scoreboard players operation #power nexus.value /= #1000 nexus.value



scoreboard players operation #term nexus.value = #input_point_3_x nexus.value
scoreboard players operation #term nexus.value -= #input_point_1_x nexus.value
scoreboard players operation #term nexus.value *= #power nexus.value
scoreboard players operation #output_point_2_x nexus.value = #term nexus.value

scoreboard players operation #term nexus.value = #input_point_1_x nexus.value
scoreboard players operation #term nexus.value -= #input_point_2_x nexus.value
scoreboard players operation #term nexus.value *= #1000 nexus.value
scoreboard players operation #output_point_2_x nexus.value += #term nexus.value

scoreboard players operation #output_point_2_x nexus.value /= #denominator nexus.value
scoreboard players operation #output_point_2_x nexus.value += #input_point_1_x nexus.value



scoreboard players operation #term nexus.value = #input_point_3_y nexus.value
scoreboard players operation #term nexus.value -= #input_point_1_y nexus.value
scoreboard players operation #term nexus.value *= #power nexus.value
scoreboard players operation #output_point_2_y nexus.value = #term nexus.value

scoreboard players operation #term nexus.value = #input_point_1_y nexus.value
scoreboard players operation #term nexus.value -= #input_point_2_y nexus.value
scoreboard players operation #term nexus.value *= #1000 nexus.value
scoreboard players operation #output_point_2_y nexus.value += #term nexus.value

scoreboard players operation #output_point_2_y nexus.value /= #denominator nexus.value
scoreboard players operation #output_point_2_y nexus.value += #input_point_1_y nexus.value



scoreboard players operation #term nexus.value = #input_point_3_z nexus.value
scoreboard players operation #term nexus.value -= #input_point_1_z nexus.value
scoreboard players operation #term nexus.value *= #power nexus.value
scoreboard players operation #output_point_2_z nexus.value = #term nexus.value

scoreboard players operation #term nexus.value = #input_point_1_z nexus.value
scoreboard players operation #term nexus.value -= #input_point_2_z nexus.value
scoreboard players operation #term nexus.value *= #1000 nexus.value
scoreboard players operation #output_point_2_z nexus.value += #term nexus.value

scoreboard players operation #output_point_2_z nexus.value /= #denominator nexus.value
scoreboard players operation #output_point_2_z nexus.value += #input_point_1_z nexus.value