# Apply delta to nearest axis

scoreboard players operation #distance_tail_y nexus.value += #delta_y nexus.value







# Change sub-block position

execute if score #sign_y nexus.value matches 01 run scoreboard players add #subblock_y nexus.value 1







# Change size of hitbox

scoreboard players remove #hitbox_y nexus.value 1







# Apply offset to motion

execute if score #motion_end nexus.value matches 0 run scoreboard players add #motion_tail_y nexus.value 500







# Run check function

execute if score #motion_end nexus.value matches 0 if score #sign_y nexus.value matches 01 positioned ~0000 ~00.5 ~0000 run function nexus:entity/generic/motion/hv/traverse/main
execute if score #motion_end nexus.value matches 0 if score #sign_y nexus.value matches -1 run function nexus:entity/generic/motion/hv/traverse/main