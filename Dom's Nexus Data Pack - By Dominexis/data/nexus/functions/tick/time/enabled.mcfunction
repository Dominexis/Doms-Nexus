# Update world border time manager

execute store result score #world_border_diameter nexus.value run worldborder get
execute if score #world_border_reset_timer nexus.value matches 0 run function nexus:generic/tick_time/reset

scoreboard players operation #time_between_ticks nexus.value = #world_border_diameter nexus.value
scoreboard players operation #time_between_ticks nexus.value -= #tick_time nexus.value

execute if score #time_between_ticks nexus.value matches 100.. run function nexus:generic/tick_time/reset

execute if score #world_border_reset_timer nexus.value matches 000 run scoreboard players set #tick_time nexus.value 59900000
execute if score #world_border_reset_timer nexus.value matches 1.. run scoreboard players operation #tick_time nexus.value = #world_border_diameter nexus.value

scoreboard players add #world_border_reset_timer nexus.value 1
execute if score #world_border_reset_timer nexus.value matches 200.. run scoreboard players set #world_border_reset_timer nexus.value 0







# Player functions

scoreboard players add #global nexus.ticks 1
execute as @a at @s run function nexus:player/main







# Update world border time manager

execute store result score #world_border_diameter nexus.value run worldborder get

scoreboard players operation #player_tick_time nexus.value = #world_border_diameter nexus.value
scoreboard players operation #player_tick_time nexus.value -= #tick_time nexus.value

scoreboard players operation #tick_time nexus.value = #world_border_diameter nexus.value







# Set entity tick values

scoreboard players set #terminate_entity_tick nexus.value 0

scoreboard players set #entity_tick_time_limit nexus.value 45
scoreboard players operation #entity_tick_time_limit nexus.value -= #player_tick_time nexus.value
scoreboard players operation #entity_tick_time_limit nexus.value -= #generic_tick_time nexus.value
scoreboard players operation #entity_tick_time_limit nexus.value -= #external_tick_time nexus.value
scoreboard players operation #entity_tick_time_limit nexus.value -= #world_tick_time nexus.value
execute if score #active_object_priority nexus.value matches 1.. run scoreboard players operation #entity_tick_time_limit nexus.value -= #object_tick_time nexus.value
execute if score #entity_tick_time_limit nexus.value matches ..4 run scoreboard players set #entity_tick_time_limit nexus.value 5
scoreboard players operation #entity_tick_time_limit nexus.value += #tick_time nexus.value







# Perform miscellaneous entity functions

scoreboard players add #air_toggle_timer nexus.value 1
execute if score #air_toggle_timer nexus.value matches 50.. run scoreboard players set #air_toggle_timer nexus.value 0

execute if score #feature_entity_processing nexus.value matches 1 as @e[tag=!nexus.chunk,tag=!nexus.object] unless score @s nexus.modified = #global nexus.modified at @s run function nexus:entity/process/main
execute if score #feature_entity_health nexus.value matches 1 run scoreboard players remove @e[type=#nexus:family/mob,scores={nexus.hp_time=1..}] nexus.hp_time 1
execute if score #feature_damage_sensor_ticking nexus.value matches 1 as @e[type=#nexus:generic/damage_sensor,tag=nexus.entity.damage_sensor.tick] run function nexus:entity/generic/damage_sensor/tick
execute if score #feature_player_motion nexus.value matches 1 as @e[type=marker,tag=nexus.entity.type.motion] at @s run function nexus:player/motion/entity/main

execute if score #entity_termination_boolean nexus.value matches 1 run function nexus:entity/generic/terminate/void







# Custom entity functionality

execute if score #feature_custom_entity_ticking nexus.value matches 1 run function nexus:entity/main







# Update world border time manager

execute store result score #world_border_diameter nexus.value run worldborder get

scoreboard players operation #entity_tick_time nexus.value = #world_border_diameter nexus.value
scoreboard players operation #entity_tick_time nexus.value -= #tick_time nexus.value

scoreboard players operation #tick_time nexus.value = #world_border_diameter nexus.value







# Object functionality

scoreboard players set #object_tick_time nexus.value 0
execute if score #feature_object_ticking nexus.value matches 1 run function nexus:object/main







# Chunk functionality

scoreboard players set #chunk_tick_time nexus.value 0
execute if score #feature_chunk_processing nexus.value matches 1 run function nexus:chunk/main







# Set difficulty according to minimum difficulty

execute store result score #current_difficulty nexus.value run difficulty
execute if score #minimum_difficulty nexus.value matches 0 if score #current_difficulty nexus.value < #minimum_difficulty nexus.value run difficulty peaceful
execute if score #minimum_difficulty nexus.value matches 1 if score #current_difficulty nexus.value < #minimum_difficulty nexus.value run difficulty easy
execute if score #minimum_difficulty nexus.value matches 2 if score #current_difficulty nexus.value < #minimum_difficulty nexus.value run difficulty normal
execute if score #minimum_difficulty nexus.value matches 3 if score #current_difficulty nexus.value < #minimum_difficulty nexus.value run difficulty hard







# Miscellaneous ticking functions

function #nexus:tick/main







# Reset stat scores

execute as @a run function nexus:player/reset_scores







# Update world border time manager

execute store result score #world_border_diameter nexus.value run worldborder get

scoreboard players operation #generic_tick_time nexus.value = #world_border_diameter nexus.value
scoreboard players operation #generic_tick_time nexus.value -= #tick_time nexus.value

scoreboard players operation #tick_time nexus.value = #world_border_diameter nexus.value

scoreboard players set #world_tick_time_advancement_boolean nexus.value 0







# Display debug things

execute if score #debug_tick_time_display nexus.value matches 1 run function nexus:debug/tick_time_display/display
execute if score #debug_loaded_entity_display nexus.value matches 1 run function nexus:debug/loaded_entity_display/display







# Reset remaining tick time scores

scoreboard players set #external_tick_time nexus.value 0
scoreboard players set #world_tick_time nexus.value 0