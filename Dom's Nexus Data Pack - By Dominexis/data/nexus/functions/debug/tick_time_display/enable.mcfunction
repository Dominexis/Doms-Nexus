# Add operator tag

tag @s[type=player] add nexus.player.operator







# Enable tick time display

execute if score #feature_time_manager nexus.value matches 1 run scoreboard players set #debug_tick_time_display nexus.value 1







# Disable other displays

execute if score #feature_time_manager nexus.value matches 1 run scoreboard players set #debug_loaded_entity_display nexus.value 0







# Send message

execute if score #debug_system_messages nexus.value matches 1 if score #feature_time_manager nexus.value matches 0 run tellraw @a[tag=nexus.player.operator] ["",{"text":"[","color":"gray"},{"text":"Dom's Nexus","color":"blue"},{"text":"]","color":"gray"}," ",{"text":"Error: ","color":"dark_red"},{"text":"Tick time display cannot be enabled with time manager disabled. Refer to feature booleans.","color":"red"}]
execute if score #debug_system_messages nexus.value matches 1 if score #feature_time_manager nexus.value matches 1 run tellraw @a[tag=nexus.player.operator] ["",{"text":"[","color":"gray"},{"text":"Dom's Nexus","color":"blue"},{"text":"]","color":"gray"}," ",{"text":"Tick time display enabled.","color":"gray"}]