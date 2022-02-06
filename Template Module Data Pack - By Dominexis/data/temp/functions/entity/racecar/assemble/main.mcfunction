# Apply positions to area effect clouds

scoreboard players set #input_angle_x nexus.value 0
scoreboard players operation #input_angle_y nexus.value = @s nexus.yaw

function nexus:generic/matrix/from_gimbal/3d/yaw_pitch
function nexus:generic/matrix/push/3d

scoreboard players set #input_vector_x nexus.value -700
scoreboard players set #input_vector_y nexus.value -1250
scoreboard players set #input_vector_z nexus.value 700
function nexus:generic/matrix/transform/direct/3d
scoreboard players operation #entity_x nexus.value = @s nexus.x
scoreboard players operation #entity_y nexus.value = @s nexus.y
scoreboard players operation #entity_z nexus.value = @s nexus.z
scoreboard players operation #entity_x nexus.value += #output_vector_x nexus.value
scoreboard players operation #entity_y nexus.value += #output_vector_y nexus.value
scoreboard players operation #entity_z nexus.value += #output_vector_z nexus.value
execute as @e[type=area_effect_cloud,distance=..8,tag=temp.entity.part.wheel_front_left ,tag=nexus.entity.target,limit=1] run function nexus:entity/generic/data/set/fakeplayer/pos

scoreboard players set #input_vector_x nexus.value 700
scoreboard players set #input_vector_y nexus.value -1250
scoreboard players set #input_vector_z nexus.value 700
function nexus:generic/matrix/transform/direct/3d
scoreboard players operation #entity_x nexus.value = @s nexus.x
scoreboard players operation #entity_y nexus.value = @s nexus.y
scoreboard players operation #entity_z nexus.value = @s nexus.z
scoreboard players operation #entity_x nexus.value += #output_vector_x nexus.value
scoreboard players operation #entity_y nexus.value += #output_vector_y nexus.value
scoreboard players operation #entity_z nexus.value += #output_vector_z nexus.value
execute as @e[type=area_effect_cloud,distance=..8,tag=temp.entity.part.wheel_front_right,tag=nexus.entity.target,limit=1] run function nexus:entity/generic/data/set/fakeplayer/pos

scoreboard players set #input_vector_x nexus.value -700
scoreboard players set #input_vector_y nexus.value -1250
scoreboard players set #input_vector_z nexus.value -700
function nexus:generic/matrix/transform/direct/3d
scoreboard players operation #entity_x nexus.value = @s nexus.x
scoreboard players operation #entity_y nexus.value = @s nexus.y
scoreboard players operation #entity_z nexus.value = @s nexus.z
scoreboard players operation #entity_x nexus.value += #output_vector_x nexus.value
scoreboard players operation #entity_y nexus.value += #output_vector_y nexus.value
scoreboard players operation #entity_z nexus.value += #output_vector_z nexus.value
execute as @e[type=area_effect_cloud,distance=..8,tag=temp.entity.part.wheel_back_left  ,tag=nexus.entity.target,limit=1] run function nexus:entity/generic/data/set/fakeplayer/pos

scoreboard players set #input_vector_x nexus.value 700
scoreboard players set #input_vector_y nexus.value -1250
scoreboard players set #input_vector_z nexus.value -700
function nexus:generic/matrix/transform/direct/3d
scoreboard players operation #entity_x nexus.value = @s nexus.x
scoreboard players operation #entity_y nexus.value = @s nexus.y
scoreboard players operation #entity_z nexus.value = @s nexus.z
scoreboard players operation #entity_x nexus.value += #output_vector_x nexus.value
scoreboard players operation #entity_y nexus.value += #output_vector_y nexus.value
scoreboard players operation #entity_z nexus.value += #output_vector_z nexus.value
execute as @e[type=area_effect_cloud,distance=..8,tag=temp.entity.part.wheel_back_right ,tag=nexus.entity.target,limit=1] run function nexus:entity/generic/data/set/fakeplayer/pos

scoreboard players set #input_vector_x nexus.value 0
scoreboard players set #input_vector_y nexus.value -650
scoreboard players set #input_vector_z nexus.value 400
function nexus:generic/matrix/transform/direct/3d
scoreboard players operation #entity_x nexus.value = @s nexus.x
scoreboard players operation #entity_y nexus.value = @s nexus.y
scoreboard players operation #entity_z nexus.value = @s nexus.z
scoreboard players operation #entity_x nexus.value += #output_vector_x nexus.value
scoreboard players operation #entity_y nexus.value += #output_vector_y nexus.value
scoreboard players operation #entity_z nexus.value += #output_vector_z nexus.value
execute as @e[type=area_effect_cloud,distance=..8,tag=temp.entity.part.steering_wheel,tag=nexus.entity.target,limit=1] run function nexus:entity/generic/data/set/fakeplayer/pos

scoreboard players set #input_vector_x nexus.value 0
execute if score #player_state temp.value matches 0 run scoreboard players set #input_vector_y nexus.value 0
execute if score #player_state temp.value matches 1 run scoreboard players set #input_vector_y nexus.value -1000
scoreboard players set #input_vector_z nexus.value -200
function nexus:generic/matrix/transform/direct/3d
scoreboard players operation #entity_x nexus.value = @s nexus.x
scoreboard players operation #entity_y nexus.value = @s nexus.y
scoreboard players operation #entity_z nexus.value = @s nexus.z
scoreboard players operation #entity_x nexus.value += #output_vector_x nexus.value
scoreboard players operation #entity_y nexus.value += #output_vector_y nexus.value
scoreboard players operation #entity_z nexus.value += #output_vector_z nexus.value
execute as @e[type=area_effect_cloud,distance=..8,tag=temp.entity.part.seat,tag=nexus.entity.target,limit=1] run function nexus:entity/generic/data/set/fakeplayer/pos

execute as @e[type=area_effect_cloud,distance=..8,tag=nexus.entity.target] at @s run teleport @s ~ ~-0.475 ~







# Apply rotations to armor stands

scoreboard players operation #entity_yaw nexus.value = @s nexus.yaw
scoreboard players set #entity_pitch nexus.value 0
scoreboard players set #entity_roll nexus.value 0
execute as @e[type=armor_stand,distance=..8,tag=temp.entity.part.body,tag=nexus.entity.target,limit=1] run function nexus:entity/generic/data/set/fakeplayer/head

scoreboard players operation #entity_pitch nexus.value = @s temp.wheel
execute as @e[type=armor_stand,distance=..8,tag=temp.entity.part.wheel_back ,tag=nexus.entity.target] run function nexus:entity/generic/data/set/fakeplayer/head

scoreboard players operation #entity_yaw nexus.value = @s temp.steer
scoreboard players operation #entity_yaw nexus.value *= #3 nexus.value
scoreboard players operation #entity_yaw nexus.value += @s nexus.yaw
execute as @e[type=armor_stand,distance=..8,tag=temp.entity.part.wheel_front,tag=nexus.entity.target] run function nexus:entity/generic/data/set/fakeplayer/head

scoreboard players set #input_angle_x nexus.value 225
scoreboard players operation #input_angle_y nexus.value = @s nexus.yaw
scoreboard players operation #input_angle_z nexus.value = @s temp.steer
scoreboard players operation #input_angle_z nexus.value *= #3 nexus.value
scoreboard players operation #input_angle_z nexus.value *= #-1 nexus.value
function nexus:generic/matrix/from_gimbal/3d/yaw_pitch_roll
function nexus:generic/matrix/push/3d
function nexus:generic/matrix/to_gimbal/3d/xyz
scoreboard players operation #entity_pitch nexus.value = #output_angle_x nexus.value
scoreboard players operation #entity_yaw nexus.value = #output_angle_y nexus.value
scoreboard players operation #entity_roll nexus.value = #output_angle_z nexus.value
execute as @e[type=armor_stand,distance=..8,tag=temp.entity.part.steering_wheel,tag=nexus.entity.target,limit=1] run function nexus:entity/generic/data/set/fakeplayer/head







# Set position and rotation of seat

execute store result entity @e[type=skeleton_horse,distance=..8,tag=temp.entity.part.seat,tag=nexus.entity.target,limit=1] Rotation[0] float 0.1 run scoreboard players get @s nexus.yaw
execute as @e[type=skeleton_horse,distance=..8,tag=temp.entity.part.seat,tag=nexus.entity.target,limit=1] at @s run teleport @s ~ ~ ~ ~ 0