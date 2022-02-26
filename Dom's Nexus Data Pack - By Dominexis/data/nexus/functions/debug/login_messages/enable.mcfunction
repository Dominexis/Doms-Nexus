# Add operator tag

tag @s[type=player] add nexus.player.operator







# Enable login messages

scoreboard players set #debug_login_messages nexus.value 1







# Send message

execute if score #debug_system_messages nexus.value matches 1 run tellraw @a[tag=nexus.player.operator] ["",{"text":"[","color":"gray"},{"text":"Dom's Nexus","color":"blue"},{"text":"]","color":"gray"}," ",{"text":"Login messages enabled.","color":"gray"}]