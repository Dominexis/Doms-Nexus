# Compute S value

scoreboard players set #input nexus.value 1000
scoreboard players operation #input nexus.value -= #input_matrix_x_x nexus.value
scoreboard players operation #input nexus.value += #input_matrix_y_y nexus.value
scoreboard players operation #input nexus.value -= #input_matrix_z_z nexus.value
scoreboard players operation #input nexus.value *= #1000 nexus.value
function nexus:generic/root/radical/square
scoreboard players operation #output nexus.value *= #2 nexus.value







# Compute quaternion

scoreboard players operation #output_quaternion_j nexus.value = #output nexus.value
scoreboard players operation #output_quaternion_j nexus.value /= #4 nexus.value

scoreboard players operation #output_quaternion_k nexus.value = #input_matrix_y_z nexus.value
scoreboard players operation #output_quaternion_k nexus.value -= #input_matrix_z_y nexus.value
scoreboard players operation #output_quaternion_k nexus.value *= #1000 nexus.value
scoreboard players operation #output_quaternion_k nexus.value /= #output nexus.value

scoreboard players operation #output_quaternion_r nexus.value = #input_matrix_z_x nexus.value
scoreboard players operation #output_quaternion_r nexus.value -= #input_matrix_x_z nexus.value
scoreboard players operation #output_quaternion_r nexus.value *= #1000 nexus.value
scoreboard players operation #output_quaternion_r nexus.value /= #output nexus.value

scoreboard players operation #output_quaternion_i nexus.value = #input_matrix_x_y nexus.value
scoreboard players operation #output_quaternion_i nexus.value -= #input_matrix_y_x nexus.value
scoreboard players operation #output_quaternion_i nexus.value *= #1000 nexus.value
scoreboard players operation #output_quaternion_i nexus.value /= #output nexus.value