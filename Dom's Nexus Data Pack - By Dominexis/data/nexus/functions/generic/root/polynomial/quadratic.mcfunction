# Compute roots

scoreboard players operation #input nexus.value = #input_coefficient_b nexus.value
scoreboard players operation #input nexus.value *= #input_coefficient_b nexus.value
scoreboard players operation #math_polynomial nexus.value = #input_coefficient_a nexus.value
scoreboard players operation #math_polynomial nexus.value *= #input_coefficient_c nexus.value
scoreboard players operation #math_polynomial nexus.value *= #4 nexus.value
scoreboard players operation #input nexus.value -= #math_polynomial nexus.value

execute store result score #output_root_1_boolean nexus.value if score #input nexus.value matches 0..
execute if score #input_coefficient_a nexus.value matches 0 run scoreboard players set #output_root_1_boolean nexus.value 0
scoreboard players operation #output_root_2_boolean nexus.value = #output_root_1_boolean nexus.value

function nexus:generic/root/radical/square

scoreboard players operation #output_root_1 nexus.value = #input_coefficient_b nexus.value
scoreboard players operation #output_root_2 nexus.value = #input_coefficient_b nexus.value
scoreboard players operation #output_root_1 nexus.value *= #-1 nexus.value
scoreboard players operation #output_root_2 nexus.value *= #-1 nexus.value
scoreboard players operation #output_root_1 nexus.value -= #output nexus.value
scoreboard players operation #output_root_2 nexus.value += #output nexus.value
scoreboard players operation #output_root_1 nexus.value *= #scale_factor nexus.value
scoreboard players operation #output_root_2 nexus.value *= #scale_factor nexus.value

scoreboard players operation #math_polynomial nexus.value = #input_coefficient_a nexus.value
scoreboard players operation #math_polynomial nexus.value *= #2 nexus.value

scoreboard players operation #output_root_1 nexus.value /= #math_polynomial nexus.value
scoreboard players operation #output_root_2 nexus.value /= #math_polynomial nexus.value