# Set chunk tick values

scoreboard players set #terminate_chunk_tick nexus.value 0

scoreboard players operation #chunk_tick_time_limit nexus.value = #feature_maximum_chunk_time nexus.value
scoreboard players operation #chunk_tick_time_limit nexus.value -= #player_tick_time nexus.value
scoreboard players operation #chunk_tick_time_limit nexus.value -= #entity_tick_time nexus.value
scoreboard players operation #chunk_tick_time_limit nexus.value -= #object_tick_time nexus.value
scoreboard players operation #chunk_tick_time_limit nexus.value -= #generic_tick_time nexus.value
scoreboard players operation #chunk_tick_time_limit nexus.value -= #external_tick_time nexus.value
scoreboard players operation #chunk_tick_time_limit nexus.value -= #world_tick_time nexus.value
execute if score #chunk_tick_time_limit nexus.value < #feature_minimum_chunk_time nexus.value run scoreboard players operation #chunk_tick_time_limit nexus.value = #feature_minimum_chunk_time nexus.value
scoreboard players operation #chunk_tick_time_limit nexus.value += #tick_time nexus.value







# Activate players

scoreboard players set #chunk_player_tick_boolean nexus.value 0
scoreboard players set #chunk_player_tick_complete_boolean nexus.value 1

execute as @a at @s run function nexus:chunk/player/main
execute if score #chunk_player_tick_boolean nexus.value matches 1 if score #chunk_player_tick_complete_boolean nexus.value matches 1 run tag @a remove nexus.chunk.activated







# Activate chunks

execute if score #feature_chunk_ticking nexus.value matches 1 run function nexus:chunk/tick







# Update world border time manager

execute store result score #world_border_diameter nexus.value run worldborder get

scoreboard players operation #chunk_tick_time nexus.value = #world_border_diameter nexus.value
scoreboard players operation #chunk_tick_time nexus.value -= #tick_time nexus.value

scoreboard players operation #tick_time nexus.value = #world_border_diameter nexus.value