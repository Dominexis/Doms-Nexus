# Set body bone position

scoreboard players set #bone_offset temp.value 1915

scoreboard players operation #input_vector_x nexus.value = #brain_position_x temp.value
scoreboard players operation #input_vector_z nexus.value = #brain_position_z temp.value
scoreboard players operation #input_yaw nexus.value = @s nexus.yaw
function nexus:generic/vector/rotate/2d/yaw
scoreboard players operation #brain_position_x temp.value = #output_vector_x nexus.value
scoreboard players operation #brain_position_z temp.value = #output_vector_z nexus.value

scoreboard players add #brain_position_y temp.value 1200
scoreboard players operation #brain_position_x temp.value += @s nexus.x
scoreboard players operation #brain_position_y temp.value += @s nexus.y
scoreboard players operation #brain_position_z temp.value += @s nexus.z









# Compute body orientation matrix

scoreboard players set #input_angle_x nexus.value 0
scoreboard players operation #input_angle_y nexus.value = #brain_rotation_y temp.value
function nexus:generic/matrix/from_gimbal/3d/yaw_pitch
scoreboard players operation #input_matrix_x_x nexus.value = #output_matrix_x_x nexus.value
scoreboard players operation #input_matrix_x_y nexus.value = #output_matrix_x_y nexus.value
scoreboard players operation #input_matrix_x_z nexus.value = #output_matrix_x_z nexus.value
scoreboard players operation #input_matrix_y_x nexus.value = #output_matrix_y_x nexus.value
scoreboard players operation #input_matrix_y_y nexus.value = #output_matrix_y_y nexus.value
scoreboard players operation #input_matrix_y_z nexus.value = #output_matrix_y_z nexus.value
scoreboard players operation #input_matrix_z_x nexus.value = #output_matrix_z_x nexus.value
scoreboard players operation #input_matrix_z_y nexus.value = #output_matrix_z_y nexus.value
scoreboard players operation #input_matrix_z_z nexus.value = #output_matrix_z_z nexus.value







# Offset bone positions from body

scoreboard players remove #front_right_leg_position_x temp.value 300
scoreboard players add #front_right_leg_position_z temp.value 300

scoreboard players operation #input_vector_x nexus.value = #front_right_leg_position_x temp.value
scoreboard players operation #input_vector_y nexus.value = #front_right_leg_position_y temp.value
scoreboard players operation #input_vector_z nexus.value = #front_right_leg_position_z temp.value
function nexus:generic/matrix/transform/direct/3d
scoreboard players operation #front_right_leg_position_x temp.value = #output_vector_x nexus.value
scoreboard players operation #front_right_leg_position_y temp.value = #output_vector_y nexus.value
scoreboard players operation #front_right_leg_position_z temp.value = #output_vector_z nexus.value



scoreboard players add #front_left_leg_position_x temp.value 300
scoreboard players add #front_left_leg_position_z temp.value 300

scoreboard players operation #input_vector_x nexus.value = #front_left_leg_position_x temp.value
scoreboard players operation #input_vector_y nexus.value = #front_left_leg_position_y temp.value
scoreboard players operation #input_vector_z nexus.value = #front_left_leg_position_z temp.value
function nexus:generic/matrix/transform/direct/3d
scoreboard players operation #front_left_leg_position_x temp.value = #output_vector_x nexus.value
scoreboard players operation #front_left_leg_position_y temp.value = #output_vector_y nexus.value
scoreboard players operation #front_left_leg_position_z temp.value = #output_vector_z nexus.value



scoreboard players remove #back_right_leg_position_x temp.value 300
scoreboard players remove #back_right_leg_position_z temp.value 300

scoreboard players operation #input_vector_x nexus.value = #back_right_leg_position_x temp.value
scoreboard players operation #input_vector_y nexus.value = #back_right_leg_position_y temp.value
scoreboard players operation #input_vector_z nexus.value = #back_right_leg_position_z temp.value
function nexus:generic/matrix/transform/direct/3d
scoreboard players operation #back_right_leg_position_x temp.value = #output_vector_x nexus.value
scoreboard players operation #back_right_leg_position_y temp.value = #output_vector_y nexus.value
scoreboard players operation #back_right_leg_position_z temp.value = #output_vector_z nexus.value



scoreboard players add #back_left_leg_position_x temp.value 300
scoreboard players remove #back_left_leg_position_z temp.value 300

scoreboard players operation #input_vector_x nexus.value = #back_left_leg_position_x temp.value
scoreboard players operation #input_vector_y nexus.value = #back_left_leg_position_y temp.value
scoreboard players operation #input_vector_z nexus.value = #back_left_leg_position_z temp.value
function nexus:generic/matrix/transform/direct/3d
scoreboard players operation #back_left_leg_position_x temp.value = #output_vector_x nexus.value
scoreboard players operation #back_left_leg_position_y temp.value = #output_vector_y nexus.value
scoreboard players operation #back_left_leg_position_z temp.value = #output_vector_z nexus.value









# Offset everything from the body position

scoreboard players operation #front_right_leg_position_x temp.value += #brain_position_x temp.value
scoreboard players operation #front_right_leg_position_y temp.value += #brain_position_y temp.value
scoreboard players operation #front_right_leg_position_z temp.value += #brain_position_z temp.value
scoreboard players operation #front_left_leg_position_x temp.value += #brain_position_x temp.value
scoreboard players operation #front_left_leg_position_y temp.value += #brain_position_y temp.value
scoreboard players operation #front_left_leg_position_z temp.value += #brain_position_z temp.value
scoreboard players operation #back_right_leg_position_x temp.value += #brain_position_x temp.value
scoreboard players operation #back_right_leg_position_y temp.value += #brain_position_y temp.value
scoreboard players operation #back_right_leg_position_z temp.value += #brain_position_z temp.value
scoreboard players operation #back_left_leg_position_x temp.value += #brain_position_x temp.value
scoreboard players operation #back_left_leg_position_y temp.value += #brain_position_y temp.value
scoreboard players operation #back_left_leg_position_z temp.value += #brain_position_z temp.value

scoreboard players operation #brain_position_y temp.value -= #bone_offset temp.value
scoreboard players operation #front_right_leg_position_y temp.value -= #bone_offset temp.value
scoreboard players operation #front_left_leg_position_y temp.value -= #bone_offset temp.value
scoreboard players operation #back_right_leg_position_y temp.value -= #bone_offset temp.value
scoreboard players operation #back_left_leg_position_y temp.value -= #bone_offset temp.value







# Push data to entities

data modify storage temp:data tag set value {Pos:[0.0d,0.0d,0.0d],Pose:{Head:[0.0f,0.0f,0.0f]}}
execute store result storage temp:data tag.Pos[0] double 0.001000 run scoreboard players get #brain_position_x temp.value
execute store result storage temp:data tag.Pos[1] double 0.001000 run scoreboard players get #brain_position_y temp.value
execute store result storage temp:data tag.Pos[2] double 0.001000 run scoreboard players get #brain_position_z temp.value
execute store result storage temp:data tag.Pose.Head[0] float 0.1 run scoreboard players get #brain_rotation_x temp.value
execute store result storage temp:data tag.Pose.Head[1] float 0.1 run scoreboard players get #brain_rotation_y temp.value
execute store result storage temp:data tag.Pose.Head[2] float 0.1 run scoreboard players get #brain_rotation_z temp.value
data modify entity @e[type=area_effect_cloud,distance=..8,tag=temp.entity.part.brain,tag=nexus.entity.target,limit=1] Pos set from storage temp:data tag.Pos
data modify entity @e[type=armor_stand      ,distance=..8,tag=temp.entity.part.brain,tag=nexus.entity.target,limit=1] Pose.Head set from storage temp:data tag.Pose.Head

data modify storage temp:data tag set value {Pos:[0.0d,0.0d,0.0d],Pose:{Head:[0.0f,0.0f,0.0f]}}
execute store result storage temp:data tag.Pos[0] double 0.001000 run scoreboard players get #front_right_leg_position_x temp.value
execute store result storage temp:data tag.Pos[1] double 0.001000 run scoreboard players get #front_right_leg_position_y temp.value
execute store result storage temp:data tag.Pos[2] double 0.001000 run scoreboard players get #front_right_leg_position_z temp.value
execute store result storage temp:data tag.Pose.Head[0] float 0.1 run scoreboard players get #front_right_leg_rotation_x temp.value
execute store result storage temp:data tag.Pose.Head[1] float 0.1 run scoreboard players get #front_right_leg_rotation_y temp.value
execute store result storage temp:data tag.Pose.Head[2] float 0.1 run scoreboard players get #front_right_leg_rotation_z temp.value
data modify entity @e[type=area_effect_cloud,distance=..8,tag=temp.entity.part.front_right_leg,tag=nexus.entity.target,limit=1] Pos set from storage temp:data tag.Pos
data modify entity @e[type=armor_stand      ,distance=..8,tag=temp.entity.part.front_right_leg,tag=nexus.entity.target,limit=1] Pose.Head set from storage temp:data tag.Pose.Head

data modify storage temp:data tag set value {Pos:[0.0d,0.0d,0.0d],Pose:{Head:[0.0f,0.0f,0.0f]}}
execute store result storage temp:data tag.Pos[0] double 0.001000 run scoreboard players get #front_left_leg_position_x temp.value
execute store result storage temp:data tag.Pos[1] double 0.001000 run scoreboard players get #front_left_leg_position_y temp.value
execute store result storage temp:data tag.Pos[2] double 0.001000 run scoreboard players get #front_left_leg_position_z temp.value
execute store result storage temp:data tag.Pose.Head[0] float 0.1 run scoreboard players get #front_left_leg_rotation_x temp.value
execute store result storage temp:data tag.Pose.Head[1] float 0.1 run scoreboard players get #front_left_leg_rotation_y temp.value
execute store result storage temp:data tag.Pose.Head[2] float 0.1 run scoreboard players get #front_left_leg_rotation_z temp.value
data modify entity @e[type=area_effect_cloud,distance=..8,tag=temp.entity.part.front_left_leg,tag=nexus.entity.target,limit=1] Pos set from storage temp:data tag.Pos
data modify entity @e[type=armor_stand      ,distance=..8,tag=temp.entity.part.front_left_leg,tag=nexus.entity.target,limit=1] Pose.Head set from storage temp:data tag.Pose.Head

data modify storage temp:data tag set value {Pos:[0.0d,0.0d,0.0d],Pose:{Head:[0.0f,0.0f,0.0f]}}
execute store result storage temp:data tag.Pos[0] double 0.001000 run scoreboard players get #back_right_leg_position_x temp.value
execute store result storage temp:data tag.Pos[1] double 0.001000 run scoreboard players get #back_right_leg_position_y temp.value
execute store result storage temp:data tag.Pos[2] double 0.001000 run scoreboard players get #back_right_leg_position_z temp.value
execute store result storage temp:data tag.Pose.Head[0] float 0.1 run scoreboard players get #back_right_leg_rotation_x temp.value
execute store result storage temp:data tag.Pose.Head[1] float 0.1 run scoreboard players get #back_right_leg_rotation_y temp.value
execute store result storage temp:data tag.Pose.Head[2] float 0.1 run scoreboard players get #back_right_leg_rotation_z temp.value
data modify entity @e[type=area_effect_cloud,distance=..8,tag=temp.entity.part.back_right_leg,tag=nexus.entity.target,limit=1] Pos set from storage temp:data tag.Pos
data modify entity @e[type=armor_stand      ,distance=..8,tag=temp.entity.part.back_right_leg,tag=nexus.entity.target,limit=1] Pose.Head set from storage temp:data tag.Pose.Head

data modify storage temp:data tag set value {Pos:[0.0d,0.0d,0.0d],Pose:{Head:[0.0f,0.0f,0.0f]}}
execute store result storage temp:data tag.Pos[0] double 0.001000 run scoreboard players get #back_left_leg_position_x temp.value
execute store result storage temp:data tag.Pos[1] double 0.001000 run scoreboard players get #back_left_leg_position_y temp.value
execute store result storage temp:data tag.Pos[2] double 0.001000 run scoreboard players get #back_left_leg_position_z temp.value
execute store result storage temp:data tag.Pose.Head[0] float 0.1 run scoreboard players get #back_left_leg_rotation_x temp.value
execute store result storage temp:data tag.Pose.Head[1] float 0.1 run scoreboard players get #back_left_leg_rotation_y temp.value
execute store result storage temp:data tag.Pose.Head[2] float 0.1 run scoreboard players get #back_left_leg_rotation_z temp.value
data modify entity @e[type=area_effect_cloud,distance=..8,tag=temp.entity.part.back_left_leg,tag=nexus.entity.target,limit=1] Pos set from storage temp:data tag.Pos
data modify entity @e[type=armor_stand      ,distance=..8,tag=temp.entity.part.back_left_leg,tag=nexus.entity.target,limit=1] Pose.Head set from storage temp:data tag.Pose.Head

execute as @e[type=area_effect_cloud,distance=..8,tag=nexus.entity.target] at @s run teleport @s ~ ~ ~
teleport @e[type=area_effect_cloud,distance=..8,tag=temp.entity.part.damage_sensor,tag=nexus.entity.target,limit=1] ~ ~-0.375 ~