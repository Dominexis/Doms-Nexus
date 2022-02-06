# Add operator tag

tag @s[type=player] add nexus.player.operator







# Enable death messages

scoreboard players set #debug_death_messages nexus.value 1







# Set gamerule

gamerule showDeathMessages true







# Send message

execute if score #debug_system_messages nexus.value matches 1 run tellraw @a[tag=nexus.player.operator] ["",{"text":"[","color":"gray"},{"text":"Dom's Nexus","color":"blue","bold":true},{"text":"]","color":"gray"}," ",{"text":"Death messages enabled.","color":"gray"}]