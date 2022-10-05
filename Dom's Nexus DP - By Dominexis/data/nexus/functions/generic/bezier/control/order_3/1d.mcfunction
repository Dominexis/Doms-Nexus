# Compute powers

scoreboard players operation #math_point_2_value_squared nexus.value = #input_point_2_value nexus.value
scoreboard players operation #math_point_2_value_squared nexus.value *= #input_point_2_value nexus.value
scoreboard players operation #math_point_2_value_squared nexus.value /= #1000 nexus.value
scoreboard players operation #math_point_3_value_squared nexus.value = #input_point_3_value nexus.value
scoreboard players operation #math_point_3_value_squared nexus.value *= #input_point_3_value nexus.value
scoreboard players operation #math_point_3_value_squared nexus.value /= #1000 nexus.value
scoreboard players operation #math_point_2_value_cubed nexus.value = #math_point_2_value_squared nexus.value
scoreboard players operation #math_point_2_value_cubed nexus.value *= #input_point_2_value nexus.value
scoreboard players operation #math_point_2_value_cubed nexus.value /= #1000 nexus.value
scoreboard players operation #math_point_3_value_cubed nexus.value = #math_point_3_value_squared nexus.value
scoreboard players operation #math_point_3_value_cubed nexus.value *= #input_point_3_value nexus.value
scoreboard players operation #math_point_3_value_cubed nexus.value /= #1000 nexus.value







# Compute denominator

scoreboard players operation #term nexus.value = #input_point_2_value nexus.value
scoreboard players operation #term nexus.value *= #math_point_3_value_squared nexus.value
scoreboard players operation #denominator nexus.value = #term nexus.value

scoreboard players operation #term nexus.value = #math_point_2_value_squared nexus.value
scoreboard players operation #term nexus.value *= #input_point_3_value nexus.value
scoreboard players operation #denominator nexus.value -= #term nexus.value

scoreboard players operation #term nexus.value = #input_point_2_value nexus.value
scoreboard players operation #term nexus.value *= #math_point_3_value_cubed nexus.value
scoreboard players operation #denominator nexus.value -= #term nexus.value

scoreboard players operation #term nexus.value = #math_point_2_value_cubed nexus.value
scoreboard players operation #term nexus.value *= #input_point_3_value nexus.value
scoreboard players operation #denominator nexus.value += #term nexus.value

scoreboard players operation #term nexus.value = #math_point_2_value_squared nexus.value
scoreboard players operation #term nexus.value *= #math_point_3_value_cubed nexus.value
scoreboard players operation #denominator nexus.value += #term nexus.value

scoreboard players operation #term nexus.value = #math_point_2_value_cubed nexus.value
scoreboard players operation #term nexus.value *= #math_point_3_value_squared nexus.value
scoreboard players operation #denominator nexus.value -= #term nexus.value

scoreboard players operation #denominator nexus.value *= #3 nexus.value
scoreboard players operation #denominator nexus.value /= #1000 nexus.value







# Compute control points

scoreboard players operation #power nexus.value = #math_point_3_value_squared nexus.value
scoreboard players operation #power nexus.value -= #math_point_3_value_cubed nexus.value

scoreboard players operation #term nexus.value = #input_point_4 nexus.value
scoreboard players operation #term nexus.value -= #input_point_1 nexus.value
scoreboard players operation #term nexus.value *= #math_point_2_value_cubed nexus.value
scoreboard players operation #term nexus.value /= #1000 nexus.value
scoreboard players operation #term nexus.value += #input_point_2 nexus.value
scoreboard players operation #term nexus.value -= #input_point_1 nexus.value
scoreboard players operation #term nexus.value *= #power nexus.value
scoreboard players operation #output_point_2 nexus.value = #term nexus.value

scoreboard players operation #power nexus.value = #math_point_2_value_squared nexus.value
scoreboard players operation #power nexus.value -= #math_point_2_value_cubed nexus.value

scoreboard players operation #term nexus.value = #input_point_4 nexus.value
scoreboard players operation #term nexus.value -= #input_point_1 nexus.value
scoreboard players operation #term nexus.value *= #math_point_3_value_cubed nexus.value
scoreboard players operation #term nexus.value /= #1000 nexus.value
scoreboard players operation #term nexus.value += #input_point_3 nexus.value
scoreboard players operation #term nexus.value -= #input_point_1 nexus.value
scoreboard players operation #term nexus.value *= #power nexus.value
scoreboard players operation #output_point_2 nexus.value -= #term nexus.value

scoreboard players operation #output_point_2 nexus.value /= #denominator nexus.value
scoreboard players operation #output_point_2 nexus.value += #input_point_1 nexus.value



scoreboard players operation #power nexus.value = #input_point_2_value nexus.value
scoreboard players operation #power nexus.value -= #math_point_2_value_squared nexus.value
scoreboard players operation #power nexus.value -= #math_point_2_value_squared nexus.value
scoreboard players operation #power nexus.value += #math_point_2_value_cubed nexus.value

scoreboard players operation #term nexus.value = #input_point_4 nexus.value
scoreboard players operation #term nexus.value -= #input_point_1 nexus.value
scoreboard players operation #term nexus.value *= #math_point_3_cubed nexus.value
scoreboard players operation #term nexus.value /= #1000 nexus.value
scoreboard players operation #term nexus.value += #input_point_3 nexus.value
scoreboard players operation #term nexus.value -= #input_point_1 nexus.value
scoreboard players operation #term nexus.value *= #power nexus.value
scoreboard players operation #output_point_3 nexus.value = #term nexus.value

scoreboard players operation #power nexus.value = #input_point_3_value nexus.value
scoreboard players operation #power nexus.value -= #math_point_3_value_squared nexus.value
scoreboard players operation #power nexus.value -= #math_point_3_value_squared nexus.value
scoreboard players operation #power nexus.value += #math_point_3_value_cubed nexus.value

scoreboard players operation #term nexus.value = #input_point_4 nexus.value
scoreboard players operation #term nexus.value -= #input_point_1 nexus.value
scoreboard players operation #term nexus.value *= #math_point_2_cubed nexus.value
scoreboard players operation #term nexus.value /= #1000 nexus.value
scoreboard players operation #term nexus.value += #input_point_2 nexus.value
scoreboard players operation #term nexus.value -= #input_point_1 nexus.value
scoreboard players operation #term nexus.value *= #power nexus.value
scoreboard players operation #output_point_3 nexus.value -= #term nexus.value

scoreboard players operation #output_point_3 nexus.value /= #denominator nexus.value
scoreboard players operation #output_point_3 nexus.value += #input_point_1 nexus.value