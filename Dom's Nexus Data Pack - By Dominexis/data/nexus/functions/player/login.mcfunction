# Display first part of message

execute if score #debug_login_messages nexus.value matches 1 run tellraw @s [{"text":"=====================================================","color":"dark_blue","strikethrough":true}]
execute if score #debug_login_messages nexus.value matches 1 run tellraw @s [" ",{"text":"Dom's Nexus","color":"gold","underlined":true,"bold":true,"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/dom-s-nexus/"},"hoverEvent":{"action":"show_text","value":[{"text":"<<< ","color":"dark_blue"},{"text":"Dom's Nexus","color":"dark_red","bold":true},{"text":" on ","color":"gold","bold":true},{"text":"Planet Minecraft","color":"dark_red","bold":true},{"text":" >>>"}]}}," ",{"text":"1.8.3","color":"dark_red","bold":true},{"text":" - ","color":"dark_blue"},{"text":"For Version: ","color":"gold","bold":true},{"text":"1.18.1","color":"dark_red","bold":true}]
execute if score #debug_login_messages nexus.value matches 1 run tellraw @s [{"text":"=====================================================","color":"dark_blue","strikethrough":true}]
execute if score #debug_login_messages nexus.value matches 1 if score #doms_nexus_module_count nexus.value matches 1.. run tellraw @s [" ",{"text":"Loaded Modules (","color":"gold","bold":true},{"score":{"name":"#doms_nexus_module_count","objective":"nexus.value"},"color":"gold","bold":true},{"text":"):","color":"gold","bold":true}]
execute if score #debug_login_messages nexus.value matches 1 if score #doms_nexus_module_count nexus.value matches 000 run tellraw @s [" ",{"text":"No Modules","color":"gold","bold":true}]







# Execute login functions

function #nexus:player/login







# Display last part of message

execute if score #debug_login_messages nexus.value matches 1 run tellraw @s [{"text":"=====================================================","color":"dark_blue","strikethrough":true}]
execute if score #debug_login_messages nexus.value matches 1 run tellraw @s [" ",{"text":"By ","color":"gold","bold":true},{"text":"Dominexis","color":"dark_red","bold":true,"underlined":true,"clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCVWEunqgTlAHK-pA17HEP6Q"},"hoverEvent":{"action":"show_text","value":[{"text":"<<< ","color":"dark_blue"},{"text":"My ","color":"gold","bold":true},{"text":"YouTube ","color":"dark_red","bold":true},{"text":"Channel","color":"gold","bold":true},{"text":" >>>"}]}}]
execute if score #debug_login_messages nexus.value matches 1 run tellraw @s [{"text":"=====================================================","color":"dark_blue","strikethrough":true}]







# Set hurt time to 3 and 1/4 seconds

scoreboard players set @s nexus.hp_time 65







# Remove tags

tag @s remove nexus.player.motion







# Synchronize timers

scoreboard players operation @s nexus.ticks = #global nexus.ticks