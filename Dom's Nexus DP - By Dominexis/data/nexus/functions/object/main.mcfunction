# Set object tick values

scoreboard players set #terminate_object_tick nexus.value 0

scoreboard players operation #object_tick_time_limit nexus.value = #feature_maximum_object_time nexus.value
scoreboard players operation #object_tick_time_limit nexus.value -= #player_tick_time nexus.value
scoreboard players operation #object_tick_time_limit nexus.value -= #generic_tick_time nexus.value
scoreboard players operation #object_tick_time_limit nexus.value -= #external_tick_time nexus.value
scoreboard players operation #object_tick_time_limit nexus.value -= #world_tick_time nexus.value
execute if score #active_object_priority nexus.value matches ..0 run scoreboard players operation #object_tick_time_limit nexus.value -= #entity_tick_time nexus.value
execute if score #object_tick_time_limit nexus.value < #feature_minimum_object_time nexus.value run scoreboard players operation #object_tick_time_limit nexus.value = #feature_minimum_object_time nexus.value
scoreboard players operation #object_tick_time_limit nexus.value += #tick_time nexus.value







# Tick if objects exist

execute store result score #object_count nexus.value if entity @e[type=marker,tag=nexus.object]
execute if score #object_count nexus.value matches 0 if score #previous_object_count nexus.value matches 1.. run function nexus:object/reset
execute if score #object_count nexus.value matches 1.. run function nexus:object/tick
scoreboard players operation #previous_object_count nexus.value = #object_count nexus.value







# Update world border time manager

execute store result score #world_border_diameter nexus.value run worldborder get

scoreboard players operation #object_tick_time nexus.value = #world_border_diameter nexus.value
scoreboard players operation #object_tick_time nexus.value -= #tick_time nexus.value

scoreboard players operation #tick_time nexus.value = #world_border_diameter nexus.value