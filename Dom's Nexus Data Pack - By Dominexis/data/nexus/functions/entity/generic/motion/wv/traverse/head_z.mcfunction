# Apply delta to nearest axis

scoreboard players operation #distance_head_z nexus.value += #delta_z nexus.value







# Change size of hitbox

scoreboard players add #hitbox_z nexus.value 1







# Apply offset to motion

execute if score #motion_end nexus.value matches 0 run scoreboard players add #motion_head_z nexus.value 1000







# Run check function

execute if score #motion_end nexus.value matches 0 if score #sign_z nexus.value matches -1 positioned ~00 ~00 ~-1 run function nexus:entity/generic/motion/wv/check/main
execute if score #motion_end nexus.value matches 0 if score #sign_z nexus.value matches 01 run function nexus:entity/generic/motion/wv/check/main