# Compute position between keyframes

scoreboard players operation #duration nexus.value = #point_b_timestamp nexus.value
scoreboard players operation #duration nexus.value -= #point_a_timestamp nexus.value

scoreboard players operation #point_a nexus.value = #input_timestamp nexus.value
scoreboard players operation #point_a nexus.value -= #point_a_timestamp nexus.value
scoreboard players operation #input nexus.value = #point_a nexus.value

scoreboard players operation #point_b nexus.value = #input_timestamp nexus.value
scoreboard players operation #point_b nexus.value -= #point_b_timestamp nexus.value



scoreboard players operation #point_01_a nexus.value = #point_a nexus.value
scoreboard players operation #point_01_b nexus.value = #point_b nexus.value
scoreboard players operation #point_01_a nexus.value *= #point_01_a_velocity nexus.value
scoreboard players operation #point_01_b nexus.value *= #point_01_b_velocity nexus.value
scoreboard players operation #point_01_a nexus.value += #point_01_a_position nexus.value
scoreboard players operation #point_01_b nexus.value += #point_01_b_position nexus.value



scoreboard players operation #input nexus.value *= #1000 nexus.value
scoreboard players operation #input nexus.value /= #duration nexus.value
function nexus:generic/interpolation/smoothstep



scoreboard players operation #output_point_01 nexus.value = #point_01_b nexus.value
scoreboard players operation #output_point_01 nexus.value -= #point_01_a nexus.value
scoreboard players operation #output_point_01 nexus.value *= #output nexus.value
scoreboard players operation #output_point_01 nexus.value /= #1000 nexus.value
scoreboard players operation #output_point_01 nexus.value += #point_01_a nexus.value