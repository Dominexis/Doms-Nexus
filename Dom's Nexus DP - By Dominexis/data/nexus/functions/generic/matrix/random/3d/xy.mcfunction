# Compute sines and cosines of angles

scoreboard players set #input nexus.value 3600
function nexus:generic/rng/lcg
scoreboard players operation #input nexus.value = #output nexus.value
function nexus:generic/trigonometry/cosine
scoreboard players operation #math_cosine_yaw nexus.value = #output nexus.value
function nexus:generic/trigonometry/sine
scoreboard players operation #math_sine_yaw nexus.value = #output nexus.value

scoreboard players set #input nexus.value 2001
function nexus:generic/rng/lcg
scoreboard players operation #input nexus.value = #output nexus.value
scoreboard players remove #input nexus.value 1000
scoreboard players operation #math_sine_pitch nexus.value = #input nexus.value

scoreboard players operation #input nexus.value *= #input nexus.value
scoreboard players operation #input nexus.value *= #-1 nexus.value
scoreboard players add #input nexus.value 1000000
function nexus:generic/root/radical/square
scoreboard players operation #math_cosine_pitch nexus.value = #output nexus.value

scoreboard players set #input nexus.value 3600
function nexus:generic/rng/lcg
scoreboard players operation #input nexus.value = #output nexus.value
function nexus:generic/trigonometry/cosine
scoreboard players operation #math_cosine_roll nexus.value = #output nexus.value
function nexus:generic/trigonometry/sine
scoreboard players operation #math_sine_roll nexus.value = #output nexus.value







# Compute X vector

scoreboard players operation #output_matrix_x_x nexus.value = #math_cosine_yaw nexus.value
scoreboard players operation #output_matrix_x_x nexus.value *= #math_cosine_pitch nexus.value
scoreboard players operation #output_matrix_x_x nexus.value /= #1000 nexus.value

scoreboard players operation #output_matrix_x_y nexus.value = #math_sine_yaw nexus.value
scoreboard players operation #output_matrix_x_y nexus.value *= #math_cosine_pitch nexus.value
scoreboard players operation #output_matrix_x_y nexus.value /= #1000 nexus.value

scoreboard players operation #output_matrix_x_z nexus.value = #math_sine_pitch nexus.value







# Compute Y vector

scoreboard players operation #math_00 nexus.value = #math_cosine_yaw nexus.value
scoreboard players operation #math_00 nexus.value *= #math_sine_pitch nexus.value
scoreboard players operation #math_00 nexus.value /= #1000 nexus.value
scoreboard players operation #math_00 nexus.value *= #math_sine_roll nexus.value
scoreboard players operation #math_00 nexus.value *= #-1 nexus.value
scoreboard players operation #math_01 nexus.value = #math_sine_yaw nexus.value
scoreboard players operation #math_01 nexus.value *= #math_cosine_roll nexus.value
scoreboard players operation #output_matrix_y_x nexus.value = #math_00 nexus.value
scoreboard players operation #output_matrix_y_x nexus.value -= #math_01 nexus.value
scoreboard players operation #output_matrix_y_x nexus.value /= #1000 nexus.value

scoreboard players operation #math_00 nexus.value = #math_sine_yaw nexus.value
scoreboard players operation #math_00 nexus.value *= #math_sine_pitch nexus.value
scoreboard players operation #math_00 nexus.value /= #1000 nexus.value
scoreboard players operation #math_00 nexus.value *= #math_sine_roll nexus.value
scoreboard players operation #math_00 nexus.value *= #-1 nexus.value
scoreboard players operation #math_01 nexus.value = #math_cosine_yaw nexus.value
scoreboard players operation #math_01 nexus.value *= #math_cosine_roll nexus.value
scoreboard players operation #output_matrix_y_y nexus.value = #math_00 nexus.value
scoreboard players operation #output_matrix_y_y nexus.value += #math_01 nexus.value
scoreboard players operation #output_matrix_y_y nexus.value /= #1000 nexus.value

scoreboard players operation #output_matrix_y_z nexus.value = #math_cosine_pitch nexus.value
scoreboard players operation #output_matrix_y_z nexus.value *= #math_sine_roll nexus.value
scoreboard players operation #output_matrix_y_z nexus.value /= #1000 nexus.value