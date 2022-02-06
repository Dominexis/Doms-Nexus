# Transform input

scoreboard players operation #math_trigonometry_0 nexus.value = #input nexus.value
scoreboard players add #math_trigonometry_0 nexus.value 900
scoreboard players operation #math_trigonometry_0 nexus.value %= #3600 nexus.value
scoreboard players remove #math_trigonometry_0 nexus.value 1800
execute if score #math_trigonometry_0 nexus.value matches 0.. run scoreboard players operation #math_trigonometry_0 nexus.value *= #-1 nexus.value
scoreboard players add #math_trigonometry_0 nexus.value 900







# Scale input

scoreboard players operation #math_trigonometry_0 nexus.value *= #1570 nexus.value
scoreboard players operation #math_trigonometry_0 nexus.value /= #900 nexus.value







# Compute Taylor

scoreboard players operation #math_trigonometry_1 nexus.value = #math_trigonometry_0 nexus.value
scoreboard players operation #math_trigonometry_0 nexus.value *= #math_trigonometry_0 nexus.value
scoreboard players operation #math_trigonometry_0 nexus.value /= #1000 nexus.value

scoreboard players set #math_trigonometry_2 nexus.value 5040
scoreboard players set #math_trigonometry_3 nexus.value 840
scoreboard players set #math_trigonometry_4 nexus.value 42

scoreboard players operation #math_trigonometry_2 nexus.value *= #math_trigonometry_1 nexus.value

scoreboard players operation #math_trigonometry_1 nexus.value *= #math_trigonometry_0 nexus.value
scoreboard players operation #math_trigonometry_1 nexus.value /= #1000 nexus.value
scoreboard players operation #math_trigonometry_3 nexus.value *= #math_trigonometry_1 nexus.value

scoreboard players operation #math_trigonometry_1 nexus.value *= #math_trigonometry_0 nexus.value
scoreboard players operation #math_trigonometry_1 nexus.value /= #1000 nexus.value
scoreboard players operation #math_trigonometry_4 nexus.value *= #math_trigonometry_1 nexus.value

scoreboard players operation #math_trigonometry_1 nexus.value *= #math_trigonometry_0 nexus.value
scoreboard players operation #math_trigonometry_1 nexus.value /= #1000 nexus.value
scoreboard players operation #math_trigonometry_5 nexus.value = #math_trigonometry_1 nexus.value

scoreboard players operation #output nexus.value = #math_trigonometry_2 nexus.value
scoreboard players operation #output nexus.value -= #math_trigonometry_3 nexus.value
scoreboard players operation #output nexus.value += #math_trigonometry_4 nexus.value
scoreboard players operation #output nexus.value -= #math_trigonometry_5 nexus.value

scoreboard players operation #output nexus.value /= #5040 nexus.value