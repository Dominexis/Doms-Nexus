# Get quadrant of inputs

scoreboard players set #quadrant_x nexus.value 1
execute if score #input_x nexus.value matches ..-1 run scoreboard players set #quadrant_x nexus.value -1
execute if score #input_x nexus.value matches ..-1 run scoreboard players operation #input_x nexus.value *= #-1 nexus.value

scoreboard players set #quadrant_y nexus.value 1
execute if score #input_y nexus.value matches ..-1 run scoreboard players set #quadrant_y nexus.value -1
execute if score #input_y nexus.value matches ..-1 run scoreboard players operation #input_y nexus.value *= #-1 nexus.value







# Switch around inputs if ratio demands it

scoreboard players set #arctangent_swap_boolean nexus.value 0
execute if score #input_x nexus.value < #input_y nexus.value run scoreboard players set #arctangent_swap_boolean nexus.value 1
execute if score #input_x nexus.value < #input_y nexus.value run scoreboard players operation #input_x nexus.value >< #input_y nexus.value







# Compute function

scoreboard players operation #math_trigonometry_0 nexus.value = #input_y nexus.value
scoreboard players operation #math_trigonometry_0 nexus.value *= #1000 nexus.value
scoreboard players operation #math_trigonometry_0 nexus.value /= #input_x nexus.value
scoreboard players operation #math_trigonometry_1 nexus.value = #math_trigonometry_0 nexus.value

scoreboard players set #math_trigonometry_2 nexus.value 776
scoreboard players set #math_trigonometry_3 nexus.value -2874
scoreboard players set #math_trigonometry_4 nexus.value 9951

scoreboard players operation #math_trigonometry_4 nexus.value *= #math_trigonometry_1 nexus.value
scoreboard players operation #math_trigonometry_4 nexus.value /= #10000 nexus.value

scoreboard players operation #math_trigonometry_1 nexus.value *= #math_trigonometry_0 nexus.value
scoreboard players operation #math_trigonometry_1 nexus.value /= #1000 nexus.value
scoreboard players operation #math_trigonometry_1 nexus.value *= #math_trigonometry_0 nexus.value
scoreboard players operation #math_trigonometry_1 nexus.value /= #1000 nexus.value

scoreboard players operation #math_trigonometry_3 nexus.value *= #math_trigonometry_1 nexus.value
scoreboard players operation #math_trigonometry_3 nexus.value /= #10000 nexus.value

scoreboard players operation #math_trigonometry_1 nexus.value *= #math_trigonometry_0 nexus.value
scoreboard players operation #math_trigonometry_1 nexus.value /= #1000 nexus.value
scoreboard players operation #math_trigonometry_1 nexus.value *= #math_trigonometry_0 nexus.value
scoreboard players operation #math_trigonometry_1 nexus.value /= #1000 nexus.value

scoreboard players operation #math_trigonometry_2 nexus.value *= #math_trigonometry_1 nexus.value
scoreboard players operation #math_trigonometry_2 nexus.value /= #10000 nexus.value

scoreboard players operation #output nexus.value = #math_trigonometry_2 nexus.value
scoreboard players operation #output nexus.value += #math_trigonometry_3 nexus.value
scoreboard players operation #output nexus.value += #math_trigonometry_4 nexus.value

scoreboard players operation #output nexus.value *= #900 nexus.value
scoreboard players operation #output nexus.value /= #1570 nexus.value







# Adjust for swap and quadrant

execute if score #arctangent_swap_boolean nexus.value matches 1 run scoreboard players operation #output nexus.value *= #-1 nexus.value
execute if score #arctangent_swap_boolean nexus.value matches 1 run scoreboard players add #output nexus.value 900

execute if score #quadrant_x nexus.value matches -1 if score #quadrant_y nexus.value matches -1 run scoreboard players remove #output nexus.value 1800

execute if score #quadrant_x nexus.value matches -1 if score #quadrant_y nexus.value matches 01 run scoreboard players operation #output nexus.value *= #-1 nexus.value
execute if score #quadrant_x nexus.value matches -1 if score #quadrant_y nexus.value matches 01 run scoreboard players add #output nexus.value 1800

execute if score #quadrant_x nexus.value matches 01 if score #quadrant_y nexus.value matches -1 run scoreboard players operation #output nexus.value *= #-1 nexus.value