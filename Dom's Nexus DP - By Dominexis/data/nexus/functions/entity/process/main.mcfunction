# Set modified value

scoreboard players operation @s nexus.modified = #global nexus.modified







# Extract NBT

data modify storage nexus:data tag set from entity @s {}







# Extract data

execute unless entity @s[type=!player,type=!#nexus:family/mob] store result score @s nexus.health run data get storage nexus:data tag.Health 1000







# Initialize scores

scoreboard players operation @s nexus.prev_x = @s nexus.x
scoreboard players operation @s nexus.prev_y = @s nexus.y
scoreboard players operation @s nexus.prev_z = @s nexus.z
scoreboard players operation @s nexus.prev_mot_x = @s nexus.mot_x
scoreboard players operation @s nexus.prev_mot_y = @s nexus.mot_y
scoreboard players operation @s nexus.prev_mot_z = @s nexus.mot_z
scoreboard players operation @s nexus.prev_yaw = @s nexus.yaw
scoreboard players operation @s nexus.prev_pitch = @s nexus.pitch
scoreboard players operation @s nexus.prev_roll = @s nexus.roll







# Kill if no-drop

execute if data storage nexus:data {tag:{Item:{tag:{nexus:{no_drop:1b}}}}} run kill @s[type=item]







# Assign team if a vehicle

execute if score #feature_vehicle nexus.value matches 1 run team join nexus.vehicle @s[type=#nexus:generic/vehicle,tag=nexus.entity.vehicle]







# Assign push scores

execute if entity @s[type=#nexus:family/mob,tag=!nexus.entity] run function nexus:entity/process/push
execute if entity @s[type=player] run function nexus:entity/process/push







# Assign UUID

execute store result score @s nexus.uuid_0 run data get storage nexus:data tag.UUID[0]
execute store result score @s nexus.uuid_1 run data get storage nexus:data tag.UUID[1]
execute store result score @s nexus.uuid_2 run data get storage nexus:data tag.UUID[2]
execute store result score @s nexus.uuid_3 run data get storage nexus:data tag.UUID[3]
execute store result score @s nexus.owner_uuid_0 run data get storage nexus:data tag.Owner[0]
execute store result score @s nexus.owner_uuid_1 run data get storage nexus:data tag.Owner[1]
execute store result score @s nexus.owner_uuid_2 run data get storage nexus:data tag.Owner[2]
execute store result score @s nexus.owner_uuid_3 run data get storage nexus:data tag.Owner[3]







# Assign IDs

execute if entity @s[tag= nexus.id] run function nexus:entity/process/id/tag
execute if entity @s[tag=!nexus.id] run function nexus:entity/process/id/score







# Execute function tag

function #nexus:entity/process