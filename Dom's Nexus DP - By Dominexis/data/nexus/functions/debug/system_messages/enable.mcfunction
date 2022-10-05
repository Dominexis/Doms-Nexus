# Add operator tag

tag @s[type=player] add nexus.player.operator







# Enable system messages

scoreboard players set #debug_system_messages nexus.value 1







# Send message

tellraw @a[tag=nexus.player.operator] ["",{"text":"[","color":"gray"},{"text":"Dom's Nexus","color":"blue"},{"text":"]","color":"gray"}," ",{"text":"System messages enabled.","color":"gray"}]