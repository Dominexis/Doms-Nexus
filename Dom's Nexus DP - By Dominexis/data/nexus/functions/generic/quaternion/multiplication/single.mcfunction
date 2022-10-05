# Multiply quaternions

scoreboard players operation #math_quaternion_r nexus.value = #input_quaternion_1_r nexus.value
scoreboard players operation #math_quaternion_r nexus.value *= #input_quaternion_2_r nexus.value
scoreboard players operation #math_quaternion_i nexus.value = #input_quaternion_1_i nexus.value
scoreboard players operation #math_quaternion_i nexus.value *= #input_quaternion_2_i nexus.value
scoreboard players operation #math_quaternion_j nexus.value = #input_quaternion_1_j nexus.value
scoreboard players operation #math_quaternion_j nexus.value *= #input_quaternion_2_j nexus.value
scoreboard players operation #math_quaternion_k nexus.value = #input_quaternion_1_k nexus.value
scoreboard players operation #math_quaternion_k nexus.value *= #input_quaternion_2_k nexus.value

scoreboard players operation #output_quaternion_r nexus.value = #math_quaternion_r nexus.value
scoreboard players operation #output_quaternion_r nexus.value -= #math_quaternion_i nexus.value
scoreboard players operation #output_quaternion_r nexus.value -= #math_quaternion_j nexus.value
scoreboard players operation #output_quaternion_r nexus.value -= #math_quaternion_k nexus.value
scoreboard players operation #output_quaternion_r nexus.value /= #1000 nexus.value



scoreboard players operation #math_quaternion_r nexus.value = #input_quaternion_1_r nexus.value
scoreboard players operation #math_quaternion_r nexus.value *= #input_quaternion_2_i nexus.value
scoreboard players operation #math_quaternion_i nexus.value = #input_quaternion_1_i nexus.value
scoreboard players operation #math_quaternion_i nexus.value *= #input_quaternion_2_r nexus.value
scoreboard players operation #math_quaternion_j nexus.value = #input_quaternion_1_j nexus.value
scoreboard players operation #math_quaternion_j nexus.value *= #input_quaternion_2_k nexus.value
scoreboard players operation #math_quaternion_k nexus.value = #input_quaternion_1_k nexus.value
scoreboard players operation #math_quaternion_k nexus.value *= #input_quaternion_2_j nexus.value

scoreboard players operation #output_quaternion_i nexus.value = #math_quaternion_r nexus.value
scoreboard players operation #output_quaternion_i nexus.value += #math_quaternion_i nexus.value
scoreboard players operation #output_quaternion_i nexus.value += #math_quaternion_j nexus.value
scoreboard players operation #output_quaternion_i nexus.value -= #math_quaternion_k nexus.value
scoreboard players operation #output_quaternion_i nexus.value /= #1000 nexus.value



scoreboard players operation #math_quaternion_r nexus.value = #input_quaternion_1_r nexus.value
scoreboard players operation #math_quaternion_r nexus.value *= #input_quaternion_2_j nexus.value
scoreboard players operation #math_quaternion_i nexus.value = #input_quaternion_1_i nexus.value
scoreboard players operation #math_quaternion_i nexus.value *= #input_quaternion_2_k nexus.value
scoreboard players operation #math_quaternion_j nexus.value = #input_quaternion_1_j nexus.value
scoreboard players operation #math_quaternion_j nexus.value *= #input_quaternion_2_r nexus.value
scoreboard players operation #math_quaternion_k nexus.value = #input_quaternion_1_k nexus.value
scoreboard players operation #math_quaternion_k nexus.value *= #input_quaternion_2_i nexus.value

scoreboard players operation #output_quaternion_j nexus.value = #math_quaternion_r nexus.value
scoreboard players operation #output_quaternion_j nexus.value -= #math_quaternion_i nexus.value
scoreboard players operation #output_quaternion_j nexus.value += #math_quaternion_j nexus.value
scoreboard players operation #output_quaternion_j nexus.value += #math_quaternion_k nexus.value
scoreboard players operation #output_quaternion_j nexus.value /= #1000 nexus.value



scoreboard players operation #math_quaternion_r nexus.value = #input_quaternion_1_r nexus.value
scoreboard players operation #math_quaternion_r nexus.value *= #input_quaternion_2_k nexus.value
scoreboard players operation #math_quaternion_i nexus.value = #input_quaternion_1_i nexus.value
scoreboard players operation #math_quaternion_i nexus.value *= #input_quaternion_2_j nexus.value
scoreboard players operation #math_quaternion_j nexus.value = #input_quaternion_1_j nexus.value
scoreboard players operation #math_quaternion_j nexus.value *= #input_quaternion_2_i nexus.value
scoreboard players operation #math_quaternion_k nexus.value = #input_quaternion_1_k nexus.value
scoreboard players operation #math_quaternion_k nexus.value *= #input_quaternion_2_r nexus.value

scoreboard players operation #output_quaternion_k nexus.value = #math_quaternion_r nexus.value
scoreboard players operation #output_quaternion_k nexus.value += #math_quaternion_i nexus.value
scoreboard players operation #output_quaternion_k nexus.value -= #math_quaternion_j nexus.value
scoreboard players operation #output_quaternion_k nexus.value += #math_quaternion_k nexus.value
scoreboard players operation #output_quaternion_k nexus.value /= #1000 nexus.value