# Set collision axis

scoreboard players set #collision_z nexus.value 1







# Kick back values

scoreboard players remove #motion_head_z nexus.value 1001
scoreboard players remove #hitbox_z nexus.value 1







# Cap distance to prevent motion along that axis

scoreboard players set #distance_head_z nexus.value 2147483647
scoreboard players set #distance_tail_z nexus.value 2147483647







# Halt

execute if score #motion_halt_boolean nexus.value matches 1 run scoreboard players set #motion_end nexus.value 1