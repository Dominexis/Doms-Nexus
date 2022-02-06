# Apply delta to nearest axis

scoreboard players operation #distance_y nexus.value += #delta_y nexus.value







# Change sub-block position

scoreboard players add #subblock_y nexus.value 1







# Apply offset to motion

execute if score #motion_end nexus.value matches 0 run scoreboard players add #motion_y nexus.value 500







# Run check function

execute if score #motion_end nexus.value matches 0 if score #sign_y nexus.value matches -1 positioned ~0000 ~-0.5 ~0000 run function nexus:entity/generic/motion/hp/check/main
execute if score #motion_end nexus.value matches 0 if score #sign_y nexus.value matches 01 positioned ~0000 ~00.5 ~0000 run function nexus:entity/generic/motion/hp/check/main