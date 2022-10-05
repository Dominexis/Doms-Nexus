# Spawn marker entity

execute at @s anchored eyes run summon marker ^ ^ ^ {Tags:["nexus.entity","nexus.player.launch"]}








# Compute force from creeper explosions

scoreboard players set #creeper_power nexus.value 1810
execute at @e[type=marker,tag=nexus.player.launch,limit=1] if entity @s[distance=..1.28] run scoreboard players set #creeper_power nexus.value 1635
execute at @e[type=marker,tag=nexus.player.launch,limit=1] if entity @s[distance=..0.41] run scoreboard players set #creeper_power nexus.value 1200

scoreboard players operation #math_00 nexus.value = #creeper_power nexus.value
scoreboard players operation #math_00 nexus.value *= #2 nexus.value
scoreboard players operation #creeper_count nexus.value = #motion_vector_magnitude nexus.value
scoreboard players operation #creeper_count nexus.value /= #math_00 nexus.value
scoreboard players add #creeper_count nexus.value 1







# Compute creeper vectors

scoreboard players operation #math_00 nexus.value *= #creeper_count nexus.value
scoreboard players operation #math_cosine nexus.value = #motion_vector_magnitude nexus.value
scoreboard players operation #math_cosine nexus.value *= #1000 nexus.value
scoreboard players operation #math_cosine nexus.value /= #math_00 nexus.value

scoreboard players operation #input nexus.value = #math_cosine nexus.value
scoreboard players operation #input nexus.value *= #math_cosine nexus.value
scoreboard players operation #input nexus.value *= #-1 nexus.value
scoreboard players add #input nexus.value 1000000
function nexus:generic/root/radical/square
scoreboard players operation #math_sine nexus.value = #output nexus.value



scoreboard players operation #math_00 nexus.value = #math_sine nexus.value
scoreboard players operation #math_00 nexus.value *= #motion_vector_y nexus.value
scoreboard players operation #creeper_1_hor nexus.value = #math_cosine nexus.value
scoreboard players operation #creeper_1_hor nexus.value *= #horizontal_magnitude nexus.value
scoreboard players operation #creeper_1_hor nexus.value -= #math_00 nexus.value
scoreboard players operation #creeper_1_hor nexus.value /= #1000 nexus.value

scoreboard players operation #math_00 nexus.value = #math_cosine nexus.value
scoreboard players operation #math_00 nexus.value *= #motion_vector_y nexus.value
scoreboard players operation #creeper_1_y nexus.value = #math_sine nexus.value
scoreboard players operation #creeper_1_y nexus.value *= #horizontal_magnitude nexus.value
scoreboard players operation #creeper_1_y nexus.value += #math_00 nexus.value
scoreboard players operation #creeper_1_y nexus.value /= #1000 nexus.value

scoreboard players operation #math_00 nexus.value = #math_sine nexus.value
scoreboard players operation #math_00 nexus.value *= #motion_vector_y nexus.value
scoreboard players operation #creeper_2_hor nexus.value = #math_cosine nexus.value
scoreboard players operation #creeper_2_hor nexus.value *= #horizontal_magnitude nexus.value
scoreboard players operation #creeper_2_hor nexus.value += #math_00 nexus.value
scoreboard players operation #creeper_2_hor nexus.value /= #1000 nexus.value

scoreboard players operation #math_00 nexus.value = #math_cosine nexus.value
scoreboard players operation #math_00 nexus.value *= #motion_vector_y nexus.value
scoreboard players operation #creeper_2_y nexus.value = #math_sine nexus.value
scoreboard players operation #creeper_2_y nexus.value *= #horizontal_magnitude nexus.value
scoreboard players operation #creeper_2_y nexus.value *= #-1 nexus.value
scoreboard players operation #creeper_2_y nexus.value += #math_00 nexus.value
scoreboard players operation #creeper_2_y nexus.value /= #1000 nexus.value



scoreboard players operation #creeper_1_x nexus.value = #horizontal_x nexus.value
scoreboard players operation #creeper_1_x nexus.value *= #creeper_1_hor nexus.value
scoreboard players operation #creeper_1_x nexus.value /= #1000 nexus.value

scoreboard players operation #creeper_1_z nexus.value = #horizontal_z nexus.value
scoreboard players operation #creeper_1_z nexus.value *= #creeper_1_hor nexus.value
scoreboard players operation #creeper_1_z nexus.value /= #1000 nexus.value

scoreboard players operation #creeper_2_x nexus.value = #horizontal_x nexus.value
scoreboard players operation #creeper_2_x nexus.value *= #creeper_2_hor nexus.value
scoreboard players operation #creeper_2_x nexus.value /= #1000 nexus.value

scoreboard players operation #creeper_2_z nexus.value = #horizontal_z nexus.value
scoreboard players operation #creeper_2_z nexus.value *= #creeper_2_hor nexus.value
scoreboard players operation #creeper_2_z nexus.value /= #1000 nexus.value



scoreboard players operation #creeper_1_x nexus.value *= #-1 nexus.value
scoreboard players operation #creeper_1_y nexus.value *= #-1 nexus.value
scoreboard players operation #creeper_1_z nexus.value *= #-1 nexus.value

scoreboard players operation #creeper_2_x nexus.value *= #-1 nexus.value
scoreboard players operation #creeper_2_y nexus.value *= #-1 nexus.value
scoreboard players operation #creeper_2_z nexus.value *= #-1 nexus.value







# Spawn entities

summon area_effect_cloud ~ ~2048 ~ {Tags:["nexus.launch"],WaitTime:0,Duration:1,Age:-1,Radius:0.0f,ReapplicationDelay:-1,Effects:[{Id:7,Amplifier:0b,Duration:1}]}
summon bat ~ ~2048 ~ {Tags:["nexus.launch","nexus.launch.pre"],DeathLootTable:"",NoAI:1b,Silent:1b,Health:1.0f,PersistenceRequired:1b}

scoreboard players operation #local nexus.id = @s nexus.id
execute as @e[type=marker,tag=nexus.player.launch,limit=1] run function nexus:player/launch/spawn/main

summon area_effect_cloud ~ ~4096 ~ {Tags:["nexus.launch"],WaitTime:0,Duration:1,Age:-1,Radius:0.0f,ReapplicationDelay:-1,Effects:[{Id:7,Amplifier:0b,Duration:1}]}
summon bat ~ ~4096 ~ {Tags:["nexus.launch","nexus.launch.post"],DeathLootTable:"",NoAI:1b,Silent:1b,Health:1.0f,PersistenceRequired:1b}

data modify storage nexus:data tag.Owner set value [I;0,0,0,0]
execute store result storage nexus:data tag.Owner[0] int 1 run scoreboard players get @s nexus.uuid_0
execute store result storage nexus:data tag.Owner[1] int 1 run scoreboard players get @s nexus.uuid_1
execute store result storage nexus:data tag.Owner[2] int 1 run scoreboard players get @s nexus.uuid_2
execute store result storage nexus:data tag.Owner[3] int 1 run scoreboard players get @s nexus.uuid_3

execute positioned ~ ~2048 ~ as @e[type=area_effect_cloud,tag=nexus.launch,distance=..1,limit=1] run function nexus:player/launch/owner
execute positioned ~ ~4096 ~ as @e[type=area_effect_cloud,tag=nexus.launch,distance=..1,limit=1] run function nexus:player/launch/owner