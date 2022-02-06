# Apply angular velocity

scoreboard players operation #input_vector_x nexus.value = @s nexus.ang_vel_x
scoreboard players operation #input_vector_y nexus.value = @s nexus.ang_vel_y
scoreboard players operation #input_vector_z nexus.value = @s nexus.ang_vel_z

scoreboard players set #scale_factor nexus.value 1
function nexus:generic/vector/normalize/3d

scoreboard players operation #input_axis_x nexus.value = #output_vector_x nexus.value
scoreboard players operation #input_axis_y nexus.value = #output_vector_y nexus.value
scoreboard players operation #input_axis_z nexus.value = #output_vector_z nexus.value

scoreboard players operation #input_angle nexus.value = #output nexus.value
scoreboard players operation #input_angle nexus.value *= #missed_ticks nexus.value
scoreboard players operation #input_angle nexus.value *= #1800 nexus.value
scoreboard players operation #input_angle nexus.value /= #3141 nexus.value

scoreboard players operation #input_matrix_x_x nexus.value = @s nexus.matrix_x_x
scoreboard players operation #input_matrix_x_y nexus.value = @s nexus.matrix_x_y
scoreboard players operation #input_matrix_x_z nexus.value = @s nexus.matrix_x_z
scoreboard players operation #input_matrix_y_x nexus.value = @s nexus.matrix_y_x
scoreboard players operation #input_matrix_y_y nexus.value = @s nexus.matrix_y_y
scoreboard players operation #input_matrix_y_z nexus.value = @s nexus.matrix_y_z

function nexus:generic/matrix/orthogonal/3d/xy
function nexus:generic/matrix/push/3d
function nexus:generic/matrix/rotate/3d/axis/xy

scoreboard players operation @s nexus.matrix_x_x = #output_matrix_x_x nexus.value
scoreboard players operation @s nexus.matrix_x_y = #output_matrix_x_y nexus.value
scoreboard players operation @s nexus.matrix_x_z = #output_matrix_x_z nexus.value
scoreboard players operation @s nexus.matrix_y_x = #output_matrix_y_x nexus.value
scoreboard players operation @s nexus.matrix_y_y = #output_matrix_y_y nexus.value
scoreboard players operation @s nexus.matrix_y_z = #output_matrix_y_z nexus.value