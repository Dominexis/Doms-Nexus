# Update world border time manager

execute store result score #world_border_diameter nexus.value run worldborder get

scoreboard players operation #external_tick_time nexus.value = #world_border_diameter nexus.value
scoreboard players operation #external_tick_time nexus.value -= #tick_time nexus.value

scoreboard players operation #tick_time nexus.value = #world_border_diameter nexus.value