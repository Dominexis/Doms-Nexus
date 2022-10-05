# Remove operator tag

tag @s[type=player] remove nexus.player.operator







# Send message

execute if score #debug_system_messages nexus.value matches 1 run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Dom's Nexus","color":"blue"},{"text":"]","color":"gray"}," ",{"text":"You are no longer an operator.","color":"gray"}]