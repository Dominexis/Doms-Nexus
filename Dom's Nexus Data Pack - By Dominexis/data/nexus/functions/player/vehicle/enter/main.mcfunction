# Extract NBT

execute unless score @s nexus.nbt_ticks = #global nexus.ticks run function nexus:entity/generic/data/extract/nbt







# Set vehicle ID to ID of vehicle entity

execute store result score #local nexus.uuid_0 run data get storage nexus:data tag.RootVehicle.Entity.Passengers[0].UUID[0]
execute store result score #local nexus.uuid_1 run data get storage nexus:data tag.RootVehicle.Entity.Passengers[0].UUID[1]
execute store result score #local nexus.uuid_2 run data get storage nexus:data tag.RootVehicle.Entity.Passengers[0].UUID[2]
execute store result score #local nexus.uuid_3 run data get storage nexus:data tag.RootVehicle.Entity.Passengers[0].UUID[3]

scoreboard players set #local nexus.id 0
scoreboard players set #boolean nexus.value 0
execute as @e[type=#nexus:generic/vehicle,distance=..16,tag=nexus.entity.vehicle] if score @s nexus.uuid_0 = #local nexus.uuid_0 if score @s nexus.uuid_1 = #local nexus.uuid_1 if score @s nexus.uuid_2 = #local nexus.uuid_2 if score @s nexus.uuid_3 = #local nexus.uuid_3 run function nexus:player/vehicle/enter/entity
scoreboard players operation @s nexus.vehicle = #local nexus.id
scoreboard players operation @s nexus.seat = #local nexus.seat







# Manage tag and team

tag @s add nexus.player.vehicle
execute if score #boolean nexus.value matches 1 run team join nexus.vehicle @s