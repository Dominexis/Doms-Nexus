# Test if entity ought to climb

execute if score #motion_climb_boolean nexus.value matches 1.. if score #climb_boolean_1 nexus.value matches 1 if score #climb_boolean_2 nexus.value matches ..0 if score #climb_boolean_3 nexus.value matches ..0 run scoreboard players set #climb_amount nexus.value 1
execute if score #motion_climb_boolean nexus.value matches 2.. if score #climb_boolean_2 nexus.value matches 1 if score #climb_boolean_3 nexus.value matches ..0 run scoreboard players set #climb_amount nexus.value 2







# Check if ceiling is valid

execute if score #climb_amount nexus.value matches 1.. run function nexus:entity/generic/motion/wv/check/climb/y







# Offset Y value

execute if score #climb_amount nexus.value matches 001 run scoreboard players add @s nexus.y 1000
execute if score #climb_amount nexus.value matches 002 run scoreboard players add @s nexus.y 2000
execute if score #climb_amount nexus.value matches 1.. run scoreboard players set #motion_climbed_boolean nexus.value 1