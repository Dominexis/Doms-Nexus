# Assign point of interest to nearest player

execute as @p run function nexus:entity/generic/data/extract/fakeplayer/pos
scoreboard players operation #input_vector_x nexus.value = #entity_x nexus.value
scoreboard players operation #input_vector_y nexus.value = #entity_y nexus.value
scoreboard players operation #input_vector_z nexus.value = #entity_z nexus.value
scoreboard players add #input_vector_y nexus.value 1500







# Get rotation to target

scoreboard players operation #input_vector_x nexus.value -= @s nexus.x
scoreboard players operation #input_vector_y nexus.value -= @s nexus.y
scoreboard players operation #input_vector_z nexus.value -= @s nexus.z

scoreboard players remove #input_vector_y nexus.value 500

function nexus:generic/vector/to_gimbal/3d

scoreboard players operation #yaw nexus.value = #output_yaw nexus.value
scoreboard players operation #pitch nexus.value = #output_pitch nexus.value







# Pathfind around obstacles

function nexus:entity/generic/pathfinder/crawl/main







# Rotate entities towards respective targets

scoreboard players set #rotation_acceleration nexus.value 100
scoreboard players operation #rotation_acceleration nexus.value *= #missed_ticks nexus.value
function nexus:entity/generic/rotation/yaw_pitch







# Calculate vector

scoreboard players operation #input_yaw nexus.value = @s nexus.yaw
function nexus:generic/vector/from_gimbal/2d/yaw
scoreboard players operation #vector_x temp.value = #output_vector_x nexus.value
scoreboard players operation #vector_z temp.value = #output_vector_z nexus.value







# Modify motion

scoreboard players operation #interpolation_location_x nexus.value = @s nexus.mot_x
scoreboard players operation #interpolation_location_y nexus.value = @s nexus.mot_z
scoreboard players operation #interpolation_destination_x nexus.value = #vector_x temp.value
scoreboard players operation #interpolation_destination_y nexus.value = #vector_z temp.value
scoreboard players operation #interpolation_destination_x nexus.value /= #5 nexus.value
scoreboard players operation #interpolation_destination_y nexus.value /= #5 nexus.value
scoreboard players set #interpolation_velocity_x nexus.value 0
scoreboard players set #interpolation_velocity_y nexus.value 0
scoreboard players set #interpolation_acceleration nexus.value 100
scoreboard players operation #interpolation_acceleration nexus.value *= #missed_ticks nexus.value
scoreboard players set #scale_factor nexus.value 1

function nexus:generic/interpolation/floating_point/2d

scoreboard players operation @s nexus.mot_x = #interpolation_location_x nexus.value
scoreboard players operation @s nexus.mot_z = #interpolation_location_y nexus.value







# Motion

function temp:entity/skull/mode/generic/motion







# Collisions

function temp:entity/skull/mode/generic/collision

scoreboard players set #boolean temp.value 0
execute if score @s nexus.collide_y matches -1 if score #collision_x nexus.value matches 1 run scoreboard players set #boolean temp.value 1
execute if score @s nexus.collide_y matches -1 if score #collision_z nexus.value matches 1 run scoreboard players set #boolean temp.value 1
execute if score @s nexus.collide_y matches -1 at @s if entity @a[distance=..2,gamemode=!spectator] run scoreboard players set #boolean temp.value 1
execute if score #boolean temp.value matches 1 run scoreboard players set @s nexus.mot_y 700
execute if score #boolean temp.value matches 1 run playsound minecraft:enchant.thorns.hit hostile @a ~ ~ ~ 0.5







# Hurt players

scoreboard players set #damage_amount nexus.value 1000
scoreboard players set #damage_source nexus.value 999900001
scoreboard players set #damage_armor_boolean nexus.value 1
scoreboard players set #damage_burn_boolean nexus.value 0
execute at @s as @a[distance=..1] run function nexus:player/health/damage/verify