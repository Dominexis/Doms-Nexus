# Set boolean

scoreboard players set #world_tick_time_advancement_boolean nexus.value 1







# Update world border time manager

execute store result score #world_border_diameter nexus.value run worldborder get
execute unless score #world_border_diameter nexus.value matches 59900000..59999000 run scoreboard players set #world_border_tamper_boolean nexus.value 1

scoreboard players operation #world_tick_time nexus.value = #world_border_diameter nexus.value
scoreboard players operation #world_tick_time nexus.value -= #tick_time nexus.value

scoreboard players operation #tick_time nexus.value = #world_border_diameter nexus.value