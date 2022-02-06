# Apply delta to nearest axis

scoreboard players operation #distance_x nexus.value += #delta_x nexus.value







# Apply offset to motion

execute if score #motion_end nexus.value matches 0 run scoreboard players add #motion_x nexus.value 1000







# Run check function

execute if score #motion_end nexus.value matches 0 if score #sign_x nexus.value matches -1 positioned ~-1 ~00 ~00 run function nexus:entity/generic/motion/wp/check/main
execute if score #motion_end nexus.value matches 0 if score #sign_x nexus.value matches 01 positioned ~01 ~00 ~00 run function nexus:entity/generic/motion/wp/check/main