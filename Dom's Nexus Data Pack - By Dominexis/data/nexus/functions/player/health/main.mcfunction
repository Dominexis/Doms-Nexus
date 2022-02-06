# Initialize values

scoreboard players set #health_offset nexus.value 0







# Absorption management

scoreboard players add @s nexus.abs_amount 0
scoreboard players add @s nexus.abs_level 0
scoreboard players add @s nexus.abs_timer 0

scoreboard players operation #absorption_amount nexus.value = @s nexus.abs_amount
execute if predicate nexus:player/absorption run function nexus:player/health/absorption/add/main
execute if score @s nexus.abs_timer matches 1.. run function nexus:player/health/absorption/main







# Damage management

execute unless entity @e[type=player,tag=nexus.player.target,limit=1] run scoreboard players set @s nexus.damage 0
scoreboard players set @s[scores={nexus.hp_time=1..}] nexus.damage 0
execute if score @s nexus.damage matches 1.. if score @s nexus.hp_time matches 0 run function nexus:player/health/damage/main







# Healing management

scoreboard players set @s[scores={nexus.hp_time=1..}] nexus.heal 0
execute if score @s nexus.heal matches 1.. if score @s nexus.hp_time matches 0 run function nexus:player/health/heal/main







# Manage timer

scoreboard players remove @s[scores={nexus.hp_time=1..}] nexus.hp_time 1







# Health management

execute if entity @s[tag=nexus.player.resync_health] run function nexus:player/health/modify/resync
execute unless score #health_offset nexus.value matches 0 run function nexus:player/health/modify/main