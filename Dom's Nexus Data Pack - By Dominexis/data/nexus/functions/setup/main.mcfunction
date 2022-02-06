# Run installation function

scoreboard players set #update_installation_boolean nexus.value 0

scoreboard players set #last_modified nexus.value 2022020402
execute unless score #doms_nexus_last_modified nexus.value = #last_modified nexus.value run scoreboard players set #update_installation_boolean nexus.value 1
scoreboard players operation #doms_nexus_last_modified nexus.value = #last_modified nexus.value
function #nexus:setup/last_modified

execute if score #update_installation_boolean nexus.value matches 1 run function nexus:setup/install







# Set gamerules

gamerule maxCommandChainLength 2147483647







# Manage values and parameters

scoreboard players set #world_border_reset_timer nexus.value 0
scoreboard players set #doms_nexus_module_count nexus.value 0
scoreboard players set #minimum_difficulty nexus.value 0
execute if score #update_installation_boolean nexus.value matches 1 run scoreboard players add #global nexus.modified 1

execute unless score #debug_tick_time_display nexus.value = #debug_tick_time_display nexus.value run scoreboard players set #debug_tick_time_display nexus.value 0
execute unless score #debug_loaded_entity_display nexus.value = #debug_loaded_entity_display nexus.value run scoreboard players set #debug_loaded_entity_display nexus.value 0
execute unless score #debug_system_messages nexus.value = #debug_system_messages nexus.value run scoreboard players set #debug_system_messages nexus.value 1
execute unless score #debug_login_messages nexus.value = #debug_login_messages nexus.value run scoreboard players set #debug_login_messages nexus.value 1
execute unless score #debug_death_messages nexus.value = #debug_death_messages nexus.value run scoreboard players set #debug_death_messages nexus.value 1

scoreboard players set #feature_time_manager nexus.value 0
scoreboard players set #feature_external_time_measurement nexus.value 0
scoreboard players set #feature_player_nbt nexus.value 0
scoreboard players set #feature_player_health nexus.value 0
scoreboard players set #feature_player_respawn nexus.value 0
scoreboard players set #feature_entity_processing nexus.value 0
scoreboard players set #feature_entity_health nexus.value 0
scoreboard players set #feature_custom_entity_ticking nexus.value 0
scoreboard players set #feature_unconditional_entity_ticking nexus.value 0
scoreboard players set #feature_damage_sensor_ticking nexus.value 0
scoreboard players set #feature_vehicle nexus.value 0
scoreboard players set #feature_event_id_phe nexus.value 0
scoreboard players set #feature_event_id_pke nexus.value 0
scoreboard players set #feature_event_id_ehp nexus.value 0
scoreboard players set #feature_event_id_ekp nexus.value 0
scoreboard players set #feature_event_id_piwe nexus.value 0
scoreboard players set #feature_object_ticking nexus.value 0
scoreboard players set #feature_chunk_processing nexus.value 0
scoreboard players set #feature_chunk_ticking nexus.value 0
scoreboard players set #feature_chunk_range nexus.value 0

function nexus:object/reset







# Tell that Nexus loaded properly

execute if score #debug_system_messages nexus.value matches 1 if score #update_installation_boolean nexus.value matches 1 run tellraw @a[tag=nexus.player.operator] ["",{"text":"[","color":"gray"},{"text":"Dom's Nexus","color":"blue","bold":true},{"text":"]","color":"gray"}," ",{"text":"Nexus and modules were successfully installed.","color":"gray"}]







# Set up modules

function #nexus:setup/main







# Adjust feature booleans for dependencies

execute if score #feature_player_health nexus.value matches 1 run scoreboard players set #feature_player_respawn nexus.value 1
execute if score #feature_unconditional_entity_ticking nexus.value matches 1 run scoreboard players set #feature_custom_entity_ticking nexus.value 1
execute if score #feature_object_ticking nexus.value matches 1 run scoreboard players set #feature_time_manager nexus.value 1
execute if score #feature_chunk_ticking nexus.value matches 1 run scoreboard players set #feature_time_manager nexus.value 1
execute if score #feature_chunk_ticking nexus.value matches 1 run scoreboard players set #feature_chunk_processing nexus.value 1







# Set difficulty according to minimum difficulty

execute store result score #current_difficulty nexus.value run difficulty
execute if score #minimum_difficulty nexus.value matches 0 if score #current_difficulty nexus.value < #minimum_difficulty nexus.value run difficulty peaceful
execute if score #minimum_difficulty nexus.value matches 1 if score #current_difficulty nexus.value < #minimum_difficulty nexus.value run difficulty easy
execute if score #minimum_difficulty nexus.value matches 2 if score #current_difficulty nexus.value < #minimum_difficulty nexus.value run difficulty normal
execute if score #minimum_difficulty nexus.value matches 3 if score #current_difficulty nexus.value < #minimum_difficulty nexus.value run difficulty hard







# Send notice if no modules are installed

execute if score #debug_system_messages nexus.value matches 1 if score #doms_nexus_module_count nexus.value matches 0 run tellraw @a[tag=nexus.player.operator] ["",{"text":"[","color":"gray"},{"text":"Dom's Nexus","color":"blue","bold":true},{"text":"]","color":"gray"}," ",{"text":"No modules currently installed, visit ","color":"gray"},{"text":"Planet Minecraft","color":"dark_green","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Dom's Nexus on Planet Minecraft","color":"dark_green"}},"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/dom-s-nexus/"}},{"text":" to download some modules.","color":"gray"}]







# Set installation boolean

scoreboard players set #doms_nexus_verification_boolean nexus.value 1







# Verify that tick function tag loaded correctly

scoreboard players set #doms_nexus_ticking_function nexus.value 0
function #minecraft:tick

execute if score #doms_nexus_ticking_function nexus.value matches 0 run tellraw @a ["",{"text":"[","color":"gray"},{"text":"Dom's Nexus","color":"blue","bold":true},{"text":"]","color":"gray"}," ",{"text":"Error: ","color":"dark_red"},{"text":"Function tag ","color":"red"},{"text":"#minecraft:tick","color":"white"},{"text":" didn't load properly. Disable the installed data pack that interferes with the function tag.","color":"red"}]
execute if score #doms_nexus_ticking_function nexus.value matches 1 run scoreboard players add #global nexus.ticks 1