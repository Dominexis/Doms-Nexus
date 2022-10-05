# Manage session and login mechanics

scoreboard players add @s nexus.ticks 1
execute unless score @s nexus.ticks = #global nexus.ticks run function nexus:player/login







# Assign ID

execute unless score @s nexus.id = @s nexus.id run function nexus:entity/process/main







# Target self

tag @s add nexus.player.target







# Gather NBT data

execute if score #feature_player_nbt nexus.value matches 1 run function nexus:entity/generic/data/extract/nbt







# Motion functionality

execute if score #feature_player_motion nexus.value matches 1 if entity @s[tag=nexus.player.motion] run function nexus:player/motion/main







# Manage health

execute if score #feature_player_health nexus.value matches 1 run function nexus:player/health/main







# Respawn functionality

execute if score #feature_player_respawn nexus.value matches 1 if score @s nexus.death matches 1.. if entity @e[type=player,distance=..1,tag=nexus.player.target,limit=1] run function nexus:player/respawn







# Vehicle functionality

execute if score #feature_vehicle nexus.value matches 1 run function nexus:player/vehicle/main







# Manage launch stop sound

execute if score @s nexus.stop_launch_sound matches 1.. run stopsound @a[distance=..32] block minecraft:entity.generic.explode
scoreboard players remove @s[scores={nexus.stop_launch_sound=1..}] nexus.stop_launch_sound 1







# Execute player functions

function #nexus:player/main







# Remove target tag

tag @s remove nexus.player.target







# Launch test

#execute if entity @s[tag=post_launch] run tellraw @s ["Motion: ",{"nbt":"Motion[1]","entity":"@s"}]
tag @s remove post_launch

#tag @s add launch_gimbal
execute if entity @s[tag=launch_vector] run function nexus:player/launch/apply/vector
execute if entity @s[tag=launch_gimbal] run function nexus:player/launch/apply/gimbal
tag @s[tag=launch_vector] add post_launch
tag @s[tag=launch_gimbal] add post_launch
tag @s remove launch_vector
tag @s remove launch_gimbal