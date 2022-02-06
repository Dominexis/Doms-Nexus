# Set collision axis

scoreboard players set #collision_y nexus.value 1







# Kick back values

scoreboard players remove #motion_y nexus.value 1001







# Cap distance to prevent motion along that axis

scoreboard players set #distance_y nexus.value 2147483647







# Halt

execute if score #motion_halt_boolean nexus.value matches 1 run scoreboard players set #motion_end nexus.value 1