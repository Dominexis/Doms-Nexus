# Add operator tag

tag @s[type=player] add nexus.player.operator







# Enable loaded entity display

scoreboard players set #debug_loaded_entity_display nexus.value 1







# Disable other displays

scoreboard players set #debug_tick_time_display nexus.value 0







# Send message

execute if score #debug_system_messages nexus.value matches 1 run tellraw @a[tag=nexus.player.operator] ["",{"text":"[","color":"gray"},{"text":"Dom's Nexus","color":"blue","bold":true},{"text":"]","color":"gray"}," ",{"text":"Loaded entity display enabled.","color":"gray"}]