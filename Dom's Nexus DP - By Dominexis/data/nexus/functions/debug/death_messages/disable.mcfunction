# Add operator tag

tag @s[type=player] add nexus.player.operator







# Disable death messages

scoreboard players set #debug_death_messages nexus.value 0







# Set gamerule

gamerule showDeathMessages false







# Send message

execute if score #debug_system_messages nexus.value matches 1 run tellraw @a[tag=nexus.player.operator] ["",{"text":"[","color":"gray"},{"text":"Dom's Nexus","color":"blue"},{"text":"]","color":"gray"}," ",{"text":"Death messages disabled.","color":"gray"}]