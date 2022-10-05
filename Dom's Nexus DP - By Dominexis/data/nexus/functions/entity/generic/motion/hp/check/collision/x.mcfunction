# Set collision axis

scoreboard players set #collision_x nexus.value 1







# Kick back values

scoreboard players remove #motion_x nexus.value 501
scoreboard players add #subblock_x nexus.value 1
scoreboard players operation #subblock_x nexus.value %= #2 nexus.value







# Cap distance to prevent motion along that axis

scoreboard players set #distance_x nexus.value 2147483647







# Halt

execute if score #motion_halt_boolean nexus.value matches 1 run scoreboard players set #motion_end nexus.value 1