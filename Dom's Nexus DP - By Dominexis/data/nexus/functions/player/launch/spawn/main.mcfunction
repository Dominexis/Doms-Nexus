# Spawn creepers

scoreboard players set #scale_factor nexus.value 1

scoreboard players operation #input_vector_x nexus.value = #creeper_1_x nexus.value
scoreboard players operation #input_vector_y nexus.value = #creeper_1_y nexus.value
scoreboard players operation #input_vector_z nexus.value = #creeper_1_z nexus.value
function nexus:generic/vector/to_gimbal/3d
scoreboard players operation #entity_yaw nexus.value = #output_yaw nexus.value
scoreboard players operation #entity_pitch nexus.value = #output_pitch nexus.value
function nexus:entity/generic/data/set/fakeplayer/rot

scoreboard players operation #creepers_left nexus.value = #creeper_count nexus.value
execute at @s positioned ^ ^ ^0.01 run function nexus:player/launch/spawn/creeper



scoreboard players operation #input_vector_x nexus.value = #creeper_2_x nexus.value
scoreboard players operation #input_vector_y nexus.value = #creeper_2_y nexus.value
scoreboard players operation #input_vector_z nexus.value = #creeper_2_z nexus.value
function nexus:generic/vector/to_gimbal/3d
scoreboard players operation #entity_yaw nexus.value = #output_yaw nexus.value
scoreboard players operation #entity_pitch nexus.value = #output_pitch nexus.value
function nexus:entity/generic/data/set/fakeplayer/rot

scoreboard players operation #creepers_left nexus.value = #creeper_count nexus.value
execute at @s positioned ^ ^ ^0.01 run function nexus:player/launch/spawn/creeper







# Assign creeper IDs

execute at @s positioned ~ ~8192 ~ run scoreboard players operation @e[type=creeper,distance=..4,tag=nexus.entity.target.launch] nexus.id = #local nexus.id
execute at @s positioned ~ ~8192 ~ run tag @e[type=creeper,distance=..4,tag=nexus.launch] remove nexus.entity.target.launch







# Terminate

kill @s