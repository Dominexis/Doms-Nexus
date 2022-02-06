# Get sine and cosine of angle

scoreboard players operation #input nexus.value = #input_angle_z nexus.value
function nexus:generic/trigonometry/cosine
scoreboard players operation #math_cosine nexus.value = #output nexus.value
function nexus:generic/trigonometry/sine
scoreboard players operation #math_sine nexus.value = #output nexus.value







# Rotate vectors

scoreboard players operation #math_vector nexus.value = #input_matrix_x_x nexus.value
scoreboard players operation #math_vector nexus.value *= #math_sine nexus.value
scoreboard players operation #output_matrix_x_y nexus.value = #input_matrix_x_y nexus.value
scoreboard players operation #output_matrix_x_y nexus.value *= #math_cosine nexus.value
scoreboard players operation #output_matrix_x_y nexus.value -= #math_vector nexus.value
scoreboard players operation #output_matrix_x_y nexus.value /= #1000 nexus.value

scoreboard players operation #math_vector nexus.value = #input_matrix_x_x nexus.value
scoreboard players operation #math_vector nexus.value *= #math_cosine nexus.value
scoreboard players operation #output_matrix_x_x nexus.value = #input_matrix_x_y nexus.value
scoreboard players operation #output_matrix_x_x nexus.value *= #math_sine nexus.value
scoreboard players operation #output_matrix_x_x nexus.value += #math_vector nexus.value
scoreboard players operation #output_matrix_x_x nexus.value /= #1000 nexus.value

scoreboard players operation #output_matrix_x_z nexus.value = #input_matrix_x_z nexus.value



scoreboard players operation #math_vector nexus.value = #input_matrix_y_x nexus.value
scoreboard players operation #math_vector nexus.value *= #math_sine nexus.value
scoreboard players operation #output_matrix_y_y nexus.value = #input_matrix_y_y nexus.value
scoreboard players operation #output_matrix_y_y nexus.value *= #math_cosine nexus.value
scoreboard players operation #output_matrix_y_y nexus.value -= #math_vector nexus.value
scoreboard players operation #output_matrix_y_y nexus.value /= #1000 nexus.value

scoreboard players operation #math_vector nexus.value = #input_matrix_y_x nexus.value
scoreboard players operation #math_vector nexus.value *= #math_cosine nexus.value
scoreboard players operation #output_matrix_y_x nexus.value = #input_matrix_y_y nexus.value
scoreboard players operation #output_matrix_y_x nexus.value *= #math_sine nexus.value
scoreboard players operation #output_matrix_y_x nexus.value += #math_vector nexus.value
scoreboard players operation #output_matrix_y_x nexus.value /= #1000 nexus.value

scoreboard players operation #output_matrix_y_z nexus.value = #input_matrix_y_z nexus.value



scoreboard players operation #math_vector nexus.value = #input_matrix_z_x nexus.value
scoreboard players operation #math_vector nexus.value *= #math_sine nexus.value
scoreboard players operation #output_matrix_z_y nexus.value = #input_matrix_z_y nexus.value
scoreboard players operation #output_matrix_z_y nexus.value *= #math_cosine nexus.value
scoreboard players operation #output_matrix_z_y nexus.value -= #math_vector nexus.value
scoreboard players operation #output_matrix_z_y nexus.value /= #1000 nexus.value

scoreboard players operation #math_vector nexus.value = #input_matrix_z_x nexus.value
scoreboard players operation #math_vector nexus.value *= #math_cosine nexus.value
scoreboard players operation #output_matrix_z_x nexus.value = #input_matrix_z_y nexus.value
scoreboard players operation #output_matrix_z_x nexus.value *= #math_sine nexus.value
scoreboard players operation #output_matrix_z_x nexus.value += #math_vector nexus.value
scoreboard players operation #output_matrix_z_x nexus.value /= #1000 nexus.value

scoreboard players operation #output_matrix_z_z nexus.value = #input_matrix_z_z nexus.value