# Add operator tag

tag @s[type=player] add nexus.player.operator







# Disable tick time display

scoreboard players set #debug_tick_time_display nexus.value 0







# Clear actionbar

title @a[tag=nexus.player.operator] actionbar ""







# Send message

execute if score #debug_system_messages nexus.value matches 1 run tellraw @a[tag=nexus.player.operator] ["",{"text":"[","color":"gray"},{"text":"Dom's Nexus","color":"blue"},{"text":"]","color":"gray"}," ",{"text":"Tick time display disabled.","color":"gray"}]