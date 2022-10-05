# Transform input

scoreboard players operation #output nexus.value = #input nexus.value
scoreboard players remove #output nexus.value 1800
scoreboard players operation #output nexus.value %= #1800 nexus.value
scoreboard players remove #output nexus.value 900







# Compute Bhaskara's approximation

scoreboard players operation #output nexus.value *= #output nexus.value
scoreboard players operation #math_trigonometry_0 nexus.value = #output nexus.value
scoreboard players add #math_trigonometry_0 nexus.value 3240000
scoreboard players operation #math_trigonometry_0 nexus.value /= #1000 nexus.value
scoreboard players operation #output nexus.value *= #4 nexus.value
scoreboard players operation #output nexus.value *= #-1 nexus.value
scoreboard players add #output nexus.value 3240000
scoreboard players operation #output nexus.value /= #math_trigonometry_0 nexus.value







# Apply sign

scoreboard players operation #math_trigonometry_0 nexus.value = #input nexus.value
scoreboard players operation #math_trigonometry_0 nexus.value %= #3600 nexus.value
execute if score #math_trigonometry_0 nexus.value matches 1800.. run scoreboard players operation #output nexus.value *= #-1 nexus.value