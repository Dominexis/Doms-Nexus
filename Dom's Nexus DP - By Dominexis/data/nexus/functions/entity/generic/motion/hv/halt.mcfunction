# Set numerator and denominator

execute if score #collision_x nexus.value matches 1 run scoreboard players operation #halt_numerator nexus.value = #motion_head_x nexus.value
execute if score #collision_y nexus.value matches 1 run scoreboard players operation #halt_numerator nexus.value = #motion_head_y nexus.value
execute if score #collision_z nexus.value matches 1 run scoreboard players operation #halt_numerator nexus.value = #motion_head_z nexus.value
execute if score #collision_x nexus.value matches 1 run scoreboard players operation #halt_denominator nexus.value = #motion_limit_x nexus.value
execute if score #collision_y nexus.value matches 1 run scoreboard players operation #halt_denominator nexus.value = #motion_limit_y nexus.value
execute if score #collision_z nexus.value matches 1 run scoreboard players operation #halt_denominator nexus.value = #motion_limit_z nexus.value







# Modify motion values

scoreboard players operation #motion_head_x nexus.value = #motion_limit_x nexus.value
scoreboard players operation #motion_head_y nexus.value = #motion_limit_y nexus.value
scoreboard players operation #motion_head_z nexus.value = #motion_limit_z nexus.value
scoreboard players operation #motion_head_x nexus.value *= #halt_numerator nexus.value
scoreboard players operation #motion_head_y nexus.value *= #halt_numerator nexus.value
scoreboard players operation #motion_head_z nexus.value *= #halt_numerator nexus.value
scoreboard players operation #motion_head_x nexus.value /= #halt_denominator nexus.value
scoreboard players operation #motion_head_y nexus.value /= #halt_denominator nexus.value
scoreboard players operation #motion_head_z nexus.value /= #halt_denominator nexus.value