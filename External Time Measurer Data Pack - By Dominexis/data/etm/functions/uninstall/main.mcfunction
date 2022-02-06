# Send message to chat

execute if score #debug_system_messages nexus.value matches 1 run tellraw @a[tag=nexus.player.operator] ["",{"text":"[","color":"gray"},{"text":"Dom's Nexus","color":"blue","bold":true},{"text":"]","color":"gray"}," ",{"text":"Module ","color":"gray"},{"text":"External Time Measurer","color":"gold","bold":true},{"text":" was successfully uninstalled.","color":"gray"}]