# Manage session and login mechanics

scoreboard players add @s nexus.ticks 1
execute unless score @s nexus.ticks = #global nexus.ticks run function nexus:player/login
scoreboard players operation @s nexus.ticks = #global nexus.ticks







# Assign ID

execute unless score @s nexus.id = @s nexus.id run function nexus:entity/process/main







# Target self

tag @s add nexus.player.target







# Gather NBT data

execute if score #feature_player_nbt nexus.value matches 1 run function nexus:entity/generic/data/extract/nbt







# Manage health

execute store result score #boolean nexus.value if entity @s[gamemode=!creative,gamemode=!spectator]
execute if score #boolean nexus.value matches 0 run scoreboard players set @s nexus.damage 0
execute if score #feature_player_health nexus.value matches 1 if score #boolean nexus.value matches 1 run function nexus:player/health/main







# Respawn functionality

execute if score #feature_player_respawn nexus.value matches 1 run tag @s[scores={nexus.death=1..}] add nexus.player.property.dead
execute if score #feature_player_respawn nexus.value matches 1 if entity @s[tag=nexus.player.property.dead] if entity @e[type=player,tag=nexus.player.target,limit=1] run function nexus:player/respawn







# Vehicle functionality

execute if score #feature_vehicle nexus.value matches 1 run function nexus:player/vehicle/main







# Execute player functions

function #nexus:player/main







# Remove target tag

tag @s remove nexus.player.target