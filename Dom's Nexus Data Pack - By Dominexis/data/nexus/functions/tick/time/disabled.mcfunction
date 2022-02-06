# Player functions

scoreboard players add #global nexus.ticks 1
execute as @a at @s run function nexus:player/main







# Perform miscellaneous entity functions

scoreboard players add #air_toggle_timer nexus.value 1
execute if score #air_toggle_timer nexus.value matches 50.. run scoreboard players set #air_toggle_timer nexus.value 0

execute if score #feature_entity_processing nexus.value matches 1 as @e[tag=!nexus.chunk,tag=!nexus.object] unless score @s nexus.modified = #global nexus.modified at @s run function nexus:entity/process/main
execute if score #feature_entity_health nexus.value matches 1 as @e[type=#nexus:family/mob] run function nexus:entity/generic/health/main
execute if score #feature_damage_sensor_ticking nexus.value matches 1 as @e[type=#nexus:generic/damage_sensor,tag=nexus.entity.damage_sensor.tick] run function nexus:entity/generic/damage_sensor/tick

execute if score #entity_termination_boolean nexus.value matches 1 run function nexus:entity/generic/terminate/void







# Custom entity functionality

execute if score #feature_custom_entity_ticking nexus.value matches 1 as @e[type=#nexus:generic/system,tag=nexus.entity.ticking.unconditional] at @s run function nexus:entity/activate/tick/main
execute if score #feature_custom_entity_ticking nexus.value matches 1 as @e[type=#nexus:generic/system,tag=nexus.entity.ticking              ] at @s run function nexus:entity/activate/tick/main







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







# Display debug things

execute if score #debug_tick_time_display nexus.value matches 1 run tellraw @a ["",{"text":"[","color":"gray"},{"text":"Dom's Nexus","color":"blue","bold":true},{"text":"]","color":"gray"}," ",{"text":"Error: ","color":"dark_red"},{"text":"Tick time display cannot be enabled with time manager disabled.","color":"red"}]
scoreboard players set #debug_tick_time_display nexus.value 0
execute if score #debug_loaded_entity_display nexus.value matches 1 run function nexus:debug/loaded_entity_display/display