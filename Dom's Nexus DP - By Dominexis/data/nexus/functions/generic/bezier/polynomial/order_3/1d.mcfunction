# Compute polynomial

scoreboard players operation #power nexus.value = #input nexus.value

scoreboard players operation #term nexus.value = #bezier_coefficient_1 nexus.value
scoreboard players operation #term nexus.value *= #power nexus.value
scoreboard players operation #output nexus.value = #term nexus.value

scoreboard players operation #power nexus.value *= #input nexus.value
scoreboard players operation #power nexus.value /= #1000 nexus.value

scoreboard players operation #term nexus.value = #bezier_coefficient_2 nexus.value
scoreboard players operation #term nexus.value *= #power nexus.value
scoreboard players operation #output nexus.value += #term nexus.value

scoreboard players operation #power nexus.value *= #input nexus.value
scoreboard players operation #power nexus.value /= #1000 nexus.value

scoreboard players operation #term nexus.value = #bezier_coefficient_3 nexus.value
scoreboard players operation #term nexus.value *= #power nexus.value
scoreboard players operation #output nexus.value += #term nexus.value

scoreboard players operation #output nexus.value /= #1000 nexus.value
scoreboard players operation #output nexus.value += #bezier_coefficient_0 nexus.value