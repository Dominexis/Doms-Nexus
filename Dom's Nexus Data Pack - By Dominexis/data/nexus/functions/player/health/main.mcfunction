# Absorption management

scoreboard players add @s nexus.abs_amount 0
scoreboard players add @s nexus.abs_level 0
scoreboard players add @s nexus.abs_timer 0

scoreboard players operation #absorption_amount nexus.value = @s nexus.abs_amount
execute if predicate nexus:player/absorption run function nexus:player/health/absorption/add/main
execute if score @s nexus.abs_timer matches 1.. run function nexus:player/health/absorption/main







# Manage timer

scoreboard players remove @s[scores={nexus.hp_time=1..}] nexus.hp_time 1







# Health management

execute if entity @s[tag=nexus.player.resync_health] run function nexus:player/health/modify/resync
execute unless score @s nexus.hp_offset matches 0 run function nexus:player/health/modify/main