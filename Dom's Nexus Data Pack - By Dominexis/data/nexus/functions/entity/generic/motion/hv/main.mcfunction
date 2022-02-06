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
scoreboard players set #motion_climbed_boolean nexus.value 0
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

scoreboard players operation #offset_anchor_x nexus.value = #x nexus.value
scoreboard players operation #offset_anchor_y nexus.value = #y nexus.value
scoreboard players operation #offset_anchor_z nexus.value = #z nexus.value
scoreboard players operation #offset_anchor_x nexus.value /= #500 nexus.value
scoreboard players operation #offset_anchor_y nexus.value /= #500 nexus.value
scoreboard players operation #offset_anchor_z nexus.value /= #500 nexus.value

scoreboard players operation #y nexus.value += #hitbox_offset nexus.value







# Compute offset

scoreboard players operation #offset_x nexus.value = #x nexus.value
scoreboard players operation #offset_y nexus.value = #y nexus.value
scoreboard players operation #offset_z nexus.value = #z nexus.value
scoreboard players operation #offset_x nexus.value -= #hitbox_width nexus.value
scoreboard players operation #offset_y nexus.value -= #hitbox_height nexus.value
scoreboard players operation #offset_z nexus.value -= #hitbox_width nexus.value

scoreboard players operation #subblock_x nexus.value = #offset_x nexus.value
scoreboard players operation #subblock_y nexus.value = #offset_y nexus.value
scoreboard players operation #subblock_z nexus.value = #offset_z nexus.value

scoreboard players operation #offset_x nexus.value /= #500 nexus.value
scoreboard players operation #offset_y nexus.value /= #500 nexus.value
scoreboard players operation #offset_z nexus.value /= #500 nexus.value
scoreboard players operation #offset_x nexus.value -= #offset_anchor_x nexus.value
scoreboard players operation #offset_y nexus.value -= #offset_anchor_y nexus.value
scoreboard players operation #offset_z nexus.value -= #offset_anchor_z nexus.value







# Compute sub-block position

scoreboard players operation #subblock_x nexus.value %= #1000 nexus.value
scoreboard players operation #subblock_y nexus.value %= #1000 nexus.value
scoreboard players operation #subblock_z nexus.value %= #1000 nexus.value
scoreboard players operation #subblock_x nexus.value /= #500 nexus.value
scoreboard players operation #subblock_y nexus.value /= #500 nexus.value
scoreboard players operation #subblock_z nexus.value /= #500 nexus.value







# Compute hitbox orientation

scoreboard players operation #hitbox_x nexus.value = #hitbox_width nexus.value
scoreboard players operation #hitbox_y nexus.value = #hitbox_height nexus.value
scoreboard players operation #hitbox_z nexus.value = #hitbox_width nexus.value
scoreboard players operation #hitbox_x nexus.value *= #sign_x nexus.value
scoreboard players operation #hitbox_y nexus.value *= #sign_y nexus.value
scoreboard players operation #hitbox_z nexus.value *= #sign_z nexus.value







# Compute coordinates of head and tail

scoreboard players operation #head_x nexus.value = #x nexus.value
scoreboard players operation #head_y nexus.value = #y nexus.value
scoreboard players operation #head_z nexus.value = #z nexus.value
scoreboard players operation #head_x nexus.value += #hitbox_x nexus.value
scoreboard players operation #head_y nexus.value += #hitbox_y nexus.value
scoreboard players operation #head_z nexus.value += #hitbox_z nexus.value

scoreboard players operation #tail_x nexus.value = #x nexus.value
scoreboard players operation #tail_y nexus.value = #y nexus.value
scoreboard players operation #tail_z nexus.value = #z nexus.value
scoreboard players operation #tail_x nexus.value -= #hitbox_x nexus.value
scoreboard players operation #tail_y nexus.value -= #hitbox_y nexus.value
scoreboard players operation #tail_z nexus.value -= #hitbox_z nexus.value







# Compute size of hitbox

scoreboard players operation #hitbox_x nexus.value = #head_x nexus.value
scoreboard players operation #hitbox_y nexus.value = #head_y nexus.value
scoreboard players operation #hitbox_z nexus.value = #head_z nexus.value
scoreboard players operation #hitbox_x nexus.value /= #500 nexus.value
scoreboard players operation #hitbox_y nexus.value /= #500 nexus.value
scoreboard players operation #hitbox_z nexus.value /= #500 nexus.value

scoreboard players operation #math_00 nexus.value = #tail_x nexus.value
scoreboard players operation #math_01 nexus.value = #tail_y nexus.value
scoreboard players operation #math_02 nexus.value = #tail_z nexus.value
scoreboard players operation #math_00 nexus.value /= #500 nexus.value
scoreboard players operation #math_01 nexus.value /= #500 nexus.value
scoreboard players operation #math_02 nexus.value /= #500 nexus.value

scoreboard players operation #hitbox_x nexus.value -= #math_00 nexus.value
scoreboard players operation #hitbox_y nexus.value -= #math_01 nexus.value
scoreboard players operation #hitbox_z nexus.value -= #math_02 nexus.value

execute if score #hitbox_x nexus.value matches ..-1 run scoreboard players operation #hitbox_x nexus.value *= #-1 nexus.value
execute if score #hitbox_y nexus.value matches ..-1 run scoreboard players operation #hitbox_y nexus.value *= #-1 nexus.value
execute if score #hitbox_z nexus.value matches ..-1 run scoreboard players operation #hitbox_z nexus.value *= #-1 nexus.value







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



scoreboard players operation #motion_head_x nexus.value = #head_x nexus.value
scoreboard players operation #motion_head_y nexus.value = #head_y nexus.value
scoreboard players operation #motion_head_z nexus.value = #head_z nexus.value
scoreboard players operation #motion_head_x nexus.value %= #500 nexus.value
scoreboard players operation #motion_head_y nexus.value %= #500 nexus.value
scoreboard players operation #motion_head_z nexus.value %= #500 nexus.value
execute if score #sign_x nexus.value matches 1 run scoreboard players operation #motion_head_x nexus.value *= #-1 nexus.value
execute if score #sign_y nexus.value matches 1 run scoreboard players operation #motion_head_y nexus.value *= #-1 nexus.value
execute if score #sign_z nexus.value matches 1 run scoreboard players operation #motion_head_z nexus.value *= #-1 nexus.value
execute if score #sign_x nexus.value matches 1 run scoreboard players add #motion_head_x nexus.value 500
execute if score #sign_y nexus.value matches 1 run scoreboard players add #motion_head_y nexus.value 500
execute if score #sign_z nexus.value matches 1 run scoreboard players add #motion_head_z nexus.value 500

scoreboard players operation #motion_tail_x nexus.value = #tail_x nexus.value
scoreboard players operation #motion_tail_y nexus.value = #tail_y nexus.value
scoreboard players operation #motion_tail_z nexus.value = #tail_z nexus.value
scoreboard players operation #motion_tail_x nexus.value %= #500 nexus.value
scoreboard players operation #motion_tail_y nexus.value %= #500 nexus.value
scoreboard players operation #motion_tail_z nexus.value %= #500 nexus.value
execute if score #sign_x nexus.value matches 1 run scoreboard players operation #motion_tail_x nexus.value *= #-1 nexus.value
execute if score #sign_y nexus.value matches 1 run scoreboard players operation #motion_tail_y nexus.value *= #-1 nexus.value
execute if score #sign_z nexus.value matches 1 run scoreboard players operation #motion_tail_z nexus.value *= #-1 nexus.value
execute if score #sign_x nexus.value matches 1 run scoreboard players add #motion_tail_x nexus.value 500
execute if score #sign_y nexus.value matches 1 run scoreboard players add #motion_tail_y nexus.value 500
execute if score #sign_z nexus.value matches 1 run scoreboard players add #motion_tail_z nexus.value 500



scoreboard players operation #distance_head_x nexus.value = #delta_x nexus.value
scoreboard players operation #distance_head_y nexus.value = #delta_y nexus.value
scoreboard players operation #distance_head_z nexus.value = #delta_z nexus.value
scoreboard players operation #distance_head_x nexus.value *= #motion_head_x nexus.value
scoreboard players operation #distance_head_y nexus.value *= #motion_head_y nexus.value
scoreboard players operation #distance_head_z nexus.value *= #motion_head_z nexus.value
scoreboard players operation #distance_head_x nexus.value /= #500 nexus.value
scoreboard players operation #distance_head_y nexus.value /= #500 nexus.value
scoreboard players operation #distance_head_z nexus.value /= #500 nexus.value
execute if score #motion_limit_x nexus.value matches 0 run scoreboard players set #distance_head_x nexus.value 2147483647
execute if score #motion_limit_y nexus.value matches 0 run scoreboard players set #distance_head_y nexus.value 2147483647
execute if score #motion_limit_z nexus.value matches 0 run scoreboard players set #distance_head_z nexus.value 2147483647

scoreboard players operation #distance_tail_x nexus.value = #delta_x nexus.value
scoreboard players operation #distance_tail_y nexus.value = #delta_y nexus.value
scoreboard players operation #distance_tail_z nexus.value = #delta_z nexus.value
scoreboard players operation #distance_tail_x nexus.value *= #motion_tail_x nexus.value
scoreboard players operation #distance_tail_y nexus.value *= #motion_tail_y nexus.value
scoreboard players operation #distance_tail_z nexus.value *= #motion_tail_z nexus.value
scoreboard players operation #distance_tail_x nexus.value /= #500 nexus.value
scoreboard players operation #distance_tail_y nexus.value /= #500 nexus.value
scoreboard players operation #distance_tail_z nexus.value /= #500 nexus.value
execute if score #motion_limit_x nexus.value matches 0 run scoreboard players set #distance_tail_x nexus.value 2147483647
execute if score #motion_limit_y nexus.value matches 0 run scoreboard players set #distance_tail_y nexus.value 2147483647
execute if score #motion_limit_z nexus.value matches 0 run scoreboard players set #distance_tail_z nexus.value 2147483647







# Execute function tree

function nexus:entity/generic/motion/hv/position/x







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

execute if score @s nexus.collide matches 1 if score #motion_halt_boolean nexus.value matches 1 run function nexus:entity/generic/motion/hv/halt







# Move entity

scoreboard players operation #motion_head_x nexus.value < #motion_limit_x nexus.value
scoreboard players operation #motion_head_y nexus.value < #motion_limit_y nexus.value
scoreboard players operation #motion_head_z nexus.value < #motion_limit_z nexus.value
scoreboard players operation #motion_head_x nexus.value *= #sign_x nexus.value
scoreboard players operation #motion_head_y nexus.value *= #sign_y nexus.value
scoreboard players operation #motion_head_z nexus.value *= #sign_z nexus.value

scoreboard players operation @s nexus.x += #motion_head_x nexus.value
scoreboard players operation @s nexus.y += #motion_head_y nexus.value
scoreboard players operation @s nexus.z += #motion_head_z nexus.value

function nexus:entity/generic/data/set/objective/pos







# Apply friction

function nexus:entity/generic/motion/hv/friction/main







# Reset native values

scoreboard players operation @s nexus.mot_x *= #sign_x nexus.value
scoreboard players operation @s nexus.mot_y *= #sign_y nexus.value
scoreboard players operation @s nexus.mot_z *= #sign_z nexus.value