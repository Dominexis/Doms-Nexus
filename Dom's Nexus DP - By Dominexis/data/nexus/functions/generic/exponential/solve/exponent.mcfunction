# Compute function

scoreboard players operation #input nexus.value = #input_base nexus.value
function nexus:generic/exponential/natural/logarithm
scoreboard players operation #math_exponential_denominator nexus.value = #output nexus.value
scoreboard players operation #input nexus.value = #input_solution nexus.value
function nexus:generic/exponential/natural/logarithm
scoreboard players operation #output nexus.value *= #1000 nexus.value
scoreboard players operation #output nexus.value /= #math_exponential_denominator nexus.value