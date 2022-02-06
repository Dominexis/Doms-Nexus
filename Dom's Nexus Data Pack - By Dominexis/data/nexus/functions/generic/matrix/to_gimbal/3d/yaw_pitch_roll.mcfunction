# Compute X gimbal

scoreboard players operation #math_vector_0 nexus.value = #input_matrix_z_x nexus.value
scoreboard players operation #math_vector_0 nexus.value *= #math_vector_0 nexus.value
scoreboard players operation #math_vector_1 nexus.value = #input_matrix_z_z nexus.value
scoreboard players operation #math_vector_1 nexus.value *= #math_vector_1 nexus.value
scoreboard players operation #input nexus.value = #math_vector_0 nexus.value
scoreboard players operation #input nexus.value += #math_vector_1 nexus.value
function nexus:generic/root/radical/square
scoreboard players operation #input_x nexus.value = #output nexus.value
scoreboard players operation #input_y nexus.value = #input_matrix_z_y nexus.value
scoreboard players operation #input_y nexus.value *= #-1 nexus.value
function nexus:generic/trigonometry/arctangent
scoreboard players operation #output_angle_x nexus.value = #output nexus.value







# Compute Y gimbal

scoreboard players operation #input_x nexus.value = #input_matrix_z_z nexus.value
scoreboard players operation #input_y nexus.value = #input_matrix_z_x nexus.value
scoreboard players operation #input_y nexus.value *= #-1 nexus.value
function nexus:generic/trigonometry/arctangent
scoreboard players operation #output_angle_y nexus.value = #output nexus.value

scoreboard players operation #math_vector_0 nexus.value = #output_angle_x nexus.value
scoreboard players add #math_vector_0 nexus.value 900
scoreboard players operation #math_vector_0 nexus.value %= #1800 nexus.value
execute if score #math_vector_0 nexus.value matches 1.. run scoreboard players set #math_vector_0 nexus.value 1
scoreboard players operation #output_angle_y nexus.value *= #math_vector_0 nexus.value







# Compute Z gimbal

scoreboard players operation #input nexus.value = #output_angle_x nexus.value
function nexus:generic/trigonometry/cosine
scoreboard players operation #math_cosine_x nexus.value = #output nexus.value
function nexus:generic/trigonometry/sine
scoreboard players operation #math_sine_x nexus.value = #output nexus.value

scoreboard players operation #input nexus.value = #output_angle_y nexus.value
function nexus:generic/trigonometry/cosine
scoreboard players operation #math_cosine_y nexus.value = #output nexus.value
function nexus:generic/trigonometry/sine
scoreboard players operation #math_sine_y nexus.value = #output nexus.value



scoreboard players operation #math_vector_0 nexus.value = #input_matrix_x_x nexus.value
scoreboard players operation #math_vector_0 nexus.value *= #math_cosine_y nexus.value
scoreboard players operation #math_vector_1 nexus.value = #input_matrix_x_z nexus.value
scoreboard players operation #math_vector_1 nexus.value *= #math_sine_y nexus.value
scoreboard players operation #input_x nexus.value = #math_vector_0 nexus.value
scoreboard players operation #input_x nexus.value += #math_vector_1 nexus.value
scoreboard players operation #input_x nexus.value /= #1000 nexus.value

scoreboard players operation #math_vector_0 nexus.value = #input_matrix_x_y nexus.value
scoreboard players operation #math_vector_0 nexus.value *= #math_cosine_x nexus.value
scoreboard players operation #math_vector_1 nexus.value = #input_matrix_x_z nexus.value
scoreboard players operation #math_vector_1 nexus.value *= #math_cosine_y nexus.value
scoreboard players operation #math_vector_2 nexus.value = #input_matrix_x_x nexus.value
scoreboard players operation #math_vector_2 nexus.value *= #math_sine_y nexus.value
scoreboard players operation #math_vector_1 nexus.value -= #math_vector_2 nexus.value
scoreboard players operation #math_vector_1 nexus.value /= #1000 nexus.value
scoreboard players operation #math_vector_1 nexus.value *= #math_sine_x nexus.value
scoreboard players operation #input_y nexus.value = #math_vector_0 nexus.value
scoreboard players operation #input_y nexus.value += #math_vector_1 nexus.value
scoreboard players operation #input_y nexus.value *= #-1 nexus.value
scoreboard players operation #input_y nexus.value /= #1000 nexus.value

function nexus:generic/trigonometry/arctangent
scoreboard players operation #output_angle_z nexus.value = #output nexus.value