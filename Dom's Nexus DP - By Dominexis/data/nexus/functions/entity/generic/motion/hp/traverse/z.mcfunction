# Apply delta to nearest axis

scoreboard players operation #distance_z nexus.value += #delta_z nexus.value







# Change sub-block position

scoreboard players add #subblock_z nexus.value 1







# Apply offset to motion

execute if score #motion_end nexus.value matches 0 run scoreboard players add #motion_z nexus.value 500







# Run check function

execute if score #motion_end nexus.value matches 0 if score #sign_z nexus.value matches -1 positioned ~0000 ~0000 ~-0.5 run function nexus:entity/generic/motion/hp/check/main
execute if score #motion_end nexus.value matches 0 if score #sign_z nexus.value matches 01 positioned ~0000 ~0000 ~00.5 run function nexus:entity/generic/motion/hp/check/main