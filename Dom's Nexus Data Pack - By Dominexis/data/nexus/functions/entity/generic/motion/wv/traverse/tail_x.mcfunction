# Apply delta to nearest axis

scoreboard players operation #distance_tail_x nexus.value += #delta_x nexus.value







# Change size of hitbox

scoreboard players remove #hitbox_x nexus.value 1







# Apply offset to motion

execute if score #motion_end nexus.value matches 0 run scoreboard players add #motion_tail_x nexus.value 1000







# Run check function

execute if score #motion_end nexus.value matches 0 if score #sign_x nexus.value matches 01 positioned ~01 ~00 ~00 run function nexus:entity/generic/motion/wv/traverse/main
execute if score #motion_end nexus.value matches 0 if score #sign_x nexus.value matches -1 run function nexus:entity/generic/motion/wv/traverse/main