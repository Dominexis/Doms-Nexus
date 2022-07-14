# Display first part of message

execute if score #debug_login_messages nexus.value matches 1 run tellraw @s [{"text":"                                                                                ","color":"gray","strikethrough":true}]
execute if score #debug_login_messages nexus.value matches 1 run tellraw @s [" ",{"text":"Dom's Nexus","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/Dominexis/Doms-Nexus/releases"},"hoverEvent":{"action":"show_text","value":[{"text":"Dom's Nexus","color":"blue"},{"text":" on ","color":"gray"},{"text":"GitHub","color":"blue"}]}}," ",{"text":"1.10.1","color":"gold"},{"text":" - ","color":"gray"},{"text":"For Version: ","color":"gray"},{"text":"1.19","color":"gold"}]
execute if score #debug_login_messages nexus.value matches 1 run tellraw @s [{"text":"                                                                                ","color":"gray","strikethrough":true}]
execute if score #debug_login_messages nexus.value matches 1 if score #doms_nexus_module_count nexus.value matches 1.. run tellraw @s [" ",{"text":"Loaded Modules (","color":"gray"},{"score":{"name":"#doms_nexus_module_count","objective":"nexus.value"},"color":"gray"},{"text":"):","color":"gray"}]
execute if score #debug_login_messages nexus.value matches 1 if score #doms_nexus_module_count nexus.value matches 000 run tellraw @s [" ",{"text":"No Modules","color":"gray"}]







# Execute login functions

function #nexus:player/login







# Display last part of message

execute if score #debug_login_messages nexus.value matches 1 run tellraw @s [{"text":"                                                                                ","color":"gray","strikethrough":true}]
execute if score #debug_login_messages nexus.value matches 1 run tellraw @s [" ",{"text":"By ","color":"gray"},{"text":"Dominexis","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCVWEunqgTlAHK-pA17HEP6Q"},"hoverEvent":{"action":"show_text","value":[{"text":"My YouTube Channel","color":"gold"}]}}]
execute if score #debug_login_messages nexus.value matches 1 run tellraw @s [{"text":"                                                                                ","color":"gray","strikethrough":true}]







# Set hurt time to 3 and 1/4 seconds

scoreboard players set @s nexus.hp_time 65







# Remove tags

effect clear @s[tag=nexus.player.motion] slow_falling
tag @s remove nexus.player.motion







# Synchronize timers

scoreboard players operation @s nexus.ticks = #global nexus.ticks