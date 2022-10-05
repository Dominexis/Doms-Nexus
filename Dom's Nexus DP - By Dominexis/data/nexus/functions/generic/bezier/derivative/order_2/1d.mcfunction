# Compute polynomial

scoreboard players operation #power nexus.value = #input nexus.value

scoreboard players operation #term nexus.value = #bezier_coefficient_2 nexus.value
scoreboard players operation #term nexus.value *= #power nexus.value
scoreboard players operation #term nexus.value *= #2 nexus.value
scoreboard players operation #output nexus.value = #term nexus.value

scoreboard players operation #output nexus.value /= #1000 nexus.value
scoreboard players operation #output nexus.value += #bezier_coefficient_1 nexus.value