# Send message to chat

execute if score #debug_system_messages nexus.value matches 1 run tellraw @a[tag=nexus.player.operator] ["",{"text":"[","color":"gray"},{"text":"External Time Measurer","color":"gold"},{"text":"]","color":"gray"}," ",{"text":"Module was successfully uninstalled.","color":"gray"}]