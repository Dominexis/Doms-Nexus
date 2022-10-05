# Apply delta to nearest axis

scoreboard players operation #distance_z nexus.value += #delta_z nexus.value







# Apply offset to motion

execute if score #motion_end nexus.value matches 0 run scoreboard players add #motion_z nexus.value 1000







# Run check function

execute if score #motion_end nexus.value matches 0 if score #sign_z nexus.value matches -1 positioned ~00 ~00 ~-1 run function nexus:entity/generic/motion/wp/check/main
execute if score #motion_end nexus.value matches 0 if score #sign_z nexus.value matches 01 positioned ~00 ~00 ~01 run function nexus:entity/generic/motion/wp/check/main