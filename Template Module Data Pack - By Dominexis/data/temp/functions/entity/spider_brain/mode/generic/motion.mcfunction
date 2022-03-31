# Apply gravity

scoreboard players operation #math_00 temp.value = #gravity nexus.value
scoreboard players operation #math_00 temp.value *= #missed_ticks nexus.value
scoreboard players operation @s nexus.mot_y += #math_00 temp.value







# Apply push from entities

scoreboard players set #player_push_boolean nexus.value 1
function nexus:entity/generic/push/main







# Move entity along current trajectory

scoreboard players set #hitbox_offset nexus.value 1000
scoreboard players set #hitbox_width nexus.value 1000
scoreboard players set #hitbox_height nexus.value 1000

scoreboard players set #collision_friction_numerator nexus.value 95
scoreboard players set #fluid_friction_numerator nexus.value 80
scoreboard players set #climb_friction_numerator nexus.value 95
scoreboard players set #friction_numerator nexus.value 95
scoreboard players set #friction_denominator nexus.value 100

scoreboard players set #downward_speed_floor_destroy_threshold nexus.value 700
scoreboard players set #block_destroy_probability nexus.value 300

scoreboard players set #motion_climb_boolean nexus.value 1
scoreboard players set #motion_destroy_boolean nexus.value 1
scoreboard players set #motion_halt_boolean nexus.value 0
scoreboard players set #motion_missed_ticks_boolean nexus.value 1
scoreboard players set #motion_limit nexus.value 3000

function nexus:entity/generic/motion/hv/main







# Collisions

scoreboard players set #boolean temp.value 0
execute if score #collision_x nexus.value matches 1 if score @s nexus.collide_y matches -1 run scoreboard players set #boolean temp.value 1
execute if score #collision_z nexus.value matches 1 if score @s nexus.collide_y matches -1 run scoreboard players set #boolean temp.value 1
execute if score #boolean temp.value matches 1 if entity @s[tag=!temp.entity.animate.jump,tag=!temp.entity.animate.land] run function temp:entity/spider_brain/animate/jump/start

execute if score #previous nexus.collide_y matches 0 if score @s nexus.collide_y matches -1 run function temp:entity/spider_brain/animate/land/start

execute if score #collision_x nexus.value matches 1 run scoreboard players set @s nexus.mot_x 0
execute if score #collision_y nexus.value matches 1 run scoreboard players set @s nexus.mot_y 0
execute if score #collision_z nexus.value matches 1 run scoreboard players set @s nexus.mot_z 0







# Compute velocities

scoreboard players operation #input_vector_1_x nexus.value = @s nexus.mot_x
scoreboard players operation #input_vector_1_y nexus.value = @s nexus.mot_z
scoreboard players operation #input_vector_2_x nexus.value = #vector_x temp.value
scoreboard players operation #input_vector_2_y nexus.value = #vector_z temp.value
function nexus:generic/vector/dot_product/2d
scoreboard players operation #right_speed temp.value = #output nexus.value
scoreboard players operation #left_speed temp.value = #output nexus.value

scoreboard players operation #math_00 temp.value = @s nexus.mot_yaw
scoreboard players operation #math_00 temp.value *= #3141 nexus.value
scoreboard players operation #math_00 temp.value /= #1800 nexus.value
scoreboard players operation #right_speed temp.value -= #math_00 temp.value
scoreboard players operation #left_speed temp.value += #math_00 temp.value

execute if score #right_speed temp.value matches 400.. run scoreboard players set #right_speed temp.value 400
execute if score #left_speed temp.value matches 400.. run scoreboard players set #left_speed temp.value 400

scoreboard players operation #interpolation_location nexus.value = @s temp.right_speed
scoreboard players operation #interpolation_destination nexus.value = #right_speed temp.value
scoreboard players set #interpolation_velocity nexus.value 0
scoreboard players set #interpolation_acceleration nexus.value 50
function nexus:generic/interpolation/floating_point/1d
scoreboard players operation @s temp.right_speed = #interpolation_location nexus.value

scoreboard players operation #interpolation_location nexus.value = @s temp.left_speed
scoreboard players operation #interpolation_destination nexus.value = #left_speed temp.value
scoreboard players set #interpolation_velocity nexus.value 0
scoreboard players set #interpolation_acceleration nexus.value 50
function nexus:generic/interpolation/floating_point/1d
scoreboard players operation @s temp.left_speed = #interpolation_location nexus.value



scoreboard players operation #input_vector_x nexus.value = @s nexus.mot_x
scoreboard players operation #input_vector_y nexus.value = @s nexus.mot_z
scoreboard players set #scale_factor nexus.value 1
function nexus:generic/vector/length/2d
execute if score #output nexus.value matches 400.. run scoreboard players set #output nexus.value 400

scoreboard players operation #interpolation_location nexus.value = @s nexus.velocity
scoreboard players operation #interpolation_destination nexus.value = #output nexus.value
scoreboard players set #interpolation_velocity nexus.value 0
scoreboard players set #interpolation_acceleration nexus.value 50
function nexus:generic/interpolation/floating_point/1d
scoreboard players operation @s nexus.velocity = #interpolation_location nexus.value