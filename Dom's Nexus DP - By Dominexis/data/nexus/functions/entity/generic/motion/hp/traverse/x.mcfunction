# Apply delta to nearest axis

scoreboard players operation #distance_x nexus.value += #delta_x nexus.value







# Change sub-block position

scoreboard players add #subblock_x nexus.value 1







# Apply offset to motion

execute if score #motion_end nexus.value matches 0 run scoreboard players add #motion_x nexus.value 500







# Run check function

execute if score #motion_end nexus.value matches 0 if score #sign_x nexus.value matches -1 positioned ~-0.5 ~0000 ~0000 run function nexus:entity/generic/motion/hp/check/main
execute if score #motion_end nexus.value matches 0 if score #sign_x nexus.value matches 01 positioned ~00.5 ~0000 ~0000 run function nexus:entity/generic/motion/hp/check/main