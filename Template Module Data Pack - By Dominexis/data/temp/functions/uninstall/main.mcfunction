# Remove scoreboard objectives

scoreboard objectives remove temp.value
scoreboard objectives remove temp.sound

scoreboard objectives remove temp.wheel
scoreboard objectives remove temp.steer
scoreboard objectives remove temp.mot_steer

scoreboard objectives remove temp.right_speed
scoreboard objectives remove temp.left_speed







# Terminate entities

kill @e[type=#temp:generic/entity,tag=temp.entity]







# Clear items

clear @a warped_fungus_on_a_stick{temp:{item:1b}}







# Remove tags from entities

tag @a remove temp.player.property.riding.racecar







# Clear storage

data remove storage temp:data tag







# Reset scores

scoreboard players reset #template_module_last_modified nexus.value







# Send message to chat

execute if score #debug_system_messages nexus.value matches 1 run tellraw @a[tag=nexus.player.operator] ["",{"text":"[","color":"gray"},{"text":"Dom's Nexus","color":"blue","bold":true},{"text":"]","color":"gray"}," ",{"text":"Module ","color":"gray"},{"text":"Template Module","color":"gold","bold":true},{"text":" was successfully uninstalled.","color":"gray"}]