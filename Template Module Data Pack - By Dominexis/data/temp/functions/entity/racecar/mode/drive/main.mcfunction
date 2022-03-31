# Manage seat

execute if entity @a[distance=..16] run function temp:entity/racecar/mode/generic/seat/main







# Get inputs from player

scoreboard players set #wasd_control_w nexus.value 0
scoreboard players set #wasd_control_a nexus.value 0
scoreboard players set #wasd_control_s nexus.value 0
scoreboard players set #wasd_control_d nexus.value 0

execute as @a[tag=nexus.player.target] run function nexus:player/generic/wasd

execute store result score #player_state temp.value if entity @a[tag=nexus.player.target,limit=1]







# Compute vector

scoreboard players operation #input_yaw nexus.value = @s nexus.yaw
function nexus:generic/vector/from_gimbal/2d/yaw
scoreboard players operation #vector_x temp.value = #output_vector_x nexus.value
scoreboard players operation #vector_z temp.value = #output_vector_z nexus.value







# Modify steer value

scoreboard players set #interpolation_destination nexus.value 0
execute if score #wasd_control_a nexus.value matches 1 run scoreboard players remove #interpolation_destination nexus.value 150
execute if score #wasd_control_d nexus.value matches 1 run scoreboard players add #interpolation_destination nexus.value 150

scoreboard players operation #interpolation_location nexus.value = @s temp.steer
scoreboard players operation #interpolation_velocity nexus.value = @s temp.mot_steer
scoreboard players set #interpolation_acceleration nexus.value 30

function nexus:generic/interpolation/floating_point/1d

scoreboard players operation @s temp.steer = #interpolation_location nexus.value
scoreboard players operation @s temp.mot_steer = #interpolation_velocity nexus.value







# Modify rotation

scoreboard players operation #input_vector_1_x nexus.value = @s nexus.mot_x
scoreboard players operation #input_vector_1_y nexus.value = @s nexus.mot_z
scoreboard players operation #input_vector_2_x nexus.value = #vector_x temp.value
scoreboard players operation #input_vector_2_y nexus.value = #vector_z temp.value
function nexus:generic/vector/dot_product/2d
scoreboard players operation #speed temp.value = #output nexus.value

scoreboard players operation #steer temp.value = @s temp.steer
scoreboard players operation #steer temp.value *= #speed temp.value
scoreboard players operation #steer temp.value /= #1000 nexus.value

scoreboard players set #friction_numerator nexus.value 95
scoreboard players set #friction_denominator nexus.value 100

execute if score @s nexus.animation matches 1.. run scoreboard players operation @s nexus.mot_yaw = #steer temp.value
execute store result score #boolean temp.value if score @s nexus.mot_yaw matches ..-1
execute if score #boolean temp.value matches 1 run scoreboard players operation @s nexus.mot_yaw *= #-1 nexus.value
scoreboard players operation @s nexus.mot_yaw *= #friction_numerator nexus.value
scoreboard players operation @s nexus.mot_yaw /= #friction_denominator nexus.value
execute if score #boolean temp.value matches 1 run scoreboard players operation @s nexus.mot_yaw *= #-1 nexus.value
scoreboard players operation @s nexus.yaw += @s nexus.mot_yaw







# Modify wheel rotation

scoreboard players operation #math_00 temp.value = #speed temp.value
scoreboard players operation #math_00 temp.value *= #2 nexus.value
scoreboard players operation #math_00 temp.value /= #3 nexus.value
scoreboard players operation @s temp.wheel += #math_00 temp.value







# Modify motion

scoreboard players operation #math_00 temp.value = #gravity nexus.value
scoreboard players operation #math_00 temp.value *= #missed_ticks nexus.value
scoreboard players operation @s nexus.mot_y += #math_00 temp.value

scoreboard players operation #vector_x temp.value /= #5 nexus.value
scoreboard players operation #vector_z temp.value /= #5 nexus.value

execute if score @s nexus.animation matches 1.. run scoreboard players operation @s nexus.mot_x *= #9 nexus.value
execute if score @s nexus.animation matches 1.. run scoreboard players operation @s nexus.mot_z *= #9 nexus.value
execute if score @s nexus.animation matches 1.. run scoreboard players operation @s nexus.mot_x /= #10 nexus.value
execute if score @s nexus.animation matches 1.. run scoreboard players operation @s nexus.mot_z /= #10 nexus.value

execute if score @s nexus.animation matches 1.. if score #wasd_control_w nexus.value matches 1 run scoreboard players operation @s nexus.mot_x += #vector_x temp.value
execute if score @s nexus.animation matches 1.. if score #wasd_control_w nexus.value matches 1 run scoreboard players operation @s nexus.mot_z += #vector_z temp.value
execute if score @s nexus.animation matches 1.. if score #wasd_control_s nexus.value matches 1 run scoreboard players operation @s nexus.mot_x -= #vector_x temp.value
execute if score @s nexus.animation matches 1.. if score #wasd_control_s nexus.value matches 1 run scoreboard players operation @s nexus.mot_z -= #vector_z temp.value







# Apply push from entities

scoreboard players set #player_push_boolean nexus.value 1
function nexus:entity/generic/push/main







# Move entity along current trajectory

scoreboard players set #hitbox_offset nexus.value 600
scoreboard players set #hitbox_width nexus.value 600
scoreboard players set #hitbox_height nexus.value 600

scoreboard players set #collision_friction_numerator nexus.value 90
scoreboard players set #fluid_friction_numerator nexus.value 80
scoreboard players set #climb_friction_numerator nexus.value 95
scoreboard players set #friction_numerator nexus.value 95
scoreboard players set #friction_denominator nexus.value 100

scoreboard players set #motion_climb_boolean nexus.value 2
scoreboard players set #motion_destroy_boolean nexus.value 0
scoreboard players set #motion_halt_boolean nexus.value 0
scoreboard players set #motion_missed_ticks_boolean nexus.value 1
scoreboard players set #motion_limit nexus.value 5000

execute positioned ~ ~0.475 ~ run function nexus:entity/generic/motion/hv/main







# Collisions

execute if score #collision_x nexus.value matches 1 run scoreboard players operation @s nexus.mot_x *= #-1 nexus.value
execute if score #collision_y nexus.value matches 1 run scoreboard players operation @s nexus.mot_y *= #-1 nexus.value
execute if score #collision_z nexus.value matches 1 run scoreboard players operation @s nexus.mot_z *= #-1 nexus.value
execute if score #collision_y nexus.value matches 1 run scoreboard players operation @s nexus.mot_y /= #2 nexus.value

execute if score @s nexus.collide_y matches -1 run scoreboard players set @s nexus.animation 4
execute if score @s nexus.animation matches 1.. run scoreboard players remove @s nexus.animation 1







# Play sounds

scoreboard players operation #drive_boolean temp.value = #wasd_control_w nexus.value
scoreboard players operation #drive_boolean temp.value -= #wasd_control_s nexus.value
execute if score #drive_boolean temp.value matches ..-1 run scoreboard players operation #drive_boolean temp.value *= #-1 nexus.value
execute if score #speed temp.value matches 200.. if score #player_state temp.value matches 1 run scoreboard players set #drive_boolean temp.value 1

execute if score @s temp.sound matches 1.. run scoreboard players remove @s temp.sound 1

execute if score #drive_boolean temp.value matches 1 if score @s temp.sound matches 000 run playsound temp:entity.racecar.in neutral @a
execute if score #drive_boolean temp.value matches 1 if score @s temp.sound matches 000 run scoreboard players set @s temp.sound 219
execute if score #drive_boolean temp.value matches 1 if score @s temp.sound matches 200 run playsound temp:entity.racecar.drive neutral @a
execute if score #drive_boolean temp.value matches 1 if score @s temp.sound matches 200 run scoreboard players set @s temp.sound 108
execute if score #drive_boolean temp.value matches 1 if score @s temp.sound matches 100 run playsound temp:entity.racecar.drive neutral @a
execute if score #drive_boolean temp.value matches 1 if score @s temp.sound matches 100 run scoreboard players set @s temp.sound 108
execute if score #drive_boolean temp.value matches 0 if score @s temp.sound matches 200 run playsound temp:entity.racecar.out neutral @a
execute if score #drive_boolean temp.value matches 0 if score @s temp.sound matches 200 run scoreboard players set @s temp.sound 15
execute if score #drive_boolean temp.value matches 0 if score @s temp.sound matches 100 run playsound temp:entity.racecar.out neutral @a
execute if score #drive_boolean temp.value matches 0 if score @s temp.sound matches 100 run scoreboard players set @s temp.sound 15







# Termination conditions

execute if score #motion_fire_boolean nexus.value matches 1 at @s run function temp:entity/racecar/mode/generic/terminate
execute if score @s nexus.y matches ..-96000 at @s run function temp:entity/racecar/mode/generic/terminate