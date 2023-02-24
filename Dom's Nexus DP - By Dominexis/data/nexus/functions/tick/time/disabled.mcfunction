# Player functions

scoreboard players add #global nexus.ticks 1
execute as @a at @s run function nexus:player/main







# Perform miscellaneous entity functions

scoreboard players add #air_toggle_timer nexus.value 1
execute if score #air_toggle_timer nexus.value matches 50.. run scoreboard players set #air_toggle_timer nexus.value 0

execute if score #feature_entity_processing nexus.value matches 1 as @e[tag=!nexus.chunk,tag=!nexus.object,tag=!nexus.no_process] unless score @s nexus.modified = #global nexus.modified at @s run function nexus:entity/process/main
execute if score #feature_entity_health nexus.value matches 1 run scoreboard players remove @e[type=#nexus:family/mob,scores={nexus.hp_time=1..}] nexus.hp_time 1
execute if score #feature_damage_sensor_ticking nexus.value matches 1 as @e[type=#nexus:generic/damage_sensor,tag=nexus.entity.damage_sensor.tick] run function nexus:entity/generic/damage_sensor/tick
execute if score #feature_player_motion nexus.value matches 1 as @e[type=marker,tag=nexus.entity.type.motion] at @s run function nexus:player/motion/entity/main

execute if score #entity_termination_boolean nexus.value matches 1 run function nexus:entity/generic/terminate/void







# Custom entity functionality

execute if score #feature_custom_entity_ticking nexus.value matches 1 as @e[type=#nexus:generic/system,tag=nexus.entity.ticking.unconditional] at @s run function nexus:entity/activate/tick/main
execute if score #feature_custom_entity_ticking nexus.value matches 1 as @e[type=#nexus:generic/system,tag=nexus.entity.ticking              ] at @s run function nexus:entity/activate/tick/main







# Chunk functionality

execute if score #feature_chunk_processing nexus.value matches 0 if score #total_chunk_entities chunk.value matches 1.. at @e[type=marker,tag=chunk.marker] run forceload remove ~ ~
execute if score #feature_chunk_processing nexus.value matches 0 if score #total_chunk_entities chunk.value matches 1.. run kill @e[type=marker,tag=chunk.marker]
execute if score #feature_chunk_processing nexus.value matches 0 run scoreboard players set #overworld_chunk_entities chunk.value 0
execute if score #feature_chunk_processing nexus.value matches 0 run scoreboard players set #the_nether_chunk_entities chunk.value 0
execute if score #feature_chunk_processing nexus.value matches 0 run scoreboard players set #the_end_chunk_entities chunk.value 0
execute if score #feature_chunk_processing nexus.value matches 0 run scoreboard players set #total_chunk_entities chunk.value 0







# Set difficulty according to minimum difficulty

execute store result score #current_difficulty nexus.value run difficulty
execute if score #feature_minimum_difficulty nexus.value matches 0 if score #current_difficulty nexus.value < #feature_minimum_difficulty nexus.value run difficulty peaceful
execute if score #feature_minimum_difficulty nexus.value matches 1 if score #current_difficulty nexus.value < #feature_minimum_difficulty nexus.value run difficulty easy
execute if score #feature_minimum_difficulty nexus.value matches 2 if score #current_difficulty nexus.value < #feature_minimum_difficulty nexus.value run difficulty normal
execute if score #feature_minimum_difficulty nexus.value matches 3 if score #current_difficulty nexus.value < #feature_minimum_difficulty nexus.value run difficulty hard







# Miscellaneous ticking functions

function #nexus:tick/main







# Reset stat scores

execute as @a run function nexus:player/reset_scores







# Display debug things

execute if score #debug_tick_time_display nexus.value matches 1 run tellraw @a ["",{"text":"[","color":"gray"},{"text":"Dom's Nexus","color":"blue"},{"text":"]","color":"gray"}," ",{"text":"Error: ","color":"dark_red"},{"text":"Tick time display cannot be enabled with time manager disabled.","color":"red"}]
scoreboard players set #debug_tick_time_display nexus.value 0
execute if score #debug_loaded_entity_display nexus.value matches 1 run function nexus:debug/loaded_entity_display/display







# Manage death messages gamerule

execute if score #death_messages_timer nexus.value matches 1 if score #debug_death_messages nexus.value matches 1 run gamerule showDeathMessages true
execute if score #death_messages_timer nexus.value matches 1.. run scoreboard players remove #death_messages_timer nexus.value 1

execute store result score #death_messages nexus.value run gamerule showDeathMessages
execute if score #death_messages_timer nexus.value matches 0 if score #death_messages nexus.value matches 0 if score #debug_death_messages nexus.value matches 1 run function nexus:debug/death_messages/disable
execute if score #death_messages_timer nexus.value matches 0 if score #death_messages nexus.value matches 1 if score #debug_death_messages nexus.value matches 0 run function nexus:debug/death_messages/enable