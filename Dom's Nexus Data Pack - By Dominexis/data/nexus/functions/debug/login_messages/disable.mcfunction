# Add operator tag

tag @s[type=player] add nexus.player.operator







# Disable login messages

scoreboard players set #debug_login_messages nexus.value 0







# Send message

execute if score #debug_system_messages nexus.value matches 1 run tellraw @a[tag=nexus.player.operator] ["",{"text":"[","color":"gray"},{"text":"Dom's Nexus","color":"blue","bold":true},{"text":"]","color":"gray"}," ",{"text":"Login messages disabled.","color":"gray"}]