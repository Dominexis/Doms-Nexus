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

execute if score #feature_vehicle nexus.value matches 1 run team join nexus.vehicle @e[type=#nexus:generic/vehicle,tag=nexus.entity.vehicle]







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

execute unless score @s nexus.id = @s nexus.id store result score @s nexus.id run scoreboard players add #global nexus.id 1
execute unless score @s nexus.entity_id = @s nexus.entity_id store result score @s nexus.entity_id run scoreboard players add #global nexus.entity_id 1







# Remove tags

tag @s remove nexus.entity.id.bit_00.0
tag @s remove nexus.entity.id.bit_01.0
tag @s remove nexus.entity.id.bit_02.0
tag @s remove nexus.entity.id.bit_03.0
tag @s remove nexus.entity.id.bit_04.0
tag @s remove nexus.entity.id.bit_05.0
tag @s remove nexus.entity.id.bit_06.0
tag @s remove nexus.entity.id.bit_07.0
tag @s remove nexus.entity.id.bit_08.0
tag @s remove nexus.entity.id.bit_09.0
tag @s remove nexus.entity.id.bit_10.0
tag @s remove nexus.entity.id.bit_11.0
tag @s remove nexus.entity.id.bit_12.0
tag @s remove nexus.entity.id.bit_13.0
tag @s remove nexus.entity.id.bit_14.0
tag @s remove nexus.entity.id.bit_15.0
tag @s remove nexus.entity.id.bit_16.0
tag @s remove nexus.entity.id.bit_17.0
tag @s remove nexus.entity.id.bit_18.0
tag @s remove nexus.entity.id.bit_19.0
tag @s remove nexus.entity.id.bit_20.0
tag @s remove nexus.entity.id.bit_21.0
tag @s remove nexus.entity.id.bit_22.0
tag @s remove nexus.entity.id.bit_23.0
tag @s remove nexus.entity.id.bit_24.0
tag @s remove nexus.entity.id.bit_25.0
tag @s remove nexus.entity.id.bit_26.0
tag @s remove nexus.entity.id.bit_27.0
tag @s remove nexus.entity.id.bit_28.0
tag @s remove nexus.entity.id.bit_29.0
tag @s remove nexus.entity.id.bit_30.0
tag @s remove nexus.entity.id.bit_31.0

tag @s remove nexus.entity.id.bit_00.1
tag @s remove nexus.entity.id.bit_01.1
tag @s remove nexus.entity.id.bit_02.1
tag @s remove nexus.entity.id.bit_03.1
tag @s remove nexus.entity.id.bit_04.1
tag @s remove nexus.entity.id.bit_05.1
tag @s remove nexus.entity.id.bit_06.1
tag @s remove nexus.entity.id.bit_07.1
tag @s remove nexus.entity.id.bit_08.1
tag @s remove nexus.entity.id.bit_09.1
tag @s remove nexus.entity.id.bit_10.1
tag @s remove nexus.entity.id.bit_11.1
tag @s remove nexus.entity.id.bit_12.1
tag @s remove nexus.entity.id.bit_13.1
tag @s remove nexus.entity.id.bit_14.1
tag @s remove nexus.entity.id.bit_15.1
tag @s remove nexus.entity.id.bit_16.1
tag @s remove nexus.entity.id.bit_17.1
tag @s remove nexus.entity.id.bit_18.1
tag @s remove nexus.entity.id.bit_19.1
tag @s remove nexus.entity.id.bit_20.1
tag @s remove nexus.entity.id.bit_21.1
tag @s remove nexus.entity.id.bit_22.1
tag @s remove nexus.entity.id.bit_23.1
tag @s remove nexus.entity.id.bit_24.1
tag @s remove nexus.entity.id.bit_25.1
tag @s remove nexus.entity.id.bit_26.1
tag @s remove nexus.entity.id.bit_27.1
tag @s remove nexus.entity.id.bit_28.1
tag @s remove nexus.entity.id.bit_29.1
tag @s remove nexus.entity.id.bit_30.1
tag @s remove nexus.entity.id.bit_31.1







# Assign bits

scoreboard players operation #local nexus.entity_id = @s nexus.entity_id
execute if score #local nexus.entity_id matches ..-000000001 run tag @s add nexus.entity.id.bit_31.1
execute if score #local nexus.entity_id matches ..-000000001 run scoreboard players operation #local nexus.entity_id -= #-2147483648 nexus.value
execute if score #local nexus.entity_id matches 1073741824.. run tag @s add nexus.entity.id.bit_30.1
execute if score #local nexus.entity_id matches 1073741824.. run scoreboard players remove #local nexus.entity_id 1073741824
execute if score #local nexus.entity_id matches 0536870912.. run tag @s add nexus.entity.id.bit_29.1
execute if score #local nexus.entity_id matches 0536870912.. run scoreboard players remove #local nexus.entity_id 536870912
execute if score #local nexus.entity_id matches 0268435456.. run tag @s add nexus.entity.id.bit_28.1
execute if score #local nexus.entity_id matches 0268435456.. run scoreboard players remove #local nexus.entity_id 268435456
execute if score #local nexus.entity_id matches 0134217728.. run tag @s add nexus.entity.id.bit_27.1
execute if score #local nexus.entity_id matches 0134217728.. run scoreboard players remove #local nexus.entity_id 134217728
execute if score #local nexus.entity_id matches 0067108864.. run tag @s add nexus.entity.id.bit_26.1
execute if score #local nexus.entity_id matches 0067108864.. run scoreboard players remove #local nexus.entity_id 67108864
execute if score #local nexus.entity_id matches 0033554432.. run tag @s add nexus.entity.id.bit_25.1
execute if score #local nexus.entity_id matches 0033554432.. run scoreboard players remove #local nexus.entity_id 33554432
execute if score #local nexus.entity_id matches 0016777216.. run tag @s add nexus.entity.id.bit_24.1
execute if score #local nexus.entity_id matches 0016777216.. run scoreboard players remove #local nexus.entity_id 16777216
execute if score #local nexus.entity_id matches 0008388608.. run tag @s add nexus.entity.id.bit_23.1
execute if score #local nexus.entity_id matches 0008388608.. run scoreboard players remove #local nexus.entity_id 8388608
execute if score #local nexus.entity_id matches 0004194304.. run tag @s add nexus.entity.id.bit_22.1
execute if score #local nexus.entity_id matches 0004194304.. run scoreboard players remove #local nexus.entity_id 4194304
execute if score #local nexus.entity_id matches 0002097152.. run tag @s add nexus.entity.id.bit_21.1
execute if score #local nexus.entity_id matches 0002097152.. run scoreboard players remove #local nexus.entity_id 2097152
execute if score #local nexus.entity_id matches 0001048576.. run tag @s add nexus.entity.id.bit_20.1
execute if score #local nexus.entity_id matches 0001048576.. run scoreboard players remove #local nexus.entity_id 1048576
execute if score #local nexus.entity_id matches 0000524288.. run tag @s add nexus.entity.id.bit_19.1
execute if score #local nexus.entity_id matches 0000524288.. run scoreboard players remove #local nexus.entity_id 524288
execute if score #local nexus.entity_id matches 0000262144.. run tag @s add nexus.entity.id.bit_18.1
execute if score #local nexus.entity_id matches 0000262144.. run scoreboard players remove #local nexus.entity_id 262144
execute if score #local nexus.entity_id matches 0000131072.. run tag @s add nexus.entity.id.bit_17.1
execute if score #local nexus.entity_id matches 0000131072.. run scoreboard players remove #local nexus.entity_id 131072
execute if score #local nexus.entity_id matches 0000065536.. run tag @s add nexus.entity.id.bit_16.1
execute if score #local nexus.entity_id matches 0000065536.. run scoreboard players remove #local nexus.entity_id 65536
execute if score #local nexus.entity_id matches 0000032768.. run tag @s add nexus.entity.id.bit_15.1
execute if score #local nexus.entity_id matches 0000032768.. run scoreboard players remove #local nexus.entity_id 32768
execute if score #local nexus.entity_id matches 0000016384.. run tag @s add nexus.entity.id.bit_14.1
execute if score #local nexus.entity_id matches 0000016384.. run scoreboard players remove #local nexus.entity_id 16384
execute if score #local nexus.entity_id matches 0000008192.. run tag @s add nexus.entity.id.bit_13.1
execute if score #local nexus.entity_id matches 0000008192.. run scoreboard players remove #local nexus.entity_id 8192
execute if score #local nexus.entity_id matches 0000004096.. run tag @s add nexus.entity.id.bit_12.1
execute if score #local nexus.entity_id matches 0000004096.. run scoreboard players remove #local nexus.entity_id 4096
execute if score #local nexus.entity_id matches 0000002048.. run tag @s add nexus.entity.id.bit_11.1
execute if score #local nexus.entity_id matches 0000002048.. run scoreboard players remove #local nexus.entity_id 2048
execute if score #local nexus.entity_id matches 0000001024.. run tag @s add nexus.entity.id.bit_10.1
execute if score #local nexus.entity_id matches 0000001024.. run scoreboard players remove #local nexus.entity_id 1024
execute if score #local nexus.entity_id matches 0000000512.. run tag @s add nexus.entity.id.bit_09.1
execute if score #local nexus.entity_id matches 0000000512.. run scoreboard players remove #local nexus.entity_id 512
execute if score #local nexus.entity_id matches 0000000256.. run tag @s add nexus.entity.id.bit_08.1
execute if score #local nexus.entity_id matches 0000000256.. run scoreboard players remove #local nexus.entity_id 256
execute if score #local nexus.entity_id matches 0000000128.. run tag @s add nexus.entity.id.bit_07.1
execute if score #local nexus.entity_id matches 0000000128.. run scoreboard players remove #local nexus.entity_id 128
execute if score #local nexus.entity_id matches 0000000064.. run tag @s add nexus.entity.id.bit_06.1
execute if score #local nexus.entity_id matches 0000000064.. run scoreboard players remove #local nexus.entity_id 64
execute if score #local nexus.entity_id matches 0000000032.. run tag @s add nexus.entity.id.bit_05.1
execute if score #local nexus.entity_id matches 0000000032.. run scoreboard players remove #local nexus.entity_id 32
execute if score #local nexus.entity_id matches 0000000016.. run tag @s add nexus.entity.id.bit_04.1
execute if score #local nexus.entity_id matches 0000000016.. run scoreboard players remove #local nexus.entity_id 16
execute if score #local nexus.entity_id matches 0000000008.. run tag @s add nexus.entity.id.bit_03.1
execute if score #local nexus.entity_id matches 0000000008.. run scoreboard players remove #local nexus.entity_id 8
execute if score #local nexus.entity_id matches 0000000004.. run tag @s add nexus.entity.id.bit_02.1
execute if score #local nexus.entity_id matches 0000000004.. run scoreboard players remove #local nexus.entity_id 4
execute if score #local nexus.entity_id matches 0000000002.. run tag @s add nexus.entity.id.bit_01.1
execute if score #local nexus.entity_id matches 0000000002.. run scoreboard players remove #local nexus.entity_id 2
execute if score #local nexus.entity_id matches 0000000001.. run tag @s add nexus.entity.id.bit_00.1
execute if score #local nexus.entity_id matches 0000000001.. run scoreboard players remove #local nexus.entity_id 1







# Add null tags

tag @s[tag=!nexus.entity.id.bit_00.1] add nexus.entity.id.bit_00.0
tag @s[tag=!nexus.entity.id.bit_01.1] add nexus.entity.id.bit_01.0
tag @s[tag=!nexus.entity.id.bit_02.1] add nexus.entity.id.bit_02.0
tag @s[tag=!nexus.entity.id.bit_03.1] add nexus.entity.id.bit_03.0
tag @s[tag=!nexus.entity.id.bit_04.1] add nexus.entity.id.bit_04.0
tag @s[tag=!nexus.entity.id.bit_05.1] add nexus.entity.id.bit_05.0
tag @s[tag=!nexus.entity.id.bit_06.1] add nexus.entity.id.bit_06.0
tag @s[tag=!nexus.entity.id.bit_07.1] add nexus.entity.id.bit_07.0
tag @s[tag=!nexus.entity.id.bit_08.1] add nexus.entity.id.bit_08.0
tag @s[tag=!nexus.entity.id.bit_09.1] add nexus.entity.id.bit_09.0
tag @s[tag=!nexus.entity.id.bit_10.1] add nexus.entity.id.bit_10.0
tag @s[tag=!nexus.entity.id.bit_11.1] add nexus.entity.id.bit_11.0
tag @s[tag=!nexus.entity.id.bit_12.1] add nexus.entity.id.bit_12.0
tag @s[tag=!nexus.entity.id.bit_13.1] add nexus.entity.id.bit_13.0
tag @s[tag=!nexus.entity.id.bit_14.1] add nexus.entity.id.bit_14.0
tag @s[tag=!nexus.entity.id.bit_15.1] add nexus.entity.id.bit_15.0
tag @s[tag=!nexus.entity.id.bit_16.1] add nexus.entity.id.bit_16.0
tag @s[tag=!nexus.entity.id.bit_17.1] add nexus.entity.id.bit_17.0
tag @s[tag=!nexus.entity.id.bit_18.1] add nexus.entity.id.bit_18.0
tag @s[tag=!nexus.entity.id.bit_19.1] add nexus.entity.id.bit_19.0
tag @s[tag=!nexus.entity.id.bit_20.1] add nexus.entity.id.bit_20.0
tag @s[tag=!nexus.entity.id.bit_21.1] add nexus.entity.id.bit_21.0
tag @s[tag=!nexus.entity.id.bit_22.1] add nexus.entity.id.bit_22.0
tag @s[tag=!nexus.entity.id.bit_23.1] add nexus.entity.id.bit_23.0
tag @s[tag=!nexus.entity.id.bit_24.1] add nexus.entity.id.bit_24.0
tag @s[tag=!nexus.entity.id.bit_25.1] add nexus.entity.id.bit_25.0
tag @s[tag=!nexus.entity.id.bit_26.1] add nexus.entity.id.bit_26.0
tag @s[tag=!nexus.entity.id.bit_27.1] add nexus.entity.id.bit_27.0
tag @s[tag=!nexus.entity.id.bit_28.1] add nexus.entity.id.bit_28.0
tag @s[tag=!nexus.entity.id.bit_29.1] add nexus.entity.id.bit_29.0
tag @s[tag=!nexus.entity.id.bit_30.1] add nexus.entity.id.bit_30.0
tag @s[tag=!nexus.entity.id.bit_31.1] add nexus.entity.id.bit_31.0







# Execute function tag

function #nexus:entity/process