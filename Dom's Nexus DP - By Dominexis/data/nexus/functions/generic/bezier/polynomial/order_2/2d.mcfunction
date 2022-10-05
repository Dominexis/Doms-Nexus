# Compute polynomial

scoreboard players operation #power nexus.value = #input nexus.value



scoreboard players operation #term nexus.value = #bezier_coefficient_1_x nexus.value
scoreboard players operation #term nexus.value *= #power nexus.value
scoreboard players operation #output_x nexus.value = #term nexus.value

scoreboard players operation #term nexus.value = #bezier_coefficient_1_y nexus.value
scoreboard players operation #term nexus.value *= #power nexus.value
scoreboard players operation #output_y nexus.value = #term nexus.value



scoreboard players operation #power nexus.value *= #input nexus.value
scoreboard players operation #power nexus.value /= #1000 nexus.value



scoreboard players operation #term nexus.value = #bezier_coefficient_2_x nexus.value
scoreboard players operation #term nexus.value *= #power nexus.value
scoreboard players operation #output_x nexus.value += #term nexus.value

scoreboard players operation #term nexus.value = #bezier_coefficient_2_y nexus.value
scoreboard players operation #term nexus.value *= #power nexus.value
scoreboard players operation #output_y nexus.value += #term nexus.value



scoreboard players operation #output_x nexus.value /= #1000 nexus.value
scoreboard players operation #output_x nexus.value += #bezier_coefficient_0_x nexus.value

scoreboard players operation #output_y nexus.value /= #1000 nexus.value
scoreboard players operation #output_y nexus.value += #bezier_coefficient_0_y nexus.value