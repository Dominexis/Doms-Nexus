# Compute numerator

scoreboard players operation #output nexus.value = #input nexus.value
scoreboard players operation #output nexus.value *= #amplitude nexus.value







# Compute denominator

scoreboard players operation #denominator nexus.value = #input nexus.value
execute if score #denominator nexus.value matches ..-1 run scoreboard players operation #denominator nexus.value *= #-1 nexus.value
scoreboard players operation #denominator nexus.value += #rate nexus.value







# Compute output

scoreboard players operation #output nexus.value /= #denominator nexus.value