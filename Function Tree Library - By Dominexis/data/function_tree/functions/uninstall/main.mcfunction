# Reset scores

scoreboard players reset #function_tree_library_last_modified nexus.value







# Send message to chat

execute if score #debug_system_messages nexus.value matches 1 run tellraw @a[tag=nexus.player.operator] ["",{"text":"[","color":"gray"},{"text":"Function Tree Library","color":"gold"},{"text":"]","color":"gray"}," ",{"text":"Module was successfully uninstalled.","color":"gray"}]