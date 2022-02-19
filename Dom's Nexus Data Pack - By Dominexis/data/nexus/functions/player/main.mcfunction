# Manage session and login mechanics

scoreboard players add @s nexus.ticks 1
execute unless score @s nexus.ticks = #global nexus.ticks run function nexus:player/login







# Assign ID

execute unless score @s nexus.id = @s nexus.id run function nexus:entity/process/main







# Target self

tag @s add nexus.player.target







# Gather NBT data

execute if score #feature_player_nbt nexus.value matches 1 run function nexus:entity/generic/data/extract/nbt







# Manage health

execute if score #feature_player_health nexus.value matches 1 run function nexus:player/health/main







# Respawn functionality

execute if score #feature_player_respawn nexus.value matches 1 run tag @s[scores={nexus.death=1..}] add nexus.player.dead
execute if score #feature_player_respawn nexus.value matches 1 run tag @s[scores={nexus.death=1..}] remove nexus.player.motion
execute if score #feature_player_respawn nexus.value matches 1 if entity @s[tag=nexus.player.dead] if entity @e[type=player,tag=nexus.player.target,limit=1] run function nexus:player/respawn







# Vehicle functionality

execute if score #feature_vehicle nexus.value matches 1 run function nexus:player/vehicle/main







# Motion functionality

execute if score #feature_player_motion nexus.value matches 1 if entity @s[tag=nexus.player.motion] run function nexus:player/motion/main







# Execute player functions

function #nexus:player/main







# Remove target tag

tag @s remove nexus.player.target