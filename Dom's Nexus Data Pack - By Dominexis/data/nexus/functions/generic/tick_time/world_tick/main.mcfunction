# Set boolean

scoreboard players set #world_tick_time_advancement_boolean nexus.value 1







# Update world border time manager

execute store result score #world_border_diameter nexus.value run worldborder get

scoreboard players operation #world_tick_time nexus.value = #world_border_diameter nexus.value
scoreboard players operation #world_tick_time nexus.value -= #tick_time nexus.value

scoreboard players operation #tick_time nexus.value = #world_border_diameter nexus.value