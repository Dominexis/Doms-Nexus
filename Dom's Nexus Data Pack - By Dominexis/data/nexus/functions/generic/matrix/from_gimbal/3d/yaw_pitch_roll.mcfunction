# Get sine and cosine values of yaw and pitch

scoreboard players operation #input nexus.value = #input_angle_x nexus.value
function nexus:generic/trigonometry/sine
scoreboard players operation #math_sine_x nexus.value = #output nexus.value
function nexus:generic/trigonometry/cosine
scoreboard players operation #math_cosine_x nexus.value = #output nexus.value

scoreboard players operation #input nexus.value = #input_angle_y nexus.value
function nexus:generic/trigonometry/sine
scoreboard players operation #math_sine_y nexus.value = #output nexus.value
function nexus:generic/trigonometry/cosine
scoreboard players operation #math_cosine_y nexus.value = #output nexus.value

scoreboard players operation #input nexus.value = #input_angle_z nexus.value
function nexus:generic/trigonometry/sine
scoreboard players operation #math_sine_z nexus.value = #output nexus.value
function nexus:generic/trigonometry/cosine
scoreboard players operation #math_cosine_z nexus.value = #output nexus.value







# Compute common terms

scoreboard players operation #math_matrix_00 nexus.value = #math_sine_x nexus.value
scoreboard players operation #math_matrix_00 nexus.value *= #math_sine_y nexus.value
scoreboard players operation #math_matrix_00 nexus.value /= #1000 nexus.value
scoreboard players operation #math_matrix_01 nexus.value = #math_sine_x nexus.value
scoreboard players operation #math_matrix_01 nexus.value *= #math_cosine_y nexus.value
scoreboard players operation #math_matrix_01 nexus.value /= #1000 nexus.value







# Compute vectors of matrix

scoreboard players operation #math_vector nexus.value = #math_sine_z nexus.value
scoreboard players operation #math_vector nexus.value *= #math_matrix_00 nexus.value
scoreboard players operation #output_matrix_x_x nexus.value = #math_cosine_y nexus.value
scoreboard players operation #output_matrix_x_x nexus.value *= #math_cosine_z nexus.value
scoreboard players operation #output_matrix_x_x nexus.value += #math_vector nexus.value
scoreboard players operation #output_matrix_x_x nexus.value /= #1000 nexus.value
scoreboard players operation #output_matrix_x_y nexus.value = #math_cosine_x nexus.value
scoreboard players operation #output_matrix_x_y nexus.value *= #math_sine_z nexus.value
scoreboard players operation #output_matrix_x_y nexus.value *= #-1 nexus.value
scoreboard players operation #output_matrix_x_y nexus.value /= #1000 nexus.value
scoreboard players operation #math_vector nexus.value = #math_sine_z nexus.value
scoreboard players operation #math_vector nexus.value *= #math_matrix_01 nexus.value
scoreboard players operation #output_matrix_x_z nexus.value = #math_sine_y nexus.value
scoreboard players operation #output_matrix_x_z nexus.value *= #math_cosine_z nexus.value
scoreboard players operation #output_matrix_x_z nexus.value -= #math_vector nexus.value
scoreboard players operation #output_matrix_x_z nexus.value /= #1000 nexus.value

scoreboard players operation #math_vector nexus.value = #math_cosine_z nexus.value
scoreboard players operation #math_vector nexus.value *= #math_matrix_00 nexus.value
scoreboard players operation #output_matrix_y_x nexus.value = #math_cosine_y nexus.value
scoreboard players operation #output_matrix_y_x nexus.value *= #math_sine_z nexus.value
scoreboard players operation #output_matrix_y_x nexus.value -= #math_vector nexus.value
scoreboard players operation #output_matrix_y_x nexus.value /= #1000 nexus.value
scoreboard players operation #output_matrix_y_y nexus.value = #math_cosine_x nexus.value
scoreboard players operation #output_matrix_y_y nexus.value *= #math_cosine_z nexus.value
scoreboard players operation #output_matrix_y_y nexus.value /= #1000 nexus.value
scoreboard players operation #math_vector nexus.value = #math_cosine_z nexus.value
scoreboard players operation #math_vector nexus.value *= #math_matrix_01 nexus.value
scoreboard players operation #output_matrix_y_z nexus.value = #math_sine_y nexus.value
scoreboard players operation #output_matrix_y_z nexus.value *= #math_sine_z nexus.value
scoreboard players operation #output_matrix_y_z nexus.value += #math_vector nexus.value
scoreboard players operation #output_matrix_y_z nexus.value /= #1000 nexus.value

scoreboard players operation #output_matrix_z_x nexus.value = #math_cosine_x nexus.value
scoreboard players operation #output_matrix_z_x nexus.value *= #math_sine_y nexus.value
scoreboard players operation #output_matrix_z_x nexus.value *= #-1 nexus.value
scoreboard players operation #output_matrix_z_x nexus.value /= #1000 nexus.value
scoreboard players operation #output_matrix_z_y nexus.value = #math_sine_x nexus.value
scoreboard players operation #output_matrix_z_y nexus.value *= #-1 nexus.value
scoreboard players operation #output_matrix_z_z nexus.value = #math_cosine_x nexus.value
scoreboard players operation #output_matrix_z_z nexus.value *= #math_cosine_y nexus.value
scoreboard players operation #output_matrix_z_z nexus.value /= #1000 nexus.value