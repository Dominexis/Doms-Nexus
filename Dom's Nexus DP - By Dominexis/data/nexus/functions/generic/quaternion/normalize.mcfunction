# Normalize quaternion

scoreboard players operation #math_quaternion_r nexus.value = #input_quaternion_r nexus.value
scoreboard players operation #math_quaternion_i nexus.value = #input_quaternion_i nexus.value
scoreboard players operation #math_quaternion_j nexus.value = #input_quaternion_j nexus.value
scoreboard players operation #math_quaternion_k nexus.value = #input_quaternion_k nexus.value
scoreboard players operation #math_quaternion_r nexus.value *= #math_quaternion_r nexus.value
scoreboard players operation #math_quaternion_i nexus.value *= #math_quaternion_i nexus.value
scoreboard players operation #math_quaternion_j nexus.value *= #math_quaternion_j nexus.value
scoreboard players operation #math_quaternion_k nexus.value *= #math_quaternion_k nexus.value
scoreboard players operation #input nexus.value = #math_quaternion_r nexus.value
scoreboard players operation #input nexus.value += #math_quaternion_i nexus.value
scoreboard players operation #input nexus.value += #math_quaternion_j nexus.value
scoreboard players operation #input nexus.value += #math_quaternion_k nexus.value

function nexus:generic/root/radical/square

scoreboard players operation #output_quaternion_r nexus.value = #input_quaternion_r nexus.value
scoreboard players operation #output_quaternion_i nexus.value = #input_quaternion_i nexus.value
scoreboard players operation #output_quaternion_j nexus.value = #input_quaternion_j nexus.value
scoreboard players operation #output_quaternion_k nexus.value = #input_quaternion_k nexus.value
scoreboard players operation #output_quaternion_r nexus.value *= #1000 nexus.value
scoreboard players operation #output_quaternion_i nexus.value *= #1000 nexus.value
scoreboard players operation #output_quaternion_j nexus.value *= #1000 nexus.value
scoreboard players operation #output_quaternion_k nexus.value *= #1000 nexus.value
scoreboard players operation #output_quaternion_r nexus.value /= #output nexus.value
scoreboard players operation #output_quaternion_i nexus.value /= #output nexus.value
scoreboard players operation #output_quaternion_j nexus.value /= #output nexus.value
scoreboard players operation #output_quaternion_k nexus.value /= #output nexus.value

execute if score #output nexus.value matches 0 run scoreboard players set #output_quaternion_r nexus.value 1000