# Initialize values

scoreboard players set #motion_end nexus.value 0
scoreboard players set #shortest_distance nexus.value 0

scoreboard players set #collision_x nexus.value 0
scoreboard players set #collision_y nexus.value 0
scoreboard players set #collision_z nexus.value 0

scoreboard players operation #previous nexus.collide = @s nexus.collide
scoreboard players operation #previous nexus.collide_x = @s nexus.collide_x
scoreboard players operation #previous nexus.collide_y = @s nexus.collide_y
scoreboard players operation #previous nexus.collide_z = @s nexus.collide_z

scoreboard players set @s nexus.collide 0
scoreboard players set #motion_fluid_boolean nexus.value 0
scoreboard players set #motion_fire_boolean nexus.value 0
scoreboard players set #motion_destroyed_boolean nexus.value 0







# Compute motion signs

execute if score @s nexus.mot_x matches ..-1 run scoreboard players set #sign_x nexus.value -1
execute if score @s nexus.mot_y matches ..-1 run scoreboard players set #sign_y nexus.value -1
execute if score @s nexus.mot_z matches ..-1 run scoreboard players set #sign_z nexus.value -1
execute if score @s nexus.mot_x matches 00.. run scoreboard players set #sign_x nexus.value 1
execute if score @s nexus.mot_y matches 00.. run scoreboard players set #sign_y nexus.value 1
execute if score @s nexus.mot_z matches 00.. run scoreboard players set #sign_z nexus.value 1

scoreboard players operation @s nexus.mot_x *= #sign_x nexus.value
scoreboard players operation @s nexus.mot_y *= #sign_y nexus.value
scoreboard players operation @s nexus.mot_z *= #sign_z nexus.value







# Push motion value to limit

scoreboard players operation #motion_limit_x nexus.value = @s nexus.mot_x
scoreboard players operation #motion_limit_y nexus.value = @s nexus.mot_y
scoreboard players operation #motion_limit_z nexus.value = @s nexus.mot_z

execute if score #motion_missed_ticks_boolean nexus.value matches 1 run scoreboard players operation #motion_limit_x nexus.value *= #missed_ticks nexus.value
execute if score #motion_missed_ticks_boolean nexus.value matches 1 run scoreboard players operation #motion_limit_y nexus.value *= #missed_ticks nexus.value
execute if score #motion_missed_ticks_boolean nexus.value matches 1 run scoreboard players operation #motion_limit_z nexus.value *= #missed_ticks nexus.value

execute if score #motion_limit nexus.value matches 1.. run scoreboard players operation #motion_limit_x nexus.value < #motion_limit nexus.value
execute if score #motion_limit nexus.value matches 1.. run scoreboard players operation #motion_limit_y nexus.value < #motion_limit nexus.value
execute if score #motion_limit nexus.value matches 1.. run scoreboard players operation #motion_limit_z nexus.value < #motion_limit nexus.value







# Manage position

scoreboard players operation #x nexus.value = @s nexus.x
scoreboard players operation #y nexus.value = @s nexus.y
scoreboard players operation #z nexus.value = @s nexus.z







# Calculate parameters for voxel traversal

scoreboard players set #delta_x nexus.value 1000000
scoreboard players set #delta_y nexus.value 1000000
scoreboard players set #delta_z nexus.value 1000000
scoreboard players operation #delta_x nexus.value /= #motion_limit_x nexus.value
scoreboard players operation #delta_y nexus.value /= #motion_limit_y nexus.value
scoreboard players operation #delta_z nexus.value /= #motion_limit_z nexus.value
execute if score #motion_limit_x nexus.value matches 0 run scoreboard players set #delta_x nexus.value 2147483647
execute if score #motion_limit_y nexus.value matches 0 run scoreboard players set #delta_y nexus.value 2147483647
execute if score #motion_limit_z nexus.value matches 0 run scoreboard players set #delta_z nexus.value 2147483647



scoreboard players operation #motion_x nexus.value = #x nexus.value
scoreboard players operation #motion_y nexus.value = #y nexus.value
scoreboard players operation #motion_z nexus.value = #z nexus.value
scoreboard players operation #motion_x nexus.value %= #1000 nexus.value
scoreboard players operation #motion_y nexus.value %= #1000 nexus.value
scoreboard players operation #motion_z nexus.value %= #1000 nexus.value
execute if score #sign_x nexus.value matches 1 run scoreboard players operation #motion_x nexus.value *= #-1 nexus.value
execute if score #sign_y nexus.value matches 1 run scoreboard players operation #motion_y nexus.value *= #-1 nexus.value
execute if score #sign_z nexus.value matches 1 run scoreboard players operation #motion_z nexus.value *= #-1 nexus.value
execute if score #sign_x nexus.value matches 1 run scoreboard players add #motion_x nexus.value 1000
execute if score #sign_y nexus.value matches 1 run scoreboard players add #motion_y nexus.value 1000
execute if score #sign_z nexus.value matches 1 run scoreboard players add #motion_z nexus.value 1000



scoreboard players operation #distance_x nexus.value = #delta_x nexus.value
scoreboard players operation #distance_y nexus.value = #delta_y nexus.value
scoreboard players operation #distance_z nexus.value = #delta_z nexus.value
scoreboard players operation #distance_x nexus.value *= #motion_x nexus.value
scoreboard players operation #distance_y nexus.value *= #motion_y nexus.value
scoreboard players operation #distance_z nexus.value *= #motion_z nexus.value
scoreboard players operation #distance_x nexus.value /= #1000 nexus.value
scoreboard players operation #distance_y nexus.value /= #1000 nexus.value
scoreboard players operation #distance_z nexus.value /= #1000 nexus.value
execute if score #motion_limit_x nexus.value matches 0 run scoreboard players set #distance_x nexus.value 2147483647
execute if score #motion_limit_y nexus.value matches 0 run scoreboard players set #distance_y nexus.value 2147483647
execute if score #motion_limit_z nexus.value matches 0 run scoreboard players set #distance_z nexus.value 2147483647







# Execute traversal function

function nexus:entity/generic/motion/wp/traverse/main







# Manage collision variables

execute if score #collision_x nexus.value matches 1 run scoreboard players set @s nexus.collide 1
execute if score #collision_y nexus.value matches 1 run scoreboard players set @s nexus.collide 1
execute if score #collision_z nexus.value matches 1 run scoreboard players set @s nexus.collide 1

scoreboard players operation @s nexus.collide_x = #collision_x nexus.value
scoreboard players operation @s nexus.collide_y = #collision_y nexus.value
scoreboard players operation @s nexus.collide_z = #collision_z nexus.value
scoreboard players operation @s nexus.collide_x *= #sign_x nexus.value
scoreboard players operation @s nexus.collide_y *= #sign_y nexus.value
scoreboard players operation @s nexus.collide_z *= #sign_z nexus.value







# Adjust motion for halt mode

execute if score @s nexus.collide matches 1 if score #motion_halt_boolean nexus.value matches 1 run function nexus:entity/generic/motion/wp/halt







# Move entity

scoreboard players operation #motion_x nexus.value < #motion_limit_x nexus.value
scoreboard players operation #motion_y nexus.value < #motion_limit_y nexus.value
scoreboard players operation #motion_z nexus.value < #motion_limit_z nexus.value
scoreboard players operation #motion_x nexus.value *= #sign_x nexus.value
scoreboard players operation #motion_y nexus.value *= #sign_y nexus.value
scoreboard players operation #motion_z nexus.value *= #sign_z nexus.value

scoreboard players operation @s nexus.x += #motion_x nexus.value
scoreboard players operation @s nexus.y += #motion_y nexus.value
scoreboard players operation @s nexus.z += #motion_z nexus.value

function nexus:entity/generic/data/set/objective/pos







# Apply friction

function nexus:entity/generic/motion/wp/friction/main







# Reset native values

scoreboard players operation @s nexus.mot_x *= #sign_x nexus.value
scoreboard players operation @s nexus.mot_y *= #sign_y nexus.value
scoreboard players operation @s nexus.mot_z *= #sign_z nexus.value