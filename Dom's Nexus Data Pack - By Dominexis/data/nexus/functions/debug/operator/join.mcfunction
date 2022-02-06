# Add operator tag

tag @s[type=player] add nexus.player.operator







# Send message

execute if score #debug_system_messages nexus.value matches 1 run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Dom's Nexus","color":"blue","bold":true},{"text":"]","color":"gray"}," ",{"text":"You are now an operator.","color":"gray"}]