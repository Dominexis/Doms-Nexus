# Assemble entities

teleport @s ~ ~-1 ~







# Apply rotation to armor stand

scoreboard players operation #input_matrix_x_x nexus.value = @s nexus.matrix_x_x
scoreboard players operation #input_matrix_x_y nexus.value = @s nexus.matrix_x_y
scoreboard players operation #input_matrix_x_z nexus.value = @s nexus.matrix_x_z
scoreboard players operation #input_matrix_y_x nexus.value = @s nexus.matrix_y_x
scoreboard players operation #input_matrix_y_y nexus.value = @s nexus.matrix_y_y
scoreboard players operation #input_matrix_y_z nexus.value = @s nexus.matrix_y_z

function nexus:generic/matrix/to_gimbal/3d/xyz

scoreboard players operation #entity_pitch nexus.value = #output_angle_x nexus.value
scoreboard players operation #entity_yaw nexus.value = #output_angle_y nexus.value
scoreboard players operation #entity_roll nexus.value = #output_angle_z nexus.value

execute as @e[type=armor_stand,distance=..16,tag=nexus.entity.target,limit=1] run function nexus:entity/generic/data/set/fakeplayer/head