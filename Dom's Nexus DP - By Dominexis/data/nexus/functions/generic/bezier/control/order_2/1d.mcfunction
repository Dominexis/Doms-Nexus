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



scoreboard players operation #term nexus.value = #input_point_3 nexus.value
scoreboard players operation #term nexus.value -= #input_point_1 nexus.value
scoreboard players operation #term nexus.value *= #power nexus.value
scoreboard players operation #output_point_2 nexus.value = #term nexus.value

scoreboard players operation #term nexus.value = #input_point_1 nexus.value
scoreboard players operation #term nexus.value -= #input_point_2 nexus.value
scoreboard players operation #term nexus.value *= #1000 nexus.value
scoreboard players operation #output_point_2 nexus.value += #term nexus.value

scoreboard players operation #output_point_2 nexus.value /= #denominator nexus.value
scoreboard players operation #output_point_2 nexus.value += #input_point_1 nexus.value