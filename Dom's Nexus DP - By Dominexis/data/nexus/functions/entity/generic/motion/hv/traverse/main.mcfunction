# Cancel axis if motion has exceeded native value

execute if score #motion_head_x nexus.value > #motion_limit_x nexus.value run scoreboard players set #distance_head_x nexus.value 2147483647
execute if score #motion_head_y nexus.value > #motion_limit_y nexus.value run scoreboard players set #distance_head_y nexus.value 2147483647
execute if score #motion_head_z nexus.value > #motion_limit_z nexus.value run scoreboard players set #distance_head_z nexus.value 2147483647
execute if score #motion_tail_x nexus.value > #motion_limit_x nexus.value run scoreboard players set #distance_tail_x nexus.value 2147483647
execute if score #motion_tail_y nexus.value > #motion_limit_y nexus.value run scoreboard players set #distance_tail_y nexus.value 2147483647
execute if score #motion_tail_z nexus.value > #motion_limit_z nexus.value run scoreboard players set #distance_tail_z nexus.value 2147483647







# Stop if motion ceases

execute if score #distance_head_x nexus.value matches 2147483647 if score #distance_head_y nexus.value matches 2147483647 if score #distance_head_z nexus.value matches 2147483647 if score #distance_tail_x nexus.value matches 2147483647 if score #distance_tail_y nexus.value matches 2147483647 if score #distance_tail_z nexus.value matches 2147483647 run scoreboard players set #motion_end nexus.value 1







# Find nearest axis

scoreboard players operation #shortest_distance nexus.value = #distance_head_x nexus.value
scoreboard players operation #shortest_distance nexus.value < #distance_head_y nexus.value
scoreboard players operation #shortest_distance nexus.value < #distance_head_z nexus.value
scoreboard players operation #shortest_distance nexus.value < #distance_tail_x nexus.value
scoreboard players operation #shortest_distance nexus.value < #distance_tail_y nexus.value
scoreboard players operation #shortest_distance nexus.value < #distance_tail_z nexus.value

execute if score #shortest_distance nexus.value = #distance_tail_z nexus.value run scoreboard players set #nearest_axis nexus.value 5
execute if score #shortest_distance nexus.value = #distance_tail_y nexus.value run scoreboard players set #nearest_axis nexus.value 4
execute if score #shortest_distance nexus.value = #distance_tail_x nexus.value run scoreboard players set #nearest_axis nexus.value 3
execute if score #shortest_distance nexus.value = #distance_head_z nexus.value run scoreboard players set #nearest_axis nexus.value 2
execute if score #shortest_distance nexus.value = #distance_head_y nexus.value run scoreboard players set #nearest_axis nexus.value 1
execute if score #shortest_distance nexus.value = #distance_head_x nexus.value run scoreboard players set #nearest_axis nexus.value 0







# Process data based on nearest axis

execute if score #nearest_axis nexus.value matches 0 run function nexus:entity/generic/motion/hv/traverse/head_x
execute if score #nearest_axis nexus.value matches 1 run function nexus:entity/generic/motion/hv/traverse/head_y
execute if score #nearest_axis nexus.value matches 2 run function nexus:entity/generic/motion/hv/traverse/head_z
execute if score #nearest_axis nexus.value matches 3 run function nexus:entity/generic/motion/hv/traverse/tail_x
execute if score #nearest_axis nexus.value matches 4 run function nexus:entity/generic/motion/hv/traverse/tail_y
execute if score #nearest_axis nexus.value matches 5 run function nexus:entity/generic/motion/hv/traverse/tail_z







# Repeat step if check failed

execute if score #motion_end nexus.value matches 0 run function nexus:entity/generic/motion/hv/traverse/main